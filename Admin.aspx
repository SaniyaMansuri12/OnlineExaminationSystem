<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OnlineExaminationProject.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Admin</title>
    <style>
        .auto-style1{
            width :1024px;
        }
        .auto-style2{
             font-family:"Monotype Corsiva";
            font-size : xx-large;
            font-weight:bold;
            color:#3399FF;
            text-align:center;
            padding :0;
            width: 1030px;
        }
        .auto-style4{
            width:100%;

        }
        .auto-style5{
            text-align:center;
        }
        .auto-style12{
            text-align:center;
            width:165px;
            color:white;
        }
        .auto-style14{
            text-align:center;
            width:166px;
            
        }
        .auto-style15{
            border-width:0px;
            width:270px;
            height :52px;
        }
        .auto-style16 {
            width: 98%;
        }
        .auto-style17 {
            width: 1020px;
        }
        .auto-style18 {
            border-width: 0px;
            width: 277px;
            height: 58px;
        }
        .auto-style20 {
            width: 100%;
            margin-left: 0px;
        }
        .auto-style21 {
            width: 467px;
            height: 523px;
        }
        .auto-style22 {
            width: 871px;
            height: 523px;
        }
        .auto-style23 {
            height: 523px;
        }
        .auto-style25 {
            width: 1020px;
            height: 33px;
        }
        .auto-style26 {
            border-width: 0px;
            width: 277px;
            height: 57px;
        }
        .auto-style27 {
            border-width: 0px;
            width: 275px;
            height: 55px;
        }
        .auto-style28 {
            border-width: 0px;
            width: 275px;
            height: 52px;
        }
        .auto-style29 {
            border-width: 0px;
            width: 271px;
            height: 57px;
        }
        .auto-style30 {
            border-width: 0px;
            width: 272px;
            height: 55px;
        }
        .auto-style31 {
            width: 871px;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">Online Examination System</td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF" class="auto-style17"> &nbsp;</td>
                </tr>
                <tr><td bgcolor="#99CCFF" style="color:#000009; font-size:medium; font-weight:700" class="auto-style17">
                    <table align="center" class="auto-style16">
                        <tr>
                                <td class="auto-style12"><a href="AddUser.aspx">Add User</a></td>
                                <td class="auto-style12"><a href="DeleteUser.aspx">Delete User</a></td>
                                <td class="auto-style12"><a href="SetQPaper.aspx">Set Q Paper</a></td>
                                <td class="auto-style14"><a href="PaperPreview.aspx">Preview Q Paper</a></td>
                                <td class="auto-style14"><a href="DeleteQPaper.aspx">Delete Q Paper</a></td>
                                <td class="auto-style14"><a href="Reports.aspx">View Report</a></td>
                                <td class="auto-style5"><a href="LogOut.aspx">LogOut</a></td>
                        </tr>
                    </table>
                    </td>
                    
                </tr>
                <tr>
                    <td bgcolor="#3333FF" class="auto-style25"> </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <table align="center" class="auto-style4">
                            <tr>
                                <td bgcolor="#0066FF" class="auto-style22"> </td>
                                <td style="text-align:center" class="auto-style23">
                                    <table align="center" class="auto-style20">
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            <a href="AddUser.aspx"><img alt="" class="auto-style26" src="button/AddUser.jpg" /></a>
                                              </td>
                                        </tr>
                                          <tr>
                                            <td>
                                            <a href="DeleteUser.aspx"><img alt="" class="auto-style27" src="button/DeleteUser.jpg" /></a>
                                              </td>
                                        </tr>
                                         <tr>
                                            <td>
                                            <a href="SetQPaper.aspx"><img alt="" class="auto-style28" src="button/SetQPaper.jpg" /></a>
                                              </td>
                                        </tr>
                                           <tr>
                                            <td>
                                            <a href="PaperPreview.aspx"><img alt="" class="auto-style29" src="button/PaperPreview.jpg" /></a>
                                              </td>
                                        </tr>
                                          <tr>
                                            <td>
                                            <a href="DeleteQPaper.aspx"><img alt="" class="auto-style30" src="button/DeleteQPaper.jpg" /></a>
                                              </td>
                                        </tr>
                                          <tr>
                                            <td>
                                            <a href="Reports.aspx"><img alt="" class="auto-style18" src="button/ViewReport.jpg"/></a>
                                              </td>
                                        </tr>

                                          <tr>
                                            <td>
                                            <a href="LogOut.aspx"><img alt="" class="auto-style15" src="button/LogOut.jpg" /></a>
                                              </td>
                                        </tr>
                                        <tr>
                                            <td> &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                                <td bgcolor="#3333FF" class="auto-style21"></td>
                            </tr>
                            <tr>
                           
                            </tr>
                            <tr>
                    
                </tr>
                            <tr>
                                <td bgcolor="blue" class="auto-style31"  height ="28px"></td>
                                <td bgcolor="blue" height ="28px"></td>
                                <td bgcolor="blue"  height ="28px"></td>
                            </tr>
                        </table>
                </table>  
           
        </div>

    </form>
</body>
</html>
