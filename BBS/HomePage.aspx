<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

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
                <asp:Button ID="lblPersonal" runat="server" Text="個人頁面"></asp:Button></a></dd>
		</dl>   
    </li> 
    </ul>

        </div>
        <div id="center">
         <div id="Sidebar">
            <asp:Button ID="btnChat" runat="server" CssClass="sideBarButton" Text="閒聊"/>
            <asp:Button ID="btnFood" runat="server" CssClass="sideBarButton" Text="美食"/>
            <asp:Button ID="btnSport" runat="server" CssClass="sideBarButton" Text="運動"/>
            <asp:Button ID="btnBoy" runat="server" CssClass="sideBarButton" Text="男"/>
            <asp:Button ID="btnGirl" runat="server" CssClass="sideBarButton" Text="女"/>
            </div>
         <div id="body">
            <div id="ArticalBar">
                <asp:Button ID="btnHot" runat="server" CssClass="centerBarButton" Text="熱門" />
                <asp:Button ID="btnNew" runat="server" CssClass="centerBarButton" Text="最新" />
                <asp:Button ID="btnWrite" runat="server" CssClass="centerBarButton" Text="發文" OnClick="btnWrite_Click" />
            </div>
            <asp:ListView ID="listViewArticle" runat="server" DataSourceID="SqlDataSource1" style="margin-right: 0px; margin-top: 165px">

                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:TextBox ID="articleTitleTextBox" runat="server" Text='<%# Bind("articleTitle") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostTimeTextBox" runat="server" Text='<%# Bind("PostTime") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostUserTextBox" runat="server" Text='<%# Bind("PostUser") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ReplyCountTextBox" runat="server" Text='<%# Bind("ReplyCount") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>未傳回資料。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                        </td>
                        <td>
                            <asp:TextBox ID="articleTitleTextBox" runat="server" Text='<%# Bind("articleTitle") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostTimeTextBox" runat="server" Text='<%# Bind("PostTime") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostUserTextBox" runat="server" Text='<%# Bind("PostUser") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ReplyCountTextBox" runat="server" Text='<%# Bind("ReplyCount") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                                                <td>

                            <asp:LinkButton ID="articleTitleLinkBtn" runat="server" ><%# Eval("articleTitle") %></asp:LinkButton>

                        </td>
                        <td>
                            <asp:Label ID="articleTitleLabel" runat="server" Text='<%# Eval("articleTitle") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostTimeLabel" runat="server" Text='<%# Eval("PostTime") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostUserLabel" runat="server" Text='<%# Eval("PostUser") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ReplyCountLabel" runat="server" Text='<%# Eval("ReplyCount") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">articleTitle</th>
                                        <th runat="server">PostTime</th>
                                        <th runat="server">PostUser</th>
                                        <th runat="server">ReplyCount</th>
                                        <th runat="server">CategoryID</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Label ID="articleTitleLabel" runat="server" Text='<%# Eval("articleTitle") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostTimeLabel" runat="server" Text='<%# Eval("PostTime") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostUserLabel" runat="server" Text='<%# Eval("PostUser") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ReplyCountLabel" runat="server" Text='<%# Eval("ReplyCount") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UNIConnectionString %>" SelectCommand="SELECT [articleTitle], [PostTime], [PostUser], [ReplyCount], [CategoryID] FROM [articleInfo]"></asp:SqlDataSource>
            文章預覽區
          </div>
         </div>
        <div style='clear:both;'></div>
        <div id="Footer"></div>
    
    </div>
    </form>
</body>
</html>
