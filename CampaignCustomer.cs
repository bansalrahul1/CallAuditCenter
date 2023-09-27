using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRM.Models
{
    public class CampaignCustomer
    {
        public int Campaign_Id { get; set; }
        public int Customer_Id { get; set; }
        public string Customer_Name { get; set; }
        public string CustomerTable { get; set; }
        public string Customer_State { get; set; }
        public string Product { get; set; }
        public string Decile { get; set; }
        public string Tenure { get; set; }
        public int TargetVolume { get; set; }

    }
}
