<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="MngCI.aspx.cs" Inherits="AD_MngCI" Title="MngCI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <h2>Authenticate </h2>
   <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0"  CssClass="bord">
   <cc1:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1" > <HeaderTemplate>
	
Client
</HeaderTemplate>
<ContentTemplate>
  <table style="width:auto; height: auto;">
                <tr>
                    <td align="left" style="width: 77px" valign="top">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CellPadding="4" DataSourceID="SqlDataSource1" Width="359px" DataKeyNames="id" ForeColor="#333333" GridLines="None" ShowHeader="False">
                            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="unm" HeaderText="Username" SortExpression="unm" />
                                 <asp:BoundField DataField="dg" HeaderText="User Type" SortExpression="dg" />
                               <asp:BoundField DataField="st" HeaderText="Status" SortExpression="st" />
                            </Columns>
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                            DeleteCommand="DELETE FROM tbl_User WHERE (id = @id)" SelectCommand="SELECT tbl_User.* FROM tbl_User"
                            UpdateCommand="UPDATE tbl_User SET st = @st,rt=@rt WHERE (id = @id)">
                            <DeleteParameters>
                                <asp:Parameter Name="id" />
                            </DeleteParameters>
                            <UpdateParameters>
                             <asp:Parameter Name="rt" />
                                <asp:Parameter Name="st" />
                                <asp:Parameter Name="id" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td align="left" style="width: 77px" valign="top">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource2" Height="50px" Width="415px" DataKeyNames="id" OnDataBinding="Page_Load" ForeColor="#333333" GridLines="None">
                            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                            <RowStyle BackColor="#E3EAEB" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <Fields>
                                <asp:BoundField DataField="fnm" HeaderText="Name" SortExpression="fnm" />
                                <asp:BoundField DataField="dob" HeaderText="Birthdate" SortExpression="dob" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                <asp:BoundField DataField="padd" HeaderText="Address" SortExpression="padd" />
                                <asp:BoundField DataField="resno" HeaderText="Res.Ph.no" SortExpression="resno" />
                                <asp:BoundField DataField="mobno" HeaderText="Mobile No" SortExpression="mobno" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                <asp:BoundField DataField="ste" HeaderText="State" SortExpression="ste" />
                                <asp:BoundField DataField="cnt" HeaderText="Country" SortExpression="cnt" />
                                <asp:BoundField DataField="pin" HeaderText="PinCode" SortExpression="pin" />
                                <asp:BoundField DataField="edt" HeaderText="Education" SortExpression="edt" />
                                <asp:BoundField DataField="dg" HeaderText="User Type" SortExpression="dg" />
                                     <asp:BoundField DataField="onm" HeaderText="Orgnazation" SortExpression="onm" />
                                <asp:BoundField DataField="sty" HeaderText="Service type" SortExpression="sty" />
                                <asp:BoundField DataField="we" HeaderText="Work experience" SortExpression="we" />
                                 <asp:TemplateField HeaderText="Rate">
                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
                                    <ItemTemplate>
                                        <asp:DropDownList ID="ddlRt" runat="server" SelectedValue='<%# Bind("rt", "{0}") %>'>
                                            <asp:ListItem Selected="True"></asp:ListItem>
                                            <asp:ListItem>0</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                        </asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="unm" HeaderText="Username" SortExpression="unm" />
                                <asp:TemplateField HeaderText="Status">
                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
                                    <ItemTemplate>
                                        <asp:DropDownList ID="ddlStatus" runat="server" SelectedValue='<%# Bind("st", "{0}") %>'>
                                            <asp:ListItem Selected="True"></asp:ListItem>
                                            <asp:ListItem>New</asp:ListItem>
                                            <asp:ListItem>Authenticate</asp:ListItem>
                                            <asp:ListItem>Unauthenticate</asp:ListItem>
                                        </asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField>
                                   <ItemTemplate>
                                       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  ForeColor="#0000C0">Back</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            </Fields>
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                            DeleteCommand="DELETE FROM tbl_User WHERE (id = @id)" SelectCommand="SELECT tbl_User.* FROM tbl_User WHERE (id = @id)"
                            UpdateCommand="UPDATE tbl_User SET st = @st,rt=@rt WHERE (id = @id)">
                            <DeleteParameters>
                                <asp:Parameter Name="id" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="st" />  
                                <asp:Parameter Name="rt" />
                                <asp:Parameter Name="id" />
                            </UpdateParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
    <div>
    </div>
                    </ContentTemplate>
                  
                </cc1:TabPanel>
       <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
           <ContentTemplate>
               <div class="entry">
                   <table style="width: auto; height: auto">
                       <tr>
                           <td align="left" style="width: 77px" valign="top">
                               <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                   CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource5" ForeColor="#333333"
                                   GridLines="None" Width="366px" ShowHeader="False">
                                   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                   <Columns>
                                       <asp:CommandField ShowSelectButton="True" />
                                       <asp:BoundField DataField="unm" HeaderText="Username" SortExpression="unm" />
                                       <asp:BoundField DataField="st" HeaderText="Status" SortExpression="st" />
                                   </Columns>
                                   <RowStyle BackColor="#E3EAEB" />
                                   <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                   <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                   <AlternatingRowStyle BackColor="White" />
                                   <EditRowStyle BackColor="#7C6F57" />
                               </asp:GridView>
                               <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                                 SelectCommand="SELECT tbl_User.* FROM tbl_User">                                  
                               </asp:SqlDataSource>
                           </td>
                           <td align="left" style="width: 77px" valign="top">
                               <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" CellPadding="4"
                                   DataKeyNames="id" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" Height="50px" OnDataBinding="Page_Load" Width="419px">
                                   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                   <RowStyle BackColor="#E3EAEB" />
                                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                   <Fields>
                                       <asp:BoundField DataField="fnm" HeaderText="Name" SortExpression="fnm" />
                                       <asp:BoundField DataField="dob" HeaderText="Birthdate" SortExpression="dob" />
                                       <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                       <asp:BoundField DataField="padd" HeaderText="Address" SortExpression="padd" />
                                       <asp:BoundField DataField="resno" HeaderText="Res.Ph.no" SortExpression="resno" />
                                       <asp:BoundField DataField="mobno" HeaderText="Mobile No" SortExpression="mobno" />
                                       <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                       <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                       <asp:BoundField DataField="ste" HeaderText="State" SortExpression="ste" />
                                       <asp:BoundField DataField="cnt" HeaderText="Country" SortExpression="cnt" />
                                       <asp:BoundField DataField="pin" HeaderText="PinCode" SortExpression="pin" />
                                       <asp:BoundField DataField="edt" HeaderText="Education" SortExpression="edt" />
                                       <asp:BoundField DataField="dg" HeaderText="User Type" SortExpression="dg" />
                                           <asp:BoundField DataField="onm" HeaderText="Orgnazation" SortExpression="onm" />
                                <asp:BoundField DataField="sty" HeaderText="Service type" SortExpression="sty" />
                                <asp:BoundField DataField="we" HeaderText="Work experience" SortExpression="we" />
                                    <asp:BoundField DataField="rt" HeaderText="Rate" SortExpression="rt" />
                                 <asp:BoundField DataField="unm" HeaderText="Username" SortExpression="unm" />
                                        <asp:BoundField DataField="st" HeaderText="Status" SortExpression="st" />
                                       
                                       <asp:TemplateField>
                                           <ItemTemplate>
                                               <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#0000C0" OnClick="LinkButton2_Click">Back</asp:LinkButton>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                   </Fields>
                                   <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                   <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                                   <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                                   <AlternatingRowStyle BackColor="White" />
                                   <EditRowStyle BackColor="#7C6F57" />
                               </asp:DetailsView>
                               <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                                  SelectCommand="SELECT tbl_User.* FROM tbl_User WHERE (id = @id) ">                                  
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="GridView3" Name="id" PropertyName="SelectedValue" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                           </td>
                       </tr>
                   </table>
               </div>
           </ContentTemplate>
           <HeaderTemplate>
               View All User
           </HeaderTemplate>
       </cc1:TabPanel>
       <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
           <ContentTemplate>
              <div class="entry">
                   <table style="width: auto; height: auto">
                       <tr>
                           <td align="left" style="width: 77px" valign="top">
                               <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                   CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="#333333"
                                   GridLines="None" Width="310px" ShowHeader="False">
                                   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                   <Columns>
                                       <asp:CommandField ShowSelectButton="True" />
                                       <asp:BoundField DataField="unm" HeaderText="Username" SortExpression="unm" />
                                       <asp:BoundField DataField="st" HeaderText="Status" SortExpression="st" />
                                   </Columns>
                                   <RowStyle BackColor="#E3EAEB" />
                                   <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                   <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                   <AlternatingRowStyle BackColor="White" />
                                   <EditRowStyle BackColor="#7C6F57" />
                               </asp:GridView>
                               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                                   SelectCommand="SELECT tbl_User.* FROM tbl_User where st='Authenticate'">
                               </asp:SqlDataSource>
                           </td>
                           <td align="left" style="width: 77px" valign="top">
                               <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4"
                                   DataKeyNames="id" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Height="50px" OnDataBinding="Page_Load" Width="425px">
                                   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                   <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                                   <EditRowStyle BackColor="#7C6F57" />
                                   <RowStyle BackColor="#E3EAEB" />
                                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                   <Fields>
                                       <asp:BoundField DataField="fnm" HeaderText="Name" SortExpression="fnm" />
                                       <asp:BoundField DataField="dob" HeaderText="Birthdate" SortExpression="dob" />
                                       <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                       <asp:BoundField DataField="padd" HeaderText="Address" SortExpression="padd" />
                                       <asp:BoundField DataField="resno" HeaderText="Res.Ph.no" SortExpression="resno" />
                                       <asp:BoundField DataField="mobno" HeaderText="Mobile No" SortExpression="mobno" />
                                       <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                       <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                       <asp:BoundField DataField="ste" HeaderText="State" SortExpression="ste" />
                                       <asp:BoundField DataField="cnt" HeaderText="Country" SortExpression="cnt" />
                                       <asp:BoundField DataField="pin" HeaderText="PinCode" SortExpression="pin" />
                                       <asp:BoundField DataField="edt" HeaderText="Education" SortExpression="edt" />
                                       <asp:BoundField DataField="dg" HeaderText="User Type" SortExpression="dg" />
                                 <asp:BoundField DataField="htq" HeaderText="Hint Q?:" SortExpression="htq" />
                                       <asp:BoundField DataField="ans" HeaderText="Ans:" SortExpression="ans" />
                                           <asp:BoundField DataField="onm" HeaderText="Orgnazation" SortExpression="onm" />
                                <asp:BoundField DataField="sty" HeaderText="Service type" SortExpression="sty" />
                                <asp:BoundField DataField="we" HeaderText="Work experience" SortExpression="we" />
                                   <asp:BoundField DataField="rt" HeaderText="Rate" SortExpression="rt" />
                                     <asp:BoundField DataField="unm" HeaderText="Username" SortExpression="unm" />
                                       <asp:BoundField DataField="st" HeaderText="Status" SortExpression="st" />
                                       <asp:TemplateField>
                                           <ItemTemplate>
                                               <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#0000C0" OnClick="LinkButton3_Click">Back</asp:LinkButton>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                   </Fields>
                                   <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                                   <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                   <AlternatingRowStyle BackColor="White" />
                               </asp:DetailsView>
                               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                                   SelectCommand="SELECT tbl_User.* FROM tbl_User WHERE (id = @id)">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="GridView2" Name="id" PropertyName="SelectedValue" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                           </td>
                       </tr>
                   </table>
           </ContentTemplate>
           <HeaderTemplate>
               View Authenticate User
           </HeaderTemplate>
       </cc1:TabPanel>
            </cc1:TabContainer>
          
</asp:Content>

