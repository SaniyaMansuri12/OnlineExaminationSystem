<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditQPaper.aspx.cs" Inherits="OnlineExaminationProject.EditQPaper" %>

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
        }
        .auto-style14{
            text-align:center;
            width:166px;
            
        }
        .auto-style16 {
            width: 98%;
        }
        .auto-style17 {
            width: 1030px;
        }
        .auto-style19 {
            margin-left: 0px;
        }
        .auto-style20 {
            width: 22%;
        }
        .auto-style21 {
            width: 31%;
        }
        .auto-style22 {
            margin-left: 94px;
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
                    <td>&nbsp;

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="question" runat="server" Height="50px" Width="600px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:TextBox ID="opt1" runat="server" Width="600px"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="opt"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                            <asp:TextBox ID="opt2" runat="server" Width="600px"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt"/>
                    </td>
                </tr>
                  <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                            <asp:TextBox ID="opt3" runat="server" Width="600px"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt"/>
                    </td>
                </tr>
                  <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                            <asp:TextBox ID="opt4" runat="server" Width="600px"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt"/>
                    </td>
                </tr>

                 <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table align="center" class="auto-style4" >
                            <tr>
                                <td class="auto-style21">
                                    <asp:Button ID="update" runat="server" Text="Update" Font-Bold="true" Width="134px" OnClick="update_Click" CssClass="auto-style22" Height="33px" />

                                </td>

                                 <td class="auto-style20">
                                    <asp:Button ID="delete" runat="server" Text="Delete" Font-Bold="true" Width="134px" OnClick="delete_Click" CssClass="auto-style19" Height="33px" />

                                </td>
                                <td class="auto-style16">
                                    <asp:Button ID="viewpaper" runat="server" Text="View Paper" Font-Bold="true" Width="134px" OnClick="viewpaper_Click" CssClass="auto-style19" Height="31px" />

                                </td>
                            </tr>
                            
                                  
                        </table>
                    </td>
                    </tr>
                <tr>
                    <td bgcolor="#3333FF">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#666666" style="text-align:center; color: #FFFFFF;">
                        <span class="auto-style3" style="font-family: 'Monotype Corsiva'">Designed by : ME</span>

                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
