using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Server.Models
{
    public class CNFromPBCV
    {
        public string MaCongNhan { get; set; }
        public string HoTen { get; set; }
        public string SL { get; set; }
    }
    public class ResultCNFromPBCV
    {
        public List<CNFromPBCV> ListCongNhanFromPB { get; set; }
        public List<CNFromPBCV> ListCongNhanFromCV { get; set; }
    }
}