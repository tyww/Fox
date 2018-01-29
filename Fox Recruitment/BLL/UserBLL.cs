using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class UserBLL
    {
        
    /// <summary>
    /// 用户登陆
    /// </summary>
    /// <param name="log">用户名</param>
    /// <param name="pwd">密码</param>
    /// <returns></returns>
        public Model.User Login(string log,string pwd)
        {
            pwd = Encryption(pwd);
            Model.User user = new Model.User();
            List<Model.User> date = new DAL.UserDAL().GetUser();
            if (date.Count==0)//获取List里面的元素
            {
                user.LoginInfo = "用户不存在";
                return user;
            }
            if (date[0].pwd !=pwd)
            {
                user.LoginInfo = "密码错误";
                return user;
            }
            return date[0];
            
        }
        /// <summary>
        /// 添加新用户
        /// </summary>
        /// <param name="user">用户对象</param>
        /// <returns>添加操作结果</returns>
        //public int InsertUser(Model.User user)
        //{

        //}
        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="ser">用户对象</param>
        /// <returns>结果</returns>
        public string UpdateUser(Model.User ser)
        {
            if (!string.IsNullOrEmpty(ser.pwd))
                ser.pwd = Encryption(ser.pwd);

            return Option(new DAL.UserDAL().UpdateUser(ser), "更新");
        }
        public string GetSelectUser()
        {
            return new DAL.UserDAL().Get
        }
        /// <summary>
        /// 完成操作
        /// </summary>
        /// <param name="count">影响行数</param>
        /// <param name="type">操作类型</param>
        /// <returns>操作结果</returns>
        private string Option(int count,string type)
        {
            switch(count)
            {
                case -2:
                    return "数据库连接异常！请检查您的数据库或联系管理员！";
                case -1:
                    return "数据操作异常！请检查您的数据或联系管理员！";
                case 0:
                    return "没有" + type + "任何数据！";
                default:
                    return "成功" + type + count.ToString() + "条数据！";

            }
        }
        /// 方法：对密码进行MD5加密
        /// </summary>
        /// <param name="pwd">原始密码</param>
        /// <returns>加密后的密码</returns>
        private string Encryption(string pwd)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(pwd);
            bytes = md5.ComputeHash(bytes);
            return BitConverter.ToString(bytes);
        }
    }
}
