<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="debit.aspx.cs" Inherits="OnlineSystem.debit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">

    <div align="center">
        <div>
            <h4>
                Debit
            </h4>
        </div>
        <asp:GridView ID="gvMyDebits" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText ="To Account">
                    <ItemTemplate>
                        <asp:Label ID="accountNum" runat="server" Text='<%# Eval("AccountNumber") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText ="Payee Name">
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
