<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMain.aspx.cs" Inherits="Fox_Net.frmMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <title></title>
    <link href="CSS/Home.css" rel="stylesheet" />
    <link href="CSS/lanrenzhijia.css" rel="stylesheet" />
    <link href="CSS/position.css" rel="stylesheet" />
    <script src="jquery/jquery.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $('.theme-login').click(function () {
                $('.theme-popover-mask').fadeIn(100);
                $('.theme-popover').slideDown(200);
            })
            $('.theme-poptit .close').click(function () {
                $('.theme-popover-mask').fadeOut(100);
                $('.theme-popover').slideUp(200);
            })

        })</script>
    <style>
        .nav {
            height: 400px;
            width: 140px;
            background-color: #e8e8e8;
        }

            .nav ul {
                list-style: none;
                position: relative;
            }

                .nav ul li {
                    line-height: 30px;
                    text-align: left;
                    padding: 10px 0 0 0;
                }

                    .nav ul li a {
                        margin: 0;
                        padding: 0;
                        text-decoration: none;
                        color: #000;
                        font-weight: normal;
                    }

                    .nav ul li ul {
                        position: absolute;
                        top: 0;
                        left: 150px;
                        width: 140px;
                        height: 400px;
                        display: none;
                    }

                    .nav ul li:hover ul {
                        display: block;
                    }

                    .nav ul li a:hover {
                        color: red;
                    }
    </style>
</head>
<body style="background-color: #ffffff;">
    <form id="form1" runat="server">
        <div id="One">
            <div class="div1">
                <div class="logo">图标</div>
                <div id="div_menu">
                    <ul>
                        <li><a>首页&nbsp;</a></li>
                        <li><a href="Resume.aspx">职位&nbsp;</a></li>
                        <li><a href="Infomation.aspx">社区&nbsp;</a></li>
                        <li><a>校园&nbsp;</a></li>
                        <%--<li><a>外企&nbsp;</a></li>--%>
                    </ul>
                </div>
                <div class="right">
                    <div class="theme-buy">
                        <a class="btn btn-primary btn-large theme-login" href="javascript:;">登陆</a>
                        <a class="btn btn-primary btn-large " href="Register.aspx">注册</a>
                    </div>
                    <div class="theme-popover">
                        <div class="theme-poptit">
                            <a href="javascript:;" title="关闭" class="close">×</a>
                            <h3>登录 是一种态度</h3>
                        </div>
                        <div class="theme-popbod dform">
                            <form class="theme-signin" name="loginform" action="" method="post">
                                <ol>
                                    <li>
                                        <h4>你必须先登录！</h4>
                                    </li>
                                    <li><strong>用户名：</strong><asp:TextBox ID="txtName" runat="server" class="ipt" type="text" name="log" value="账号" MaxLength="4" size="20"></asp:TextBox></li>
                                                                    
                                    <li><strong>密&nbsp;&nbsp;&nbsp;码：</strong><asp:TextBox ID="txtPwd" runat="server" class="ipt" type="text" name="Pwd" value="账号" MaxLength="4" size="20"></asp:TextBox>
                                    </li>
                                    <li>
                                        <asp:Button ID="btnLogin" Width="80px" class="btn btn-primary" type="submit" name="submit" runat="server" Text="登录" OnClick="btnLogin_Click" />
                                        <a class="btn btn-primary " href="Register.aspx">注册</a></li>
                                    <li>
                                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="" />
                                    </li>
                                </ol>
                            </form>
                        </div>
                    </div>
                    <div class="theme-popover-mask"></div>
                </div>
            </div>

        </div>
        <div>
            <div class="div2">
                <div id="baner">
                    <div class="pic">
                        <ul>
                            <li><a=""></a>
                                <img src="Image/中国银行.jpg" /></li>
                            <li><a=""></a>
                                <img src="Image/奔驰.jpg" /></li>
                            <li><a=""></a>
                                <img src="Image/中国电信.jpg" /></li>
                            <li><a=""></a>
                                <img src="Image/中国电建.jpg" /></li>
                            <li><a=""></a>
                                <img src="Image/中国银行.jpg" /></li>
                            <li><a=""></a>
                                <img src="Image/奔驰.jpg" /></li>
                        </ul>
                        r
                    </div>
                    <div class="tab">
                        <ul>
                            <li class="on"></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <%--<div class="btn">
                            <div id="leftbtn">&lt;</div>
                            <div id="rightbtn">&rang;</div>
                        </div>--%>
                </div>
            </div>


            <div class="div3">
                <div style="height: 40px; width: 1350px; text-align: center">
                    <p class="type">
                        <input type="text" style="height: 40px; width: 700px; border-radius: 7px; /*滚动按钮背景变角边圆/*placeholder 移动鼠标字体消失*/" placeholder="输入职位关键词：如：销售总监等" />
                        <button type="button" style="border-radius: 7px; cursor: pointer; height: 40px; width: 60px; tab-size: 20px">搜索</button>
                    </p>
                </div>
                <div class="seelect">
                    <a>热门搜索：</a>
                    &nbsp;
                    <a>投资经理</a>
                    &nbsp;&nbsp;&nbsp;
                    <a>土建工程师</a>
                    &nbsp;&nbsp;&nbsp;
                    <a>销售</a>
                    &nbsp;&nbsp;&nbsp;
                    <a>产品经理</a>
                    &nbsp;&nbsp;&nbsp;
                    <a>java</a>
                    &nbsp;&nbsp;&nbsp;
                    <a>人力资源</a>
                </div>
                <div class="select-1">
                    <a href="https://www.liepin.com/it/">IT-互联网</a>
                    &nbsp;&nbsp;&nbsp;
                    <a>房地产</a>
                    &nbsp;&nbsp;&nbsp;
                    <a>金融</a>
                    &nbsp;&nbsp;&nbsp;
                    <a>消费品</a>
                </div>
                <div class="IT2">
                    <div class="div_1 nav">
                        <ul style="text-align: center">
                            <li><a style="font-size: 30px">IT·互联网</a></li>
                            <li><a style="font-size: 15px; color: black">Java开发工程师</a>
                                <ul>
                                    <li><a>Java开发经理</a></li>
                                    <li><a>Java开发总监</a></li>
                                    <li><a>Java开发组长</a></li>
                                    <li><a>Java开发程序</a></li>
                                </ul>

                            </li>
                            <li><a style="font-size: 15px; color: black">.Net开发工程师</a>
                                <ul>
                                    <li><a>.Net开发经理</a></li>
                                    <li><a>.Net开发总监</a></li>
                                    <li><a>.Net开发组长</a></li>
                                    <li><a>.Net开发程序员</a></li>
                                </ul>

                            </li>
                            <li><a style="font-size: 15px; color: black">PHP开发工程师</a>
                                <ul>
                                    <li><a>PHP开发经理</a></li>
                                    <li><a>PHP开发总监</a></li>
                                    <li><a>PHP开发组长</a></li>
                                    <li><a>PHP开发程序员</a></li>
                                </ul>

                            </li>
                            <li><a style="font-size: 15px; color: black">UI设计师</a>
                                <ul>
                                    <li><a>美工</a></li>
                                    <li><a>宣传</a></li>
                                    <li><a></a></li>
                                    <li><a></a></li>
                                </ul>

                            </li>
                            <li><a style="font-size: 15px; color: black">Android开发工程师</a>
                                <ul>
                                    <li><a>Android应用宣传</a></li>
                                    <li><a>Android应用推广</a></li>
                                    <li><a>Android应用售后</a></li>
                                    <li><a>Android应用维护</a></li>
                                </ul>

                            </li>
                            <li><a style="font-size: 15px; color: black">产品经理</a>
                                <ul>
                                    <li><a>产品宣传</a></li>
                                    <li><a>产品推广</a></li>
                                    <li><a>产品售后</a></li>
                                    <li><a>产品维护</a></li>
                                </ul>

                            </li>
                        </ul>
                    </div>
                    <div class="Bott_2" style="border: #e9e8e8 1px solid">
                    </div>
                    <div>
                    </div>
                </div>
                <div class="IT2 ">
                    <div class="div_1 nav">
                        <ul style="text-align: center">
                            <li><a style="font-size: 30px">金融</a></li>
                            <li><a style="font-size: 15px; color: black">.Net</a>
                                <ul>
                                    <li><a>银行行长</a></li>
                                    <li><a>银行经理</a></li>
                                    <li><a>银行组长</a></li>
                                    <li><a>银行员工</a></li>
                                </ul>
                            </li>

                            <li><a style="font-size: 15px; color: black">保险</a>
                                <ul>
                                    <li><a>保险总经理</a></li>
                                    <li><a>保险经理</a></li>
                                    <li><a>保险部长</a></li>
                                    <li><a>保险业务员</a></li>
                                </ul>
                            </li>
                            <li><a style="font-size: 15px; color: black">投资</a>
                                <ul>
                                    <li><a>投资南方IT学院</a></li>
                                    <li><a>投资润麟</a></li>
                                    <li><a>投资锐点</a></li>
                                    <li><a>投资飞企</a></li>
                                </ul>
                            </li>
                            <li><a style="font-size: 15px; color: black">Android</a>
                                <ul>
                                    <li><a>Android1</a></li>
                                    <li><a>Android2</a></li>
                                    <li><a>Android3</a></li>
                                    <li><a>Android4</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="Bott_2" style="border: #00ffff 1px solid">
                    </div>
                    <div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div style="text-align: center; margin: 0px 0px 0px 0px; height: 251px; width: 1326px; font-size: 20px; opacity: 0.7">
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
        </div>
    </form>
    <script type="text/javascript" src="JS/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function () {
            var $tabLi = $('#baner .tab li');
            var $picUl = $('#baner .pic ul');
            var $baner = $('#baner');
            var $btn = $('#baner .btn');
            var $btnDiv = $('#baner .btn div');
            var imgWidth = $('#baner .pic li').width();
            var index = 0;
            var nowTime = new Date();/*等于当前时间*/

            $tabLi.click(function () {
                index = $(this).index();
                $(this).addClass('on').siblings().removeAttr
                $picUl.animate({
                    marginLeft: -imgWidth * (index + 1) + 'px'
                }, 300);
            });

            $baner.hover(function () {
                $btn.show();
                clearInterval(timer);
            }, function () {
                $btn.hide();

                time = setInterval(function () {
                    index++;
                    fnct();
                }, 5000);/*轮播滚动时间间隔时长*/
            })

            $btnDiv.hover(function () {
                $(this).addClass('hover');
            }, function () {
                $(this).removeClass('hover');
            }).click(function () {
                if (new Date() - nowTime > 350) {

                    nowTime = new Date();

                    var i = $(this).index();
                    i ? index++ : index--;/*简化下面的if*/
                    fnct();

                }
            }).mousedown(function () {
                return false;/*鼠标按下清楚默认事件*/
            });

            var timer = setInterval(function () {
                index++;
                fnct();
            }, 5000);/*轮播滚动时间间隔时长*/

            function fnct() {
                var liIndex = index;
                if (liIndex >= $tabLi.length) {
                    liIndex = 0;
                }
                else if (index < 0) {
                    liIndex = $tabLi.length - 1;
                }
                $tabLi.eq(liIndex).addClass('on').siblings().removeAttr

                $picUl.animate({
                    marginLeft: -imgWidth * (index + 1) + 'px'

                }, 300, function () {
                    if (index == $tabLi.length - 1) {
                        //$picUl.css('marginLeft', -imgWidth + 'px');
                        $picUl.css('marginLeft', 0 + 'px');
                        index = 0;
                    }
                    else if (index < 0) {
                        $picUl.css('marginLeft', -imgWidth * ($tabLi.length) + 'px');
                        index = $tabLi.length - 1;
                    }
                });
            }
        });
    </script>
</body>
</html>
