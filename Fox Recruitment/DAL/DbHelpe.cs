using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    /// <summary>
    /// 类：用于完成有关SQL Server数据库的操作
    /// </summary>
    public class DbHelpe
    {
        //私有字段：从配置文件读取数据库连接字符串
        private static string connStr = ConfigurationManager.ConnectionStrings["SQL"].ConnectionString;
        //私有字段：数据库连接对象
        private static SqlConnection conn = null;

        /// <summary>
        /// 方法：创建并打开数据库连接
        /// </summary>
        /// <returns>是否成功打开数据库连接</returns>
        public static bool OpenConnection()
        {
            //如果连接对象为空，则创建新的连接对象
            if (conn == null)
                conn = new SqlConnection(connStr);

            //打开数据库连接，如成功则返回true，如发生异常则返回false
            try
            {
                conn.Open();
                return true;
            }
            catch
            {
                conn = null;
                return false;
            }
        }

        /// <summary>
        /// 方法：关闭数据库连接
        /// </summary>
        public static void CloseConnection()
        {
            conn.Close();
            conn = null;
        }

        /// <summary>
        /// 方法：根据指令填充数据表，在此完成查询类型的操作
        /// </summary>
        /// <param name="sqlQuery">SQL查询命令或存储过程名称</param>
        /// <param name="cmType">查询命令的类型，默认为SQL查询语句</param>
        /// <param name="parms">参数列表，默认为无参</param>
        /// <returns>填充的数据表</returns>
        public static DataTable FillTable(string sqlQuery, CommandType cmType = CommandType.Text, SqlParameter[] parms = null)
        {
            //创建数据库连接
            using (SqlConnection cn = new SqlConnection(connStr))
            {
                //创建数据适配器对象
                SqlDataAdapter da = new SqlDataAdapter(sqlQuery, cn);
                //创建数据表对象
                DataTable dt = new DataTable();
                //设置查询命令类型
                da.SelectCommand.CommandType = cmType;

                //如果参数列表不为空，则将其添加到命令参数集合中
                if (parms != null)
                    da.SelectCommand.Parameters.AddRange(parms);

                
                try
                {
                    //填充数据表，如果成功则返回填充的数据表
                    da.Fill(dt);
                    return dt;
                }
                catch
                {
                    //如果有异常则返回空
                    return null;
                }
                finally
                {
                    //销毁对象
                    dt.Dispose();
                    da.Dispose();
                }
            }
        }

        /// <summary>
        /// 方法：根据指令获取数据读取对象，在此完成查询类型操作
        /// </summary>
        /// <param name="sqlQuery">SQL查询命令或存储过程名称</param>
        /// <param name="cmType">查询命令的类型，默认为SQL查询语句</param>
        /// <param name="parms">参数列表，默认为无参</param>
        /// <returns>数据读取对象</returns>
        public static SqlDataReader ExecReader(string sqlQuery, CommandType cmType = CommandType.Text, SqlParameter[] parms = null)
        {
            //创建命令对象
            SqlCommand cm = new SqlCommand(sqlQuery, conn);
            //设置命令类型
            cm.CommandType = cmType;

            //如果参数列表不为空，则将其添加到命令参数集合中
            if (parms != null)
                cm.Parameters.AddRange(parms);

            try
            {
                //执行操作，如果成功则返回数据读取对象
                return cm.ExecuteReader();
            }
            catch
            {
                //如果有异常则返回空
                return null;
            }
        }

        /// <summary>
        /// 方法：返回受影响的行数，在此完成添加、更新、删除类型的操作
        /// </summary>
        /// <param name="sqlQuery">SQL查询命令或存储过程名称</param>
        /// <param name="cmType">查询命令的类型，默认为SQL查询语句</param>
        /// <param name="parms">参数列表，默认为无参</param>
        /// <returns>受影响的行数：
        ///          -2：表示数据库连接异常
        ///          -1：表示命令异常
        /// </returns>
        public static int ExecQuery(string sqlQuery, CommandType cmType = CommandType.Text, SqlParameter[] parms = null)
        {
            //创建数据库连接
            using (SqlConnection cn = new SqlConnection(connStr))
            {
                //创建命令对象
                SqlCommand cm = new SqlCommand(sqlQuery, cn);
                //设置命令类型
                cm.CommandType = cmType;

                //如果参数列表不为空，则将其添加到命令参数集合中
                if (parms != null)
                    cm.Parameters.AddRange(parms);

                try
                {
                    //发开数据库连接，如果成功则继续后面的操作
                    cn.Open();

                    try
                    {
                        //执行操作，如果成功则返回受影响的行数
                        return cm.ExecuteNonQuery();
                    }
                    catch
                    {
                        //如果操作异常，则返回-1
                        return -1;
                    }
                }
                catch
                {
                    //如果数据库连接异常，则返回-2
                    return -2;
                }
                finally
                {
                    //销毁对象
                    cm.Dispose();
                }
            }
        }

        /// <summary>
        /// 方法：返回首行首列的值，在此完成所有验证查询和聚合查询类型的操作
        /// </summary>
        /// <param name="sqlQuery">SQL查询命令或存储过程名称</param>
        /// <param name="cmType">查询命令的类型，默认为SQL查询语句</param>
        /// <param name="parms">参数列表，默认为无参</param>
        /// <returns>首行首列的值：
        ///          -2：表示数据库连接异常
        ///          -1：表示数据操作异常
        /// </returns>
        public static object ExecScalar(string sqlQuery, CommandType cmType = CommandType.Text, SqlParameter[] parms = null)
        {
            //创建数据库连接
            using (SqlConnection cn = new SqlConnection(connStr))
            {
                //创建命令对象
                SqlCommand cm = new SqlCommand(sqlQuery, cn);
                //设置命令类型
                cm.CommandType = cmType;

                //如果参数列表不为空，则将其添加到命令参数集合中
                if (parms != null)
                    cm.Parameters.AddRange(parms);

                try
                {
                    //打开数据库连接，如果成功则继续后续操作
                    cn.Open();

                    try
                    {
                        //执行操作，如果成功则返回首行首列的值
                        return cm.ExecuteScalar();
                    }
                    catch
                    {
                        //如果操作异常，则返回-1
                        return -1;
                    }
                }
                catch
                {
                    //如果数据库连接异常，则返回-2
                    return -2;
                }
                finally
                {
                    //销毁对象
                    cm.Dispose();
                }
            }
        }
    }
}
