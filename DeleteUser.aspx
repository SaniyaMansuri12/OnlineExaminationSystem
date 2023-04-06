<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="OnlineExaminationProject.DeleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1{
            width:1024px;

        }
        .style2{
            font-family:"Monotype Corsiva";
            font-size : xx-large;
            font-weight:bold;
            color:#3399FF;
            text-align:center;
            padding :0;   
        }
        .style3{
              font-size : large;
              font-weight:bold;
              color:#FFFFFF;
              font-family:"Monotype Corsiva";
        }
        .style4{
            width:100%;
        }
        .style5{
            text-align:center;
        }
        .style12{
            text-align:center;
            width: 165px;
        }
        .style14 {
            text-align: center;
            width: 166px;
        }
        .style15{
            width:650px;
        }
        .style16{
            width:27px;
        }
        .style17{
            width:576px;
            font-weight:700;
        }
        .style18{
            width:99px;
        }
        .style19{
            width:25px;
        }
        .style20{
            text-align: center;
            width: 165px;
            color:#FFFFFF;
            text-decoration:underline;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        Online Examination System</td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#99CCFF" style="color:#000069; font-size:medium;font-weight:700">
                        <table align="center" class="style4">
                            <tr>
                             <td class="style20">
                                 <a href ="AddUser.aspx">Add User</a></td>
                             <td class="style12">
                                 <a href ="DeleteUser.aspx">Delete User</a></td>
                             <td class="style12">
                                 <a href ="SetQPaper.aspx">Set Q Paper</a></td>
                             <td class="style14">
                                 <a href ="PaperPreview.aspx">Preview Q Paper</a></td>
                            <td class="style14">
                                 <a href ="DeleteQPaper.aspx">Delete Q Paper</a></td>
                            <td class="style14">
                                 <a href ="Reports.aspx">View Report</a></td>
                            <td class="style5">
                                 <a href ="LogOut.aspx">Logout</a></td>
                            </tr>


                        </table>
                    </td>
                </tr>
                 <tr>
                    <td style="text-align:center">
                     <asp:DropDownList ID="Userlist" runat="server" Height="34px" Width="184px" DataSourceID="SqlDataSource1" 
                         DataTextField="username" DataValueField="username" Font-Bold="False" Font-Size="Medium">

                     </asp:DropDownList>
                     </td>
            </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                            ConnectionString="<%$ ConnectionStrings:onlineexamConnectionString %>"
                            
                            SelectCommand="SELECT [username] FROM [login] WHERE ([type] = @type)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Userlist" DefaultValue="user" Name="type" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Button ID="duser" runat="server" Text="Delete User" Width="200px"
                            style ="font-weight:700" OnClick="duser_Click" Height="34px" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Label ID="msg" runat="server" ForeColor="Red" ></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" bgcolor="#666666" style="text-align:center; color: #FFFFFF; font-family: 'Monotype Corsiva';">
                         <span class="auto-style2">Examination Project : by Me</span>&nbsp;</td>
                </tr>
                </table>
        </div>
       
    </form>
</body>
</html>
