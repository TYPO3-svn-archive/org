# INDEX
# -----
# tx_org_cal
# tx_org_calentrance
# tx_org_caltype
# tx_org_downloads
# tx_org_downloadscat
# tx_org_downloadsmedia
# tx_org_event
# tx_org_eventcat
# tx_org_headquarters
# tx_org_headquarterscat
# tx_org_job
# tx_org_jobcat
# tx_org_jobsector
# tx_org_jobworkinghours
# tx_org_location
# tx_org_locationcat
# tx_org_news
# tx_org_newscat
# tx_org_newsgroup
# tx_org_service
# tx_org_servicecat
# tx_org_servicesector
# tx_org_servicetargetgroup
# tx_org_staff
# tx_org_staffgroup
# tx_org_tax
# tx_org_mm_all



#
# tx_org_cal
#
CREATE TABLE tx_org_cal (
  uid int(11) unsigned DEFAULT '0' NOT NULL auto_increment,
  pid int(11) unsigned NOT NULL DEFAULT '0',
  tstamp int(11) unsigned NOT NULL DEFAULT '0',
  crdate int(11) unsigned NOT NULL DEFAULT '0',
  cruser_id int(11) unsigned NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
  type tinytext,
  title tinytext,
  subtitle tinytext,
  datetime int(11) unsigned NOT NULL DEFAULT '0',
  datetimeend int(11) unsigned NOT NULL DEFAULT '0',
  bodytext mediumtext ,
  embeddedcode text,
  endtime int(11) NOT NULL DEFAULT '0',
  fe_group int(11) NOT NULL DEFAULT '0',
  hidden tinyint(4) unsigned NOT NULL DEFAULT '0',
  image text,
  imagecaption text,
  imageseo text,
  imageheight tinytext,
  imagewidth tinytext,
  imageorient tinyint(4) unsigned NOT NULL default '0',
  imagecaption text,
  imagecols tinyint(4) unsigned NOT NULL default '0',
  imageborder tinyint(4) unsigned NOT NULL default '0',
  imagecaption_position varchar(12) default '',
  image_link text,
  image_zoom tinyint(3) unsigned NOT NULL default '0',
  image_noRows tinyint(3) unsigned NOT NULL default '0',
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',
  image_frames tinyint(3) unsigned NOT NULL default '0',
  marginal_title tinytext,
  marginal_subtitle tinytext,
  marginal_short text,
  page tinytext,
  pages tinytext,
  print text,
  printcaption text,
  printseo tinytext,
  seo_description text,
  seo_keywords text,
  starttime int(11) NOT NULL DEFAULT '0',
  teaser_title tinytext,
  teaser_subtitle tinytext,
  teaser_short mediumtext,
  tx_org_caltype tinytext,
  tx_org_event tinytext,
  tx_org_location tinytext,
  tx_org_calentrance tinytext,
  tx_org_headquarters tinytext,
  tx_org_staff tinytext,
  url tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_calentrance
#
CREATE TABLE tx_org_calentrance (
  uid int(11) unsigned DEFAULT '0' NOT NULL auto_increment,
  pid int(11) unsigned NOT NULL DEFAULT '0',
  tstamp int(11) unsigned NOT NULL DEFAULT '0',
  crdate int(11) unsigned NOT NULL DEFAULT '0',
  cruser_id int(11) unsigned NOT NULL DEFAULT '0',
  deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
  title tinytext,
  title_lang_ol tinytext,
  value tinytext,
  tx_org_tax tinytext,
  hidden tinyint(4) NOT NULL DEFAULT '0',
  starttime int(11) NOT NULL DEFAULT '0',
  endtime int(11) NOT NULL DEFAULT '0',
  fe_group varchar(100) NOT NULL DEFAULT '0',

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_caltype
#
CREATE TABLE tx_org_caltype (
  uid int(11) unsigned DEFAULT '0' NOT NULL auto_increment,
  pid int(11) unsigned NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) unsigned NOT NULL DEFAULT '0',
  crdate int(11) unsigned NOT NULL DEFAULT '0',
  cruser_id int(11) unsigned NOT NULL DEFAULT '0',
  deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL
  title tinytext,
  title_lang_ol tinytext,
  tx_org_cal tinytext,
  hidden tinyint(4) NOT NULL DEFAULT '0',

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_downloads
#
CREATE TABLE tx_org_downloads (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  deleted tinyint(4) NOT NULL DEFAULT '0',

  bodytext mediumtext ,
  datetime int(11) unsigned NOT NULL DEFAULT '0',
  documents text,
  documents_from_path tinytext,
  documentscaption tinytext,
  documentslayout tinyint(4) unsigned NOT NULL DEFAULT '0',
  documentssize tinyint(4) unsigned NOT NULL DEFAULT '0',
  documents_display_label tinyint(4) unsigned NOT NULL DEFAULT '0',
  documents_display_caption tinyint(4) unsigned NOT NULL DEFAULT '0',
  endtime int(11) NOT NULL DEFAULT '0',
  fe_group varchar(100) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  linkicon_height tinytext,
  linkicon_width tinytext,
  pages tinytext,
  seo_description text,
  seo_keywords text,
  starttime int(11) NOT NULL DEFAULT '0',
  statistics_hits int(11) NOT NULL DEFAULT '0',
  statistics_visits int(11) NOT NULL DEFAULT '0',
  statistics_downloads int(11) NOT NULL DEFAULT '0',
  statistics_downloads_by_visits int(11) NOT NULL DEFAULT '0',
  subtitle tinytext,
  teaser_title tinytext,
  teaser_subtitle tinytext,
  teaser_short text,
  thumbnail text,
  thumbnail_height tinytext,
  thumbnail_width tinytext,
  title tinytext,
  tx_flipit_evaluate tinytext,
  tx_flipit_fancybox tinytext,
  tx_flipit_layout tinytext,
  tx_flipit_pagelist tinytext,
  tx_flipit_quality tinytext,
  tx_flipit_swf_files text,
  tx_flipit_updateswfxml tinytext,
  tx_flipit_xml_file text,
  tx_org_downloadscat tinytext,
  tx_org_downloadsmedia tinytext,
  tx_org_staff tinytext,
  type tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_downloadscat
#
CREATE TABLE tx_org_downloadscat (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  sorting int(10) unsigned NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  type tinytext,
  title tinytext,
  title_lang_ol tinytext,
  text text,
  text_lang_ol text,
  color tinytext,
  image text,
  imageseo text,
  imageseo_lang_ol text,
  imageheight tinytext,
  imagewidth tinytext,
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',

  PRIMARY KEY (uid),
  KEY parent (pid)

);



#
# tx_org_downloadsmedia
#
CREATE TABLE tx_org_downloadsmedia (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  sorting int(10) unsigned NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  type tinytext,
  title tinytext,
  title_lang_ol tinytext,
  text text,
  text_lang_ol text,
  color tinytext,
  image text,
  imageseo text,
  imageseo_lang_ol text,
  imageheight tinytext,
  imagewidth tinytext,
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',

  PRIMARY KEY (uid),
  KEY parent (pid)

);



#
# tx_org_event
#
CREATE TABLE tx_org_event (
  uid int(11) unsigned DEFAULT '0' NOT NULL auto_increment,
  pid int(11) unsigned NOT NULL DEFAULT '0',
  tstamp int(11) unsigned NOT NULL DEFAULT '0',
  crdate int(11) unsigned NOT NULL DEFAULT '0',
  cruser_id int(11) unsigned NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
  title tinytext,
  subtitle tinytext,
  teaser_title tinytext,
  teaser_subtitle tinytext,
  teaser_short mediumtext,
  bodytext mediumtext ,
  documents_from_path tinytext,
  documents text,
  documentscaption tinytext,
  documentslayout tinyint(4) unsigned NOT NULL DEFAULT '0',
  documentssize tinyint(4) unsigned NOT NULL DEFAULT '0',
  fe_group int(11) NOT NULL DEFAULT '0',
  hidden tinyint(4) unsigned NOT NULL DEFAULT '0',
  image text,
  imagecaption text,
  imageseo text,
  imageheight tinytext,
  imagewidth tinytext,
  imageorient tinyint(4) unsigned NOT NULL default '0',
  imagecaption text,
  imagecols tinyint(4) unsigned NOT NULL default '0',
  imageborder tinyint(4) unsigned NOT NULL default '0',
  imagecaption_position varchar(12) default '',
  image_link text,
  image_zoom tinyint(3) unsigned NOT NULL default '0',
  image_noRows tinyint(3) unsigned NOT NULL default '0',
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',
  image_frames tinyint(3) unsigned NOT NULL default '0',
  length tinytext,
  page tinytext,
  pages tinytext,
  seo_description text,
  seo_keywords text,
  tx_org_cal tinytext,
  tx_org_eventcat tinytext,
  tx_org_headquarters tinytext,
  tx_org_news tinytext,
  tx_org_staff tinytext,
  type tinytext,
  url tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_eventcat
#
CREATE TABLE tx_org_eventcat (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  title tinytext,
  title_lang_ol tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_headquarters
#
CREATE TABLE tx_org_headquarters (
  uid int(11) unsigned DEFAULT '0' NOT NULL auto_increment,
  pid int(11) unsigned NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) unsigned NOT NULL DEFAULT '0',
  crdate int(11) unsigned NOT NULL DEFAULT '0',
  cruser_id int(11) unsigned NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  sorting int(11) unsigned NOT NULL DEFAULT '0',
  deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
  hidden tinyint(4) unsigned NOT NULL DEFAULT '0',
  bodytext text,
  documents_from_path tinytext,
  documents text,
  documentscaption tinytext,
  documentslayout tinyint(4) unsigned NOT NULL DEFAULT '0',
  documentssize tinyint(4) unsigned NOT NULL DEFAULT '0',
  email tinytext,
  embeddedcode text,
  fax tinytext,
  fe_group int(11) NOT NULL DEFAULT '0',
  geoupdateprompt text,
  geoupdateforbidden tinyint(4) unsigned NOT NULL DEFAULT '0',
  image text,
  imagecaption text,
  imageseo text,
  imageheight tinytext,
  imagewidth tinytext,
  imageorient tinyint(4) unsigned NOT NULL default '0',
  imagecaption text,
  imagecols tinyint(4) unsigned NOT NULL default '0',
  imageborder tinyint(4) unsigned NOT NULL default '0',
  imagecaption_position varchar(12) default '',
  image_link text,
  image_zoom tinyint(3) unsigned NOT NULL default '0',
  image_noRows tinyint(3) unsigned NOT NULL default '0',
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',
  image_frames tinyint(3) unsigned NOT NULL default '0',
  mail_address text ,
  mail_postcode tinytext,
  mail_city tinytext,
  mail_country tinytext,
  mail_lat text ,
  mail_lon text ,
  mail_street text ,
  mail_url text ,
  mail_zip tinytext,
  mail_embeddedcode text,
  manager tinytext,
  marginal_title tinytext,
  marginal_short text,
  migratedtable tinytext,
  migrateduid int(11) unsigned DEFAULT '0' NOT NULL,
  page tinytext,
  pages tinytext,
  postbox_city tinytext,
  postbox_postbox text ,
  postbox_postcode tinytext,
  pubtrans_embeddedcode text,
  pubtrans_stop mediumtext ,
  pubtrans_url tinytext,
  seo_description text,
  seo_keywords text,
  teaser_title tinytext,
  teaser_short text,
  telephone tinytext,
  title tinytext,
  tx_org_cal tinytext,
  tx_org_headquarterscat tinytext,
  tx_org_job tinytext,
  tx_org_location tinytext,
  tx_org_news tinytext,
  tx_org_service tinytext,
  tx_org_staff tinytext,
  type tinytext,
  url tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_headquarterscat
#
CREATE TABLE tx_org_headquarterscat (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  sorting int(10) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  title tinytext,
  title_lang_ol tinytext,
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL

  PRIMARY KEY (uid),
  KEY parent (pid)

);



#
# tx_org_job
#
CREATE TABLE tx_org_job (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  fe_cruser_id int(11) NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  starttime int(11) NOT NULL DEFAULT '0',
  endtime int(11) NOT NULL DEFAULT '0',
  applicationaddress tinytext,
  applicationurl tinytext,
  dateofentry int(11) NOT NULL DEFAULT '0',
  description text,
  documents_from_path tinytext,
  documents text,
  documentscaption tinytext,
  documentslayout tinyint(4) unsigned NOT NULL DEFAULT '0',
  documentssize tinyint(4) unsigned NOT NULL DEFAULT '0',
  fe_group int(11) NOT NULL DEFAULT '0',
  geoupdateprompt text,
  geoupdateforbidden tinyint(4) unsigned NOT NULL DEFAULT '0',
  image text,
  imagecaption text,
  imageseo text,
  imageheight tinytext,
  imagewidth tinytext,
  imageorient tinyint(4) unsigned NOT NULL default '0',
  imagecaption text,
  imagecols tinyint(4) unsigned NOT NULL default '0',
  imageborder tinyint(4) unsigned NOT NULL default '0',
  imagecaption_position varchar(12) default '',
  image_link text,
  image_zoom tinyint(3) unsigned NOT NULL default '0',
  image_noRows tinyint(3) unsigned NOT NULL default '0',
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',
  image_frames tinyint(3) unsigned NOT NULL default '0',
  lengthoftime tinytext,
  location tinytext,
  mail_address tinytext,
  mail_city tinytext,
  mail_country tinytext,
  mail_lat text ,
  mail_lon text ,
  mail_street text ,
  mail_zip tinytext,
  marginal_title tinytext,
  marginal_short text,
  newsletter tinyint(4) NOT NULL DEFAULT '1',
  onlineapplication tinyint(3) unsigned NOT NULL default '0',
  page tinytext,
  quantity tinytext,
  reference_number tinytext,
  seo_description text,
  seo_keywords text,
  specification text,
  teaser_title tinytext,
  teaser_short text,
  thirdparty_id tinytext,
  title tinytext,
  tx_org_headquarters tinytext,
  tx_org_jobcat tinytext,
  tx_org_jobsector tinytext,
  tx_org_jobworkinghours tinytext,
  tx_org_staff tinytext,
  type tinytext,
  url tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_jobcat
#
CREATE TABLE tx_org_jobcat (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL
  title tinytext,
  title_lang_ol tinytext,
  thirdparty_id tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_jobsector
#
CREATE TABLE tx_org_jobsector (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL
  title tinytext,
  title_lang_ol tinytext,
  thirdparty_id tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_jobworkinghours
#
CREATE TABLE tx_org_jobworkinghours (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL
  title tinytext,
  title_lang_ol tinytext,
  thirdparty_id tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_location
#
CREATE TABLE tx_org_location (
  uid int(11) unsigned DEFAULT '0' NOT NULL auto_increment,
  pid int(11) unsigned NOT NULL DEFAULT '0',
  tstamp int(11) unsigned NOT NULL DEFAULT '0',
  crdate int(11) unsigned NOT NULL DEFAULT '0',
  cruser_id int(11) unsigned NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  sorting int(11) unsigned NOT NULL DEFAULT '0',
  deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
  title tinytext,
  bodytext text,
  geoupdateprompt text,
  geoupdateforbidden tinyint(4) unsigned NOT NULL DEFAULT '0',
  mail_address text ,
  mail_postcode tinytext,
  mail_city tinytext,
  mail_country tinytext,
  mail_lat text,
  mail_lon text,
  mail_url text,
  mail_embeddedcode text,
  mail_street text,
  mail_zip tinytext,
  telephone tinytext,
  ticket_telephone tinytext,
  ticket_url tinytext,
  fax tinytext,
  email tinytext,
  pubtrans_stop mediumtext ,
  pubtrans_url tinytext,
  pubtrans_embeddedcode text,
  citymap_url tinytext,
  citymap_embeddedcode text,
  image text,
  imagecaption text,
  imageseo text,
  imageheight tinytext,
  imagewidth tinytext,
  imageorient tinyint(4) unsigned NOT NULL default '0',
  imagecaption text,
  imagecols tinyint(4) unsigned NOT NULL default '0',
  imageborder tinyint(4) unsigned NOT NULL default '0',
  imagecaption_position varchar(12) default '',
  image_link text,
  image_zoom tinyint(3) unsigned NOT NULL default '0',
  image_noRows tinyint(3) unsigned NOT NULL default '0',
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',
  image_frames tinyint(3) unsigned NOT NULL default '0',
  embeddedcode text,
  documents_from_path tinytext,
  documents text,
  documentscaption tinytext,
  documentslayout tinyint(4) unsigned NOT NULL DEFAULT '0',
  documentssize tinyint(4) unsigned NOT NULL DEFAULT '0',
  hidden tinyint(4) unsigned NOT NULL DEFAULT '0',
  page tinytext,
  pages tinytext,
  fe_group int(11) NOT NULL DEFAULT '0',
  seo_description text,
  seo_keywords text,
  tx_org_cal tinytext,
  tx_org_headquarters tinytext,
  tx_org_locationcat tinytext,
  tx_org_staff tinytext,
  type tinytext,
  url tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_locationcat
#
CREATE TABLE tx_org_locationcat (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  sorting int(10) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  title tinytext,
  title_lang_ol tinytext,
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL

  PRIMARY KEY (uid),
  KEY parent (pid)

);



#
# tx_org_news
#
CREATE TABLE tx_org_news (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  deleted tinyint(4) NOT NULL DEFAULT '0',
  archivedate int(11) unsigned NOT NULL DEFAULT '0',
  bodytext mediumtext ,
  datetime int(11) unsigned NOT NULL DEFAULT '0',
  documents_from_path tinytext,
  documents text,
  documentscaption tinytext,
  documentslayout tinyint(4) unsigned NOT NULL DEFAULT '0',
  documentssize tinyint(4) unsigned NOT NULL DEFAULT '0',
  embeddedcode text,
  endtime int(11) NOT NULL DEFAULT '0',
  fe_group varchar(100) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  marginal_title tinytext,
  marginal_subtitle tinytext,
  marginal_short text,
  image text,
  imagecaption text,
  imageseo text,
  imageheight tinytext,
  imagewidth tinytext,
  imageorient tinyint(4) unsigned NOT NULL default '0',
  imagecaption text,
  imagecols tinyint(4) unsigned NOT NULL default '0',
  imageborder tinyint(4) unsigned NOT NULL default '0',
  imagecaption_position varchar(12) default '',
  image_1stforlistonly tinyint(3) unsigned NOT NULL default '0',
  image_link text,
  image_zoom tinyint(3) unsigned NOT NULL default '0',
  image_noRows tinyint(3) unsigned NOT NULL default '0',
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',
  image_frames tinyint(3) unsigned NOT NULL default '0',
  page tinytext,
  pages tinytext,
  seo_keywords text,
  seo_description text,
  starttime int(11) NOT NULL DEFAULT '0',
  subtitle tinytext,
  teaser_title tinytext,
  teaser_subtitle tinytext,
  teaser_short text,
  title tinytext,
  topnews tinyint(4) unsigned NOT NULL DEFAULT '0',
  topnews_sorting tinyint(4) unsigned NOT NULL DEFAULT '1',
  tx_org_event tinytext,
  tx_org_headquarters tinytext,
  tx_org_newscat tinytext,
  tx_org_newsgroup tinytext,
  tx_org_staff tinytext,
  type tinytext,
  url tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_newscat
#
# #32223 Category tree, 111130, dwildt+, uid_parent
CREATE TABLE tx_org_newscat (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  title tinytext,
  title_lang_ol tinytext,
  image text,
  imagecaption text,
  imageseo text,

  PRIMARY KEY (uid),
  KEY parent (pid)

);



#
# tx_org_newsgroup
#
CREATE TABLE tx_org_newsgroup (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  title tinytext,
  title_lang_ol tinytext,
  image text,
  imagecaption text,
  imageseo text,

  PRIMARY KEY (uid),
  KEY parent (pid)

);



#
# tx_org_service
#
CREATE TABLE tx_org_service (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  starttime int(11) NOT NULL DEFAULT '0',
  endtime int(11) NOT NULL DEFAULT '0',
  description text,
  documents_from_path tinytext,
  documents text,
  documentscaption tinytext,
  documentslayout tinyint(4) unsigned NOT NULL DEFAULT '0',
  documentssize tinyint(4) unsigned NOT NULL DEFAULT '0',
  fe_group int(11) NOT NULL DEFAULT '0',
  geoupdateprompt text,
  geoupdateforbidden tinyint(4) unsigned NOT NULL DEFAULT '0',
  image text,
  imagecaption text,
  imageseo text,
  imageheight tinytext,
  imagewidth tinytext,
  imageorient tinyint(4) unsigned NOT NULL default '0',
  imagecaption text,
  imagecols tinyint(4) unsigned NOT NULL default '0',
  imageborder tinyint(4) unsigned NOT NULL default '0',
  imagecaption_position varchar(12) default '',
  image_link text,
  image_zoom tinyint(3) unsigned NOT NULL default '0',
  image_noRows tinyint(3) unsigned NOT NULL default '0',
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_compression tinyint(3) unsigned NOT NULL default '0',
  image_frames tinyint(3) unsigned NOT NULL default '0',
  location tinytext,
  mail_address tinytext,
  mail_city tinytext,
  mail_country tinytext,
  mail_lat text ,
  mail_lon text ,
  mail_street text ,
  mail_zip tinytext,
  marginal_title tinytext,
  marginal_short text,
  page tinytext,
  reference_number tinytext,
  seo_description text,
  seo_keywords text,
  teaser_title tinytext,
  teaser_short text,
  thirdparty_id tinytext,
  title tinytext,
  tx_org_headquarters tinytext,
  tx_org_servicecat tinytext,
  tx_org_servicesector tinytext,
  tx_org_servicetargetgroup tinytext,
  tx_org_staff tinytext,
  type tinytext,
  url tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_servicecat
#
CREATE TABLE tx_org_servicecat (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL
  title tinytext,
  title_lang_ol tinytext,
  thirdparty_id tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_servicesector
#
CREATE TABLE tx_org_servicesector (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL
  title tinytext,
  title_lang_ol tinytext,
  thirdparty_id tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_servicetargetgroup
#
CREATE TABLE tx_org_servicetargetgroup (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  icons text,
  icon_offset_x int(11) NOT NULL DEFAULT '0',
  icon_offset_y int(11) DEFAULT '0' NOT NULL
  title tinytext,
  title_lang_ol tinytext,
  thirdparty_id tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# tx_org_staff
#
CREATE TABLE tx_org_staff (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  sys_language_uid int(11) NOT NULL DEFAULT '0',
  l10n_parent int(11) NOT NULL DEFAULT '0',
  l10n_diffsource mediumtext,
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  starttime int(11) NOT NULL DEFAULT '0',
  endtime int(11) NOT NULL DEFAULT '0',
  birthday int(11) NOT NULL DEFAULT '0',
  bodytext text,
  cols int(11) DEFAULT '0' NOT NULL,
  contact_email tinytext,
  contact_fax tinytext,
  contact_phone tinytext,
  contact_skype tinytext,
  contact_url tinytext,
  fe_group int(11) NOT NULL DEFAULT '0',
  department tinytext,
  gender tinytext,
  image text,
  imageborder tinyint(4) unsigned NOT NULL default '0',
  imagecaption text,
  imagecaption_position varchar(12) default '',
  imagecols tinyint(4) unsigned NOT NULL default '0',
  imageheight tinytext,
  imageorient tinyint(4) unsigned NOT NULL default '0',
  imageseo text,
  imagewidth tinytext,
  image_compression tinyint(3) unsigned NOT NULL default '0',
  image_effects tinyint(3) unsigned NOT NULL default '0',
  image_frames tinyint(3) unsigned NOT NULL default '0',
  image_link text,
  image_noRows tinyint(3) unsigned NOT NULL default '0',
  image_zoom tinyint(3) unsigned NOT NULL default '0',
  marginal_short text,
  marginal_subtitle tinytext,
  marginal_title tinytext,
  name_first tinytext,
  name_last tinytext,
  page tinytext,
  pi_flexform mediumtext,
  prefix tinytext,
  seo_description text,
  seo_keywords text,
  thirdparty_id tinytext,
  title tinytext,
  tx_org_cal tinytext,
  tx_org_downloads tinytext,
  tx_org_event tinytext,
  tx_org_headquarters tinytext,
  tx_org_job tinytext,
  tx_org_location tinytext,
  tx_org_news tinytext,
  tx_org_repertoire tinytext,
  tx_org_service tinytext,
  tx_org_staffgroup tinytext,
  type tinytext,
  url tinytext,
  vita text,

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_staffgroup
#
CREATE TABLE tx_org_staffgroup (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL DEFAULT '0',
  uid_parent int(11) NOT NULL DEFAULT '0',
  tstamp int(11) NOT NULL DEFAULT '0',
  crdate int(11) NOT NULL DEFAULT '0',
  cruser_id int(11) NOT NULL DEFAULT '0',
  deleted tinyint(4) NOT NULL DEFAULT '0',
  hidden tinyint(4) NOT NULL DEFAULT '0',
  title tinytext,
  title_lang_ol tinytext,

  PRIMARY KEY (uid),
  KEY parent (pid)

);



#
# tx_org_tax'
#
CREATE TABLE tx_org_tax (
  uid int(11) unsigned DEFAULT '0' NOT NULL auto_increment,
  pid int(11) unsigned NOT NULL DEFAULT '0',
  tstamp int(11) unsigned NOT NULL DEFAULT '0',
  crdate int(11) unsigned NOT NULL DEFAULT '0',
  cruser_id int(11) unsigned NOT NULL DEFAULT '0',
  deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
  title tinytext,
  title_lang_ol tinytext,
  value tinytext,
  hidden tinyint(4) NOT NULL DEFAULT '0',
  starttime int(11) NOT NULL DEFAULT '0',
  endtime int(11) NOT NULL DEFAULT '0',

  PRIMARY KEY (uid),
  KEY parent (pid)
);



#
# tx_org_mm_all
#
CREATE TABLE tx_org_mm_all (
  uid_local int(11) unsigned NOT NULL DEFAULT '0',
  uid_foreign int(11) unsigned NOT NULL DEFAULT '0',
  sorting         int(11) unsigned NOT NULL DEFAULT '0',
  sorting_foreign int(11) unsigned NOT NULL DEFAULT '0',
  table_local varchar(100) NOT NULL DEFAULT '',
  table_foreign varchar(100) NOT NULL DEFAULT '',
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);