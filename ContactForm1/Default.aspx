<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-color:indianred;
        }
        .newStyle1 {
            background-color: indianred;
        }
        .newStyle2 {
            background-color: indianred;
            background-repeat: repeat;           
            background-position: right bottom;         
        }
        #form1 {
            margin-left:15%;
            margin-right:15%;
            margin-top:20px;
            margin-bottom:0;
            background-color:white;
            padding:30px;
        }
        .formLabel, .formInput, .formResult {
            float:left;           
        }                      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Contact Form</h1>
        <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Enter your name" ControlToValidate="TextBoxName" runat="server" CssClass="ErrorMessage" ForeColor="Red" />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Only characters allowed" ControlToValidate="TextBoxName" CssClass="ErrorMessage" MaximumValue="z" MinimumValue="a" ForeColor="Red"></asp:RangeValidator>
        <br />
        <br />
        <asp:Label ID="LabelTelePhone" runat="server" Text="Telephone"></asp:Label>
        <asp:TextBox ID="TextBoxTelePhone" runat="server" ClientIDMode="Static"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your telephone number" ControlToValidate="TextBoxTelePhone" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid telephone number" ControlToValidate="TextBoxTelePhone" ValidationExpression="\d+" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="LabelEmailAddress" runat="server" Text="Email Address"></asp:Label>
        <asp:TextBox ID="TextBoxEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Enter a valid email address" ControlToValidate="TextBoxEmailAddress" runat="server" CssClass="ErrorMessage" ForeColor="Red" />
        <br />
        <br />
        <asp:Label ID="LabelBirthDate" runat="server" Text="Date of Birth (dd/mm/yyyy)"></asp:Label>
        <asp:TextBox ID="TextBoxBirthDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your date of birth" ControlToValidate="TextBoxBirthDate" CssClass="ErrorMessage" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter your date of birth in dd/mm/yyyy" CssClass="ErrorMessage" ValidationExpression="(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/\d{4}" ControlToValidate="TextBoxBirthDate" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="LabelCategory" runat="server" Text="Employment Category (Please select your occupation)"></asp:Label>
        <asp:DropDownList ID="DropDownListCategory" runat="server">
            <asp:ListItem Value="Doctor"></asp:ListItem>
            <asp:ListItem Value="Engineer"></asp:ListItem>
            <asp:ListItem Value="Other"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="LabelComments" runat="server" Text="Comments"></asp:Label>
        <asp:TextBox ID="TextBoxComments" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a comment" ControlToValidate="TextBoxComments" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="No more than 500 characters" ControlToValidate="TextBoxComments" CssClass="ErrorMessage" Display="Dynamic" ValidationExpression="^[\s\S]{1,500}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Note: All fields are mandatory"></asp:Label>
        <br />
        <br />
        <asp:Button ID="ButtonSend" runat="server" Text="Send" />
    </div>
    </form>
</body>
</html>
