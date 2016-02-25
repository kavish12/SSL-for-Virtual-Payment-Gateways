<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="AD_Default1" Title="Default1" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	
    <div><h2>Search <span>Client By ID</span></h2>
    <table>
        <tr>
            <td colspan="2">
                <br />
                <br />
            </td>
        </tr>
        <tr><td> Please select Client Id:</td><td>
        <asp:DropDownList ID="ddlStudents" runat="server">
        </asp:DropDownList></td></tr>
        <tr>
            <td colspan="2" rowspan="2">
                <br />
                <br />
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="imgbtnDis" runat="server" ImageUrl="~/AD/images/dis.gif" OnClick="imgbtnDis_Click" /></td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="2" rowspan="2">
                <br />
                <br />
            </td>
        </tr>
        <tr>
        </tr>
    </table>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
        &nbsp;
    </div>

</asp:Content>

