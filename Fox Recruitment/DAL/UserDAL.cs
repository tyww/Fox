using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Web;
using System.Data.SqlClient;

namespace DAL
{
    public class UserDAL
    {
        /// <summary>
        /// 查询用户信息
        /// </summary>
        /// <returns>用户信息集合</returns>
        public  List<Model.User> GetUser()
        {
            List<Model.User> user = new List<Model.User>();
            if (DbHelpe.OpenConnection())
            {
                SqlDataReader dr = DbHelpe.ExecReader("select * from User");
                if (dr != null)
                {
                    while (dr.Read())
                        user.Add(new Model.User(
                            (int)dr["UserID"],
                            dr["UName"] as string,
                            dr["LoginInfio"]as string,
                            dr["pwd"]as string,
                            dr["Gender"] as string,
                            dr["Nation"] as string,
                            dr["Phone"] as string,
                            dr["Email"] as string,
                            dr["Identity"] as string,
                            dr["Address"] as string,
                            dr["LanguageID"] as string,
                            (DateTime)dr["LastLogDate"],
                            dr["State"]as string
                            ));
                }
                    DbHelpe.CloseConnection();//关闭数据库连接
            }
                return user;
        }
        public int GetSeleceUser()
        {
            return (int)DbHelpe.ExecQuery("select * from User");
        }
        /// <summary>
        /// 添加用户信息
        /// </summary>
        /// <param name="user">用户对象</param>
        /// <returns>添加结果</returns>
        public int IsertUser(Model.User user)
        {
            return DbHelpe.ExecQuery(
                "Insert into [User]" +
                "(UserID,[UName],[LoginInfio],[pwd],[Genter],[Nation],[Phone],[Email],[Identity],[Address],[LanguageID],[LastLogDate],[State]) values ('" + user.UserID+ "','" + user.UName + "','" + user.LoginInfo + "','" + user.pwd + "','" + user.Gender + "','" + user.Nation + "','" + user.Phone + "','" + user.Email + "','" + user.Identity + "','" + user.Address + "','" + user.LanguageID + "','" + user.LastLogDate + "','" + user.State + "',)");
        }
        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="user">用户对象</param>
        /// <returns>更新结果</returns>
        public int UpdateUser(Model.User user)
        {
            string sql = "Update [User] set[State]=0";

            if (!string.IsNullOrEmpty(user.UName))
                sql += ",[UName]='" + user.UName + "'";

            if (!string.IsNullOrEmpty(user.LoginInfo))
                sql += ",[LoginInfo]='" + user.LoginInfo + "'";

            if (!string.IsNullOrEmpty(user.pwd))
                sql += ",[pwd]='" + user.pwd + "'";

            if (!string.IsNullOrEmpty(user.Nation))
                sql += ",[Nation]='" + user.Nation + "'";

            if (!string.IsNullOrEmpty(user.Phone))
                sql += ",[Phone]='" + user.Phone + "'";

            if (!string.IsNullOrEmpty(user.Email))
                sql += ",[Email]='" + user.Email + "'";

            if (!string.IsNullOrEmpty(user.Identity))
                sql += ",[Identity]='" + user.Identity + "'";

            if (!string.IsNullOrEmpty(user.Address))
                sql += ",[Address]='" + user.Address + "'";

            if (!string.IsNullOrEmpty(user.LanguageID))
                sql += ",[LanguageID]='" + user.LanguageID + "'";

            if (user.LastLogDate.Year > 1)
                sql += ",[LastLogDate]='" + user.LastLogDate + "'";

            if (!string.IsNullOrEmpty(user.State))
                sql += ",[State]='" + user.State + "'";

            sql += " where [UserID]='" + user.UserID + "'";
            return DbHelpe.ExecQuery(sql);
        }
        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id">用户编号</param>
        /// <returns>删除结果</returns>
        public int DeleteUser(string id)
        {
            return DbHelpe.ExecQuery("update [User] set [State]=1 where [UserID] in(" + id + ")");
        }
    }
}
