<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetQPaper.aspx.cs" Inherits="OnlineExaminationProject.SetQPaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Set Question Paper</title>

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
        .auto-style18 {
            width: 22%;
        }
        .auto-style19 {
            margin-left: 0px;
        }
        .auto-style20 {
            margin-left: 55px;
        }
        .auto-style21 {
            margin-top: 7px;
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
                     <td>
                         <asp:DropDownList ID="testlist" runat="server" Height="20px" Width="150px" AutoPostBack="true"
                             DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype">

                         </asp:DropDownList>
                         <asp:TextBox ID="testname" runat="server" Visible="False" CssClass="auto-style21"></asp:TextBox>
                         <asp:Button ID="ntest" runat="server" Text="New Test" Font-Bold="true" Width="96px" OnClick="ntest_Click" Height="33px"/>
                         <asp:Label ID="msg1" runat="server" ForeColor="Blue"></asp:Label>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineexamConnectionString %>"
                             SelectCommand="Select DISTINCT [settype] FROM [question] ORDER BY [settype]">

                         </asp:SqlDataSource>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:TextBox ID="question" runat="server" Height="50px" Width="600px" 
                             Font-Bold="true" ></asp:TextBox>
                         <asp:Label ID="msg2" runat="server" ForeColor="Blue"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                          <asp:TextBox ID="opt1" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                         <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="opt"/>
                         <asp:Label ID="msg3" runat="server" ForeColor="Blue"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                          <asp:TextBox ID="opt2" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                         <asp:RadioButton ID="RadioButton2" runat="server" Checked="true" GroupName="opt"/>
                         <asp:Label ID="msg4" runat="server" ForeColor="Blue"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                      <td>
                    <asp:TextBox ID="opt3" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                         <asp:RadioButton ID="RadioButton3" runat="server" Checked="true" GroupName="opt"/>
                         <asp:Label ID="msg5" runat="server" ForeColor="Blue"></asp:Label>
                 </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="opt4" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                         <asp:RadioButton ID="RadioButton4" runat="server" Checked="true" GroupName="opt"/>
                         <asp:Label ID="msg6" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                 <tr>
                     <td>
                           &nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         <table align="center" class="auto-style4">
                             <tr>
                                 <td class="auto-style18">
                                     <asp:Button ID="submit" runat="server" Font-Bold="true" Text="Add Question" OnClick="submit_Click" Height="32px" CssClass="auto-style20" Width="145px" />
                                 </td>
                                 <td>
                                     <asp:Button ID="paperview" runat="server" Font-Bold="true" Text="View Paper" CssClass="auto-style19" Height="32px" Width="125px" OnClick="paperview_Click1" />
                                 &nbsp;&nbsp;
                           <asp:Label ID="msg7" runat="server"></asp:Label>
                                 </td>
                             </tr>
                         </table>
                     </td>
                 </tr>
                 <tr>
                     <td bgcolor="#3333FF">&nbsp;</td>

                      <tr>
                    <td bgcolor="#666666" style="text-align:center; font-family: 'Monotype Corsiva';" >
                        <span class="style3" style="color: #FFFFFF">Designed With me</span>
                    </td>
                </tr>
                     
                     </tr>
                 
              
                    </table>
            
        </div>
    </form>
</body>
</html>
