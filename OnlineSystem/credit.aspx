<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="credit.aspx.cs" Inherits="OnlineSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">
        <div align="center">
        <div>
            <h4>
                Credits
            </h4>
        </div>
        <asp:GridView ID="gvMyCredits" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText ="From Account">
                    <ItemTemplate>
                        <asp:Label ID="accountNum" runat="server" Text='<%# Eval("AccountNumber") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText ="Sender Name">
                    <ItemTemplate>
                        <asp:Label ID="txtUserName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText ="Amount">
                    <ItemTemplate>
                        <asp:Label ID="txtAmount" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText ="Remarks">
                    <ItemTemplate>
                        <asp:Label ID="txtRemarks" runat="server" Text='<%# Eval("Remarks") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
     <div id ="error" runat="server" style="color:red">

     </div>


</asp:Content>
