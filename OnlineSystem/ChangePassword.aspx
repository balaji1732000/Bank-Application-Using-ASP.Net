<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="OnlineSystem.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align ="center">
        <tr>
            <td colspan="2" al>
                <h4>Change Password</h4>
            </td>
        </tr>
        <tr>
        <td style ="width:160px;">
                <asp:Label ID="Label3" runat="server" Text="New Password"></asp:Label>
                <asp:HiddenField ID="hdnAnswer" runat="server"/>
            </td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtNewPassword"
                    SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Minimum password length must be 6 characters"
                ForeColor="Red" ControlToValidate="txtNewPassword" SetFocusOnError="true" Display="Dynamic" 
                ValidationExpression="^[a-zA-Z0-9'@&#.\s]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
            <td>

            </td>
        </tr>

        <tr>
        <td style ="width:160px;">
                <asp:Label ID="Label1" runat="server" Text="Confirm Password"></asp:Label>
                <asp:HiddenField ID="HiddenField1" runat="server"/>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtConfirmPassword"
                    SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Minimum password length must be 6 characters"
                ForeColor="Red" ControlToValidate="txtConfirmPassword" SetFocusOnError="true" Display="Dynamic" 
                ValidationExpression="^[a-zA-Z0-9'@&#.\s]{6,15}$"></asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matched"
                    ForeColor ="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtConfirmPassword" ControlToCompare ="txtNewPassword"
                    ></asp:CompareValidator>
                </div>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td align ="center">
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" Height ="28px" OnClick="btnChangePassword_Click" />
            </td>
            <td align ="center">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height ="28px" OnClick="btnCancel_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <div id="error" runat="server" style="color:red">

                </div>
            </td>
        </tr>
    </table>
</asp:Content>
