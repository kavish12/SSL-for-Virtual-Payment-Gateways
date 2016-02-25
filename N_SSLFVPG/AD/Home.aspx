<%@ Page Language="C#" MasterPageFile="~/AD/Master.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="AD_Home" Title="Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><marquee BEHAVIOR=ALTERNATE><h2><asp:Label id="Label1" runat="server"  Font-Bold="True" ></asp:Label> </h2></marquee></p>
 
<div class="col_w250">
            
               	<h2>LATEST <span>Picture</span></h2>
                
                <div class="sb_news_box">

       <asp:GridView id="GridView1" runat="server" DataKeyNames="unm" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"><Columns>
<asp:TemplateField><ItemTemplate>
                                        <img alt="Photo" height="140px" src='Image.aspx?unm=<%#Eval("unm")%>' width="150px"  />
                                    
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView><asp:SqlDataSource id="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>" SelectCommand="SELECT img, unm FROM tbl_Admin WHERE (unm = @unm)"><SelectParameters>
<asp:SessionParameter SessionField="ad" Name="unm"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource> 
	                
                        <div class="cleaner"></div>
            	</div>
               
               	<h2><span>Authority</span></h2>
                
   		  <ul class="tmo_list">
   		   <li>Create & manage News & Events.</li><li>Authenticate the client. </li>
                          <li>View bid project. </li>
                           <li>View Account Request. </li>
                            <li>View Account Details. </li>
                               <li>View contactmail of site visitors. </li>
                                            <li>View IP address of Client. </li>
                                                 <li>Change password & picture</li></ul>  
             
             
    
                
                
               
            </div>
            
		
            
            <div class="col_w250 col_last">
            	        
           <IMG alt="image sign" src="images/ad.jpg" /></div>
</asp:Content>

