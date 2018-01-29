<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="Fox_Recruitment.Login.ChangePwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>    
    <form id="form1" runat="server">
    <div style="text-align:center;">
            <p>
                <span style="font-size: x-large;">修改密码</span>
            </p>
        <p>
            <td style="text-align: right">
                &nbsp;
                旧密码：
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtOldPwd" TextMode="Password" Width="180px" runat="server"></asp:TextBox>
            </td>
        </p>
            <br />
&nbsp;
                新密码：
            <td style="text-align: left">
                <asp:TextBox ID="txtNewPwd" TextMode="Password" Width="180px" runat="server"></asp:TextBox>
            <p>
        </p>
        <p>
            <td style="text-align: right">
                重复新密码：</td><td style="text-align: left"><asp:TextBox ID="txtReNewPwd" TextMode="Password" Width="180px" runat="server"></asp:TextBox>
        </p>
            <p>
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSavePwd" Width="80px" runat="server" Text="保存" OnClick="btnSavePwd_Click" />&nbsp
                    <asp:Button  ID="btnExit" Width="80px" runat="server" Text="返回" OnClick="btnExit_Click"/>
                <br />
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="" />
        </p>
                <asp:ValidationSummary ID="ValidationSummary1" HeaderText="发现以下错误：" ShowMessageBox="true"
                    ShowSummary="false" runat="server" />
            <p>
        </p>
    </div>
    </form>
</body>
</html>
