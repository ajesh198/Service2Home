<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.Master" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="Service2Home.forgotpass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
              <h2 class="text-uppercase text-center mb-5">Forgot password</h2>
                <table class="w-100">
                <tr>
                    <td class="auto-style1">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                    <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Generate OTP"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button1" runat="server" BackColor="Blue" ForeColor="White" OnClick="Button1_Click" Text="Generate" />
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
                        <asp:Label ID="Label4" runat="server" Text="OTP"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="otptxt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                 </tr>
                    <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Text="New Password"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                    <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Cpass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                    <tr>
                    <td class="auto-style2">
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" BackColor="Green" ForeColor="White" OnClick="Button2_Click" Text="Reset Password" />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                    <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="msglbl" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
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
