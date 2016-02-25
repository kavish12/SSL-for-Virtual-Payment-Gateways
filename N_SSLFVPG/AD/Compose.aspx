<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Compose.aspx.cs" Inherits="AD_Compose" Title="Compose" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <p></p> <h2>Compose</h2>
    <p>
    </p>
    <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" CssClass="bord">
               
     <cc1:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1" > 
     
            <ContentTemplate>
                <table>
                    <tr>
                        <td valign="top">
                            To:
                        </td>
                        <td valign="top">
                            <asp:TextBox ID="txtTo" runat="server" CssClass="textarea1" Height="67px" TextMode="MultiLine"
                                Width="291px"></asp:TextBox>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                                SelectCommand="SELECT  dg,unm FROM tbl_User">
                           
                                </asp:SqlDataSource>

                            </td>
                        <td rowspan="4" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                CellPadding="4" DataKeyNames="unm" DataSourceID="SqlDataSource1" ForeColor="#333333"
                                GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="225px">
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="unm" HeaderText="Username" SortExpression="unm">
                                        <ItemStyle ForeColor="#0000C0" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="dg" HeaderText="User Type" SortExpression="dg">
                                        <ItemStyle ForeColor="#0000C0" />
                                    </asp:BoundField>
                                </Columns>
                                <RowStyle BackColor="#EFF3FB" />
                                <EditRowStyle BackColor="#2461BF" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                        </td>
                       
                    </tr>
                    <tr>
                        <td valign="top">
                            Subject:</td>
                        <td>
                            <asp:TextBox ID="txtSub" runat="server" CssClass="input_field1" Width="284px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Message:</td>
                        <td>
                            <asp:TextBox ID="txtMsg" runat="server" CssClass="textarea1" Height="120px" TextMode="MultiLine"
                                Width="286px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Attachment:</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input_field1" Width="289px" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                        </td>
                        <td colspan="2">
                            <asp:ImageButton ID="btnSend" runat="server" ImageUrl="~/AD/images/send.gif" OnClick="btnSend_Click" />
                            <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/AD/images/clear.gif"
                                OnClick="btnCancel_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 4px">
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Width="229px"></asp:Label>
                        </td>
                    </tr>
                </table>
        
            </ContentTemplate>
            <HeaderTemplate>
           Compose
            </HeaderTemplate>
        </cc1:TabPanel>
    </cc1:TabContainer>
       
                
</asp:Content>
                   

