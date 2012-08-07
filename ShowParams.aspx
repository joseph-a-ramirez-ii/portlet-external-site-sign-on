<%@ Page language="c#" debug="false" AutoEventWireup="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Show Parameters</title>
    <!--
          If you change the name of this file to something else and leave it in the ExternalSiteSignon folder,
          it will appear as one of the options for users to choose. As long as the file keeps this exact name,
          ShowParams.aspx, it will not appear in the settings drop-downs.
    -->
    <style lang="text/css">body, td {font-family:verdana,arial,sans-serif;font-size:80%;}</style>
  </head>
  <body>
	
<%
Response.Write("<table border=1 cellpadding=2 cellspacing=0><tr><td>RawUrl</td><td>" + Request.RawUrl+ "</td></tr>\r\n");
foreach (string key in Request.QueryString.Keys)
{
	Response.Write("<tr><td>Query String - " + key + "</td><td>>>>" + Request.QueryString.Get(key) + "<<<</td></tr>\r\n");
}
foreach (string key in Request.Form.Keys)
{
    Response.Write("<tr><td>Form Element - " + key + "</td><td>>>>" + Request.Form.Get(key) + "<<<</td></tr>\r\n");
}

%>
  </table>
 </body>
</html>
