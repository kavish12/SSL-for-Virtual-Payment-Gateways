<%@ Page Language="C#" MasterPageFile="~/AD/MasterMain.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="AD_Default" Title="Home" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="col_w250">
            
               	<h2>LATEST <span>NEWS</span></h2>
                
                <div class="sb_news_box">
	                  <marquee direction='up' onMouseover='this.stop()' OnMouseout='this.start()' ><asp:DataList id="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="436px" Width="225px"><ItemTemplate>
<asp:Label id="nmLabel" runat="server" Font-Bold="True" Text='<%# Eval("nm") %>'></asp:Label><br />
<asp:Label id="dtlLabel" runat="server" Font-Bold="True" Text='<%# Eval("dtl") %>'></asp:Label><br />
<asp:Label id="dtLabel" runat="server" Font-Bold="True" Text='<%# Eval("dt") %>'></asp:Label><br />
</ItemTemplate>
</asp:DataList></marquee><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                            SelectCommand="SELECT id, nm, dtl, dt, st FROM tbl_New WHERE (st = 'Current') ORDER BY dt DESC">
                        </asp:SqlDataSource>
	                
                        <div class="cleaner"></div>
            	</div>
                 	<h2>LATEST <span>EVENT</span></h2>
                <div class="sb_news_box">
				 <marquee direction='up' onMouseover='this.stop()' OnMouseout='this.start()' ><asp:DataList id="DataList2" runat="server" DataSourceID="SqlDataSource2" Width="225px" Font-Overline="False" Font-Underline="False" Font-Strikeout="False" Font-Italic="False" Font-Bold="False"><ItemTemplate>
<asp:Label id="nmLabel" runat="server" Font-Bold="True" Text='<%# Eval("nm") %>'></asp:Label><br />
<asp:Label id="dtlLabel" runat="server" Font-Bold="True" Text='<%# Eval("dtl") %>'></asp:Label><br />
<asp:Label id="dtLabel" runat="server" Font-Bold="True" Text='<%# Eval("dt") %>'></asp:Label><br /></ItemTemplate>
</asp:DataList></marquee><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>"
                            SelectCommand="SELECT id, nm, dtl, dt, st FROM tbl_Event WHERE (st = 'Current') ORDER BY dt DESC">
                        </asp:SqlDataSource>
					 <div class="cleaner"></div>
                </div>
                
                
                
               
            </div>
            
		<div class="col_w2501">
            	<h2>OUR <span>SERVICES</span></h2>
                
  	       		<p><em>
  	       		Nowadays, security of data is transit over the Internet becomes increasingly necessary because of steadily growing data volume and importance. 

Every user of a public network sends various types of data, from email to credit card details daily, and he would therefore like them to be protected when it transit over a public network.
E-Commerce&nbsp;
                     consists of the buying and selling of products or services over electronic systems such as the Internet and other computer networks.

It is more than just buying and selling products online. It also includes the entire online process of developing, marketing, selling, delivering, servicing and paying for products and services.
Gateway is used to connect different network. Payment Gateway is a web-based service that integrates into an E-Commerce website’s shopping cart and collects payment information provided by customers at the check-out. 
 The gateway  transmit payment  information to the card issuing bank for authorization. The authorization response is then sent to the merchant and is displayed to the cardholder.
A payment gateway is an e-commerce application service provider service that authorizes payments for e-businesses, online retailers, bricks and clicks, or traditional brick and mortar. It is the equivalent of a physical point of sale terminal located in most retail outlets. Payment gateways protect credit card details by encrypting sensitive information, such as credit card numbers, to ensure that information is passed securely between the customer and the merchant and also between merchant and the payment processor.. 
               Payment gateway is the engine that fuels the communication and transmission of data between the functional components of the payment process. It relays the request for payment (which may come from a shopping cart, a virtual terminal, an in-house accounting system, or even a retail terminal) in the appropriate electronic format to the appropriate entity (a bank, Visa/MasterCard, or processor). Then it relays the response or authorization that sets the funds transfer activity. 
             	
  	       		</em></p>
  	       		<p>Features</p>
                
   		  <ul class="tmo_list">
                	<li>Flexibility:-- Any new facility or the new work add very easily.</li><li>Portability:--Work in any environment and for any hospitable requirement. 	</li>
                	<li>Fastness:--Faster than the manual system ,one single click work done.</li><li>Standardness:--Specific flow of the information so,user friendly.</li><li>Proper Backup Facility:--Database is centralized.</li><li>Reliability:--Web based application.</li></ul>
                
             
                   
      	</div>
            
            <div class="col_w250 col_last">
            	<h2>SIGN IN</h2>
            	  <div class="image_wrapper"><a href="#"><img  src="images/templatemo_image_02.png" alt="image sign" /></a></div>
             
               	<div id="contact_form">
              	
                      <table border="0" cellpadding="0" cellspacing="0">
                          <tbody>
                              <tr>
                                  <td valign="top" colspan="3">
                                 <br />
                                  
                                  </td>
                              </tr>
                              <tr>
                                  <td align="center" valign="top">
                                      UserName
                                  </td>
                                  <td valign="top">
                                      <asp:TextBox ID="txtUserName" runat="server" CssClass="input_field"></asp:TextBox>
                                      <cc1:textboxwatermarkextender id="tbe1" runat="server" targetcontrolid="txtUserName"
                                          watermarktext="Enter User Name"></cc1:textboxwatermarkextender>
                                     
                                  </td>
                                  <td valign="top">
                                      <asp:RequiredFieldValidator ID="rfvUN" runat="server" ControlToValidate="txtUserName"
                                          ErrorMessage="*"></asp:RequiredFieldValidator></td>
                              </tr> <tr>
                                  <td valign="top" colspan="3">
                                 <br />
                                  
                                  </td>
                              </tr>
                              <tr>
                                  <td align="center" valign="top">
                                      PassWord
                                  </td>
                                  <td valign="top">
                                      <asp:TextBox ID="txtPassword" runat="server" CssClass="input_field" TextMode="Password"></asp:TextBox>&nbsp;<cc1:textboxwatermarkextender
                                          id="tbe2" runat="server" targetcontrolid="txtPassword" watermarktext="Enter Password"></cc1:textboxwatermarkextender></td>
                                  <td valign="top">
                                      <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtPassword"
                                          ErrorMessage="*"></asp:RequiredFieldValidator></td>
                              </tr> <tr>
                                  <td valign="top" colspan="3">
                                 <br />
                                  
                                  </td>
                              </tr>
                              <tr>
                                  <td align="center" colspan="3">
                                      <asp:ImageButton ID="imgbtnSign" runat="server" ImageUrl="~/AD/images/Signin.gif" OnClick="imgbtnSign_Click" /></td>
                              </tr>
                              <tr>
                                  <td align="center" colspan="3">
                                  </td>
                              </tr>
                              <tr>
                                  <td align="center" colspan="3">
                                      <asp:Label ID="Label1" runat="server"></asp:Label></td>
                              </tr>
                          </tbody>
                      </table></div>
                      <table><tr><td> <br /><br /></td></tr></table>
                     
                    
                   <div class="image_wrapper"><a href="#"><img  src="images/templatemo_image_02.jpg" alt="image 2" /></a></div>
                   
            </div>   
</asp:Content>

