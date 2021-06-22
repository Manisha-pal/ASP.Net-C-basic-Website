<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Website.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Registration" runat="server">

<b>Name :</b>&nbsp;&nbsp;
<asp:TextBox ID="name" runat="server" Height="22px" Width="150px"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">
    Name is required</asp:RequiredFieldValidator>
<br />



<b>Email :</b>&nbsp;&nbsp;
<asp:TextBox ID="email" runat="server" Height="22px" style="margin-top: 2px" Width="150px"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">
    Email is required</asp:RequiredFieldValidator>
 <br />
&nbsp;
 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ControlToValidate="email" ErrorMessage="Use VESIT Email only" ForeColor="#FF3300" ValidationExpression="^[A-Za-z0-9._%+-]+@ves.ac.in$"></asp:RegularExpressionValidator>
<br />


<b>Bias :</b><asp:RadioButtonList ID="bias" runat="server" Height="26px" style="margin-left: 55px" Width="142px">
         <asp:ListItem>Akali</asp:ListItem>
         <asp:ListItem>Leonna</asp:ListItem>
         <asp:ListItem>Evelynn</asp:ListItem>
         <asp:ListItem>Ahri</asp:ListItem>
</asp:RadioButtonList>

<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ControlToValidate="bias">
    Choose Your Bias</asp:RequiredFieldValidator>
<br />



<asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>:&nbsp;
<asp:TextBox ID="contact" runat="server" Height="22px" style="margin-top: 10px" Width="150px"></asp:TextBox>
&nbsp;
<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ControlToValidate="contact" ErrorMessage="Invalid Contact" ForeColor="#FF3300" 
    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
 <br />
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ControlToValidate="contact">Contact No. Required</asp:RequiredFieldValidator>
 <br />


<b>Question: Who are not voices behind K/DA Characters?</b>
    <asp:CheckBoxList ID="events" runat="server" Height="26px" style="margin-left: 60px" Width="150px">
 <asp:ListItem>Madison Beer</asp:ListItem>
 <asp:ListItem>Jungkook</asp:ListItem>
 <asp:ListItem>Jaira Burns</asp:ListItem>
 <asp:ListItem>Lisa</asp:ListItem>
 <asp:ListItem>Miyeon</asp:ListItem>
</asp:CheckBoxList>

    
<center><b><asp:Button ID="Button1" runat="server" Text="Submit" PostBackUrl ="~/WebForm2.aspx"/></b></center>
<br /> 
</asp:Content>
