<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineSystem.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center">
        <tr>
            <td colspan ="4" align ="center">
                <h4>Login</h4>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Height ="28px" Width ="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUsername"
                    SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td style="padding-right:40px;">
            </td> 
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Register" Height="28px" OnClick="btnRegister_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td> 
            <td>
                 <asp:TextBox ID="txtPassword" runat="server" Height ="28px" Width ="200px" TextMode ="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUsername"
                    SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan ="4" style="padding-left:77px;">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Height="28px" OnClick ="btnLogin_Click" />
            </td>
        </tr>
        <tr>
            <td colspan ="3">
                <div id ="error" runat="server" style="color:red">

                </div>
            </td>
            <td>
                <asp:LinkButton ID="lbForgotPassword" runat="server" Height="28px" CausesValidation="false" OnClick ="lbForgotPassword_Click">Forgot Password</asp:LinkButton>
            </td>
            <td></td>
        </tr>
        
    </table>
</asp:Content>
