<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="AD_Default5" Title="Default5" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Please select Username:
        <asp:DropDownList ID="ddlStudents" runat="server">
        </asp:DropDownList> <asp:ImageButton id="imgbtnDis" onclick="imgbtnDis_Click" runat="server" ImageUrl="~/AD/images/dis.gif"></asp:ImageButton>
    <cr:crystalreportviewer id="CrystalReportViewer1" runat="server" autodatabind="true"></cr:crystalreportviewer>
</asp:Content>
