<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.Master" AutoEventWireup="true" CodeBehind="categoryadd.aspx.cs" Inherits="Service2Home.categoryadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-80 bg-image"
        style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
        <div class="mask d-flex align-items-center h-100 gradient-custom-3">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                        <div class="card" style="border-radius: 15px;">
                            <div class="card-body p-5">
                                <h2 class="text-uppercase text-center mb-5">ADD NEW SERVICE TYPE</h2>
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style1">
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label1" runat="server" Text="Service Type"></asp:Label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style1"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nametxt" ErrorMessage="Name is required" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nametxt" ErrorMessage="Only alphabets allowed" Font-Bold="True" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="desctxt" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td class="auto-style1"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="desctxt" ErrorMessage="Description is required" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                        </td>
                                        <td class="auto-style3">


                                            <asp:Button ID="Button2" runat="server" BackColor="Green" ForeColor="White" OnClick="Button2_Click" Text="Add New" />


                                        </td>
                                        <td class="auto-style3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2"></td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

