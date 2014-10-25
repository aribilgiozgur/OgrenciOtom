<%@ Page Title="" Language="C#" MasterPageFile="~/BootStrap.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="OgrenciOtom.View.Classrooms.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Sınıf Adı</h2>
        <asp:TextBox runat="server" Id="txtClassroomName" CssClass="form-control"/>
        <asp:LinkButton Text="Gönder"  runat="server" CssClass="btn btn-success"  ID="btnSend" OnClick="btnSend_Click"/>  
    </div>
</asp:Content>
