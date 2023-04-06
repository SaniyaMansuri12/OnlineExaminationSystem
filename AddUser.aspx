<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="OnlineExaminationProject.AddUser" %>

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
        .auto-style1 {
            width: 16px;
        }
        .auto-style2 {
            margin-left: 0px;
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
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table align="center" class="style15">
                            <tr>
                                <td class="style16">
                                    &nbsp;
                                </td>
                                <td class="style17">
                                    <table align="center" class="style4">
                                        <tr>
                                            <td colspan="3">
                                                &nbsp;Register a Student Here :<br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Username
                                            </td>
                                            <td class="auto-style1">
                                                :
                                            </td>
                                            <td>
                                                &nbsp;<asp:TextBox ID="name" runat="server" Width="208px" Height="27px" CssClass="auto-style2"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Must Enter the Username"
                                                    ControlToValidate="name" ForeColor="#006699"></asp:RequiredFieldValidator>
                                            </td>

                                            <td>
                                                &nbsp;</td>
                                            
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;
                                            </td>
                                             <td class="auto-style1">&nbsp;
                                            </td>
                                             <td>&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Password
                                            </td>
                                            <td class="auto-style1"> :</td>
                                            <td>
                                                <asp:TextBox ID="pass" runat="server" Width="208px" Height="27px" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must Enter the Password"
                                                    ControlToValidate="pass" ForeColor="#006699"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                             <td class="auto-style1">
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="msg" runat="server" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="text-align:center">
                                                <table align="center" class="style4">
                                                    <tr>
                                                        <td class="style18">
                                                            &nbsp;
                                                        </td>
                                                        <td style="text-align:left">
                                                            <asp:Button ID="Submit" runat="server" Font-Bold="true" Text ="Register" Width="209px" OnClick="Submit_Click" Height="32px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style19">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td bgcolor="#3333FF">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#666666" style="text-align:center">
                        <span class="style3">Designed by me  &nbsp; With me</span>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
