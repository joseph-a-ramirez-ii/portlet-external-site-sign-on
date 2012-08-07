using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Jenzabar.Portal.Framework;
using System.Security.Cryptography;

namespace CUS.StandalonePages
{
	//
	// When making more pages like this one, you should keep the namespace the same, but you must alter the 
	// class name here and make the Inherits attribute in the .aspx page match the namespace.classname. You must
	// also make sure the Src attribute matches the name of this file. This file should be in the same folder as 
	// the .aspx file. You should NOT give this class the same namespace as the portlet code, in case you were
	// tempted to do so.
	//
	public class Post_Form : System.Web.UI.Page
	{
		protected string strURL;
		protected string strPassword;
        protected string strUsername;
		protected string strJavaScript;

		public Post_Form()
		{
		}
		override protected void OnInit(EventArgs e)
		{
			this.Load += new System.EventHandler(this.Page_Load);
			base.OnInit(e);
		}
		private void Page_Load(object sender, System.EventArgs e)
		{
            
			strURL = "http://server.domain.com/somefile"; // you would use something like this to post to a real external site
            strURL = "ShowParams.aspx";           // you can use this to test your form to see if it is submitting parameters correctly
			
			// Leave this code here for all instances where you need to assure that only logged in users
			// can access this executable.
			//
			// We test whether the request is coming from a currently logged in user who just clicked a link
			// on a portlet, not someone following a saved link from an old session. This is accomplished by
			// using a static string to create a Session key whose
			// value must match a GUID passed as a part of the URL. The GUID changes with each logged-in session
			// for a given user, so the match will not happen across sessions or for differnt users
			// 
			string strHostID = PortalUser.Current.HostID;

			if (strHostID == null || strHostID.Length == 0)
			{
				ShowFeedback("Error", "Current user account has no ID number, so no action can be taken");
			}	
			else
			{
				if (HttpContext.Current.Session["ExtSSOValidationID"] == null ||
					Request.Params.Get("ID") == null ||
					Request.Params.Get("ID").ToString().Trim() != HttpContext.Current.Session["ExtSSOValidationID"].ToString().Trim())
				{
					ShowFeedback("Invalid Access","You must be logged into the site to access this resource.");
				}
				else
				{
					//
					// use the first strJavaScript below to auto-submit the form, or the second to display the form without submitting
					//
					//strJavaScript = "<script language=\"javascript\">document.forms[0].submit();</script>"; // submit the form
					strJavaScript = "<script language=\"javascript\"></script>"; // don't submit the form
                    
                    //
                    // Now we define the username and password which must be obtained from somewhere
                    //
                    strUsername = PortalUser.Current.Username; // you may use the JICS username or get the username somewhere else
					strPassword = "test1234"; // get this from somewhere real or use the LoginCaptureCrypto portlet to insert the user's JICS password

				}
			}


            // NEW CODE

            String action = "externalAuthentication";
            String strUser = Jenzabar.Portal.Framework.PortalUser.Current.Username;
            String strUserFirst = Jenzabar.Portal.Framework.PortalUser.Current.FirstName;
            String strUserLast = Jenzabar.Portal.Framework.PortalUser.Current.LastName;
            String strUserEmail = Jenzabar.Portal.Framework.PortalUser.Current.EmailAddress;
            String randomAlpha = RandomString(12, true);
            String symmetricKey = "YKQ1czurBVXULmishE9UWLEU7pZi1v0N456KA%2FrRB9h7LmIwgVemt1DtlPY6xSDqNaDkzEr6JLZ3%0D%0AOTZm9hCRWyeQqtR2kgoxbgZ%2FFloru9";

            long ticks = DateTime.UtcNow.Ticks - DateTime.Parse("01/01/1970 00:00:00").Ticks;
            ticks /= 10000; //Convert windows ticks to seconds
            String timeStamp = ticks.ToString();

            byte[] hash = MD5.Create().ComputeHash(System.Text.Encoding.ASCII.GetBytes(strUser + timeStamp + randomAlpha  + strUserFirst + strUserLast + strUserEmail + symmetricKey));
            //byte[] hash = (new MD5CryptoServiceProvider()).ComputeHash(System.Text.ASCIIEncoding.ASCII.GetBytes("aadmin" + "1279224371036" + "this is random" + "admin" + "admin"  + "qa@collegiatelink.net" + "OT" + "oDuSiNmx6xgA2F9aY4Pom8EkNYYYzxfpXA4d8BOEWN4=374oy4+3rtfr5iz0VXc8aQ=="));

            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }

            String href = "http://tlutraining.collegiatelink.net/Community?action=externalAuthentication"
                + "&userID=" + Server.UrlEncode(strUser)
                + "&time=" + Server.UrlEncode(timeStamp)
                + "&random=" + Server.UrlEncode(randomAlpha)
                + "&firstName=" + Server.UrlEncode(strUserFirst)
                + "&lastName=" + Server.UrlEncode(strUserLast)
                + "&email=" + Server.UrlEncode(strUserEmail)
                + "&hash=" + Server.UrlEncode(sb.ToString());
            
            Response.Write("<p><b><a href=" + href + ">This is the test tluTraining link </a></b></p>");
            //Response.Write("<p><b>" + sb.ToString() + "</b></p>");
            //Response.Write("<p><b>" + timeStamp + "<BR />" + href + "</b></p>");
		}


        /// <summary>
        /// Generates a random string with the given length
        /// </summary>
        /// <param name="size">Size of the string</param>
        /// <param name="lowerCase">If true, generate lowercase string</param>
        /// <returns>Random string</returns>
        private string RandomString(int size, bool lowerCase)
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            Random random = new Random();
            char ch;
            for (int i = 0; i < size; i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
                builder.Append(ch);
            }
            if (lowerCase)
                return builder.ToString().ToLower();
            return builder.ToString();
        }

		private void ShowFeedback(string strSubject, string strMessage) 
		{
			Response.Clear();
			Response.Write("<html><head><title>" + strSubject + "</title></head><body><br><br><center>" + 
				"<h2>" + strSubject + "</h2><p>" + strMessage + "</p></center></body></html>");
		}
	}
}
