using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using Test.Base;

namespace Test.ConBase
{
    internal class ConDb
    {
        public static Frame mainFrame { get; set; }
        
        
            public static DBaseEntities db = new DBaseEntities();
        
    }
}
