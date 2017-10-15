<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Contact Us</title>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />  
</head>
<body>
<form id="ContactForm" runat="server">
<div>
 <fieldset>
<legend>Contact us</legend> 
<div>* required fields</div>

<div>
<asp:Label ID="Name" runat="server" Text="Your Name*:"/><br/>
<asp:TextBox ID="txtName" runat="server"/>
<asp:RequiredFieldValidator ID="RV1" runat="server" 
                            ControlToValidate="txtName" 
                            ErrorMessage="Please Enter Your Name" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator><br />
</div>

<div>
<asp:Label ID="Email" runat="server" Text="Email*:"/><br/>
<asp:TextBox ID="txtMail" runat="server"/>
<asp:RequiredFieldValidator ID="RV2" runat="server" 
                            ControlToValidate="txtMail" 
                            ErrorMessage="Your Email Address" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator><br />
</div>

<div>
<asp:Label ID="Sub" runat="server" Text="Subject*:"/><br/>
<asp:TextBox ID="txtSubject" runat="server"/>
<asp:RequiredFieldValidator ID="RV3" runat="server" 
                            ControlToValidate="txtSubject" 
                            ErrorMessage="Reason to contact us" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator><br />
</div>

<div>
<asp:Label ID="Message" runat="server" Text="Feedback:"/><br/>
<asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"/>
<asp:RequiredFieldValidator ID="RV4" runat="server" 
                            ControlToValidate="txtMessage" 
                            ErrorMessage="Please write your feedback" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator><br />
</div>

<div>
<asp:Button ID="btnSubmit" runat="server"  
            Text="Submit" onclick="btnSubmit_Click"/>
</div>
<asp:ValidationSummary ID="ValidationSummary1" 
                       runat="server"/>
</fieldset>
<asp:Label ID="Label1" runat="server" Text=""/>
</div>
    </form>
</body>
</html>
