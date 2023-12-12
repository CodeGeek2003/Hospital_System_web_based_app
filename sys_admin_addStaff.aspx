<%@ Page Title="" Language="C#" MasterPageFile="~/System_Admin.Master" AutoEventWireup="true" CodeBehind="sys_admin_addStaff.aspx.cs" Inherits="Hospital_System.sys_admin_addStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <table class="auto-style1">
            <!-- Other existing rows remain unchanged -->

            <!-- New rows for additional fields -->
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Username"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtUser" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtUser" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style14">
                        <asp:TextBox ID="txtFname" runat="server" Width="208px"></asp:TextBox>
                </td>
                <!-- Add validation controls for the new field as needed -->
                <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style13">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Enter a Correct Name" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^[A-Z][a-z]+(?:\s[A-Z][a-z]+)?$"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style14">
                        <asp:TextBox ID="txtlname" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style13">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="Enter a Correct Name" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^[A-Z][a-z]+(?:\s[A-Z][a-z]+)?$"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Date of Birth"></asp:Label>
                </td>
                <td class="auto-style14">
                        <asp:TextBox ID="txtDob" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDob" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style13">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtDob" ErrorMessage="Enter Correct Date Format" Font-Bold="True" ForeColor="Red" ValidationExpression="^\d{4}-\d{2}-\d{2}$"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Phone Number"></asp:Label>
                </td>
                <td class="auto-style14">
                        <asp:TextBox ID="txtPhone" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPhone" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style13">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Enter Correct Phone Format" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^\+(2010|2011|2012|2015)\d{8}$"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Address"></asp:Label>
                </td>
                <td class="auto-style14">
                        <asp:TextBox ID="txtAdd" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdd" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="User Type"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="ddlUserType" runat="server" Width="208px" OnSelectedIndexChanged="ddlUserType_SelectedIndexChanged">
                        <asp:ListItem Text="Doctor" Value="Doctor"></asp:ListItem>
                        <asp:ListItem Text="Nurse" Value="Nurse"></asp:ListItem>
                        <asp:ListItem Text="Hospital Manager" Value="Hospital Manager"></asp:ListItem>
                        <asp:ListItem Text="Pharmacist" Value="Pharmacist"></asp:ListItem>
                        <asp:ListItem Text="System Admin" Value="System Admin"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <!-- Add validation controls for the new field as needed -->
                <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlUserType" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699" Text="Password"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="208px"></asp:TextBox>
                </td>
                <!-- Add validation controls for the new field as needed -->
                <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtPassword" ErrorMessage="This Field is Requird" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style13"></td>
            </tr>

            <!-- Other existing rows remain unchanged -->

            <tr>
                <td colspan="4" class="auto-style15">
                    <asp:Button ID="btnSubmit" runat="server" Height="32px" Text="Submit" Width="136px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4" class="auto-style17">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#336699"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style12 {
            height: 36px;
            width: 307px;
        }
        .auto-style13 {
            height: 36px;
        }
        .auto-style14 {
            height: 36px;
            width: 250px;
        }
        .auto-style15 {
            height: 37px;
        }
        .auto-style16 {
            height: 36px;
            width: 219px;
        }
        .auto-style17 {
            height: 30px;
        }
    </style>
</asp:Content>
