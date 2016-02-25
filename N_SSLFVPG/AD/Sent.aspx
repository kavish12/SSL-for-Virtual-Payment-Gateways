<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Sent.aspx.cs" Inherits="AD_Sent" Title="Sent" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <p></p>  <h2>Sent</h2>
    <p>
    </p>
    <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" CssClass="bord" >
      
     <cc1:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1" > 
     
            <ContentTemplate>
           <table style="height:auto;">
                    <tr>
                        <td valign="top">
                        <table>
							<tr><td valign="top"><asp:Label id="Label11" runat="server" Font-Bold="False"></asp:Label></td> 
                            </tr><tr>
                                <td valign="top">
                                    <asp:Label id="Label12" runat="server" Font-Bold="False"></asp:Label></td>
                            </tr>
                             <tr>
                                <td valign="top">
                                
                                <table><tr>
                                <td valign="top">
               <asp:LinkButton ID="LnkSelect" runat="server"  OnClick="LnkSelect_Click" >SelectAll</asp:LinkButton>
               </td>
                           
                                <td valign="top"><asp:LinkButton ID="LnkUnselect" runat="server"   OnClick="LnkUnselect_Click">UnSelectAll</asp:LinkButton>
                </td>
                                <td valign="top"> <asp:LinkButton ID="LnkDelete" runat="server" OnClick="LnkDelete_Click">Delete</asp:LinkButton></td>
               </tr></table>
                                   <asp:Label ID="lblId" runat="server" Visible="False"></asp:Label></td></tr>
							
                       </table>
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                           DataKeyNames="id" DataSourceID="SqlDataSource1" Width="357px" CellPadding="4" GridLines="None"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" ForeColor="#333333">
                           <Columns>
                               <asp:CommandField ShowSelectButton="True" >
                                   <ItemStyle ForeColor="#0000C0" />
                               </asp:CommandField>
                               <asp:TemplateField>
                                   <ItemTemplate>
                                       <asp:CheckBox ID="CheckBox1" runat="server" />
                                   </ItemTemplate>
                                   <ItemStyle ForeColor="#0000C0" />
                               </asp:TemplateField>
                               
                               <asp:BoundField DataField="too" HeaderText="To" SortExpression="too" >
                                   <ItemStyle ForeColor="#0000C0" />
                               </asp:BoundField>
                               <asp:BoundField DataField="dt" HeaderText="Date" SortExpression="dt" >
                                   <ItemStyle ForeColor="#0000C0" />
                               </asp:BoundField>
                                  <asp:BoundField DataField="id" SortExpression="id" >
                                      <ItemStyle ForeColor="#0000C0" />
                                  </asp:BoundField>
                                 <asp:BoundField DataField="st" SortExpression="st" >
                                     <ItemStyle ForeColor="#0000C0" />
                                 </asp:BoundField>
                           </Columns>
                           <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                           <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                           <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                           <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                           <AlternatingRowStyle BackColor="White" />
                           <RowStyle BackColor="#E3EAEB" />
                           <EditRowStyle BackColor="#7C6F57" />
                       </asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                           DeleteCommand="DELETE FROM tbl_Sent WHERE (id = @id)" SelectCommand="SELECT id, too, frm, sub, msg, dt, ath,st FROM tbl_Sent WHERE (frm = @frm) order by id desc">
                           <DeleteParameters>
                               <asp:Parameter Name="id" />
                           </DeleteParameters>
                           <SelectParameters>
                               <asp:SessionParameter Name="frm" SessionField="ad" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                            &nbsp;&nbsp;
                
                   </td>
                        <td valign="top">
                       <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id"
                           DataSourceID="SqlDataSource2" HeaderText="Read Message" Height="50px"
                           OnDataBinding="Page_Load" Width="125px" CellPadding="4" GridLines="None" ForeColor="#333333">
                           <Fields>
                               <asp:BoundField DataField="too" HeaderText="To" SortExpression="too" >
                                   <ItemStyle ForeColor="#0000C0" />
                                   <HeaderStyle ForeColor="#0000C0" />
                               </asp:BoundField>
                               <asp:BoundField DataField="frm" HeaderText="From" SortExpression="frm" >
                                   <ItemStyle ForeColor="#0000C0" />
                                   <HeaderStyle ForeColor="#0000C0" />
                               </asp:BoundField>
                               <asp:BoundField DataField="sub" HeaderText="Subject" SortExpression="sub" >
                                   <ItemStyle ForeColor="#0000C0" />
                                   <HeaderStyle ForeColor="#0000C0" />
                               </asp:BoundField>
                               <asp:BoundField DataField="dt" HeaderText="Date" SortExpression="dt" >
                                   <ItemStyle ForeColor="#0000C0" />
                                   <HeaderStyle ForeColor="#0000C0" />
                               </asp:BoundField>
                               <asp:TemplateField HeaderText="Message">
                                   <ItemTemplate>
                                       <asp:TextBox ID="TextBox1" runat="server" Height="225px" Text='<%# Bind("msg") %>'
                                           TextMode="MultiLine" Width="300px" CssClass="textarea1"></asp:TextBox>
                                   </ItemTemplate>
                                   <ItemStyle VerticalAlign="Top" ForeColor="#0000C0" />
                                   <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" ForeColor="#0000C0" />
                               </asp:TemplateField>
                               <asp:TemplateField HeaderText="Attach/Download">
                                   <ItemTemplate>
                                       <a href='../Uploads/<%#Eval("ath")%>' style="color:#0000C0;">
                                           <%#Eval("ath") %>
                                       </a>
                                       <br />
                                       <br />
                                       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="#0000C0">Sent Message Box</asp:LinkButton>
                                   </ItemTemplate>
                                   <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" ForeColor="#0000C0" />
                                   <ItemStyle ForeColor="#0000C0" />
                               </asp:TemplateField>
                               <asp:CommandField ShowDeleteButton="True" />
                           </Fields>
                           <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                           <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                           <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                           <AlternatingRowStyle BackColor="White" />
                           <RowStyle BackColor="#E3EAEB" />
                           <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                           <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                           <EditRowStyle BackColor="#7C6F57" />
                       </asp:DetailsView>
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                           DeleteCommand="DELETE FROM tbl_Sent WHERE (id = @id)" SelectCommand="SELECT id, too, frm, sub, msg, dt, ath,st FROM tbl_Sent WHERE (frm = @frm) AND (id = @id) order by id desc">
                           <DeleteParameters>
                               <asp:Parameter Name="id" />
                           </DeleteParameters>
                           <SelectParameters>
                               <asp:SessionParameter Name="frm" SessionField="ad" />
                               <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                
            </ContentTemplate>
            <HeaderTemplate>
                         Sent
                 
            </HeaderTemplate>
        </cc1:TabPanel>
 </cc1:TabContainer>  
</asp:Content>
                   
