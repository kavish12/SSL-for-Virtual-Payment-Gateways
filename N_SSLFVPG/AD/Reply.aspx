<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="AD_Reply" Title="Reply" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
           <p> <h2> 
                 Reply </h2> </p>      <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0"  CssClass="bord" >
                    <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1" >
                        <HeaderTemplate>
                       Reply   
                   
  </HeaderTemplate>
                        <ContentTemplate>  
                        <table style="width:auto;height:auto;">
     <tr><td><table><tr><td style=""valign="top">To:</td><td>
         <asp:TextBox ID="txtTo" runat="server" Height="36px" TextMode="MultiLine" Width="348px" CssClass="textarea1"></asp:TextBox></td>
         </tr>
          <tr><td style=""valign="top">Subject:</td><td>
             <asp:TextBox ID="txtSub" runat="server" Width="346px" CssClass="input_field1"></asp:TextBox></td></tr>
              <tr><td style="" valign="top">Message:</td><td>
             <asp:TextBox ID="txtMsg" runat="server" Height="136px" TextMode="MultiLine" Width="348px" CssClass="textarea1"></asp:TextBox></td></tr>
              <tr><td style=""valign="top">Attachment:</td><td>
                  <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input_field1" Height="36px" Width="358px" /></td></tr>
                  <tr><td >
                         </td>     <td>
                              <asp:ImageButton ID="btnSend" runat="server" ImageUrl="~/AD/images/send.gif" OnClick="btnSend_Click" />
                              <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/AD/images/clear.gif" OnClick="btnCancel_Click" /></td>
                  </tr>
         <tr>
             <td>
             </td>
             <td>
                         <asp:Label ID="Label1" runat="server" Visible="False" Width="345px"></asp:Label></td>
         </tr>
         </table></td></tr></table></ContentTemplate></cc1:TabPanel>
         </cc1:TabContainer>
</asp:Content>
                   

