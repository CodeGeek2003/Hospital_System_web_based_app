<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_in_patient.aspx.cs" Inherits="Hospital_System.sign_in_patient" %>

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
    <form id="form2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="SSN"></asp:Label>
                    </td>
                <td class="auto-style3">
                        <asp:TextBox ID="txtSSN" runat="server" Width="208px"></asp:TextBox>
                    </td>
                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSSN" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Date of Birth"></asp:Label>
                    </td>
                <td class="auto-style5">
                        <asp:TextBox ID="txtDoB" runat="server" Width="206px" ></asp:TextBox>
                    &nbsp;Please Note to enter date in the following format: year/month/day e.g. 2003/01/01</td>
                <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDoB" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="161px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
