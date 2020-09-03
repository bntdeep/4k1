using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.ServiceModel;

namespace WFHost
{
    public partial class Form1 : Form
    {
        ServiceHost sh;
        
        public Form1()
        {
            InitializeComponent();
            this.sh = new ServiceHost(typeof(WCFdll.Service1));
            this.sh.Open();
        }
    }
}
