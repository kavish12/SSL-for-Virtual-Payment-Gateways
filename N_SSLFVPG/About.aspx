<%@ Page Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" Title="About" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="col_w900">
          <h2><span>About</span> the Server</h2>
           <span class="tagline">Sever information</span>
          <img src="images/abt.jpg"  alt="image"  class="fl"  />
          <p>What is a Payment Gateway?<br />

A payment gateway is the engine that fuels the communication and transmission of data between the functional components of the payment process. It relays the request for payment (which may come from a shopping cart, a virtual terminal, an in-house accounting system, or even a retail terminal) in the appropriate electronic format to the appropriate entity (a bank, Visa/MasterCard, or processor). Then it relays the response or authorization that sets the funds transfer activity.<br />
<br />Security Features<br />

Security is important before, during and after the payment processing process. To fully ensure security, our Payment Solutions employ proven technology to transmit data safely and best practices procedures to safeguard consumer data. Our Payment Solution are PCI compliant, which requires diligent adherence to anti-fraud measures to protect merchants and consumers.

Our Payment Gateway utilizes Secure Socket Layer (SSL) authentication and encryption technology. This is patented technology developed by Netscape Communications and relies on encryption developed by RSA Data Security, Inc. and other cryptographic providers. SSL encryption protects information being transmitted across the Internet from third parties.<br />
<br />Payment Gateway:<br />A payment gateway facilitates the transfer of information between a payment portal (such as a website, mobile phone or IVR service) and the Front End Processor or acquiring bank. When a customer orders a product from a payment gateway-enabled merchant, the payment gateway performs a variety of tasks to process the transaction:
</p>

   <ul><li> A customer places order on website by pressing the 'Submit Order' or equivalent button, or perhaps enters their card details using an automatic phone answering service.</li><li>If the order is via a website, the customer's web browser encrypts the information to be sent between the browser and the merchant's webserver. This is done via SSL (Secure Socket Layer) encryption.</li><li> The merchant then forwards the transaction details to their payment gateway. This is another SSL encrypted connection to the payment server hosted by the payment gateway.</li><li> The payment gateway forwards the transaction information to the payment processor used by the merchant's acquiring bank.</li><li> The payment processor forwards the transaction information to the card association (e.g., Visa/MasterCard) </li>
    
    <li>    The credit card issuing bank receives the authorization request and sends a response back to the processor (via the same process as the request for authorization) with a response code. In addition to determining the fate of the payment, (i.e. approved or declined) the response code is used to define the reason why the transaction failed (such as insufficient funds, or bank link not available)</li><li> The processor forwards the response to the payment gateway.</li><li> The payment gateway receives the response, and forwards it on to the website (or whatever interface was used to process the payment) where it is interpreted as a relevant response then relayed back to the cardholder and the merchant.</li><li> The entire process typically takes 2–3 seconds.</li><li>  The merchant submits all their approved authorizations, in a "batch", to their acquiring bank for settlement via their processor.</li><li>  The acquiring bank deposits the total of the approved funds in to the merchant's nominated account. This could be an account with the acquiring bank if the merchant does their banking with the same bank, or an account with another bank.</li><li> The entire process from authorization to settlement to funding typically takes 3 days.</li>Many payment gateways also provide tools to automatically screen orders for fraud and calculate tax in real time prior to the authorization request being sent to the processor. Tools to detect fraud include geolocation, velocity pattern analysis, delivery address verification, computer finger printing technology, identity morphing detection, and basic AVS checks.
       <p>
       </p>
     
         <div class="cleaner"></div>
     </div>
       <div class="col_w900 col_w900_last">
         <h2><span>About</span> Security</h2>
        <span class="tagline">everyone want security</span>
       <p> 
        
        1)Since the customer is usually required to enter personal details, the entire communication of 'Submit Order' page (i.e. customer - payment gateway) is often carried out through HTTPS protocol.<br />
2) To validate the request of the payment page result, signed request is often used - which is the result of the hash function in which the parameters of an application confirmed by a «secret word», known only to the merchant and payment gateway.<br />
3) To validate the request of the payment page result, sometimes IP of the requesting server has to be verified.<br />
4) There is a growing support by acquirers, issuers and subsequently by payments gateways for Virtual Payer Authentication (VPA), implemented as 3-D Secure protocol - branded as Verified by VISA, MasterCard Secure Code and J/Secure by JCB, which adds additional layer of security for online payments. 3-D Secure promises to alleviate some of the problems facing online merchants, like the inherent distance between the seller and the buyer, and the inability of the first to easily confirm the identity of the second.<br />

</p>
       </div>     
          <h2><span>About</span> Online Merchant Banking</h2>
          <span class="tagline">everyone uses Online Merchant Banking</span>
         <p>  Today’s consumer expects to be able to pay using their credit card.
    Enabling customers to make spur of the moment buying decisions increases sales.
    Larger purchase amounts, increased credibility, and a more secure payment method than checks are some additional reasons to accept credit cards.
            </p>   
               <h2><span>Why need Virtual Payment gateway?</span></h2>
          <span class="tagline">needs of virtual payment gateway</span>
             <p>
             The present working system is manual. Previously,
              the various records such as –
   no. of projects, its status, duration, its     bidding amount, etc were maintained manually.
Various disadvantages of this system were, it was time consuming, it required more labour and it provided less accuracy.Paper formalities takes  a lot of time.</p>
<p><strong> The solution:</strong> As the system is computerized it is more faster & Efficient than the manual system.
It decreases the work load on the employee he is free to give his full attention on his project work without worrying about the visa formality.
This software can be handled by any common man as this does not required detail knowledge of computer.
As this is computerized system it is very faster & reliable.
Our passion  to bulid solution which gives us :<br/>
</p>
     <ul><li>Increase Online Business:This portal helps to reach more and more service providers
         and work providers from different locations to expand their business just by clicking
         on button. Being online software, it helps work providers to choose better service
         provider for his work in a desire cost and service providers will get more and more
         work.</li><li>Security: authentication, login tracking etc.</li><li>User-friendly : This portal is very easy to use for everyone. Every user can view their respective records & updated status of their work.</li><li>Interaction: This portal provides direct interaction between users through mails & online chat. </li>
<li>Cost Effective: This portal free of cost registration.</li><li>Rating: Rating is given to each service providers and work providers by the administrator, an owner of the site on the basis of their overall performance. This helps both the service providers and work providers to choose one another for work.</li></ul>
          <p><strong>It is mediator between service provider & work provider.</strong></p>       
    <p>
It consist of four major areas –<br />
   1. Work Provider :- It is a company or an organization which provides   some work or a project to service provider.<br />
   2.  Administrator :- It acts as an intermediator between work and service provider which also handles all the legal formalities between them.<br />
   3.  Service Provider :- It is an organization which provides  service to work provider as per its requirements.<br />
 4.  Mearchant Bank :- It is bank which provides online bank service.
    </p>
    </asp:Content>
