USE ICS_NET
GO

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_INTRO_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_INTRO_LBL', 'En','Introductory Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_INTRO_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_INTRO_DESC', 'En','Explanatory text that will appear in the area above the links (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_LBL', 'En','Show Destination Sites In',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_DESC', 'En','When users click on links in this portlet, do you want them to see the destination page open in a new browser window or in a frame within this page?',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_WINDOW_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_WINDOW_LBL', 'En','New Browser Window',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_IFRAME_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_IFRAME_OR_WINDOW_IFRAME_LBL', 'En','Frame Within Page',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK1_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK1_FILE_LBL', 'En','Link 1',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK1_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK1_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK1_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK1_TEXT_LBL', 'En','Link 1 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK1_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK1_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK1_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK1_DESCR_LBL', 'En','Link 1 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK1_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK1_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK2_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK2_FILE_LBL', 'En','Link 2',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK2_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK2_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK2_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK2_TEXT_LBL', 'En','Link 2 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK2_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK2_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK2_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK2_DESCR_LBL', 'En','Link 2 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK2_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK2_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK3_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK3_FILE_LBL', 'En','Link 3',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK3_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK3_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK3_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK3_TEXT_LBL', 'En','Link 3 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK3_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK3_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK3_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK3_DESCR_LBL', 'En','Link 3 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK3_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK3_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK4_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK4_FILE_LBL', 'En','Link 4',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK4_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK4_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK4_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK4_TEXT_LBL', 'En','Link 4 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK4_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK4_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK4_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK4_DESCR_LBL', 'En','Link 4 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK4_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK4_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK5_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK5_FILE_LBL', 'En','Link 5',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK5_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK5_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK5_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK5_TEXT_LBL', 'En','Link 5 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK5_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK5_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK5_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK5_DESCR_LBL', 'En','Link 5 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK5_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK5_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK6_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK6_FILE_LBL', 'En','Link 6',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK6_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK6_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK6_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK6_TEXT_LBL', 'En','Link 6 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK6_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK6_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK6_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK6_DESCR_LBL', 'En','Link 6 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK6_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK6_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK7_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK7_FILE_LBL', 'En','Link 7',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK7_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK7_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK7_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK7_TEXT_LBL', 'En','Link 7 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK7_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK7_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK7_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK7_DESCR_LBL', 'En','Link 7 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK7_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK7_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK8_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK8_FILE_LBL', 'En','Link 8',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK8_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK8_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK8_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK8_TEXT_LBL', 'En','Link 8 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK8_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK8_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK8_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK8_DESCR_LBL', 'En','Link 8 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK8_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK8_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK9_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK9_FILE_LBL', 'En','Link 9',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK9_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK9_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK9_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK9_TEXT_LBL', 'En','Link 9 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK9_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK9_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK9_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK9_DESCR_LBL', 'En','Link 9 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK9_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK9_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK10_FILE_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK10_FILE_LBL', 'En','Link 10',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK10_FILE_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK10_FILE_DESC', 'En','Choose the destination for this link.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK10_TEXT_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK10_TEXT_LBL', 'En','Link 10 - Text',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK10_TEXT_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK10_TEXT_DESC', 'En','The text to be displayed as this link (max 300 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK10_DESCR_LBL' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK10_DESCR_LBL', 'En','Link 10 - Description',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_SETTING_LINK10_DESCR_DESC' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_SETTING_LINK10_DESCR_DESC', 'En','A description of this link''s destination to be displayed beside it (optional, max 3000 char).',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_LINK_FILE_MISSING_LINK_TEXT' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_LINK_FILE_MISSING_LINK_TEXT', 'En','Broken Link',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_LINK_FILE_MISSING_ALERT_TEXT' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_LINK_FILE_MISSING_ALERT_TEXT', 'En','Please inform a portal administrator that this link is not working properly.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_PORTLET_NOT_CONFIGURED_TEXT' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_PORTLET_NOT_CONFIGURED_TEXT', 'En','This portlet has not yet been configured.',null);

IF NOT EXISTS(SELECT Text_Key FROM FWK_Globalization WHERE Text_Key='CUS_EXTSSO_CHOOSE_ASPX_FILE_OPTION_TEXT' AND Language_Code='En')
	INSERT INTO FWK_Globalization (Text_Key, Language_Code, Text_Value,Text_Custom_Value)
	VALUES ('CUS_EXTSSO_CHOOSE_ASPX_FILE_OPTION_TEXT', 'En','- Choose One -',null);