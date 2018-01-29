<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindPassword.aspx.cs" Inherits="Fox_Net.FindPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="CSS/Main.css" rel="stylesheet" />
</head>
<body style="background-color: powderblue">
    <form id="form1" runat="server" style="text-align: center">
        <div style="width: 1330px;height: 120px; margin: 0 50px 0 50px">
            <div style="height: 120px; margin: 0 50px 0 50px">
                <div style="float: left">
                    <asp:Image ImageUrl="~/Image/Result.png" runat="server" />
                </div>
            </div>
            <div style="text-align: center;">
                <div style="width: 500px; margin-left: 406px">
                    <p>
                        <span style="font-size: x-large">密码找回</span>
                    </p>
                    <p style="text-align: center">
                        账号(<u>N</u>)：
                                        <asp:TextBox ID="txtUid" Width="180px" MaxLength="8" AccessKey="N" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUid" ErrorMessage="请输入账号！">*</asp:RequiredFieldValidator>
                        &nbsp<asp:Button ID="btnSelect" Text="查询" runat="server" Width="40px" />
                    </p>
                    <asp:Panel ID="Panel" runat="server">
                        <div style="text-align: center">
                            <p style="text-align: center">
                                密保问题：<asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label>&nbsp;
                            </p>
                            <p>
                                答案(<u>A</u>)：<asp:TextBox ID="txtAnswer" runat="server" AccessKey="A" Width="232px"></asp:TextBox>&nbsp;
                            </p>
                            <p style="text-align: center">
                                &nbsp;
                                                <asp:Button ID="btnFind" runat="server" Text="找回" Width="180px" />
                            </p>
                            <p>
                                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="" />
                                <asp:ValidationSummary ID="ValidationSummary1" HeaderText="发现以下错误：" ShowMessageBox="true" ShowSummary="false" runat="server" />
                            </p>
                        </div>
                    </asp:Panel>
                </div>
            </div>
            <p>
                <a href="http://www.gd-nf.com.cn/" target="_blank">南方IT学院</a>版权所有
            </p>
            <p>
                服务热线：0756-6811222 0756-6813333
            </p>
            <p>
                CopyRight &copy; 1996-2016 South Vocational College. All Rights Reserved.
            </p>
        </div>
    </form>
</body>
</html>
