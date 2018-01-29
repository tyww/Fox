using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Notice//企业
    {
        public Notice() { }

        public Notice(int nID, string name, string loginInfo, string npwd, string industry, string natur, string district, int number, int fund, DateTime establish, string site, int dawk, string contact, string phone, DateTime lastLogDate, string nState)
        {
            NID = nID;
            Name = name;
            LoginInfo = loginInfo;
            Npwd = npwd;
            Industry = industry;
            Natur = natur;
            District = district;
            Number = number;
            Fund = fund;
            Establish = establish;
            Site = site;
            Dawk = dawk;
            Contact = contact;
            Phone = phone;
            LastLogDate = lastLogDate;
            NState = nState;
        }

        public int NID  {get;set;}
        public string Name { get; set; }         //企业名字
        public string LoginInfo { get; set; }//登陆信息
        public string Npwd { get; set; }        //密码
        public string Industry { get; set; }   //行业
        public string Natur { get; set; }      //公司性质
        public string District { get; set; }   //所在地
        public int Number { get; set; }        //人数
        public int Fund { get; set; }          //注册资金
        public DateTime Establish { get; set; }//成立日期
        public string Site { get; set; }      //地址
        public int Dawk { get; set; }          //邮政
        public string Contact { get; set; }    //联系人
        public string Phone { get; set; }      //联系电话
        public DateTime LastLogDate { get; set; }//最后一次登陆时间
        public string NState { get; set; }//
    }
}
