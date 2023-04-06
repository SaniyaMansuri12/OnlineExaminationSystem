<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineExaminationProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
        }
        .auto-style3{        
            font-family:'Monotype Corsiva';
            font-size : xx-large;
            font-weight:bold;
            color:orangered;
            text-align:center;
            padding :0;    
          
        }
        .auto-style2{
            font-weight:bold;
        }
        .auto-style4 {
            font-weight: bold;
            height: 35px;
            color: white;
            width: 359px;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style6 {
            font-weight: bold;
            width: 359px;
        }
        .auto-style7 {
            width: 359px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style1" >
                <tr>
                    <td colspan="2" class="auto-style3">
                        Online Examination System&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#0099ff" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#0099ff"  class="auto-style4"  >User Name :</td>
                    <td bgcolor="#0099ff" class="auto-style5" >
                        <asp:TextBox ID="name"   runat="server" Width ="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#0099ff" class="auto-style4" >Password :</td>
                    <td bgcolor="#0099ff" class="auto-style5" >
                        <asp:TextBox ID="pass"  runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server"  Height="28px" Text="Login" Width="95px" Font-Bold="true" BackColor="#FFFF99" ForeColor="#FF9966" OnClick="Button1_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Label ID="msg" runat="server" ></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" bgcolor="#666666" style="text-align:center; color: #FFFFFF; font-family: 'Monotype Corsiva';">
                         <span class="auto-style2">Examination Project</span>&nbsp;</td>
                    
                </tr>
                <tr>
                    <td bgcolor="#3399FF" class="auto-style7" height="26px"></td>
                    <td bgcolor="#3399FF"></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
