<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindPassword.aspx.cs" Inherits="Fox_Recruitment.Login.FindPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>密码找回</title>
</head>
<body>
        <form id="form1" runat="server">
        <div style="text-align:center">
            <p>
                <span style="font-size: x-large;">密码找回</span>
            </p>
            <p>
                账号（<u>N</u>）：
                <asp:TextBox ID="txtUid" Width="180px" AccessKey="N" MaxLength="8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUid" ErrorMessage="请输入您的账号！">*</asp:RequiredFieldValidator>
                <asp:Button ID="btnShow" runat="server" Text="查询" OnClick="btnShow_Click" />
            </p>
            <div style="text-align:center">
                        <p style="text-align: center;">
                                密保问题 ：
                            <br/>
                                答案（<u>A</u>）：
                            <br />
                                <asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label>
                            </p>

                                <asp:TextBox ID="txtAnswer" Width="230px" AccessKey="A" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnswer" ErrorMessage="请输入您的答案！">*</asp:RequiredFieldValidator>
                <p style="text-align: center;">
                    <asp:Button ID="btnFind" Width="180px" runat="server" Text="找回" OnClick="btnFind_Click" />
                </p>
                        <p style="text-align: center;">
                    <asp:Button  ID="btnExit" Width="180px" runat="server" Text="返回" OnClick="btnExit_Click"/>
                </p>

            <p>
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="" />
                <asp:ValidationSummary ID="ValidationSummary1" HeaderText="发现以下错误：" ShowMessageBox="true" ShowSummary="false" runat="server" />
                </div>
        </div>
        </form>
</body>
</html>
