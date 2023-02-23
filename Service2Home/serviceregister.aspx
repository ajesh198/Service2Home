<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.Master" AutoEventWireup="true" CodeBehind="serviceregister.aspx.cs" Inherits="Service2Home.serviceregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }

        .auto-style2 {
            height: 27px;
            width: 578px;
        }

        .auto-style3 {
            width: 515px;
        }

        .auto-style4 {
            width: 578px;
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
                                <h2 class="text-uppercase text-center mb-5">Create an service account</h2>
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style2">
                                            &nbsp;</td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nametxt" ErrorMessage="Name is required" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label3" runat="server" Text="email"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                        <td class="auto-style5">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailtxt" ErrorMessage="Wrong email format" Font-Bold="True" Font-Size="Smaller" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="auto-style5">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:Label ID="Label4" runat="server" Text="Phone no"></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="phonetxt" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style5"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            &nbsp;</td>
                                        <td class="auto-style1">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phonetxt" ErrorMessage="wrong phone number format" Font-Bold="True" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[6-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label5" runat="server" Text="Pincode"></asp:Label>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="Pintxt" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style1"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            &nbsp;</td>
                                        <td class="auto-style3">

                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Pintxt" ErrorMessage="wrong pincode format" Font-Bold="True" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>

                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label13" runat="server" Text="Service Type"></asp:Label>
                                        </td>
                                        <td class="auto-style3">

                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                            </asp:DropDownList>

                                        &nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Blue" NavigateUrl="~/categoryadd.aspx">Add new</asp:HyperLink>

                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style2">
                                            &nbsp;</td>
                                        <td class="auto-style3">

                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please select a service type" Font-Bold="True" Font-Size="Smaller" ForeColor="Red" ValidationExpression="[^-]"></asp:RegularExpressionValidator>

                                        </td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label10" runat="server" Text="Generate OTP"></asp:Label>
                                        </td>
                                        <td class="auto-style3">

                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:Button ID="Button2" runat="server" BackColor="Blue" ForeColor="White" OnClick="Button2_Click" Text="Generate" />
                                                    <asp:Label ID="emaillbl" runat="server" Text="Label" Visible="False" Font-Size="Small" ForeColor="Blue"></asp:Label>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="otpref" runat="server" Text="Label" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label12" runat="server" Text="OTP"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="otptxt" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                        <td class="auto-style5">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nametxt" ErrorMessage="OTP is required" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style5">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td class="auto-style5"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Cpass" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passtxt" ControlToValidate="Cpass" ErrorMessage="Password mismatch" Font-Bold="True" Font-Size="Smaller" ForeColor="Red"></asp:CompareValidator>
                                        </td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2"></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button1" runat="server" BackColor="Green" ForeColor="White" OnClick="Button1_Click" Text="Register" />
                                        </td>
                                        <td class="auto-style3"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td>
                                            <asp:Label ID="msglbl" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label8" runat="server" Text="Already have an account "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Userpage.aspx">Login</asp:HyperLink>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label9" runat="server" Text="Register as an service provider"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Userregister.aspx">User Register</asp:HyperLink>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td>&nbsp;</td>
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
