<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteQPaper.aspx.cs" Inherits="OnlineExaminationProject.DeleteQPaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            width: 1048px;
        }
        .auto-style3{
            font-family:"Monotype Corsiva";
            color:white;
            font-weight:bold;
        }
        .auto-style5{
            text-align:center;
        }
        .auto-style12{
            text-align:center;
            width:165px;
        }
        .auto-style14{
            text-align:center;
            width:166px;
            
        }
        .auto-style16 {
            width: 98%;
        }
        .auto-style17 {
            width: 1048px;
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
                    <td class="auto-style5">
                        <asp:DropDownList ID="testlist" runat="server" Height="20px" Width="201px" AutoPostBack="true"
                             DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype">

                         </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineexamConnectionString %>"
                             SelectCommand="SELECT DISTINCT [settype] FROM [question]">

                         </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="dqpaper" runat="server" Text="Delete Test" Font-Bold="true" Width="200px" OnClick="dqpaper_Click" />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="msg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#666666" style ="text-align:center">
                        <span class="auto-style3">Designed by : ME</span>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
