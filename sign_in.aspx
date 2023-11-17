<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_in.aspx.cs" Inherits="Hospital_System.sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 219px;
        }
        .auto-style3 {
            width: 498px;
        }
        .auto-style4 {
            width: 219px;
            height: 30px;
        }
        .auto-style5 {
            width: 498px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Username"></asp:Label>
                    </td>
                <td class="auto-style3">
                        <asp:TextBox ID="txbUser" runat="server" Width="208px"></asp:TextBox>
                    </td>
                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbUser" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Password"></asp:Label>
                    </td>
                <td class="auto-style5">
                        <asp:TextBox ID="txbPassword" runat="server" TextMode="Password" Width="206px" ></asp:TextBox>
                    </td>
                <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txbPassword" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="161px" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
