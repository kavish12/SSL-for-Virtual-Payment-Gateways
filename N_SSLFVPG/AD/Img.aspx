<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Img.aspx.cs" Inherits="AD_Img" Title="Img" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <p><h2>Settings</h2></p><cc1:TabContainer id="TabContainer1" runat="server" CssClass="bord" ActiveTabIndex="0"><cc1:TabPanel runat="server" ID="TabPanel1" HeaderText="TabPanel1"><ContentTemplate>
<TABLE style="HEIGHT: auto"><TBODY><TR><TD style="HEIGHT: auto" vAlign=top align=left>Select&nbsp;Picture:</TD>
    <td align="left" style="height: auto" valign="top">
        <asp:FileUpload id="FileUpload1" runat="server"></asp:FileUpload> 
    </td>
    <td align="left" style="height: auto" valign="top">
        <asp:GridView id="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" GridLines="None" DataKeyNames="unm" ShowHeader="False"><Columns>
<asp:TemplateField><ItemTemplate>
                                        <img alt="Photo" height="140px" src='Image.aspx?unm=<%#Eval("unm")%>' width="150px"  />
                                    
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView> <asp:SqlDataSource id="SqlDataSource2" runat="server" SelectCommand="SELECT img, unm FROM tbl_Admin WHERE (unm = @unm)" ConnectionString="<%$ ConnectionStrings:MyCon %>"><SelectParameters>
<asp:SessionParameter SessionField="ad" Name="unm"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource> 
    </td>
</TR><TR><TD style="HEIGHT: auto" vAlign=top align=left>
    &nbsp;</TD>
    <td align="left" style="height: auto" valign="top">
        <asp:ImageButton id="btnImgUp" onclick="btnImgUp_Click" runat="server" ImageUrl="~/AD/images/submit.gif"></asp:ImageButton> 
    </td>
    <td align="left" style="height: auto" valign="top">
    </td>
</TR><TR><TD style="FONT-WEIGHT: bold; HEIGHT: auto" vAlign=top align=left>
    &nbsp;</TD>
    <td align="left" style="font-weight: bold; height: auto" valign="top">
        <asp:Label id="Label2" runat="server" ForeColor="Black"></asp:Label> 
    </td>
    <td align="left" style="font-weight: bold; height: auto" valign="top">
    </td>
</TR><TR><TD style="FONT-WEIGHT: bold; HEIGHT: auto" vAlign=top align=left>
    &nbsp;</TD>
    <td align="left" style="font-weight: bold; height: auto" valign="top">
    </td>
    <td align="left" style="font-weight: bold; height: auto" valign="top">
    </td>
</TR><TR><TD style="FONT-WEIGHT: bold; HEIGHT: auto" vAlign=top align=left>
    &nbsp;
</TD>
    <td align="left" style="font-weight: bold; height: auto" valign="top">
    </td>
    <td align="left" style="font-weight: bold; height: auto" valign="top">
    </td>
</TR></TBODY></TABLE>
</ContentTemplate>
<HeaderTemplate>
                       Change Picture
                        
</HeaderTemplate>
</cc1:TabPanel>
<cc1:TabPanel runat="server" ID="TabPanel2" HeaderText="TabPanel2"><ContentTemplate>
                      
                         <table style="height:auto; width:auto;">
                          <tr>
                    <td style="width: 44px">
                        <asp:Label ID="lblUnm" runat="server" Text="Enter Your Username" Width="141px"></asp:Label></td>
                              <td style="width: 44px">
                        <asp:TextBox ID="txtUnm" runat="server" Width="139px"></asp:TextBox></td>
                </tr>
                            <tr>
                                <td align="left" colspan="2">
                                    &nbsp;</td>
                            </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:ImageButton ID="btnChk"  runat="server" OnClick="btnChk_Click" ImageUrl="~/AD/images/submit.gif"  />
                        </td>
                </tr>
                <tr>
                    <td style="width: 44px; height: 42px">
                        <asp:Label ID="lblOPwd" runat="server" Text="Enter Old Password" Visible="False"
                            Width="129px"></asp:Label></td>
                    <td style="width: 44px; height: 42px">
                        <asp:TextBox ID="txtOPwd" runat="server" TextMode="Password" Visible="False"></asp:TextBox></td>
                </tr>
                            <tr>
                                <td style="width: 44px; height: 42px">
                                    &nbsp;</td>
                                <td style="width: 44px; height: 42px">
                                </td>
                            </tr>
                <tr>
                    <td style="width: 44px; height: 21px">
                        <asp:Label ID="lblNPwd" runat="server" Text="Enter New Password" Visible="False"
                            Width="134px"></asp:Label></td>
                    <td style="width: 44px; height: 21px">
                        <asp:TextBox ID="txtNPwd" runat="server" TextMode="Password" Visible="False"></asp:TextBox></td>
                </tr>
                            <tr>
                                <td style="height: 21px" colspan="2">
                                    &nbsp;</td>
                            </tr>
                <tr>
                    <td align="center" colspan="2" style="height: 32px">
                       <asp:ImageButton ID="btnChgPwd"  runat="server" OnClick="btnChgPwd_Click" ImageUrl="~/AD/images/submit.gif" Visible="False"  /></td>
                </tr>
                            <tr>
                                <td align="center" colspan="2" style="height: 32px">
                        <asp:Label ID="lblChgPwd" runat="server" ForeColor="Black" Text="Label" Visible="False"
                            Width="232px" Height="34px"></asp:Label></td>
                            </tr>
                        </table>   
                     
</ContentTemplate>
<HeaderTemplate>
                  Change Password
                     
</HeaderTemplate>
</cc1:TabPanel>
</cc1:TabContainer>
</asp:Content>

