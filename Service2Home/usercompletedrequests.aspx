<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="usercompletedrequests.aspx.cs" Inherits="Service2Home.usercompletedrequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 107px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <table class="w-100">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:DataList ID="DataList1" runat="server" BackColor="Green" BorderColor="Red" BorderStyle="Solid" BorderWidth="5px" CellPadding="5" CellSpacing="5" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" GridLines="Both" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" CssClass="auto-style2">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" VerticalAlign="Top" />
                        <SeparatorTemplate>
                            <hr />
                        </SeparatorTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text="Request ID : "></asp:Label>
                            &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("reqid") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label15" runat="server" Text="Assigned Agent Id : "></asp:Label>
                            <asp:Label ID="agentlbl" runat="server" Text='<%# Eval("serviceid") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Assigned Agent Name : "></asp:Label>
                            &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("serviceagent") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Description : "></asp:Label>
                            &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="Date : "></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label13" runat="server" Text="Status : "></asp:Label>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SeparatorStyle BackColor="White" BorderColor="White" BorderStyle="Double" BorderWidth="2px" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
