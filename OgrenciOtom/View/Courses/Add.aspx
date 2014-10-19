<%@ Page Title="" Language="C#" MasterPageFile="~/BootStrap.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="OgrenciOtom.View.Courses.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                Ders Adı:
            </td>
            <td>
                <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:LinkButton ID="lnkAdd" runat="server" OnClick="lnkAdd_Click">Ekle</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
