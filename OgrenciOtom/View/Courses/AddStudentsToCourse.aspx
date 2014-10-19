<%@ Page Title="" Language="C#" MasterPageFile="~/BootStrap.Master" AutoEventWireup="true" CodeBehind="AddStudentsToCourse.aspx.cs" Inherits="OgrenciOtom.View.Courses.AddStudentsToCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="col-lg-6">
            <asp:DropDownList ID="drpCourses" runat="server"></asp:DropDownList>
        </div>
        <div class="col-lg-6">
            <asp:CheckBoxList ID="chkStudents" runat="server"></asp:CheckBoxList>
        </div>
        
        <div>
            <asp:LinkButton ID="lnkSave" runat="server" OnClick="lnkSave_Click">Ekle</asp:LinkButton>
        </div>
    </div>
</asp:Content>
