<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
       
        .main {
            width:800px;
           height:500px;
            margin:0 auto;
            border-style:solid;
            border-width:1px;
            border-color:gainsboro;
            padding:100px 0px 50px 0px;
           
        }
        .auto-style1 {
            font-size: x-large;
            font-family: 微軟正黑體;
            background-color:lightyellow;
        }
        .auto-style2 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            font-family: 微軟正黑體;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: small;
            color: #FF9933;
        }
        .auto-style8 {
            text-align: center;
            width: 100%;
        }
        .auto-style9 {
            font-size: xx-large;
            position: relative;
        }
        .auto-style10 {
            font-size: larger;
        }
        </style>
</head>
<body>
    
    <form id="form1" runat="server">
       <div id="All"style="width:100%;height:1000px">
    <div class="auto-style1" style="text-align: center; height: 118px; position: relative; top: 0px; left: 0px; width: 100%;">
    
        <span class="auto-style9">
    
        <a href="HomePage.aspx"> <asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="~/image/uniPlay_logo.png" Width="116px" ImageAlign="Middle" /></a>
        <span class="auto-style10" style="vertical-align: middle">註冊您的新帳戶</span></span><br />
        </div>
         <p>

           </p>
           <div class="main" >
          
           
        <p class="auto-style8">
            <span class="auto-style2">使用者帳號</span>
            <asp:TextBox ID="tbxUserAccount" runat="server" CssClass="auto-style4"></asp:TextBox>
        
        </p>
               <p class="auto-style8">
            <span class="auto-style2">使用者名稱</span>
            <asp:TextBox ID="tbxUserName" runat="server" CssClass="auto-style4"></asp:TextBox>
        
        </p>
        <p class="auto-style8">
            <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密碼 </span>
            <asp:TextBox ID="tbxPassword" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
       
            </p>

        <p class="auto-style8">
            <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 電子郵件</span>
            <asp:TextBox ID="tbxEmail" runat="server" CssClass="auto-style4" Width="213px"></asp:TextBox>
        
        
        
        </p>
       <div class="auto-style8">
            <span class="auto-style4"><span class="auto-style5">性別</span></span>
            <asp:RadioButtonList ID="RadioBtnListSex" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem><span class="auto-style4"><span class="auto-style5">男</span></span></asp:ListItem>
                <asp:ListItem><span class="auto-style4"><span class="auto-style5">女</span></span></asp:ListItem>
            </asp:RadioButtonList>
            
            </div>

        <p class="auto-style3" style="text-align: center">
       
        
            &nbsp;</p>
               <p class="auto-style3" style="text-align: center">
       
        
                   <asp:Label ID="Label1" runat="server"></asp:Label>

        </p>
               <p class="auto-style3" style="text-align: center">
       
        
            <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Large" Height="30px" Text="送出" Width="57px" />

        </p>
               </div>
           </div>
    </form>
        
</body>
</html>
