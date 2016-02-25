<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="MngNE.aspx.cs" Inherits="AD_MngNE" Title="MngNE" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <p>
				<h2>Manage News,Events</h2></p>
						
 
   <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0"  CssClass="bord"><cc1:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1" > <HeaderTemplate>
	News

</HeaderTemplate>
<ContentTemplate>
   
						
<table style="width:auto; height: auto;"><TR><TD style="height:auto; width: 7px;" vAlign=top 
align=left>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
        Width="212px" DataKeyNames="id" ShowHeader="False">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="dt" HeaderText="Date" SortExpression="dt" />
            <asp:BoundField DataField="st" HeaderText="Status" SortExpression="st" />
        </Columns>
        <RowStyle BackColor="#E3EAEB" />
        <EditRowStyle BackColor="#7C6F57" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
        DeleteCommand="DELETE FROM tbl_New WHERE (id = @id)" SelectCommand="SELECT     tbl_New.*&#13;&#10;FROM         tbl_New where st='Current' order by dt desc"
        UpdateCommand="UPDATE tbl_New SET nm = @nm, dtl = @dtl, dt = @dt, st = @st WHERE (id = @id)">
        <DeleteParameters>
            <asp:Parameter Name="id" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nm" />
            <asp:Parameter Name="dtl" />
            <asp:Parameter Name="dt" />
            <asp:Parameter Name="st" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;
</TD><TD style="height:auto;" vAlign=top 
align=left>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None"
        Height="50px" Width="373px" DataKeyNames="id">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <RowStyle BackColor="#E3EAEB" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="nm" HeaderText="Title" SortExpression="nm" />
            <asp:BoundField DataField="dtl" HeaderText="Details" SortExpression="dtl" />
            <asp:BoundField DataField="dt" HeaderText="Date" SortExpression="dt" />
            <asp:TemplateField HeaderText="Status">
            
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddlStatus" runat="server" SelectedValue='<%# Bind("st", "{0}") %>'>
                                                            <asp:ListItem></asp:ListItem>
                                                            <asp:ListItem>Current</asp:ListItem>
                                                            <asp:ListItem>Old</asp:ListItem>
                                                        </asp:DropDownList>
                                                        
                                                    </ItemTemplate>
                                                    <ItemStyle ForeColor="#0000C0" />
                                                </asp:TemplateField>
                                        <asp:TemplateField>
                                   <ItemTemplate>
                                       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  ForeColor="#0000C0">Back</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>        
            
          
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
        DeleteCommand="DELETE FROM tbl_New WHERE (id = @id)" SelectCommand="SELECT tbl_New.*  FROM tbl_New where id=@id"
        UpdateCommand="UPDATE tbl_New SET nm = @nm, dtl = @dtl, dt = @dt, st = @st WHERE (id = @id)">
        <DeleteParameters>
            <asp:Parameter Name="id" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nm" />
            <asp:Parameter Name="dtl" />
            <asp:Parameter Name="dt" />
            <asp:Parameter Name="st" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
                                    </TD></tr></TABLE>

</ContentTemplate>
</cc1:TabPanel>
        <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2" >
            <HeaderTemplate>
           Event
            </HeaderTemplate>
            <ContentTemplate> 					
<table style="width:auto; height: auto;"><TR><TD style="height:auto; width: 7px;" vAlign=top 
align=left>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None"
        Width="212px" DataKeyNames="id" ShowHeader="False">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="dt" HeaderText="Date" SortExpression="dt" />
            <asp:BoundField DataField="st" HeaderText="Status" SortExpression="st" />
        </Columns>
        <RowStyle BackColor="#E3EAEB" />
        <EditRowStyle BackColor="#7C6F57" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
        DeleteCommand="DELETE FROM tbl_Event WHERE (id = @id)" SelectCommand="SELECT  tbl_Event.* FROM   tbl_Event where st='Current' order by dt desc"
        UpdateCommand="UPDATE tbl_Event SET nm = @nm, dtl = @dtl, dt = @dt, st = @st WHERE (id = @id)">
        <DeleteParameters>
            <asp:Parameter Name="id" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nm" />
            <asp:Parameter Name="dtl" />
            <asp:Parameter Name="dt" />
            <asp:Parameter Name="st" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;
</TD><TD style="height:auto;" vAlign=top 
align=left>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4"
        DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None"
        Height="50px" Width="373px" DataKeyNames="id">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <RowStyle BackColor="#E3EAEB" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="nm" HeaderText="Title" SortExpression="nm" />
            <asp:BoundField DataField="dtl" HeaderText="Details" SortExpression="dtl" />
            <asp:BoundField DataField="dt" HeaderText="Date" SortExpression="dt" />
            <asp:TemplateField HeaderText="Status">
            
                                                    <ItemTemplate>
                                                        <asp:DropDownList ID="ddlStatus" runat="server" SelectedValue='<%# Bind("st", "{0}") %>'>
                                                            <asp:ListItem></asp:ListItem>
                                                            <asp:ListItem>Current</asp:ListItem>
                                                            <asp:ListItem>Old</asp:ListItem>
                                                        </asp:DropDownList>
                                                        
                                                    </ItemTemplate>
                                                    <ItemStyle ForeColor="#0000C0" />
                                                </asp:TemplateField>
                                              
              <asp:TemplateField>
                                   <ItemTemplate>
                                       <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"  ForeColor="#0000C0">Back</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
          
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
        DeleteCommand="DELETE FROM tbl_Event WHERE (id = @id)" SelectCommand="SELECT tbl_Event.*  FROM tbl_Event where id=@id"
        UpdateCommand="UPDATE tbl_Event SET nm = @nm, dtl = @dtl, dt = @dt, st = @st WHERE (id = @id)">
        <DeleteParameters>
            <asp:Parameter Name="id" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nm" />
            <asp:Parameter Name="dtl" />
            <asp:Parameter Name="dt" />
            <asp:Parameter Name="st" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" Name="id" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
                                    </TD></tr></TABLE>
            
            </ContentTemplate>
        </cc1:TabPanel>
        
</cc1:TabContainer>
</asp:Content>

