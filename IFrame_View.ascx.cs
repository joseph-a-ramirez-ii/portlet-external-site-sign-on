using System;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Jenzabar.Portal.Framework.Web.UI;
using Jenzabar.Portal.Framework;
using Jenzabar.Portal.Framework.Configuration;
using Jenzabar.ICS.Web.Portlets.Common;

namespace CUS.ICS.ExternalSiteSignon
{
	/// <summary>
	///		Summary description for IFrame_View.
	/// </summary>
	public class IFrame_View : PortletViewBase
	{
		protected System.Web.UI.WebControls.LinkButton lnkBack;
		protected System.Web.UI.HtmlControls.HtmlGenericControl frame;
		protected System.Web.UI.WebControls.Label lblErrorMessage;

		private void Page_Load(object sender, System.EventArgs e)
		{
			if (HttpContext.Current.Session["ExtSSOLinkFile"] != null &&
				HttpContext.Current.Session["ExtSSOValidationID"] != null &&
				HttpContext.Current.Session["ExtSSOLinkFile"].ToString().Length > 0 &&
				HttpContext.Current.Session["ExtSSOValidationID"].ToString().Length > 0)
			{
				frame.Attributes.Add("src", "Portlets/CUS/ICS/ExternalSiteSignon/" +
					HttpContext.Current.Session["ExtSSOLinkFile"].ToString().Trim() + 
					"?ID=" + HttpContext.Current.Session["ExtSSOValidationID"].ToString());
			}
			else
			{
				frame.Visible = false;
				lblErrorMessage.Visible = true;
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			lnkBack.Click += new EventHandler(this.lnkBack_Click);

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

		private void lnkBack_Click (object sender, EventArgs e)
		{
			this.ParentPortlet.PreviousScreen();
		}

	}
}
