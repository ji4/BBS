<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
       
        .main {
            width:800px;
           height:400px;
            margin:0 auto;
            border-style:dashed;
            border-width:1px;
            border-color:gainsboro;
            padding:100px 0px 50px 0px;
           
        }
        .main2{
            width:800px;
            height:750px;
            margin:0 auto;
            
        }
        .main3{
            width:800px;
            height:750px;
            margin:0 auto;
            overflow-x:hidden;
            overflow-y:auto;
        }
        .photo{
           margin:0 auto;
           Width:296px;
        }
        .auto-style1 {
            font-size: x-large;
            font-family: 微軟正黑體;
            background-color:lightcyan;
            vertical-align:middle
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style8 {
            text-align: center;
            width: 100%;
        }
        .auto-style9 {
            font-size: xx-large;
            position:relative;
            
            
        }
        .auto-style10 {
            font-family: 微軟正黑體;
        }
        .auto-style11 {
            font-size: larger;
        }
        </style>
</head>
<body>
    
    <form id="form1" runat="server">
       <div id="All"style="width:100%;height:750px">
    <div class="auto-style1" style="text-align: center; height: 118px; position: relative; top: 0px; left: 0px; width: 100%;">
    
        <span class="auto-style9">
        <a href="HomePage.aspx"> <asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="image/uniPlay_logo.png" Width="116px" ImageAlign="Middle" /></a>
        <span style="vertical-align: middle" class="auto-style11">登入</span></span></div>
         <p>

           </p>
           <div class="main" >
                
          <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ．Login</span>
        <p class="auto-style8">
            <span class="auto-style10">帳號:</span>
            <asp:TextBox ID="tbxUserID" runat="server"></asp:TextBox>
        
        </p>

        <p class="auto-style3" style="text-align: center">
       
        
            <span class="auto-style10">密碼:</span>
            <asp:TextBox ID="tbxPassword" runat="server" TextMode="Password"></asp:TextBox>
               </p>
               <p class="auto-style3" style="text-align: center">
       
        
                   <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
               </p>
               <p class="auto-style3" style="text-align: center">
       
        
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        
                   <asp:Button ID="btnsign" runat="server" Text="登入" Font-Bold="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="Gray" Height="30px" Width="53px" OnClick="btnsign_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="btnregister" runat="server" Text="註冊"  Font-Bold="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="Gray" Height="30px" Width="53px" OnClick="btnregister_Click" />
               &nbsp;&nbsp;&nbsp;&nbsp;
       
        
                   <asp:Button ID="btnmisspassword" runat="server" Text="忘記密碼"  Font-Bold="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="Gray" Height="30px" Width="85px" OnClick="btnmisspassword_Click" />
               &nbsp;&nbsp;&nbsp;&nbsp;
               </p>
               </div>
           </div>
    </form>
        
</body>
</html>
