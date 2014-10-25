<%@ Page Title="" Language="C#" MasterPageFile="~/BootStrap.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="OgrenciOtom.View.Classrooms.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        th {
            text-align:center;
        }
    </style>
    <div class="container">
        <h2>Derslikler</h2>
        <table class="table table-striped" style="text-align:center">
            <tr class="success">
                <th >Id</th>
                <th>Adı</th>
                <th>Mevcudu</th>
            </tr>
            <asp:Repeater runat="server" ID="rptClassrooms">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Id") %></td>
                        <td><%# Eval("ClassName") %></td>
                        <td><%# Eval("Students.Count")  %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>

    </div>
</asp:Content>
