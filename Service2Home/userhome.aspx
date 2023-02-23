<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="Service2Home.userhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 0px;
        }

        .auto-style4 {
            width: 57px;
        }

        .auto-style5 {
            width: 57px;
            height: 21px;
        }

        .auto-style6 {
            height: 21px;
            width: 277px;
        }

        .auto-style7 {
            width: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="search-sec">
        <div class="container">
            <form action="#" method="post" novalidate="novalidate">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-12 p-1">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control search-slt" placeholder="Enter Service"></asp:TextBox>
                                <%-- <input type="text" class="form-control search-slt" placeholder="Enter Search">--%>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 p-1">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control search-slt" placeholder="Enter Pincode"></asp:TextBox>
                                <%--  <input type="text" class="form-control search-slt" placeholder="Enter Search">--%>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 p-1">
                                <asp:Button ID="searbtn" runat="server" Text="Search" class="btn btn-danger wrn-btn" OnClick="searbtn_Click" />
                            </div>
                            <div>
                                <asp:Label ID="noreslbl" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <div>

        <table class="w-100">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" CellPadding="3" CssClass="auto-style3" Font-Strikeout="False" RepeatColumns="3" RepeatDirection="Horizontal" Width="550px" OnItemCommand="DataList1_ItemCommand" BorderWidth="2px" CellSpacing="1">
                        <SeparatorTemplate>
                            <hr />
                        </SeparatorTemplate>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" Font-Size="X-Large" ForeColor="#E7E7FF" />
                        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="lblname" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Name :"></asp:Label>
                            &nbsp;
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text='<%# Eval("name") %>'></asp:Label>
                            <br />
                            <asp:Label ID="lblid" runat="server" Font-Size="Large" Text="S2H id :"></asp:Label>
                            &nbsp;<asp:Label ID="Label14" runat="server" Text='<%# Eval("regid") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="Service Type :"></asp:Label>
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Green" Text='<%# Eval("servicetype") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Working location : "></asp:Label>
                            <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text='<%# Eval("pincode") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="phone no : "></asp:Label>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Blue" Text='<%# Eval("phoneno") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="email : "></asp:Label>
                            &nbsp;&nbsp;
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Blue" Text='<%# Eval("email") %>'></asp:Label>
                            <br />
                            <br />
                            &nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="Description :"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="desctxt" runat="server" CssClass="mt-0" TextMode="MultiLine" Width="211px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="Orange" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Book Service" CommandName="bookservice" OnClientClick="Confirm();" />
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
        </table>

    </div>
</asp:Content>
