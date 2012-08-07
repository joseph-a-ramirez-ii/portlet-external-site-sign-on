using System;
using System.IO;
using System.Web;
using System.Collections;
using Jenzabar.Common.Globalization;
using Jenzabar.Portal.Framework;
using Jenzabar.Portal.Framework.Data;
using Jenzabar.Portal.Framework.Preferences;
using Jenzabar.Portal.Framework.Web;
using Jenzabar.Portal.Framework.Web.UI;
using Jenzabar.Portal.Framework.Security.Authorization;
using Jenzabar.Portal.Framework.Web.UI.Controls.MetaControls;
using Jenzabar.Portal.Framework.Web.UI.Controls.MetaControls.Attributes;
using Jenzabar.ICS.Web.Portlets.Common;
using Jenzabar.ICS.Web.Portlets.BasePortletViews;

namespace CUS.ICS.ExternalSiteSignon
{
	#region Settings
	[TextAreaMetaControl(0, "PortletIntro", "CUS_EXTSSO_SETTING_INTRO_LBL", "CUS_EXTSSO_SETTING_INTRO_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='Introductory Text' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[RadioButtonListMetaControl(1, "LinksToIframeOrNewWindow", "CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_LBL", 
		 "CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_DESC",
		 true,
		 @"	<NameValueDataSources>
				<NameValueDataSource Name='CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_WINDOW_LBL' Value='window' />
			</NameValueDataSources>",
		 @"	<NameValueDataSources>
				<NameValueDataSource Name='CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_WINDOW_LBL' Value='window' />
				<NameValueDataSource Name='CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_IFRAME_LBL' Value='iframe' />
			</NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl")]

	[DropDownListMetaControl(2, "LinkPageFile0", "CUS_EXTSSO_SETTING_LINK1_FILE_LBL", "CUS_EXTSSO_SETTING_LINK1_FILE_DESC",
		 true, // first one is required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(3, "LinkPageText0", "CUS_EXTSSO_SETTING_LINK1_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK1_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText0' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(4, "LinkPageDesc0", "CUS_EXTSSO_SETTING_LINK1_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK1_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc0' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(5, "LinkPageFile1", "CUS_EXTSSO_SETTING_LINK2_FILE_LBL", "CUS_EXTSSO_SETTING_LINK2_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(6, "LinkPageText1", "CUS_EXTSSO_SETTING_LINK2_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK2_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText1' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(7, "LinkPageDesc1", "CUS_EXTSSO_SETTING_LINK2_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK2_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc1' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(8, "LinkPageFile2", "CUS_EXTSSO_SETTING_LINK3_FILE_LBL", "CUS_EXTSSO_SETTING_LINK3_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(9, "LinkPageText2", "CUS_EXTSSO_SETTING_LINK3_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK3_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText2' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(10, "LinkPageDesc2", "CUS_EXTSSO_SETTING_LINK3_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK3_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc2' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(11, "LinkPageFile3", "CUS_EXTSSO_SETTING_LINK4_FILE_LBL", "CUS_EXTSSO_SETTING_LINK4_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(12, "LinkPageText3", "CUS_EXTSSO_SETTING_LINK4_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK4_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText3' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(13, "LinkPageDesc3", "CUS_EXTSSO_SETTING_LINK4_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK4_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc3' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(14, "LinkPageFile4", "CUS_EXTSSO_SETTING_LINK5_FILE_LBL", "CUS_EXTSSO_SETTING_LINK5_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(15, "LinkPageText4", "CUS_EXTSSO_SETTING_LINK5_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK5_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText4' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(16, "LinkPageDesc4", "CUS_EXTSSO_SETTING_LINK5_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK5_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc4' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(17, "LinkPageFile5", "CUS_EXTSSO_SETTING_LINK6_FILE_LBL", "CUS_EXTSSO_SETTING_LINK6_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(18, "LinkPageText5", "CUS_EXTSSO_SETTING_LINK6_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK6_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText5' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(19, "LinkPageDesc5", "CUS_EXTSSO_SETTING_LINK6_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK6_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc5' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(20, "LinkPageFile6", "CUS_EXTSSO_SETTING_LINK7_FILE_LBL", "CUS_EXTSSO_SETTING_LINK7_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(21, "LinkPageText6", "CUS_EXTSSO_SETTING_LINK7_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK7_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText6' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(22, "LinkPageDesc6", "CUS_EXTSSO_SETTING_LINK7_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK7_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc6' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(23, "LinkPageFile7", "CUS_EXTSSO_SETTING_LINK8_FILE_LBL", "CUS_EXTSSO_SETTING_LINK8_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(24, "LinkPageText7", "CUS_EXTSSO_SETTING_LINK8_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK8_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText7' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(25, "LinkPageDesc7", "CUS_EXTSSO_SETTING_LINK8_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK8_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc7' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(26, "LinkPageFile8", "CUS_EXTSSO_SETTING_LINK9_FILE_LBL", "CUS_EXTSSO_SETTING_LINK9_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(27, "LinkPageText8", "CUS_EXTSSO_SETTING_LINK9_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK9_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText8' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(28, "LinkPageDesc8", "CUS_EXTSSO_SETTING_LINK9_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK9_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc8' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]

	[DropDownListMetaControl(29, "LinkPageFile9", "CUS_EXTSSO_SETTING_LINK10_FILE_LBL", "CUS_EXTSSO_SETTING_LINK10_FILE_DESC",
		 false, // not required 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting", 
		 "Portlet.ExternalSiteSignon,CUS.ICS.ExternalSiteSignon.LinkFileSetting",
		 NameValueDataSourceType.Dynamic, NameValueType.PortletSetting, "MetaControl")]

	[TextBoxMetaControl(30, "LinkPageText9", "CUS_EXTSSO_SETTING_LINK10_TEXT_LBL", "CUS_EXTSSO_SETTING_LINK10_TEXT_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageText9' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 300)]

	[TextAreaMetaControl(31, "LinkPageDesc9", "CUS_EXTSSO_SETTING_LINK10_DESCR_LBL", "CUS_EXTSSO_SETTING_LINK10_DESCR_DESC", 
		 false, @"<NameValueDataSources><NameValueDataSource Name='LinkPageDesc9' Value='' /></NameValueDataSources>",
		 NameValueDataSourceType.Static, NameValueType.PortletSetting, "MetaControl", 75, 3, 3000, true, LengthMaximum=3000)]


	#endregion
	/// <summary>
	/// Summary description for ExternalSiteSignon.
	/// </summary>
	public class ExternalSiteSignon : SecuredPortletBase
	{
		public ExternalSiteSignon()
		{
			//
			// TODO: Add constructor logic here
			//
		}
		protected override PortletViewBase GetCurrentScreen()
		{
			PortletViewBase screen = null;
			switch(this.CurrentPortletScreenName)
			{
				case "IFrame" :
					this.State = PortletState.Maximized;
					screen = this.LoadPortletView("ICS/ExternalSiteSignon/IFrame_View.ascx");
					break;

				case "Main" :
				default :
					screen = this.LoadPortletView("ICS/ExternalSiteSignon/Main_View.ascx");
					break;
			}
			return screen;
		}
	}
	public class LinkFileSetting : INameValueProvider
	{
		public NameValueDataSource[] RetrieveDefaultItems(string name, object key)
		{
			NameValueDataSource[] sourceArray = new NameValueDataSource[1];
			sourceArray.SetValue(NameValueDataSource.Create("",""),0);
			return sourceArray;
		}

		public NameValueDataSource[] RetrieveItems(string name, object key)
		{
            // Get all the .aspx files in the portlet folder (not its subfolders)
			string[] strFilePaths = Directory.GetFiles(HttpContext.Current.Request.PhysicalApplicationPath.ToString() + "Portlets\\CUS\\ICS\\ExternalSiteSignon","*.aspx",SearchOption.TopDirectoryOnly);
			string strJustFile = String.Empty;
			NameValueDataSource[] sourceArray = new NameValueDataSource[strFilePaths.Length];

			string strFileToSkip = "ShowParams.aspx";
			int i=0;
			sourceArray.SetValue(NameValueDataSource.Create(Globalizer.GetGlobalizedString("CUS_EXTSSO_CHOOSE_ASPX_FILE_OPTION_TEXT"),String.Empty),i);
			i++;
			foreach (string strFilePath in strFilePaths)
			{
				strJustFile = System.IO.Path.GetFileName(strFilePath);
				if (strJustFile != strFileToSkip)
				{
                    // add an array item whose name is the file name without the .aspx extension, whose value is the full file name
					sourceArray.SetValue(NameValueDataSource.Create(strJustFile.Substring(0,strJustFile.Length-5),strJustFile),i);
					i++;
				}
			}
			return sourceArray;
		}
	}
	public class LinkFile 
	{
		#region "Fields and Properties"
		private string _file;
		private string _text;
		private string _description;
		public string File 
		{
			get { return _file; }
			set { _file = value; }
		}
		public string Text 
		{
			get { return _text; }
			set { _text = value; }
		}
		public string Description 
		{
			get { return _description; }
			set { _description = value; }
		}

		#endregion
		#region "Constructors"
		public LinkFile() {}
		public LinkFile(string file, string text, string desc) 
		{
			this.File = file;
			this.Text = text;
			this.Description = desc;
		}
		#endregion
	}

	public class LinkFileCollection : CollectionBase 
	{
		public LinkFile this[int index] 
		{
			get {return (LinkFile)List[index];}
			set {List[index] = value;}
		}
		public int Add(LinkFile value) 
		{
			return (List.Add(value));
		}
	}

}
