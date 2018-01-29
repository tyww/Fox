<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Fox_Net.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body style="background-color: gainsboro">
    <form id="form1" runat="server" style="text-align: center">
        <div style="width: 1330px;">
            <div style="height: 120px; margin: 0 50px 0 50px">
                <div style="float: left">
                    <asp:Image ImageUrl="~/Image/Result.png" runat="server" />
                </div>
            </div>
        </div>
        <div style="text-align: center;">
            <p>
                <span style="font-size: x-large;">用户注册</span>
            </p>
            <p>
                姓名（<u>R</u>）：
                <asp:TextBox ID="txtName" Width="250px" runat="server" AccessKey="O"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtName" runat="server" ErrorMessage="请输入姓名！"></asp:RequiredFieldValidator>
            </p>
            <p>
                密&nbsp; 码（<u>P</u>）：<asp:TextBox ID="txtPwd" Width="250px" AccessKey="P" MaxLength="8" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPwd" runat="server" ErrorMessage="请输入密码！"></asp:RequiredFieldValidator>
            </p>
            <p>
                重复密码（<u>R</u>）：<asp:TextBox ID="txtRePwd" Width="250px" AccessKey="R" MaxLength="8" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtRePwd" runat="server" ErrorMessage="请重复输入密码！"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" runat="server" ErrorMessage="两次密码必须一致！">*</asp:CompareValidator>
            </p>
            <div>
                <div style="float: left; width: 100px; height: 30px; margin-left: 33%">
                    性别（<u>R</u>）：
                </div>
                <div style="width: 150px; margin-left: 40%">
                    <p style="margin: 0 auto; width: 200px">
                        <asp:RadioButton ID="radNan" runat="server" Checked="true" GroupName="Gender" Text="男" />&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radNv" Text="女" GroupName="Gender" runat="server" />
                    </p>
                </div>
            </div>
            <p>
                民族（<u>R</u>）：<asp:TextBox ID="txtNation" Width="250px" AccessKey="F" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtRePwd" runat="server" ErrorMessage="请输入民族！"></asp:RequiredFieldValidator>
            </p>
            <p>
                联系方式（<u>R</u>）：<asp:TextBox ID="txtPhone" Width="250px" AccessKey="G" MaxLength="8" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtRePwd" runat="server" ErrorMessage="请输入联系方式！"></asp:RequiredFieldValidator>
            </p>
            <p>
                电子邮箱（<u>E</u>）：<asp:TextBox ID="txtEmail" Width="250px" AccessKey="H" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtEmail" runat="server" ErrorMessage="请输入电子邮箱！"></asp:RequiredFieldValidator>

                <asp:Label ID="lbmsele" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                身份证号（<u>R</u>）：<asp:TextBox ID="txtIdentity" Width="250px" AccessKey="J" MaxLength="18" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtIdentity" runat="server" ErrorMessage="请输入身份证号！"></asp:RequiredFieldValidator>
            </p>
            <div>
                <p>
                    住&nbsp;址（<u>R</u>）：<asp:TextBox ID="txtAddress" Width="250px" AccessKey="J" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtAddress" runat="server" ErrorMessage="请输入住址！"></asp:RequiredFieldValidator>
                </p>
                <p>
                    语&nbsp;言（<u>R</u>）：<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="DropDownList1" runat="server" ErrorMessage="请选择语言！"></asp:RequiredFieldValidator>
                </p>


                <p>
                    <textarea style="text-indent: 2em; font-size: 16px; width: 250px; height: 100px;" maxlength="300"></textarea>
                </p>
            </div>
            <p style="text-align: center;">
                <asp:Button ID="btnRegist" Width="180px" runat="server" Text="注册" OnClick="btnRegist_Click" />
            </p>
            <p>
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="" />
                <asp:ValidationSummary ID="ValidationSummary1" HeaderText="发现以下错误：" ShowMessageBox="true" ShowSummary="false" runat="server" />
            </p>
        </div>
        <br />
        <div style="text-align: center; margin: 0px 0px 0px 0px; height: 251px; width: 1326px;">
            <p>
                <br />
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
