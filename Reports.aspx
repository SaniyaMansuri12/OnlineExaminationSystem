<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="OnlineExaminationProject.Reports" %>

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
            width: 2809px;
        }
        .auto-style4{
            width: 99%;
            height: 29px;
        }
        .auto-style5{
            color:white;
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
        
        .auto-style23{
           text-align:center;
            width: 166px;  
            color:#FFFFFF;
            color:white;
            text-decoration:none;
       }
        .auto-style26 {
            width: 2809px;
        }
        .auto-style27 {
            margin-left: 252px;
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
                    <td bgcolor="#3333FF" class="auto-style26">&nbsp;</td>
                </tr>
                <tr><td bgcolor="#99CCFF" style="color:#000009; font-size:medium; font-weight:700" class="auto-style26">
                    <table align="center" class="auto-style4">
                        <tr>
                                <td class="auto-style12"><a href="AddUser.aspx">Add User</a></td>
                                <td class="auto-style12"><a href="DeleteUser.aspx">Delete User</a></td>
                                <td class="auto-style12"><a href="SetQPaper.aspx">Set Q Paper</a></td>
                                <td class="auto-style14"><a href="PaperPreview.aspx">Preview Q Paper</a></td>
                                <td class="auto-style14"><a href="DeleteQPaper.aspx">Delete Q Paper</a></td>
                                <td class="auto-style23"><a href="Reports.aspx">View Report</a></td>
                                <td class="auto-style5"><a href="LogOut.aspx">LogOut</a></td>
                        </tr>
                        </table>
                    </td>
                    </tr>
                <tr>
                    
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#0066FF" class="auto-style26" >
                        
                            
                
                </table>
                        </td>
                    </tr>

                <tr>
                    <td >
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" CssClass="auto-style27" Width="1022px">
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:BoundField DataField="test" HeaderText="test" SortExpression="test" />
                                <asp:BoundField DataField="marks" HeaderText="marks" SortExpression="marks" />
                                <asp:BoundField DataField="totalmarks" HeaderText="totalmarks" SortExpression="totalmarks" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineexamConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [results]"></asp:SqlDataSource>
                    </td>
                </tr>


                <tr>

                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF" class="auto-style17">&nbsp;</td>
           

        </div>
    </form>
</body>
</html>
