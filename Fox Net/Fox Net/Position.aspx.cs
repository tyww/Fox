using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fox_Net
{
    public partial class Position : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BindRepeater(int index)
        {
            PagedDataSource pd = new PagedDataSource();
            pd.AllowPaging = true;//是否启用分页
            pd.PageSize = 5;

            BLL.UserBLL userBLL = new BLL.UserBLL();
            pd.DataSource=userBLL.
        }
    }
}