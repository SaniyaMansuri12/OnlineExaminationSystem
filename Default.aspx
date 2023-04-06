<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineExaminationProject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
        }
        .auto-style2{
            font-family:"Monotype Corsiva";
            font-size : xx-large;
            font-weight:bold;
            color:orangered;
            text-align:center;
            padding :0;
        }
        .auto-style3{
             font-size : large;
            font-weight:bold;
            color:#FFFFFF;
            font-family:"Monotype Corsiva";
        }
        .auto-style4{
            width : 100%;

         }
        .auto-style5{
            text-align : center;
        }
        .auto-style12{
               text-align : center;
               width:165px;
        }
        .auto-style5{
               text-align : center;
               width:166px;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style2">Online Examination System</td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#99CCFF" style="color :#000099; font-size : medium; font-weight:700">&nbsp;
                        <table align="center" class="auto-style4">

                            <tr>
                                <td class="auto-style12"><a href="AddUser.aspx">Add User</a> </td>
                                <td class="auto-style12"> <a href="DeleteUser.aspx">Delete User</a> </td>
                                <td class="auto-style12"> <a href="SetQPaper.aspx">Set Q Paper</a> </td>
                                <td class="auto-style14"> <a href="PaperPreview.aspx">Preview Q Paper</a> </td>
                                <td class="auto-style14"> <a href="DeleteQPaper.aspx">Delete Q Paper</a> </td>
                                <td class="auto-style14"> <a href="Reports.aspx">View Report</a> </td>
                                <td class="auto-style5"> <a href="LogOut.aspx">LogOut</a> </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#666666" style="text-align:center">
                        <span class="auto-style3">Examination Project</span></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
