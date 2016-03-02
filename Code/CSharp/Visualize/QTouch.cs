using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Visualize
{
    class QTouch
    {
        static public int NumBytesPerMsg(int NumSensors)
        {
            int Mult = 1 + ((NumSensors-1) / 8);
            return 1 + Mult * 1 + NumSensors * 4;
        }
    }
}
