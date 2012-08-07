<%@ Control Language="c#" AutoEventWireup="false" Codebehind="IFrame_View.ascx.cs" Inherits="CUS.ICS.ExternalSiteSignon.IFrame_View" TargetSchema="http://schemas.microsoft.com/intellisense/ie5"%>
  <DIV class="pSection">
	<asp:LinkButton id="lnkBack" runat="server">Go Back</asp:LinkButton><br>
	<TABLE id="Positioning" height="100%" width="100%">
	<TR>
		<TD><IFRAME id="frame" class="frame" style="OVERFLOW: auto; WIDTH: 100%" height="450" align="top" hspace="0" frameBorder="0"
				runat="server"></IFRAME>
			<asp:Label id="lblErrorMessage" Visible="false" Text="This portlet is experiencing some technical difficulties. Please notify an administrator." runat="server"></asp:Label>
		</TD>
	</TR>
	</TABLE>
	
  </div>
