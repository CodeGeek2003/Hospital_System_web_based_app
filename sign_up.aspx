<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="Hospital_System.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            width: 185px;
        }
        .auto-style5 {
            height: 30px;
            width: 185px;
        }
        .auto-style6 {
            height: 23px;
            width: 185px;
        }
        .auto-style7 {
            width: 217px;
        }
        .auto-style8 {
            height: 30px;
            width: 217px;
        }
        .auto-style9 {
            height: 23px;
            width: 217px;
        }
        .auto-style10 {
            height: 29px;
            width: 185px;
        }
        .auto-style11 {
            height: 29px;
            width: 217px;
        }
        .auto-style12 {
            height: 29px;
        }
        .auto-style13 {
            height: 30px;
            width: 249px;
        }
        .auto-style14 {
            width: 249px;
        }
        .auto-style15 {
            height: 29px;
            width: 249px;
        }
        .auto-style16 {
            height: 23px;
            width: 249px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txbFname" runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbFname" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txbFname" Display="Dynamic" ErrorMessage="Enter a Correct Name" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^[A-Z][a-z]+(?:\s[A-Z][a-z]+)?$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Last Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txbLname" runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txbLname" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txbLname" Display="Dynamic" ErrorMessage="Enter a Correct Name" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^[A-Z][a-z]+(?:\s[A-Z][a-z]+)?$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:RadioButtonList ID="rblGender" runat="server">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rblGender" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txbEmail" runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txbEmail" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txbEmail" Display="Dynamic" ErrorMessage="Enter Correct Email Format" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txbPhone" runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txbPhone" Display="Dynamic" ErrorMessage="Enter Correct Phone Format" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^\+(2010|2011|2012|2015)\d{8}$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Country"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlCountry" runat="server">
                            <asp:ListItem>Egypt</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Spain</asp:ListItem>
                            <asp:ListItem>United States </asp:ListItem>
                            <asp:ListItem>United Kingdoms</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlCountry" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txbUser" runat="server" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txbUser" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txbPassword" runat="server" TextMode="Password" Width="206px" ></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txbPassword" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Retype password"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txbRePassword" runat="server"  TextMode="Password" Width="208px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txbRePassword" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txbPassword" ControlToValidate="txbRePassword" ErrorMessage="The Password Doesnt Match" Font-Bold="True" ForeColor="#FF3300">The Password Doesnt Match</asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:Button ID="btnSubmit" runat="server" Height="32px" Text="Submit" Width="136px" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699"></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
