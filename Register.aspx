<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LOGIN_FORM_ASP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1168px;
        }
        .auto-style2 {
            width: 261px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="6" cellspacing="6" class="auto-style1">
            <tr>
                <td colspan="2">SIGNUP FORM</td>
            </tr>
            <tr>
                <td class="auto-style2">FIRST NAME</td>
                <td>
                    <asp:TextBox ID="firstnameTextBox" runat="server" Width="483px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="please enter first name" ForeColor="Red" ControlToValidate="firstnameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">LAST NAME</td>
                <td>
                    <asp:TextBox ID="lastnameTextBox" runat="server" Width="483px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="please enter last name" ForeColor="Red" ControlToValidate="lastnameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">GENDER</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="Select" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Select gender" ForeColor="Red" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">EMAIL </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server" Width="483px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Enter Email address" ForeColor="Red" ControlToValidate="emailTextBox">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" Display="Dynamic" ErrorMessage="enter a valid email" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">AADRESS</td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Width="483px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Enter Your Address" ForeColor="Red" ControlToValidate="addressTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">USERNAME</td>
                <td>
                    <asp:TextBox ID="usernameTextBox" runat="server" Width="483px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Enter username" ForeColor="Red" ControlToValidate="usernameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PASSWORD</td>
                <td>
                    <asp:TextBox ID="passwordTextBox" runat="server" Width="483px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="enter password" ForeColor="Red" ControlToValidate="passwordTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">CONFIRM PASSWORD</td>
                <td>
                    <asp:TextBox ID="confirmpasswordTextBox" runat="server" Width="483px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="confirmpasswordTextBox">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTextBox" ControlToValidate="confirmpasswordTextBox" Display="Dynamic" ErrorMessage="password not match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="52px" Text="SIGNUP" Width="165px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                 <a href="WebForm1.aspx">Go TO Login PAGE</a>  
                </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#999999" ForeColor="Red" />
    
    </div>
    </form>
</body>
</html>
