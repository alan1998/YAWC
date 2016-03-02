using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO.Ports;
using System.Windows.Forms;

namespace Visualize
{
    public class Comms
    {
        private bool m_bIsOpen = false;
        private SerialPort mPort;
        public bool Open(string p)
        {
            if (!m_bIsOpen)
            {
                if(mPort == null)
                {
                    mPort = new SerialPort(p);
                    mPort.BaudRate = 56000;
                    mPort.Open();
                    mPort.ReadTimeout = 200;
                    m_bIsOpen = mPort.IsOpen;
                }
            }
            return m_bIsOpen;
        }
        public void Close()
        {
            if(mPort != null)
            {
                if (mPort.IsOpen)
                    mPort.Close();
            }
        }

        public void ClearBuffer()
        {
            if(mPort.IsOpen)
            {
                if(mPort.BytesToRead > 0)
                {
                    int n = mPort.BytesToRead;
                    mPort.DiscardInBuffer();
                }
            }
        }

        public bool IsOpen
        {
            get { return m_bIsOpen; }
        }

        public bool SendByte(byte[] data)
        {
            if(m_bIsOpen)
            {
                mPort.Write(data, 0, 1);
                return true;
            }
            else
                return false;
        }

        public bool ReadBytes(byte[] data, int nToGet)
        {
            if(m_bIsOpen)
            {
                int nRet = 0;
                try
                {
                    int nNow = Environment.TickCount & Int32.MaxValue;

                    while (mPort.BytesToRead < nToGet  )
                    { 
                        if((Environment.TickCount & Int32.MaxValue) > nNow + 2000)
                        {
                        
                            throw new TimeoutException("Not enough data received");
                        }
                    };
                    nRet = mPort.Read(data, 0, nToGet);
                    if(nRet != nToGet)
                    {
                        Console.WriteLine("To few bytes returned");
                    }
                    return true;
                }
                catch(TimeoutException e)
                {
                    MessageBox.Show(e.Message);
                    return false;
                }
            }
            else
                return false;
        }

    }
}
