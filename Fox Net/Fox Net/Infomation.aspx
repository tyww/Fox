<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Infomation.aspx.cs" Inherits="Fox_Net.Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <link href="CSS/Infomation.css" rel="stylesheet" />
    <title>PersonInfo</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        .Peronhead {
            display: flex;
            flex-direction: row;
        }

        .main-div1 {
            width: 100%;
        }

        .main-div2 {
            width: 1029px;
            overflow: hidden;
            margin: 0 auto;
        }

        .right_Exit {
            width: 50px;
            float: right;
            margin-top: 10px;
            margin-right: 20px;
        }

            .right_Exit input {
                float: left;
                width: 50px;
                height: 40px;
                cursor: pointer;
            }
    </style>
</head>
<body style="background-color: #e6e0e0;">
    <div style="height: 100%; background-color: #e6e0e0">
        <div style="height: 60px; background-color: #808080;" class="main-div1">
            <div class="main-div2" style="background-color: #808080; height: 60px">
                <div style="width: 120px; height: 60px; float: left">
                    <asp:Image ImageUrl="~/Image/Result.png" runat="server" />
                </div>
                <div class="right_Exit">
                    <input id="BtnExit" type="button" value="退出" />
                </div>
            </div>
        </div>
    </div>
    <div id="Infomenu" style="height: 50px; background-color: #e6e0e0; font-size: 30px;" class="main-div1">
        <div style="width: 100%" class="menu_box">
            <ul class="Infomenu">
                <li><a href="frmMain.aspx">首页</a></li>
                <li><a href="Position.aspx">职位</a></li>
                <li><a href="Infomation.aspx">社区</a></li>
                <li><a>校园</a></li>
            </ul>
        </div>
        <div class="main-div2" style="background-color: #e6e0e0; height: 100%;"></div>
    </div>
    <div style="height: auto; width: 1029px; margin: auto; margin-top: 15px; background-color: #e6e0e0;">
        <div style="height: 170px; width: 100%; font-size: 18px;">
            <div style="width: 330px; height: 190px; float: left; display: inline; margin-left: 30%">
                <div>
                    <asp:Label ID="Label1" runat="server" Text="姓名 ："></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="name"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label2" runat="server" Text="性别 ："></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="sex"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label7" runat="server" Text="民族 ："></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text="Nation"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label5" runat="server" Text="联系电话 ："></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="13286009010"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label9" runat="server" Text="电子邮箱 ："></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="1441799806@qq.com"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label24" runat="server" Text="身份证 ："></asp:Label>
                    <asp:Label ID="Label25" runat="server" Text="450803199610116689"></asp:Label>
                </div>
            </div>
            <div style="width: 150px; height: 170px; float: left; display: inline; border: black 1px solid; margin-right: 10%;">
                666
            </div>
        </div>
        <div style="height: 170px; font-size: 16px;">
            <div style="width: 480px; height: 170px; float: left; display: inline; margin-left: 30%">
                <div style="text-align: start; font-size: 22px">
                    <asp:Label ID="Label23" runat="server" Text="语言能力"></asp:Label>
                </div>
                &nbsp;
                    <div>
                        <asp:Label ID="Label21" runat="server" Text="语  言 ："></asp:Label>
                        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                    </div>
            </div>
        </div>
        <div style="height: 170px; font-size: 16px;">
            <div style="width: 480px; height: 170px; float: left; display: inline; margin-left: 30%">
                <div style="text-align: start; font-size: 22px">
                    <asp:Label ID="Label19" runat="server" Text="职业意向"></asp:Label>
                </div>
                &nbsp;
                            <div>
                                <asp:Label ID="Label11" runat="server" Text="期望行业 ："></asp:Label>
                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                            </div>
                <div>
                    <asp:Label ID="Label13" runat="server" Text="期望职能 ："></asp:Label>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label15" runat="server" Text="期望地点 ："></asp:Label>
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label17" runat="server" Text="期望薪资 ："></asp:Label>
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <div style="text-align: center; background-color: #e6e0e0; margin: 150px 0px 0px 0px; height: 251px; width: 1326px; font-size: 20px; opacity: 0.7">
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
</body>
</html>
