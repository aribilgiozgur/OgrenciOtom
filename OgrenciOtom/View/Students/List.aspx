<%@ Page Title="" Language="C#" MasterPageFile="~/BootStrap.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="OgrenciOtom.View.Students.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <style>
            th, table {
            
            text-align :center;
            }


        </style>
        <h1 class="pull-left" style="opacity:0.40;">Öğrenciler</h1>
        <table class="table table-striped">
            <tr class="danger">
                <th>Id</th>
                <th>Adı Soyadı</th>
                 <th>Cinsiyet</th>
                <th>Doğum Tarihi</th>
                <th>Sınıfı</th>
            </tr>
            <asp:Repeater ID="rptOgrenciler" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <%# Eval("Id") %>
                    </td>
                    <td>
                        <%# Eval("FirstName") + " " + Eval("LastName") %>
                    </td>
                    <td>
                        <%# Eval("Gender").ToString() == "1" ? "<span>Erkek</span>" : "<span>Kız</span>" %>
                    </td>
                     <td>
                        <%# Eval("DateOfBirth").ToString().Replace(" 00:00:00", "") %>
                    </td>
                     <td>
                        <%# Eval("Classroom.ClassName") %>
                    </td>
                </tr>
            </ItemTemplate>
                </asp:Repeater>

        </table>
        <div class="pull-right"><strong>Toplam Öğrenci Sayısı: </strong><%= studentCount %></div>

    </div>
</asp:Content>
