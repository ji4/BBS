<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WritePage.aspx.cs" Inherits="WritePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="StyleSheet_write.css" type="text/css"/>
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
			<dd><a href="#">
                <asp:Label ID="lblLogin" runat="server" Text="登入"></asp:Label></a></dd>
			<dd class="last"><a href="#">
                <asp:Label ID="lblSign" runat="server" Text="註冊"></asp:Label></a></dd>
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
                <asp:Button ID="btnSend" runat="server" CssClass="centerBarButton" Text="送出" OnClick="btnSend_Click" />
                <asp:DropDownList ID="DropDownList" runat="server" CssClass="centerBarButton" Font-Names="Andalus">
                    <asp:ListItem>文章分類</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="Artical">
                <br/>
             標題<br/>
             <asp:TextBox ID="TextBoxTitle" runat="server" CssClass="txtbox" height="50"></asp:TextBox><br/>
             內文<br/>
             <asp:TextBox ID="TextBoxContent" runat="server" CssClass="txtbox" height="250"  TextMode="MultiLine"></asp:TextBox>
            </div>
          </div>
         </div>
        <div style='clear:both;'></div>
        <div id="Footer"></div>
    
    </div>
    </form>
</body>
</html>