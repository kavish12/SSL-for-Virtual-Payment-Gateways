<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="AddN.aspx.cs" Inherits="AD_AddN" Title="AddN" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p><h2>Register News</h2></p>
<TABLE style="WIDTH: auto; HEIGHT: auto"><TBODY><TR><TD 
style="FONT-WEIGHT: bold" vAlign=top>Title: <UL></UL></TD><TD style="WIDTH: 3px" 
vAlign=top><asp:TextBox id="txtTtl" runat="server"></asp:TextBox> 
<asp:RequiredFieldValidator id="rfv111" runat="server" Display="None" ControlToValidate="txtTtl" ErrorMessage="Enter Title"></asp:RequiredFieldValidator> 
<cc1:ValidatorCalloutExtender id="vce111" runat="server" Enabled="True" TargetControlID="rfv111"></cc1:ValidatorCalloutExtender> 
<cc1:FilteredTextBoxExtender id="ftbe111" runat="server" Enabled="True" TargetControlID="txtTtl" ValidChars="+-=/*()." FilterType="Custom, UppercaseLetters, LowercaseLetters"></cc1:FilteredTextBoxExtender> 
</TD><TD style="WIDTH: 90px" colSpan=1 rowSpan=4></TD><TD style="WIDTH: 5px" 
vAlign=top colSpan=1 rowSpan=4><asp:Image id="Image1" runat="server" ImageUrl="~/AD/images/nw.jpg"></asp:Image> 
</TD></TR><TR><TD style="FONT-WEIGHT: bold" vAlign=top>Date: <UL></UL></TD><TD 
style="WIDTH: 3px" vAlign=top><TABLE><TBODY><TR><TD style="WIDTH: 117px"><asp:TextBox id="txtDt" runat="server" Width="147px"></asp:TextBox> 
</TD><TD style="WIDTH: 19px"><asp:ImageButton id="imgbtnCal111" runat="server" ImageUrl="~/AD/images/cal.gif"></asp:ImageButton> 
</TD></TR></TBODY></TABLE><asp:RequiredFieldValidator id="rfv112" runat="server" Display="None" ControlToValidate="txtDt" ErrorMessage="Enter  Date"></asp:RequiredFieldValidator> 
<cc1:CalendarExtender id="ce111" runat="server" Enabled="True" TargetControlID="txtDt" PopupButtonID="imgbtnCal111"></cc1:CalendarExtender> 
<cc1:ValidatorCalloutExtender id="vce112" runat="server" Enabled="True" TargetControlID="rfv112"></cc1:ValidatorCalloutExtender> 
<cc1:FilteredTextBoxExtender id="ftbe112" runat="server" Enabled="True" TargetControlID="txtDt" ValidChars="+-=/*()." FilterType="Custom, Numbers"></cc1:FilteredTextBoxExtender> 
</TD></TR><TR><TD style="FONT-WEIGHT: bold" vAlign=top>Details: 
<UL></UL></TD><TD style="WIDTH: 3px" vAlign=top><asp:TextBox id="txtDtl" runat="server" Height="140px" Width="286px" TextMode="MultiLine"></asp:TextBox> 
<asp:RequiredFieldValidator id="rfv113" runat="server" Display="None" ControlToValidate="txtDtl" ErrorMessage="Enter  Details"></asp:RequiredFieldValidator> 
<cc1:ValidatorCalloutExtender id="vce113" runat="server" Enabled="True" TargetControlID="rfv113"></cc1:ValidatorCalloutExtender> 
<cc1:FilteredTextBoxExtender id="ftbe113" runat="server" Enabled="True" TargetControlID="txtDtl" ValidChars="+-=/*()." FilterType="Custom, UppercaseLetters, LowercaseLetters"></cc1:FilteredTextBoxExtender> 
</TD></TR><TR><TD style="FONT-WEIGHT: bold" vAlign=top align=center>     &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
</TD><TD style="FONT-WEIGHT: bold" vAlign=top> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton id="btnSubmit111" onclick="btnSubmit111_Click" runat="server" ImageUrl="~/AD/images/submit.gif"></asp:ImageButton> 
<asp:ImageButton id="btnClr111" onclick="btnClr111_Click" runat="server" ImageUrl="~/AD/images/clear.gif"></asp:ImageButton> 
</TD></TR><TR><TD style="FONT-WEIGHT: bold" vAlign=top align=center></TD><TD 
style="FONT-WEIGHT: bold" vAlign=top><asp:Label id="Label110" runat="server" Width="289px" ForeColor="Black"></asp:Label> 
</TD><TD style="WIDTH: 90px" colSpan=1 rowSpan=1></TD><TD style="WIDTH: 5px" 
vAlign=top colSpan=1 rowSpan=1></TD></TR></TBODY></TABLE>
   
</asp:Content>

