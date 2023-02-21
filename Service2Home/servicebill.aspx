<%@ Page Title="" Language="C#" MasterPageFile="~/servicehome.Master" AutoEventWireup="true" CodeBehind="servicebill.aspx.cs" Inherits="Service2Home.servicebill" %>
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
        <h2 class="text-center" style="text-decoration: underline; font-family: 'Arial Black'; font-weight: 200; font-style: normal; color: #0000FF">Bill Generation.</h2>
    </div>
    <div>

        <table class="w-100">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:DataList ID="DataList1" runat="server" BackColor="Green" BorderColor="Red" BorderStyle="Solid" BorderWidth="5px" CellPadding="5" CellSpacing="5" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" GridLines="Both" HorizontalAlign="Center" ShowFooter="False" ShowHeader="False" CssClass="auto-style2" OnItemCommand="DataList1_ItemCommand">
                        <footerstyle backcolor="#F7DFB5" forecolor="#8C4510" />
                        <headerstyle backcolor="#A55129" font-bold="True" forecolor="White" />
                        <itemstyle backcolor="#FFF7E7" forecolor="#8C4510" verticalalign="Top" />
                        <separatortemplate>
                            <hr />
                        </separatortemplate>
                        <itemtemplate>
                            <asp:Label ID="Label5" runat="server" Text="Request ID : "></asp:Label>
                            &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("reqid") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label15" runat="server" Text="User Id : "></asp:Label>
                            <asp:Label ID="agentlbl" runat="server" Text='<%# Eval("regid") %>'></asp:Label>
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
                            <br />
                            <asp:Label ID="Label16" runat="server" Text="Total Amount : "></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Height="22px" TextMode="Number"  Width="133px"></asp:TextBox>
                            &nbsp;<br />
                            <br />
                            &nbsp;<asp:Button ID="Button1" runat="server" BackColor="Green" Font-Bold="True" ForeColor="White" Text="Generate Bill" CommandName="billgen" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </itemtemplate>
                        <selecteditemstyle backcolor="#738A9C" font-bold="True" forecolor="White" />
                        <separatorstyle backcolor="White" bordercolor="White" borderstyle="Double" borderwidth="2px" />
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
