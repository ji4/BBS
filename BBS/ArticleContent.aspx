<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArticleContent.aspx.cs" Inherits="ArticleContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="StyleSheet_main.css" type="text/css"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>
        <div id="Header">
            <a href="HomePage.aspx"><img class="logo" src="img/uniPlay_logo.png"/></a>
<ul class="navigation">
	<li>  
    	<dl>
			<dt><a href="#"></a></dt>
			<dd><a href="LogIn.aspx">
                <asp:Label ID="lblLogin" runat="server" Text="登入"></asp:Label></a></dd>
            <dd><a href="#">
                <asp:Label ID="lblLogout" runat="server" Text="登出"></asp:Label></a></dd>
            <dd><a href="Register.aspx">
                <asp:Label ID="lblSign" runat="server" Text="註冊"></asp:Label></a></dd>
			<dd class="last"><a href="Personal.aspx">
                <asp:Label ID="lblPersonal" runat="server" Text="個人頁面"></asp:Label></a></dd>
		</dl>   
    </li> 
    </ul>

        </div>
        <div id="center">
         <div id="Sidebar">
            <asp:Button ID="btnChat" runat="server" CssClass="sideBarButton" Text="閒聊"/>
            <asp:Button ID="btnFood" runat="server" CssClass="sideBarButton" Text="美食"/>
            <asp:Button ID="btnSport" runat="server" CssClass="sideBarButton" Text="運動"/>
            <asp:Button ID="btnGirl" runat="server" CssClass="sideBarButton" Text="男"/>
            <asp:Button ID="btnBoy" runat="server" CssClass="sideBarButton" Text="女"/>
            </div>
         <div id="body">
            <div id="ArticalBar">
                <asp:Button ID="btnHot" runat="server" CssClass="centerBarButton" Text="熱門" />
                <asp:Button ID="btnNew" runat="server" CssClass="centerBarButton" Text="最新" />
                <asp:Button ID="btnWrite" runat="server" CssClass="centerBarButton" Text="發文" OnClick="btnWrite_Click"/>
            </div>
            <asp:ListView ID="listViewArtical" runat="server"></asp:ListView>
            文章標題
            內文
          </div>
         </div>
        <div style='clear:both;'></div>
        <div id="Footer"></div>
    
    </div>
    </form>
</body>
</html>
