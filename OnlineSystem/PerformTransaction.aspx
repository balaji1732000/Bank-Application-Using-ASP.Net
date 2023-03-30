<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="PerformTransaction.aspx.cs" Inherits="OnlineSystem.PerformTransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">

    <table>
        <tr>
            <td>
                <h4>PerformTransaction</h4>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Payee Account Number"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlPayeeAccountNumber" runat="server" Height="28px" Width="208px" AppendDataBoundItems ="true">
                    <asp:ListItem Value ="0">Please select Account Number</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red"
                    ControlToValidate="ddlPayeeAccountNumber" SetFocusOnError ="true" Display="Dynamic" InitialValue ="0"
                    ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label3" runat="server" Text="Payee Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPayeeName" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red"
                    ControlToValidate="txtPayeeName" SetFocusOnError ="true" Display="Dynamic" InitialValue ="0"></asp:RequiredFieldValidator>
                    <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ErrorMessage="Minimum payee name length  must be 6 characters(alphanumberic)"
                     ForeColor="Red" ControlToValidate="txtPayeeName" SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{6,15}$"></asp:RegularExpressionValidator> 
                    </div>
            </td>
        </tr>
        <tr>
        <td>
                <asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red"
                    ControlToValidate="txtMobileNumber" SetFocusOnError ="true" Display="Dynamic" InitialValue ="0"
                    ></asp:RequiredFieldValidator>
                    <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ErrorMessage="Mobile Number must be 10 digit"
                     ForeColor="Red" ControlToValidate="txtMobileNumber" SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator> 
                    </div>
            </td>
        </tr>
    <tr>
        <td>
                <asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red"
                    ControlToValidate="txtAmount" SetFocusOnError ="true" Display="Dynamic" InitialValue ="0"
                    ></asp:RequiredFieldValidator>
                    <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                        ErrorMessage="Amount should be less than 100000"
                     ForeColor="Red" ControlToValidate="txtMobileNumber" SetFocusOnError="true" Display="Dynamic" ValidationExpression="\d{10}$"></asp:RegularExpressionValidator> 
                    </div>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Remarks"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRemarks" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red"
                    ControlToValidate="txtRemarks" SetFocusOnError ="true" Display="Dynamic"
                    ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align ="center">
                <asp:Button ID="btnSend" runat="server" Text="Send Money"  Height ="28px" OnClick="btnSend_Click"/>
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel"  Height ="28px" OnClick="btnCancel_Click" CauseValidation="false"/>
            </td>
        </tr>
        <tr>
            <td colspan ="3">
                <div id ="error" runat="server" style="color:red">

                </div>
            </td>
        </tr>
    </table>
</asp:Content>
