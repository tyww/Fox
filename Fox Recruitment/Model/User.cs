using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class User//用户表
    {
        public User() { }

        public User(int userID, string uName, string loginInfo, string pwd, string gender, string nation, string phone, string email, string identity, string address, string languageID, DateTime lastLogDate, string state)
        {
            UserID = userID;
            UName = uName;
            LoginInfo = loginInfo;
            this.pwd = pwd;
            Gender = gender;
            Nation = nation;
            Phone = phone;
            Email = email;
            Identity = identity;
            Address = address;
            LanguageID = languageID;
            LastLogDate = lastLogDate;
            State = state;
        }

        public int UserID { get; set; }//ID
        public string UName { get; set; }//用户名称
        public string LoginInfo { get; set; }//登陆信息
        public string pwd { get; set; }        //密码
        public string Gender { get; set; }//性别
        public string Nation { get; set; }//民族
        public string Phone { get; set; }//联系电话
        public string Email { get; set; }//邮箱
        public string Identity { get; set; }//身份证号
        public string Address { get; set; }//住址
        public string LanguageID { get; set; }//
        public DateTime LastLogDate { get; set; }//最后一次登陆时间
        public string State { get; set; }//
    }
}
