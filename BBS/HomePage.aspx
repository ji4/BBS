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
            <dd>
                <asp:LinkButton ID="linkBtnLogout" runat="server" Text="登出" OnClick="linkBtnLogout_Click"></asp:LinkButton></dd>
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
            <asp:Button ID="btnChat" runat="server" CssClass="sideBarButton" Text="閒聊" OnClick="btnChat_Click"/>
            <asp:Button ID="btnFood" runat="server" CssClass="sideBarButton" Text="美食" OnClick="btnFood_Click"/>
            <asp:Button ID="btnSport" runat="server" CssClass="sideBarButton" Text="運動" OnClick="btnSport_Click"/>
            <asp:Button ID="btnBoy" runat="server" CssClass="sideBarButton" Text="男" OnClick="btnBoy_Click"/>
            <asp:Button ID="btnGirl" runat="server" CssClass="sideBarButton" Text="女" OnClick="btnGirl_Click"/>
            </div>
         <div id="body">
            <div id="ArticalBar">
                <asp:Button ID="btnHot" runat="server" CssClass="centerBarButton" Text="熱門" />
                <asp:Button ID="btnNew" runat="server" CssClass="centerBarButton" Text="最新" OnClick="btnNew_Click" />
                <asp:Button ID="btnWrite" runat="server" CssClass="centerBarButton" Text="發文" OnClick="btnWrite_Click" />
            </div>
             <div id="articleC">
            <asp:ListView ID="listViewArticle" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="articleID">

                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:Label ID="articleIDLabel1" runat="server" Text='<%# Eval("articleID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="articleTitleTextBox" runat="server" Text='<%# Bind("articleTitle") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostTimeTextBox" runat="server" Text='<%# Bind("PostTime") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ReplyCountTextBox" runat="server" Text='<%# Bind("ReplyCount") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostUserTextBox" runat="server" Text='<%# Bind("PostUser") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
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
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="articleTitleTextBox" runat="server" Text='<%# Bind("articleTitle") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostTimeTextBox" runat="server" Text='<%# Bind("PostTime") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ReplyCountTextBox" runat="server" Text='<%# Bind("ReplyCount") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostUserTextBox" runat="server" Text='<%# Bind("PostUser") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
<td>
                            <asp:Label ID="articleIDLabel" runat="server" Text='<%# Eval("articleID") %>' />
                        </td>
                        <td>
                            <asp:LinkButton ID="articleTitleLinkBtn" runat="server"  onClick="Button1_Click"><%# Eval("articleTitle") %></asp:LinkButton>
                        </td>
                        <td>
                            <asp:Label ID="PostTimeLabel" runat="server" Text='<%# Eval("PostTime") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ReplyCountLabel" runat="server" Text='<%# Eval("ReplyCount") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostUserLabel" runat="server" Text='<%# Eval("PostUser") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">articleID</th>
                                        <th runat="server">articleTitle</th>
                                        <th runat="server">PostTime</th>
                                        <th runat="server">ReplyCount</th>
                                        <th runat="server">PostUser</th>
                                        <th runat="server">CategoryName</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="articleIDLabel" runat="server" Text='<%# Eval("articleID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="articleTitleLabel" runat="server" Text='<%# Eval("articleTitle") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostTimeLabel" runat="server" Text='<%# Eval("PostTime") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ReplyCountLabel" runat="server" Text='<%# Eval("ReplyCount") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostUserLabel" runat="server" Text='<%# Eval("PostUser") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UNIConnectionString %>" SelectCommand="SELECT articleID, articleTitle, PostTime, ReplyCount, PostUser, CategoryName FROM articleInfo, Category  WHERE articleInfo.CategoryID = Category.CategoryID  ORDER BY [articleID] DESC;"></asp:SqlDataSource>
            文章預覽區
             </div>
          </div>
         </div>
        <div style='clear:both;'></div>
        <div id="Footer"></div>
    
    </div>
    </form>
</body>
</html>
