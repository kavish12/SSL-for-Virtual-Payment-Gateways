<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="AD_Default9" Title="Default9" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    All Refund details:<asp:ImageButton ID="imgbtnDis" runat="server" ImageUrl="~/AD/images/dis.gif" OnClick="imgbtnDis_Click" />&nbsp;<cr:crystalreportviewer id="CrystalReportViewer1" runat="server" autodatabind="true"></cr:crystalreportviewer>
</asp:Content>

