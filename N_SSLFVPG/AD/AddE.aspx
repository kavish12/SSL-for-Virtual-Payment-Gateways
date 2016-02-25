<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="AddE.aspx.cs" Inherits="AD_AddE" Title="AddE" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p><h2>Register Events</h2></p>
<TABLE style="WIDTH: auto; HEIGHT: auto"><TBODY><TR>
    <td style="font-weight: bold" valign="top">
        Title: 
        <ul>
        </ul>
    </td>
    <td style="width: 3px" valign="top">
        <asp:TextBox ID="txtTtl" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv111" runat="server" ControlToValidate="txtTtl"
            Display="None" ErrorMessage="Enter Title"></asp:RequiredFieldValidator>
        <cc1:ValidatorCalloutExtender ID="vce111" runat="server" Enabled="True" TargetControlID="rfv111">
        </cc1:ValidatorCalloutExtender>
        <cc1:FilteredTextBoxExtender ID="ftbe111" runat="server" Enabled="True" FilterType="Custom, UppercaseLetters, LowercaseLetters"
            TargetControlID="txtTtl" ValidChars="+-=/*().">
        </cc1:FilteredTextBoxExtender>
    </td>
    <TD style="WIDTH: 90px" colSpan=1 rowSpan=4></TD><TD style="WIDTH: 5px" 
vAlign=top colSpan=1 rowSpan=4><asp:Image id="Image2" runat="server" ImageUrl="~/AD/images/ev.gif"></asp:Image> 
</TD></TR><TR>
    <td style="font-weight: bold" valign="top">
        Date: 
        <ul>
        </ul>
    </td>
    <td style="width: 3px" valign="top">
        <table>
            <tbody>
                <tr>
                    <td style="width: 117px">
                        <asp:TextBox ID="txtDt" runat="server" Width="147px"></asp:TextBox>
                    </td>
                    <td style="width: 19px">
                        <asp:ImageButton ID="imgbtnCal111" runat="server" ImageUrl="~/AD/images/cal.gif" />
                    </td>
                </tr>
            </tbody>
        </table>
        <asp:RequiredFieldValidator ID="rfv112" runat="server" ControlToValidate="txtDt"
            Display="None" ErrorMessage="Enter  Date"></asp:RequiredFieldValidator>
        <cc1:CalendarExtender ID="ce111" runat="server" Enabled="True" PopupButtonID="imgbtnCal111"
            TargetControlID="txtDt">
        </cc1:CalendarExtender>
        <cc1:ValidatorCalloutExtender ID="vce112" runat="server" Enabled="True" TargetControlID="rfv112">
        </cc1:ValidatorCalloutExtender>
        <cc1:FilteredTextBoxExtender ID="ftbe112" runat="server" Enabled="True" FilterType="Custom, Numbers"
            TargetControlID="txtDt" ValidChars="+-=/*().">
        </cc1:FilteredTextBoxExtender>
    </td>
</TR><TR>
    <td style="font-weight: bold" valign="top">
        Details: 
        <ul>
        </ul>
    </td>
    <td style="width: 3px" valign="top">
        <asp:TextBox ID="txtDtl" runat="server" Height="140px" TextMode="MultiLine" Width="286px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv113" runat="server" ControlToValidate="txtDtl"
            Display="None" ErrorMessage="Enter  Details"></asp:RequiredFieldValidator>
        <cc1:ValidatorCalloutExtender ID="vce113" runat="server" Enabled="True" TargetControlID="rfv113">
        </cc1:ValidatorCalloutExtender>
        <cc1:FilteredTextBoxExtender ID="ftbe113" runat="server" Enabled="True" FilterType="Custom, UppercaseLetters, LowercaseLetters"
            TargetControlID="txtDtl" ValidChars="+-=/*().">
        </cc1:FilteredTextBoxExtender>
    </td>
</TR><TR>
    <td align="center" style="font-weight: bold" valign="top">
        &nbsp; &nbsp;&nbsp;
    </td>
    <td style="font-weight: bold" valign="top">
        &nbsp;<asp:ImageButton ID="btnSubmit111" runat="server" ImageUrl="~/AD/images/submit.gif"
            OnClick="btnSubmit111_Click" />
        <asp:ImageButton ID="btnClr111" runat="server" ImageUrl="~/AD/images/clear.gif" OnClick="btnClr111_Click" />
    </td>
</TR><TR>
    <td align="center" style="font-weight: bold" valign="top">
    </td>
    <td style="font-weight: bold" valign="top">
        <asp:Label ID="Label110" runat="server" Width="289px"></asp:Label>
    </td>
    <TD style="WIDTH: 90px" colSpan=1 rowSpan=1></TD><TD style="WIDTH: 5px" 
vAlign=top colSpan=1 rowSpan=1></TD></TR></TBODY></TABLE>

</asp:Content>

