<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="OnlineExaminationProject.Panel" %>

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
            font-family:"Monotype Corsiva";
            color:#FFFFFF;
            font-weight:bold;
            font-size:large;
        }
        .style4{
            text-align:center;
        }
        .style9{
            width : 100%;
        }
        .style10{
            width:280px;
        }
        .style11{
            width:448px;
        }
        .style12{
            color:#FFFFFF;
            font-weight:bold;
            padding:0;
        }
        .style13{
             font-weight:bold;
            color:#FFFFFF;
            font-weight:bold;
            font-size:large;
        }
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            margin-left: 74px;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
        <div>
                <table align="center" class="style1">
                <tr>
                    <td class="style2">Online Examination System</td>
                </tr>
                <tr>
                    <td>
                        <table align="center" class="style1">
                            <tr>
                                <td bgcolor="#3399FF">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#999999">
                                    <b><a href="LogOut.aspx">Logout</a></b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="time" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="msg" runat="server" Font-Bold="true" Text-align="center" Font-Size="Larger" ForeColor="#00CC00"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align:center">
                                    <table align="center" bgcolor="#3399FF" class="style5">
                                        <tr>
                                            
                                            <td bgcolor="#FFFFCC" class="style7">
                                                <%con.Open();
                                                    rqry = "select * from question where settype ='" + testtype + "' order by qid";
                                                    rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
                                                    rdr = rcmd.ExecuteReader();
                                                    c = 1;
                                                    while (rdr.Read())
                                                    {
                                                        if(c != count)
                                                        {
                                                            c = c + 1;

                                                        }
                                                        else if (c == count)
                                                        {
                                                             %><%int q = Convert.ToInt16(rdr.GetValue(0));
                                                                   qid = q;%>
                                                <table align="center" class ="style8">
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Q:<%=count %><%=rdr.GetValue(1)%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="opt"/>
                                                            <%=rdr.GetValue(3)%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                             <asp:RadioButton ID="RadioButton2" runat="server" Checked="true" GroupName="opt"/>
                                                            <%=rdr.GetValue(4)%>
                                                        </td>
                                                    </tr>
                                                     <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                             <asp:RadioButton ID="RadioButton3" runat="server" Checked="true" GroupName="opt"/>
                                                            <%=rdr.GetValue(5)%>
                                                        </td>
                                                    </tr>
                                                     <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                             <asp:RadioButton ID="RadioButton4" runat="server" Checked="true" GroupName="opt"/>
                                                            <%=rdr.GetValue(6)%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table align="center" class="style8">
                                                                <tr>
                                                                    <td class="style9">
                                                                        <asp:Button ID="back" runat="server" Text="Back" Height="28px" Width="100px" OnClick="back_Click"/>
                                                                    </td>
                                                                    <td class="style10">
                                                                        <asp:Button ID="next" runat="server" Text="Next" Height="29px" Width="107px" OnClick="next_Click" CssClass="auto-style1"/>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button ID="finish" runat="server" Text="Finish" Height="28px" Width="100px" OnClick="finish_Click" CssClass="auto-style2"/>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                                <%if (count != n)
                                                        c = c + 1;
                                                        }
                                                    }
                                                    con.Close();%>


                                                   
                                               
                                            </td>
                                        </tr>
                                    </table>

                                </td>
                                </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#3399FF">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#666666" style="text-align:center">
                                    <span class="style3">Designed By : ME</span>
                                </td>
                            </tr>
                            </table>
                        </td>
                    </tr>
                       </table>
            
            
                           
        </div>
    </form>
</body>
</html>
