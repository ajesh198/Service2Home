<%@ Page Title="" Language="C#" MasterPageFile="~/servicehome.Master" AutoEventWireup="true" CodeBehind="servicepage.aspx.cs" Inherits="Service2Home.servicepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 class="text-center" style="text-decoration: underline; font-family: 'Arial Black'; font-weight: 200; font-style: normal; color: #0000FF">Pending Requests.</h2>
    </div>
    <div>

        <table class="w-100">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:DataList ID="DataList1" runat="server" BackColor="Green" BorderColor="Red" BorderStyle="Solid" BorderWidth="5px" CellPadding="5" CellSpacing="5" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" GridLines="Both" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" ShowFooter="False" ShowHeader="False">
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
                            <asp:Label ID="Label6" runat="server" Text="Customer Id : "></asp:Label>
                            &nbsp;&nbsp;<asp:Label ID="custid" runat="server" Text='<%# Eval("regid") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" CommandName="contactdetails" Height="27px" ImageUrl="~/assets/img/contact.png" Width="85px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="namelbl" runat="server" Text="Label" Visible="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="nolbl" runat="server" Text="Label" Visible="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="emaillabel" runat="server" Text="Label" Visible="False"></asp:Label>
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Description : "></asp:Label>
                            &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="Date : "></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <asp:Label ID="Label13" runat="server" Text="Change Status : "></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Eval("status") %>'>
                                <asp:ListItem>requested</asp:ListItem>
                                <asp:ListItem>accepted</asp:ListItem>
                                <asp:ListItem>contacted</asp:ListItem>
                                <asp:ListItem>work in progress</asp:ListItem>
                                <asp:ListItem>completed</asp:ListItem>
                                <asp:ListItem>bill payment</asp:ListItem>
                                <asp:ListItem>payment pending</asp:ListItem>
                                <asp:ListItem>cancelled</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="Green" CommandName="chnagestatus" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Change Status" OnClientClick="Confirm()"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
