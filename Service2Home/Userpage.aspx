<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.Master" AutoEventWireup="true" CodeBehind="Userpage.aspx.cs" Inherits="Service2Home.Userpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 287px;
        }

        .auto-style3 {
            width: 356px;
        }
        .auto-style4 {
            width: 287px;
            height: 21px;
        }
        .auto-style5 {
            width: 356px;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-80 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">

                            <div class="mb-md-5 mt-md-4 pb-5">

                                <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                <p class="text-white-50 mb-5">Please enter your login and password!</p>
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label2" runat="server" Text="email"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4"></td>
                                        <td class="auto-style5">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/forgotpass.aspx">Forgot password?</asp:HyperLink>
                                        </td>
                                        <td class="auto-style6"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button1" runat="server" BackColor="Green" Font-Size="Large" ForeColor="White" Text="Login" OnClick="Button1_Click" />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">
                                            <asp:Label ID="errlbl" runat="server" Font-Bold="True" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">
                                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Userregister.aspx">Create an account</asp:HyperLink>
                                        </td>
                                        <td>&nbsp;</td>
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
