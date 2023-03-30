<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="OnlineSystem.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align ="center">
        <tr>
            <td colspan ="2" align ="center">
                <h4>Forgot Password</h4>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td style ="width:160px;">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblUsername" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style ="width:160px;">
                <asp:Label ID="Label2" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSecurityQuestion" runat="server"></asp:Label>
            </td>`
        </tr>
        <tr>
            <td style ="width:160px;">
                <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>
                <asp:HiddenField ID="hdnAnswer" runat="server"/>
            </td>
            <td>
                <asp:TextBox ID="txtAnswer" runat="server" Height="28px" Width="200px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtAnswer"
                    SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align ="center">
                <asp:Button ID="btnForgotPassword" runat="server" Text="Forgot Password"  Height ="28px" OnClick="btnForgotPassword_Click"/>
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel"  Height ="28px" OnClick="btnCancel_Click" CauseValidation="false"/>
            </td>
          
        </tr>
        <tr>
           
           <td colspan ="2">
                <div id ="error" runat="server" style="color:red">

                </div>
            </td>
        </tr>
    </table>
</asp:Content>
