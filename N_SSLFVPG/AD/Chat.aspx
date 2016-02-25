<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="AD_Chat" Title="Chat" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><h2>Chat</h2></p>  <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0"  CssClass="bord">
               
  
   <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
          <HeaderTemplate>
        Chat
            </HeaderTemplate>    <ContentTemplate>
          <table style="height:auto;"><tr><td><asp:UpdatePanel id="UpdatePanel2" runat="server">
                <contenttemplate>
<TABLE style="HEIGHT: auto"><TBODY><TR><TD style="HEIGHT: 215px" vAlign=top colSpan=2><asp:TextBox id="txtChat" runat="server" CssClass="textarea1" __designer:wfdid="w17" Width="839px" TextMode="MultiLine" Height="209px"></asp:TextBox> </TD></TR><TR><TD vAlign=top><TABLE style="HEIGHT: auto"><TBODY><TR><TD vAlign=top>To:</TD></TR><TR><TD vAlign=top><asp:TextBox id="txtTo" runat="server" CssClass="input_field1" Width="261px"></asp:TextBox></TD></TR><TR><TD vAlign=top>Message:</TD></TR><TR><TD vAlign=top><asp:TextBox id="txtMsg" runat="server" CssClass="textarea1" Width="263px" TextMode="MultiLine" Height="156px"></asp:TextBox></TD></TR><TR><TD><asp:ImageButton id="btnSend" onclick="btnSend_Click" runat="server" ImageUrl="~/AD/images/send.gif"></asp:ImageButton><asp:ImageButton id="btnCancel" onclick="btnCancel_Click" runat="server" ImageUrl="~/AD/images/clear.gif"></asp:ImageButton></TD></TR><TR><TD colSpan=1><asp:Label id="Label1" runat="server" Width="267px" Visible="False" Text="Label"></asp:Label></TD></TR></TBODY></TABLE></TD><TD style="HEIGHT: 275px" vAlign=top><asp:GridView id="GridView1" runat="server" Width="282px" ForeColor="#333333" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" GridLines="None" DataKeyNames="unm" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
<FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True"></FooterStyle>
<Columns>
<asp:CommandField ShowSelectButton="True"></asp:CommandField>
<asp:BoundField DataField="unm" SortExpression="unm" HeaderText="Username">
<ItemStyle ForeColor="#0000C0"></ItemStyle>
</asp:BoundField>
<asp:BoundField DataField="dg" SortExpression="dg" HeaderText="UserType">
<ItemStyle ForeColor="#0000C0"></ItemStyle>
</asp:BoundField>
<asp:BoundField DataField="onf" SortExpression="onf" HeaderText="Status">
<ItemStyle ForeColor="#0000C0"></ItemStyle>
</asp:BoundField>
<asp:TemplateField>
<ItemStyle ForeColor="#0000C0"></ItemStyle>
<ItemTemplate>
<asp:Image id="Image1" runat="server" ImageUrl="~/images/of.png"></asp:Image>&nbsp; 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemStyle ForeColor="#0000C0"></ItemStyle>
<ItemTemplate>
<asp:Image id="Image2" runat="server" ImageUrl="~/images/on.png"></asp:Image>
</ItemTemplate>
</asp:TemplateField>
</Columns>

<RowStyle BackColor="#EFF3FB"></RowStyle>

<EditRowStyle BackColor="#2461BF"></EditRowStyle>

<SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center"></PagerStyle>

<HeaderStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True"></HeaderStyle>

<AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
</asp:GridView> <asp:SqlDataSource id="SqlDataSource1" runat="server" SelectCommand="SELECT unm,dg,onf FROM tbl_User" ConnectionString="<%$ ConnectionStrings:MyCon %>">


</asp:SqlDataSource>&nbsp; </TD></TR></TBODY></TABLE>
</contenttemplate>
                <triggers>
<asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"></asp:AsyncPostBackTrigger>
</triggers>
            </asp:UpdatePanel>  <asp:Timer id="Timer1" runat="server" OnTick="Timer1_Tick" Interval="5000">
                                            </asp:Timer>
             </td>
                  </tr>  </table>
            </ContentTemplate>
          
        </cc1:TabPanel>
    </cc1:TabContainer> 
      
</asp:Content>
                   

