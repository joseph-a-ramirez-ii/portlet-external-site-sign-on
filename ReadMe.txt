
External Site Sign-on Portlet

Overview and Installation Notes 
================================
Carey Morgan
Jenzabar, Inc.
December 2008

Overview:

The Main View of this portlet presents an optional description followed by one or more links
to pages or sites that require some data-driven parameters in order to gain access. Clicking on 
the links will lead, either directly or indirectly to display one of the .aspx files
found in the portal's folder. Each of these aspx files, with the exception of a special file
named ShowParams.aspx, are expected to perform some data manipulation and then to redirect
the request to another site using a specially crafted URL.

Based on the configuration Settings chosen by the context manager, the links will either 
lead to a new browser window (using target="_blank"), or to another portlet view, 
IFrame_View, which then displays the appropriate .aspx file through an inline frame in a
maximized view of this portlet. Because the links for each of these actions behave
differently, two different controls are used to accomplish this switching.

In order to insure that .aspx files are not accessible outside the function of this portlet,
Logic has been built into this Main_View as well as the .aspx pages so that a globally 
unique identifier (GUID) is both stored in the application cache for a given user and 
passed to the .aspx page as a parameter. Only if:
 * the passed parameter matches the cached value stored
 * for the currently logged-in user
 * while the originating portlet is the most recently rendered
...will the .aspx page return any results.


Installation:

Add the External Site Sign-on portlet template to your JICS system's ADAM database by: 
  Copying the following files to a folder on a JICS web server:
    ExternalSiteSignon_LDIFInstall.vbs
    ExternalSiteSignon.ldf
  Examining the .vbs file to make sure it is referencing your ADAM database correctly (default is localhost:389)
  Executing the ExternalSiteSignon_LDIFInstall.vbs by double-clicking on it
   
Copy the following files to \Jenzabar\ICS.NET\Portal\Portlets\CUS\ICS\ExternalSiteSignon
  Main_View.ascx
  IFrame_View.ascx
  Post_Form.aspx
  Post_Form.cs
  ShowParams.aspx
  
Use SQL Server Management Studio or Query Analyzer to execute the following SQL script:
  FWK_Globalization.sql
  
Copy the following file to \Jenzabar\ICS.NET\Portal\bin\:
  Portlet.ExternalSiteSignon.dll
  
  
Log into JICS as an administrator, and carry out the following steps:
  Site Manager > Global Portlet Operations > External Site Sign-on
   - Enable whichever roles you would like to be able to use the portlet by clicking on its links
  Site Manager > Tabs
   - Enable the External Site Sign-on portlet for whichever tab you intend to add it to
  Visit that chosen tab, and add the External Site Sign-on portlet to a page of your choosing (preferably not the default page, in case you get an error)
  Visit the newly added portlet and
   - Click on the wrench icon, then Settings
   - Enter an Introduction to the portlet if you like
   - Decide whether to offer links to new windows or to iframes
   - Choose an item for Link 1
   - Type link text in Link 1 - Text 
   - Save the values
  Be sure to test the functionality by logging in
  
 