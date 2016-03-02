using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Threading;
using System.Windows.Threading;


namespace Visualize
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static Comms serialComms;
        private static byte[] buffer = new byte[100];
        private static int NumBytesExpected = 1;
        private int NumSensors = 0;
        private static bool bInitialized = false;
        private List<Ellipse> mEllipses = new List<Ellipse>();
        private List<TextBox> mRefs = new List<TextBox>();
        private List<TextBox> mSignals = new List<TextBox>();
        private List<TextBox> mDeltas = new List<TextBox>();
        private System.Threading.Timer mTimer;

        public const int nSampleInterval = 200;

        public MainWindow()
        {
            InitializeComponent();
            serialComms = new Comms();
        }

        private void OnLoaded(object sender, RoutedEventArgs e)
        {
            butRun.IsEnabled = false;
            butSingle.IsEnabled = true;
            butStop.IsEnabled = false;
        }

        private void OnSingle(object sender, RoutedEventArgs e)
        {
            //Connect if not connected
            //Initialize grid for number of sensors
            if (!serialComms.IsOpen)
                serialComms.Open("COM5");

            if(serialComms.IsOpen)
            {
                if (!bInitialized)
                {
                    buffer[0] = (byte)'s';
                    serialComms.SendByte(buffer);
                    if (serialComms.ReadBytes(buffer, 1))
                    {
                        NumSensors = buffer[0];
                        if (NumSensors >= 1 && NumSensors <= 16)
                        {
                            NumBytesExpected = QTouch.NumBytesPerMsg(NumSensors);
                            serialComms.ReadBytes(buffer, NumBytesExpected - 1);
                            serialComms.ClearBuffer();

                            //Create and layout screen
                            AddSensorRows();
                            bInitialized = true;
                        }
                    }
                }
                else
                {
                    buffer[0] = (byte)'s';
                    serialComms.SendByte(buffer);
                    if (serialComms.ReadBytes(buffer, 1))
                    {
                        serialComms.ReadBytes(buffer, NumBytesExpected-1 );
                        serialComms.ClearBuffer();
                        DisplaySensorData();
                    }
                }


            }
            //If succeded
            if(bInitialized)
                butRun.IsEnabled = true;
        }


        public static void ThreadDisplaySensorData(Object arg)
        {
            MainWindow wnd = (MainWindow)arg;
            if (bInitialized)
            {
                buffer[0] = (byte)'s';
                serialComms.SendByte(buffer);
                if (serialComms.ReadBytes(buffer, 1))
                {
                    serialComms.ReadBytes(buffer, NumBytesExpected - 1);
                    serialComms.ClearBuffer();
                    wnd.Dispatcher.BeginInvoke(DispatcherPriority.Background, new DispatcherOperationCallback(
                        delegate(object param)
                        {
                            wnd.DisplaySensorData();
                            return null;
                        }), arg);
                }
            }

        }

        private void DisplaySensorData()
        {
            Grid g = SensorGrid;
            int nSig;
            int nRef;
            for (int n = 0; n < NumSensors; n++)
            {
                if(IsSensorOn(buffer,n))
                {
                    mEllipses[n].Fill = Brushes.Green;
                }
                else
                {
                    mEllipses[n].Fill = Brushes.Black;
                }
                nSig = GetSignal(buffer, n);
                mSignals[n].Text = nSig.ToString();
                nRef = GetRef(buffer,n);
                mRefs[n].Text = nRef.ToString();
                mDeltas[n].Text = (nSig - nRef).ToString();
            }
        }

        private int GetSignal(byte[] data, int n)
        {
            int nOff = n*2 + 1 + (NumSensors-1) / 8;
            int nRet = data[nOff + 1]*256 + data[nOff] ;
            return nRet;
        }

        private int GetRef(byte[] data, int n)
        {
            int nOff = NumSensors*2 + n * 2 + 1 + (NumSensors-1) / 8;
            int nRet = data[nOff + 1]*256 + data[nOff];
            return nRet;
        }


        private bool IsSensorOn(byte[] data,int nSensor)
        {
            int nBitMask = (1 << nSensor);
            int nData = data[0] + data[1] * 256;
             
            if ((nBitMask & nData) != 0)
                return true;
            else
                return false;
         }

        private enum Cols
        {
            Num =0,
            Button,
            Delta,
            Signal,
            Reference
        }

        private void AddSensorRows()
        {
            Grid g = SensorGrid;
            g.ShowGridLines = false;
            for (int c = 0; c <= (int)Cols.Reference; c++)
            {
                ColumnDefinition cd = new ColumnDefinition();
                g.ColumnDefinitions.Add(cd);
            }
            g.ColumnDefinitions[0].Width = new GridLength(40);
            g.ColumnDefinitions[1].Width = new GridLength(40);

            for (int n = 0; n < NumSensors; n++)
            {
                RowDefinition rd = new RowDefinition();
                g.RowDefinitions.Add(rd);
                // COunt of sensor
                TextBox tx = CreateValueBox();
                tx.Text = n.ToString();
                Grid.SetColumn(tx, (int)Cols.Num);
                Grid.SetRow(tx, n);
                tx.Style = (Style)this.Resources["TextData"];
                g.Children.Add(tx);
               
                // Text for signal
                tx = CreateValueBox();
                mSignals.Add(tx);
                Grid.SetColumn(tx, (int)Cols.Signal);
                Grid.SetRow(tx, n);
                tx.Style = (Style)this.Resources["TextData"];
                g.Children.Add(tx);

                //Text for ref
                tx = CreateValueBox();
                mRefs.Add(tx);
                Grid.SetColumn(tx, (int)Cols.Reference);
                Grid.SetRow(tx, n);
                tx.Style = (Style)this.Resources["TextData"];
                g.Children.Add(tx);

                //Text for deltas
                tx = CreateValueBox();
                mDeltas.Add(tx);
                Grid.SetColumn(tx, (int)Cols.Delta);
                Grid.SetRow(tx, n);
                tx.Style = (Style)this.Resources["TextData"];
                g.Children.Add(tx);

                //Shape for button state
                Ellipse sp = new Ellipse();
                sp.Height = 30;
                sp.Width = 30;
                sp.Fill = Brushes.Black;
                mEllipses.Add(sp);
                Grid.SetRow(sp, n);
                Grid.SetColumn(sp, (int)Cols.Button);
                g.Children.Add(sp);
            }
        }

        private TextBox CreateValueBox()
        {
            TextBox tx = new TextBox();
            tx.Text = " ";
            tx.Height = 25;
            return tx;
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            if(serialComms.IsOpen)
            {
                serialComms.Close();
            }
        }

        private void butStop_Click(object sender, RoutedEventArgs e)
        {
            butStop.IsEnabled = false;
            butSingle.IsEnabled = true;
            butRun.IsEnabled = true;
            mTimer.Dispose();
        }

        private void butRun_Click(object sender, RoutedEventArgs e)
        {
            mTimer = new System.Threading.Timer(ThreadDisplaySensorData, this, 500, nSampleInterval);
            butStop.IsEnabled = true;
            butSingle.IsEnabled = false;
            butRun.IsEnabled = false;
        }

    }
}
