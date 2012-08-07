<%@ Page language="c#" Debug="true" Inherits="CUS.StandalonePages.Post_Form" src="Post_Form.cs" %>
<!-- When making more pages like this one, you must change the Inherits value to match the namespace.classname
     and the Src value to match the name of the code-behind file in which that classname is defined. But do NOT
     make the namespace match that of the ExternalSiteSignon portlet -- it should remain distinct.    -->
<html>
<head>
<title>Post Form Login</title>
<style lang="text/css">body, td {font-family:verdana,arial,sans-serif;font-size:80%;}</style>
</head>
<body>
<br>
<center>
    <!--<h3>Test Post Form Login</h3>-->
    <br>
    <br>
    <form name="Logon" method="post" action="<% Response.Write(strURL); %>">
    <!--<table border='0' cellpadding='4'>
	<tr>
	    <td style='padding-right:24px;' align='right'><b>Username</b></td>
	    <td><input type="text" name="username" size="15" value="<% Response.Write(strUsername); %>"></td>
	</tr>
	<tr>
	    <td style='padding-right:24px;' align='right'><b>Password</b></td>
	    <td><input type="password" name="password" size="15" value="<% Response.Write(strPassword); %>"></td>
	</tr>
	<tr>
	    <td colspan='2' align='center'>
		<input type="submit" name="bSubmit" value='  Login  '>
	    </td>
	</tr>
    </table> -->
    </form>
<% Response.Write(strJavaScript); %>
</center>
</body>
</html>