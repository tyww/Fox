using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fox_Net
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataSource = new DAL.UserDAL().GetUser();
            DropDownList1.DataValueField = "UName";
            DropDownList1.DataTextField = "UName";
            DropDownList1.DataBind();

            Model.User user = Session["User"] as Model.User;
           
        }

        protected void btnRegist_Click(object sender, EventArgs e)
        {
            //邮箱验证
            String regex = "^([\\w-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([\\w-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$";
            if (!new Regex(regex).IsMatch(txtEmail.Text))
            {
                lbmsele.Text = "邮箱格式错误";
                return;
            }
            Model.User user = new Model.User();
            user.UserID=((Model.User)Session["User"]).UserID;
            user.UName = txtName.Text;
            user.pwd = txtPwd.Text;
            user.Gender = radNan.Checked ? "男" : "女";
            user.Nation = txtNation.Text;
            user.Phone = txtPhone.Text;
            user.Email = txtEmail.Text;
            user.Identity = txtIdentity.Text;
            user.Address = txtAddress.Text;
            //user.LanguageID = txtLanguageID.Text;

            lblMsg.Text = new BLL.UserBLL().UpdateUser(user);
        }
    }
}