using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Fox_Net
{
    public partial class frmMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Model.User ser = new BLL.UserBLL().Login(txtName.Text.Trim().ToLower(), txtPwd.Text);
            if (string.IsNullOrEmpty(ser.LoginInfo))
            {
                Session["User"] = ser;

                HttpCookie cookie = new HttpCookie("Uname", ser.UName);
                cookie.Expires = DateTime.Now.AddYears(1);
                Response.Cookies.Add(cookie);
                new BLL.UserBLL().UpdateUser(new Model.User()
                {
                    //更新最后的时间
                    UserID = ser.UserID, LastLogDate = DateTime.Now,
                });
                //Response.Redirect("frmMain.aspx");//将请求重新定向到新页面
            }
            lblMsg.Text = ser.LoginInfo;
        }
    }
}