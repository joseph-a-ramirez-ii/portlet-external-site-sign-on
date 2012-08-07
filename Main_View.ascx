<%@ Control Language="c#" AutoEventWireup="false" Codebehind="Main_View.ascx.cs" Inherits="CUS.ICS.ExternalSiteSignon.Main_View" TargetSchema="" %>
<%@ Register TagPrefix="common" Assembly="Jenzabar.Common" Namespace="Jenzabar.Common.Web.UI.Controls" %>
<div class="pSection"><asp:Literal id="litIntroduction" runat="server"></asp:Literal><asp:Literal id="litBreaks" runat="server"><br /><br /></asp:Literal>
<asp:Repeater onItemDataBound="rptLinks_ItemDataBound" id="rptLinks" runat="server">
 <HeaderTemplate><table cellspacing="2" cellpadding="2" border="0" ></HeaderTemplate>
 <ItemTemplate>
     <tr>
       <td valign="top">
         <asp:HyperLink id="lnkToExtern" name="lnkToExtern" runat="server" target="_blank" />
         <asp:LinkButton id="lnkToIframe" name="lnkToIframe" runat="server" commandName="iframe"  />
       </td><td valign="top">
         <%# DataBinder.Eval(Container.DataItem,"Description")%>
       </td></tr>
  </ItemTemplate>
  <SeparatorTemplate>    <tr><td colspan="2"></td>&nbsp;</tr></SeparatorTemplate>
  <FooterTemplate></table></FooterTemplate>
</asp:Repeater>
</div>
