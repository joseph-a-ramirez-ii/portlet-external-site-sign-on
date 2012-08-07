using System;
using System.IO;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Jenzabar.Common.Globalization;
using Jenzabar.Portal.Framework.Web.UI;
using Jenzabar.Portal.Framework;
using Jenzabar.Portal.Framework.Configuration;
using Jenzabar.ICS.Web.Portlets.Common;

namespace CUS.ICS.ExternalSiteSignon
{

	/// <summary>
	/// 
	///		Main_View presents an optional description followed by one or more links to pages or 
	///		sites that require some data-driven parameters in order to gain access. Clicking on 
	///		the links will lead, either directly or indirectly to display one of the .aspx files
	///		found in the portal's folder. Each of these, with the exception of a special file
	///		named ShowParams.aspx, are expected to perform some data manipulation and then to redirect
	///		the request to another specially crafted URL.
	///		
	///		Based on the configuration Settings chosen by the context manager, the links will either 
	///		lead to a new browser window (using target="_blank"), or to another portlet view, 
	///		IFrame_View, which then displays the appropriate .aspx file through an inline frame in a
	///		maximized view of this portlet. Because the links for each of these actions behave
	///		differently, two different controls are used to accomplish this switching.
	///		
	///		In order to insure that .aspx files are not accessible outside the function of this portlet,
	///		Logic has been built into this Main_View as well as the .aspx pages so that a globally 
	///		unique identifier (GUID) is both stored in the Session for the current user and 
	///		passed to the .aspx page as a parameter. Only if:
	///		 * the passed parameter matches the Session value stored
	///		 * for the currently logged-in user
	///		 * while the originating portlet is the most recently rendered
	///	    ...will the .aspx page return any results.
	///	    
	/// </summary>
	public class Main_View : PortletViewBase
	{
		protected System.Web.UI.WebControls.Literal litIntroduction;
		protected System.Web.UI.WebControls.Literal litBreaks;
		protected System.Web.UI.WebControls.Repeater rptLinks;
		protected string strLinkTargetType;

		private void Page_Load(object sender, System.EventArgs e)
		{ 
			this.rptLinks.ItemCommand += new RepeaterCommandEventHandler(rptLinks_ItemCommand);
			this.rptLinks.ItemDataBound += new RepeaterItemEventHandler(rptLinks_ItemDataBound);

			strLinkTargetType = PortletUtilities.GetSettingValue(this.ParentPortlet,"LinksToIframeOrNewWindow");

			if(IsFirstLoad)
			{
				string strLinkPageFile = String.Empty;
				string strLinkPageText = String.Empty;
				string strLinkPageDesc = String.Empty;
				string strValidationID = String.Empty;

				// only create a new validation GUID if we can't remember having one for this user
				if (HttpContext.Current.Session["ExtSSOValidationID"] == null)
				{
					strValidationID = System.Guid.NewGuid().ToString();
					HttpContext.Current.Session["ExtSSOValidationID"] = strValidationID;
				}
				else
				{
					strValidationID = HttpContext.Current.Session["ExtSSOValidationID"].ToString();
				}
				string strLinkID = "?ID=" + strValidationID;

				// custom classes LinkFile and LinkFileCollection defined in ExternalSiteSignon.cs
				LinkFileCollection Links = new LinkFileCollection();

				// Loop through all 10 possible Settings and show any configured items
				for (int i = 0; i < 10; i++)
				{
					// if a link page is configured, use it, otherwise skip it
					strLinkPageFile = PortletUtilities.GetSettingValue(this.ParentPortlet,"LinkPageFile"+i.ToString());
					if (strLinkPageFile.Length > 0)
					{
						if (!File.Exists(HttpContext.Current.Request.PhysicalApplicationPath.ToString() + "Portlets\\CUS\\ICS\\ExternalSiteSignon\\" + strLinkPageFile))
						{
							strLinkPageText = strLinkPageFile;
							strLinkPageFile = String.Empty;
						}
						else
						{
							strLinkPageText = PortletUtilities.GetSettingValue(this.ParentPortlet,"LinkPageText"+i.ToString()).Trim();
							// if a link text is configured, use it, otherwise convert the file name to link text by removing the .aspx
							if (strLinkPageText.Length == 0)
								strLinkPageText = strLinkPageFile.Substring(0,strLinkPageFile.Length - 5);
						}

						// if a description is configured, use it, otherwise show none
						strLinkPageDesc = PortletUtilities.GetSettingValue(this.ParentPortlet,"LinkPageDesc"+i.ToString()).Trim();
						if (strLinkPageDesc.Length == 0)
							strLinkPageDesc = "&nbsp;";
						Links.Add(new LinkFile(strLinkPageFile, strLinkPageText, strLinkPageDesc));
					}
				}
				if (Links.Count > 0)
				{
					string strIntroText = PortletUtilities.GetSettingValue(this.ParentPortlet,"PortletIntro").Trim();
					if (strIntroText.Length > 0)
					{
						litIntroduction.Text =  strIntroText;
						litBreaks.Visible = true;
					}
					else
					{
						litIntroduction.Visible = false;
						litBreaks.Visible = false;
					}
					rptLinks.DataSource = Links;
					rptLinks.DataBind();
				}
				else
				{
					litIntroduction.Text = Globalizer.GetGlobalizedString("CUS_EXTSSO_PORTLET_NOT_CONFIGURED_TEXT");
				}
			}
		}

		protected void rptLinks_ItemCommand(object source, RepeaterCommandEventArgs e)
		{
			if (e.CommandName != "iframe")
				return;

			HttpContext.Current.Session["ExtSSOLinkFile"] = e.CommandArgument.ToString();
			this.ParentPortlet.NextScreen("IFrame");
		}

		protected void rptLinks_ItemDataBound(object sender, RepeaterItemEventArgs e) 
		{
			ListItemType type = e.Item.ItemType;
			if (type == ListItemType.AlternatingItem || 
				type == ListItemType.Item)
			{
				HyperLink lnkExt = (HyperLink)e.Item.FindControl("lnkToExtern");
				LinkButton lnkIfr = (LinkButton)e.Item.FindControl("lnkToIframe");
				LinkFile linkFile = (LinkFile)e.Item.DataItem;
				if (linkFile.File == String.Empty)
				{
					lnkExt.Enabled = true;
					lnkIfr.Enabled = false;
					lnkExt.Text = Globalizer.GetGlobalizedString("CUS_EXTSSO_LINK_FILE_MISSING_LINK_TEXT");
					lnkExt.NavigateUrl = "javascript:void(alert('" + Globalizer.GetGlobalizedString("CUS_EXTSSO_LINK_FILE_MISSING_ALERT_TEXT") + "'));";
				}
				else if (strLinkTargetType == "iframe") // this value is defined in line 32 of ExternalSiteSignon.cs
				{
					// create "iframe" style link using a postback link to IFrame_View
					lnkExt.Enabled = false;
					lnkIfr.Enabled = true;
					lnkIfr.CommandArgument = linkFile.File;
					lnkIfr.Text = linkFile.Text;
				}
				else
				{
					// create "new window" style link pointing directly at the aspx file
					lnkExt.Enabled = true;
					lnkIfr.Enabled = false;
					string strValidationID = String.Empty;
					lnkExt.NavigateUrl = linkFile.File + "?ID=" + 
							HttpContext.Current.Session["ExtSSOValidationID"];
					lnkExt.Text = linkFile.Text;
				}
			}
		}


		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

	}
}
