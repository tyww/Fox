using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fox_Net
{
    public class Resume//简历
    {
        public Resume() { }
        public Resume(int resumeID, string business, string function, string site, decimal pay, int userID)
        {
            ResumeID = resumeID;
            Business = business;
            Function = function;
            Site = site;
            Pay = pay;
            UserID = userID;
        }

        public int ResumeID { get; set; }
        public string Business { get; set; }        //行业
        public string Function { get; set; }        //职能
        public string Site { get; set; }            //地点
        public Decimal Pay { get; set; }            //薪资
        public int UserID { get; set; }
    }
}