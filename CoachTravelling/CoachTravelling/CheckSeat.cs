using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace CoachTravelling
{
    class CheckSeat
    {
        interface iCheckSeat
        {
            int type { get; set; }

            int action(string get);
        }

        public class Standard : iCheckSeat
        {
            public int type { get; set;}

            public int action(string get)
            {
               return type = getInfo.getTripPrice(get);
            }
        }

        public class VIP : iCheckSeat
        {
            public int type { get; set; }

            public int action(string get)
            {
                return type = getInfo.getTripVIPPrice(get);
            }
        }
    }
}
