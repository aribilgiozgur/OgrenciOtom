<%@ Page Title="" Language="C#" MasterPageFile="~/BootStrap.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="OgrenciOtom.View.Students.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Yeni Öğrenci</h2>
        <table class="table">

            <tr>
                <td>İsim</td>
                <td colspan="3"><asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox></td>                
            </tr>

            <tr>
                <td>Soyad:</td>
                <td colspan="3"><asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox></td>                
            </tr>

            <tr>
                <td>Cinsiyet:</td>
                <td colspan="3">
                    <asp:DropDownList runat="server" ID="drpGender" CssClass="form-control">
                        <asp:ListItem Text="---" />
                        <asp:ListItem Text="Erkek" Value="1" />
                        <asp:ListItem Text="Kız" Value="2" />

                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>Doğum Tarihi</td>
                <td>
                    <asp:TextBox ID="txtGun" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                     <td>
                    <asp:DropDownList runat="server" ID="drpAy" CssClass="form-control">
                        <asp:ListItem Text="Ocak" Value="01" />
                         <asp:ListItem Text="Şubat" Value="02" />
                         <asp:ListItem Text="Mart" Value="03" />
                         <asp:ListItem Text="Nisan" Value="04" />
                         <asp:ListItem Text="Mayıs" Value="05" />
                         <asp:ListItem Text="Haziran" Value="06" />
                         <asp:ListItem Text="Temmuz" Value="07" />
                         <asp:ListItem Text="Ağustos" Value="08" />
                         <asp:ListItem Text="Eylül" Value="09" />
                         <asp:ListItem Text="Ekim" Value="10" />
                         <asp:ListItem Text="Kasım" Value="11" />
                         <asp:ListItem Text="Aralık" Value="12" />
                    </asp:DropDownList>
                </td>
                <td>
                 <asp:TextBox ID="txtYil" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Sınıfı</td>
                    <td colspan="3">
                        <asp:DropDownList runat="server" ID="drpClassrooms" CssClass="form-control"></asp:DropDownList>
                    </td>
            </tr>

            <tr>
                <td colspan="4">
                    <asp:LinkButton Text="Gönder" runat="server" CssClass="btn btn-danger" ID="lnkSend" OnClick="lnkSend_Click"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
