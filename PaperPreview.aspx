<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaperPreview.aspx.cs" Inherits="OnlineExaminationProject.PaperPreview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paper View </title>
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
        
        }
        .auto-style3{
            font-size:large;
            font-weight:bold;
            color:#FFFFFF;
            font-family:'Monotype Corsiva';
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
        .auto-style15{
            text-align:center;
            width:166px;
            color:#FFFFFF;
            text-decoration:underline;
        }
        .auto-style16 {
            text-align:center;
            font-family:"Monotype Corsiva";
            font-weight:bold;
            font-size:medium;
            color:#0000FF;
        }
        .auto-style17 {
            width: 36px;
        }
        .auto-style19 {
            width: 623px;
        }
        .auto-style20 {
            width: 214px;
        }
        .auto-style21 {
            width: 61px;
        }
        .auto-style22 {
             width: 173px;
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
                    <td bgcolor="#3333FF"> &nbsp;</td>
                </tr>
                <tr><td bgcolor="#99CCFF" style="color:#000009; font-size:medium; font-weight:700">
                    <table align="center" class="auto-style4">
                        <tr>
                                <td class="auto-style12"><a href="AddUser.aspx">Add User</a></td>
                                <td class="auto-style12"><a href="DeleteUser.aspx">Delete User</a></td>
                                <td class="auto-style12"><a href="SetQPaper.aspx">Set Q Paper</a></td>
                                <td class="auto-style15"><a href="PaperPreview.aspx">Preview Q Paper</a></td>
                                <td class="auto-style14"><a href="DeleteQPaper.aspx">Delete Q Paper</a></td>
                                <td class="auto-style14"><a href="Reports.aspx">View Report</a></td>
                                <td class="auto-style5"><a href="LogOut.aspx">LogOut</a></td>
                        </tr>
                        </table>
                    </td>
                    </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        Select a Question Paper To Preview
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        &nbsp;<asp:DropDownList ID="testlist" runat="server" AutoPostBack="true" 
                            DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype"
                            Height ="24px" Width="170px" OnSelectedIndexChanged="testlist_SelectedIndexChanged">
                            
                              </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineexamConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"
                            ></asp:SqlDataSource>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table align="center" class="auto-style4">
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td bgcolor="#0066FF">
                                    <table align="center" class="auto-style4">
                                        <tr>
                                            <td class="auto-style17">
                                                QID
                                            </td>
                                             <td class="auto-style19">
                                                Question
                                            </td>
                                             <td class="auto-style20">
                                                Choices
                                            </td>
                                           <td>
                                               &nbsp;
                                           </td>
                                        </tr>
                                        <%
    while (dr.Read()) {
                                                %><%ans = Convert.ToInt16(dr.GetValue(7)); %>
                                        <%if (ans == 1)
    {
        CheckBox1.Checked = true;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
    }%>
                                        <%
    if (ans == 2)
    {
        CheckBox1.Checked = false;
        CheckBox2.Checked = true;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
    } %>

                                        <%
    if (ans == 3)
    {
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = true;
        CheckBox4.Checked = false;
    } %>
                                        <%
                                            if (ans == 4)
                                            {
                                                CheckBox1.Checked = false;
                                                CheckBox2.Checked = false;
                                                CheckBox3.Checked = false;
                                                CheckBox4.Checked = true;
                                            }
                                            %>
                                        <tr>
                                            <td bgcolor="white" class="auto-style17">
                                                <%=dr.GetValue(0) %>

                                            </td>

                                            <td bgcolor="white" class="auto-style19">
                                                <%=dr.GetValue(1) %>

                                            </td>

                                            <td bgcolor="white" class="auto-style20">
                                               <table align="center" class="auto-style4">
                                                   <tr>
                                                       <td class="auto-style22">
                                                           <%=dr.GetValue(3) %>
                                                       </td>
                                                       <td>
                                                           <asp:CheckBox ID="CheckBox1" runat="server" />
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td class="auto-style22">
                                                           <%=dr.GetValue(4) %>
                                                       </td>
                                                       <td>
                                                           <asp:CheckBox ID="CheckBox2" runat="server" />
                                                           </td>
                                                   </tr>
                                                   <tr>
                                                       <td class="auto-style22">
                                                           <%=dr.GetValue(5) %>
                                                       </td>
                                                       <td>
                                                           <asp:CheckBox ID="CheckBox3" runat="server" />
                                                           </td>
                                                   </tr>
                                                   <tr>
                                                       <td class="auto-style22">
                                                           <%=dr.GetValue(6) %>
                                                       </td>
                                                       <td>
                                                           <asp:CheckBox ID="CheckBox4" runat="server" />
                                                           </td>
                                                   </tr>
                                               </table>

                                            </td>
                                            <td bgcolor="white"><a href="EditQPaper.aspx?settype=<%Response.Write(dr.GetValue(2)); %>&qid=<%Response.Write(dr.GetValue(0)); %>"><br>Edit<br>or<br >Delete<b></a>

                                            </td>

                                        </tr><%
                                                 }%>
                                        <tr>
                                            <td bgcolor="white" colspan="4">
                                                <table align="center" class="auto-style4">
                                                    <tr>
                                                        <td class="auto-style21">
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" Text="Add Question" Font-Bold="true" Width="200px" OnClick="Button1_Click1" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                </tr>
                            </table>
                        </td>
                                
                            </tr>
                            <tr>
                                <td bgcolor ="#3333FF">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#666666" style="text-align:center">
                                    <span class="auto-style3"> Designed by : ME</span>
                                </td>
                            </tr>
                        </table>
                    
        </div>
    </form>
</body>
</html>
