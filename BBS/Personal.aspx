<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="Personal" %>

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
        .content{
             width:800px;
            height:240px;
            
            
            margin:20px 0px 20px 0px;
        }
        .photo{
           margin:0 auto;
           height:318px;
           Width:315px ;
        }
        .contenttitle{
            font-size:25px;
            vertical-align:middle;
            font-family: 微軟正黑體;
        }
        .time{
            text-align:right;
            
        }
        .auto-style1 {
            font-size: x-large;
            font-family: 微軟正黑體;
            background-color:lightcyan;
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
            position: relative;
        }
        .auto-style10 {
            font-size: larger;
        }
        .auto-style11 {
            width: 800px;
            margin: 0 auto;
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style12 {
            font-size: larger;
            font-weight: bold;
        }
        </style>
</head>
<body>
    
    <form id="form1" runat="server">
       <div id="All"style="width:100%;height:750px">
    <div class="auto-style1" style="text-align: center; height: 118px; position: relative; top: 0px; left: 0px; width: 100%;">
    
        <span class="auto-style9">
    
        <a href="HomePage.aspx"> <asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="image/uniPlay_logo.png" Width="116px" ImageAlign="Middle" /></a>
        <span class="auto-style10" style="vertical-align: middle">個人頁面</span></span><br />
        </div>
         <p>

           </p>
           <div class="main" >
          
           <div class="photo">
               <asp:Image ID="userPhoto" runat="server" Height="318px" Width="315px" ImageUrl="image/女生.jpg" />
             </div>
        <p class="auto-style8">
            姓名:
            <asp:Label ID="lblName" runat="server"></asp:Label>
        
        </p>

        <p class="auto-style3" style="text-align: center">
       
        
            帳號:
            <asp:Label ID="lblUser" runat="server"></asp:Label>
               </p>
               </div>
           </div>
        <div id="All2"style="width:100%;height:750px;">
       <div class="main2">
           <p class="auto-style11">所有文章</p><hr />
           <div class="main3">
               <div class="content">
                   <div style="height:40px;width:800px;background-color:aliceblue" class="auto-style3"><span class="contenttitle">&nbsp;<asp:Label ID="lbltitle" runat="server" Text="標題"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="time" runat="server" Text="發布時間"></asp:Label>
                       </span></div>
                   <div style="height:160px;width:800px" class="auto-style12">///文章內容///</div>
                   <div style="height:40px;width:800px;text-align:right;vertical-align:middle">
                       <asp:Button ID="Button1" runat="server" Text="編輯" Height="24px" Width="53px" Font-Size="Medium" style="vertical-align: middle; font-family: 微軟正黑體" BackColor="#F9FAD1" BorderColor="#F9FAD1" BorderStyle="Groove"  />
&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button2" runat="server" Text="刪除" Height="24px" Width="53px" Font-Size="Medium" style="vertical-align: middle; font-family: 微軟正黑體" BackColor="#F9FAD1" BorderColor="#F9FAD1" BorderStyle="Groove"/>
                   </div>
               </div>
           <hr />
               </div>

       </div>
            </div>
    </form>
        
</body>
</html>
