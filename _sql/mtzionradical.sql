-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb5+lenny8
-- http://www.phpmyadmin.net
--
-- Host: 10.10.11.4
-- Generation Time: Nov 17, 2011 at 09:14 PM
-- Server version: 5.0.77
-- PHP Version: 5.2.6-1+lenny10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `mtzionradical`
--

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_active_users`
--

CREATE TABLE IF NOT EXISTS `mtzrad_active_users` (
  `internalKey` int(9) NOT NULL default '0',
  `username` varchar(50) NOT NULL default '',
  `lasthit` int(20) NOT NULL default '0',
  `id` int(10) default NULL,
  `action` varchar(10) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about active users.';

--
-- Dumping data for table `mtzrad_active_users`
--

INSERT INTO `mtzrad_active_users` (`internalKey`, `username`, `lasthit`, `id`, `action`, `ip`) VALUES
(1, 'admin', 1321533391, 1, '3', '65.190.82.214'),
(2, 'mbdarby', 1295115629, NULL, '8', '71.29.37.74'),
(3, 'bsmith', 1295363702, NULL, '8', '71.29.37.74');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_categories`
--

CREATE TABLE IF NOT EXISTS `mtzrad_categories` (
  `id` int(11) NOT NULL auto_increment,
  `category` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mtzrad_categories`
--

INSERT INTO `mtzrad_categories` (`id`, `category`) VALUES
(1, 'Demo Content'),
(2, 'Login'),
(3, 'Manager and Admin'),
(4, 'Search'),
(5, 'Navigation'),
(6, 'Content'),
(7, 'Forms');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_documentgroup_names`
--

CREATE TABLE IF NOT EXISTS `mtzrad_documentgroup_names` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `private_memgroup` tinyint(4) default '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) default '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_documentgroup_names`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_document_groups`
--

CREATE TABLE IF NOT EXISTS `mtzrad_document_groups` (
  `id` int(10) NOT NULL auto_increment,
  `document_group` int(10) NOT NULL default '0',
  `document` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_document_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_event_log`
--

CREATE TABLE IF NOT EXISTS `mtzrad_event_log` (
  `id` int(11) NOT NULL auto_increment,
  `eventid` int(11) default '0',
  `createdon` int(11) NOT NULL default '0',
  `type` tinyint(4) NOT NULL default '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL default '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL default '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL default '',
  `description` text,
  PRIMARY KEY  (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs' AUTO_INCREMENT=238 ;

--
-- Dumping data for table `mtzrad_event_log`
--

INSERT INTO `mtzrad_event_log` (`id`, `eventid`, `createdon`, `type`, `user`, `usertype`, `source`, `description`) VALUES
(1, 0, 1294716345, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(2, 0, 1294794967, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(3, 0, 1303008019, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(4, 0, 1303012079, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(5, 0, 1303039947, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(6, 0, 1303128679, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(7, 0, 1303211571, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(8, 0, 1303297214, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(9, 0, 1303388475, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(10, 0, 1303474071, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(11, 0, 1303658782, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(12, 0, 1303691899, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(13, 0, 1303731759, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(14, 0, 1303819787, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(15, 0, 1303903003, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(16, 0, 1303954236, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(17, 0, 1303991479, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(18, 0, 1304075932, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(19, 0, 1304162697, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(20, 0, 1304248576, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(21, 0, 1304337476, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(22, 0, 1304418088, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(23, 0, 1304508484, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(24, 0, 1304594412, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(25, 0, 1304681665, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(26, 0, 1304768114, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(27, 0, 1304857652, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(28, 0, 1304942296, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(29, 0, 1305026324, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(30, 0, 1305113144, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(31, 0, 1305196927, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(32, 0, 1305283198, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(33, 0, 1305373530, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(34, 0, 1305515488, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(35, 0, 1305632798, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(36, 0, 1305716684, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(37, 0, 1305802226, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(38, 0, 1305890086, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(39, 0, 1305976739, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(40, 0, 1306087698, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(41, 0, 1306145224, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(42, 0, 1306187591, 3, 1, 0, 'Parser', '\n              <html><head><title>MODx Content Manager  &raquo; rev 6981</title>\n              <style>TD, BODY { font-size: 11px; font-family:verdana; }</style>\n              <script type=''text/javascript''>\n              function copyToClip()\n              {\n                holdtext.innerText = sqlHolder.innerText;\n                Copied = holdtext.createTextRange();\n                Copied.execCommand(''Copy'');\n              }\n            </script>\n              </head><body>\n              <h3 style=''color:red''>&laquo; MODx Parse Error &raquo;</h3>\n                    <table border=''0'' cellpadding=''1'' cellspacing=''0''>\n                    <tr><td colspan=''3''>MODx encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=''3''><b style=''color:red;''>&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td>&nbsp;</td></tr><tr><td colspan=''3''><b>Parser timing</b></td></tr><tr><td>&nbsp;&nbsp;MySQL: </td><td><i>0.0000 s</i></td><td>(<i>0 Requests</i>)</td></tr><tr><td>&nbsp;&nbsp;PHP: </td><td><i>1306187591.9580 s</i></td><td>&nbsp;</td></tr><tr><td>&nbsp;&nbsp;Total: </td><td><i>1306187591.9580 s</i></td><td>&nbsp;</td></tr></table></body></html>'),
(43, 0, 1306233779, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(44, 0, 1306408828, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(45, 0, 1306592614, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(46, 0, 1306667233, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(47, 0, 1306789929, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(48, 0, 1306925548, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(49, 0, 1307012740, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(50, 0, 1307187889, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(51, 0, 1307269945, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(52, 0, 1307365349, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(53, 0, 1307446683, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(54, 0, 1307531786, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(55, 0, 1307615196, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(56, 0, 1307699567, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(57, 0, 1307791943, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(58, 0, 1307874189, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(59, 0, 1307966092, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(60, 0, 1308049745, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(61, 0, 1308134236, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(62, 0, 1308223671, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(63, 0, 1308309056, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(64, 0, 1308480701, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(65, 0, 1308566031, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(66, 0, 1308566436, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(67, 0, 1308650747, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(68, 0, 1308738557, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(69, 0, 1308826038, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(70, 0, 1308913731, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(71, 0, 1309004588, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(72, 0, 1309086622, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(73, 0, 1309172151, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(74, 0, 1309261642, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(75, 0, 1309345743, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(76, 0, 1309432320, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(77, 0, 1309519919, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(78, 0, 1309602905, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(79, 0, 1309657692, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(80, 0, 1309693003, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(81, 0, 1309782317, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(82, 0, 1309866704, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(83, 0, 1309912623, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(84, 0, 1309951510, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(85, 0, 1310037603, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(86, 0, 1310122131, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(87, 0, 1310213343, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(88, 0, 1310299391, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(89, 0, 1310385977, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(90, 0, 1310470384, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(91, 0, 1310513334, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(92, 0, 1310642179, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(93, 0, 1310692929, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(94, 0, 1310726012, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(95, 0, 1310821696, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(96, 0, 1310901348, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(97, 0, 1311036795, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(98, 0, 1311078230, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(99, 0, 1311222327, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(100, 0, 1311255926, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(101, 0, 1311342207, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(102, 0, 1311497131, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(103, 0, 1311595297, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(104, 0, 1311679353, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(105, 0, 1311765265, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(106, 0, 1311849419, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(107, 0, 1311972069, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(108, 0, 1312038221, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(109, 0, 1312112304, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(110, 0, 1312198192, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(111, 0, 1312284005, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(112, 0, 1312370227, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(113, 0, 1312456634, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(114, 0, 1312497589, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(115, 0, 1312543001, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(116, 0, 1312715606, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(117, 0, 1312803848, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(118, 0, 1312887315, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(119, 0, 1312976502, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(120, 0, 1313061129, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(121, 0, 1313147001, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(122, 0, 1313239025, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(123, 0, 1313264896, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(124, 0, 1313287667, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(125, 0, 1313320146, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(126, 0, 1313406976, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(127, 0, 1313493729, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(128, 0, 1313579011, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(129, 0, 1313662108, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(130, 0, 1313772343, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(131, 0, 1313877954, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(132, 0, 1313924794, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(133, 0, 1314011551, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(134, 0, 1314097603, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(135, 0, 1314185036, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(136, 0, 1314270971, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(137, 0, 1314356624, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(138, 0, 1314444558, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(139, 0, 1314533426, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(140, 0, 1314617511, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(141, 0, 1314704288, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(142, 0, 1314752441, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(143, 0, 1314789682, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(144, 0, 1314875021, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(145, 0, 1314962260, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(146, 0, 1315054219, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(147, 0, 1315102605, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(148, 0, 1315137049, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(149, 0, 1315223535, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(150, 0, 1315307395, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(151, 0, 1315353252, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(152, 0, 1315393290, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(153, 0, 1315480105, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(154, 0, 1315566624, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(155, 0, 1315657275, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(156, 0, 1315741393, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(157, 0, 1315828842, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(158, 0, 1315911617, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(159, 0, 1315994355, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(160, 0, 1316082373, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(161, 0, 1316135291, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(162, 0, 1316135571, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(163, 0, 1316170097, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(164, 0, 1316215409, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(165, 0, 1316272876, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(166, 0, 1316308944, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(167, 0, 1316345712, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(168, 0, 1316394050, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(169, 0, 1316430999, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(170, 0, 1316516066, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(171, 0, 1316558467, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(172, 0, 1316602126, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(173, 0, 1316690185, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(174, 0, 1316776016, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(175, 0, 1316879185, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(176, 0, 1316950290, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(177, 0, 1317035482, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(178, 0, 1317082857, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(179, 0, 1317121779, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(180, 0, 1317206586, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(181, 0, 1317294832, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(182, 0, 1317380039, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(183, 0, 1317471096, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!');
INSERT INTO `mtzrad_event_log` (`id`, `eventid`, `createdon`, `type`, `user`, `usertype`, `source`, `description`) VALUES
(184, 0, 1317556766, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(185, 0, 1317585238, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(186, 0, 1317585460, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(187, 0, 1317641465, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(188, 0, 1317726154, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(189, 0, 1317811929, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(190, 0, 1317898801, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(191, 0, 1317986563, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(192, 0, 1318076552, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(193, 0, 1318159017, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(194, 0, 1318222524, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(195, 0, 1318335716, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(196, 0, 1318417365, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(197, 0, 1318501060, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(198, 0, 1318592977, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(199, 0, 1318675968, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(200, 0, 1318764095, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(201, 0, 1318772729, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(202, 0, 1318811848, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(203, 0, 1318851463, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(204, 0, 1318936015, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(205, 0, 1319021217, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(206, 0, 1319104056, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(207, 0, 1319152756, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(208, 0, 1319192688, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(209, 0, 1319279549, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(210, 0, 1319368077, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(211, 0, 1319422345, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(212, 0, 1319455744, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(213, 0, 1319540124, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(214, 0, 1319621458, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(215, 0, 1319707349, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(216, 0, 1319800068, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(217, 0, 1319882976, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(218, 0, 1319975012, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(219, 0, 1320060017, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(220, 0, 1320144870, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(221, 0, 1320229843, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(222, 0, 1320317084, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(223, 0, 1320403197, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(224, 0, 1320503527, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(225, 0, 1320542811, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(226, 0, 1320577166, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(227, 0, 1320668185, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(228, 0, 1320755259, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(229, 0, 1320839704, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(230, 0, 1320919736, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(231, 0, 1321017806, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(232, 0, 1321099390, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(233, 0, 1321162363, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(234, 0, 1321274735, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(235, 0, 1321359171, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(236, 0, 1321444721, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!'),
(237, 0, 1321530971, 2, 1, 0, 'Config file still writable', 'Very naughty people could potentially wreak some havoc on your site and everything associated with it. <strong>Really.</strong> Please make your config file  (/manager/includes/config.inc.php) read only!');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_keyword_xref`
--

CREATE TABLE IF NOT EXISTS `mtzrad_keyword_xref` (
  `content_id` int(11) NOT NULL default '0',
  `keyword_id` int(11) NOT NULL default '0',
  KEY `content_id` (`content_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

--
-- Dumping data for table `mtzrad_keyword_xref`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_manager_log`
--

CREATE TABLE IF NOT EXISTS `mtzrad_manager_log` (
  `id` int(10) NOT NULL auto_increment,
  `timestamp` int(20) NOT NULL default '0',
  `internalKey` int(10) NOT NULL default '0',
  `username` varchar(255) default NULL,
  `action` int(10) NOT NULL default '0',
  `itemid` varchar(10) default '0',
  `itemname` varchar(255) default NULL,
  `message` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.' AUTO_INCREMENT=1616 ;

--
-- Dumping data for table `mtzrad_manager_log`
--

INSERT INTO `mtzrad_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(1, 1294716192, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(2, 1294716197, 1, 'admin', 17, '-', '-', 'Editing settings'),
(3, 1294716344, 1, 'admin', 30, '-', '-', 'Saving settings'),
(4, 1294716353, 1, 'admin', 3, '1', 'MODx CMS Install Success', 'Viewing data for document'),
(5, 1294716375, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(6, 1294716377, 1, 'admin', 3, '1', 'MODx CMS Install Success', 'Viewing data for document'),
(7, 1294716382, 1, 'admin', 27, '1', '-', 'Editing document'),
(8, 1294716577, 1, 'admin', 76, '-', '-', 'Resource management'),
(9, 1294716582, 1, 'admin', 19, '-', 'New template', 'Creating a new template'),
(10, 1294716866, 1, 'admin', 20, '-', '-', 'Saving template'),
(11, 1294716867, 1, 'admin', 76, '-', '-', 'Resource management'),
(12, 1294716869, 1, 'admin', 3, '1', 'MODx CMS Install Success', 'Viewing data for document'),
(13, 1294716875, 1, 'admin', 3, '1', 'MODx CMS Install Success', 'Viewing data for document'),
(14, 1294716885, 1, 'admin', 27, '1', '-', 'Editing document'),
(15, 1294716932, 1, 'admin', 27, '1', '-', 'Editing document'),
(16, 1294716954, 1, 'admin', 27, '1', '-', 'Editing document'),
(17, 1294716962, 1, 'admin', 5, '1', '-', 'Saving document'),
(18, 1294716964, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(19, 1294716966, 1, 'admin', 76, '-', '-', 'Resource management'),
(20, 1294716970, 1, 'admin', 16, '5', 'Untitled template', 'Editing template'),
(21, 1294716987, 1, 'admin', 20, '5', '-', 'Saving template'),
(22, 1294716987, 1, 'admin', 76, '-', '-', 'Resource management'),
(23, 1294717001, 1, 'admin', 17, '-', '-', 'Editing settings'),
(24, 1294717011, 1, 'admin', 30, '-', '-', 'Saving settings'),
(25, 1294717044, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(26, 1294717046, 1, 'admin', 27, '1', '-', 'Editing document'),
(27, 1294717054, 1, 'admin', 5, '1', '-', 'Saving document'),
(28, 1294717056, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(29, 1294717177, 1, 'admin', 27, '1', '-', 'Editing document'),
(30, 1294717185, 1, 'admin', 27, '1', '-', 'Editing document'),
(31, 1294717363, 1, 'admin', 27, '1', '-', 'Editing document'),
(32, 1294717485, 1, 'admin', 5, '1', '-', 'Saving document'),
(33, 1294717487, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(34, 1294718989, 1, 'admin', 27, '1', '-', 'Editing document'),
(35, 1294718995, 1, 'admin', 27, '1', '-', 'Editing document'),
(36, 1294794964, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(37, 1294801314, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(38, 1294801324, 1, 'admin', 27, '1', '-', 'Editing document'),
(39, 1294801430, 1, 'admin', 27, '1', '-', 'Editing document'),
(40, 1294801623, 1, 'admin', 27, '1', '-', 'Editing document'),
(41, 1294801644, 1, 'admin', 5, '1', '-', 'Saving document'),
(42, 1294801651, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(43, 1294803913, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(44, 1294803929, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(45, 1294803931, 1, 'admin', 27, '1', '-', 'Editing document'),
(46, 1294803945, 1, 'admin', 27, '1', '-', 'Editing document'),
(47, 1294804305, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(48, 1294845367, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(49, 1294845374, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(50, 1294845382, 1, 'admin', 27, '1', '-', 'Editing document'),
(51, 1294845479, 1, 'admin', 27, '1', '-', 'Editing document'),
(52, 1294845493, 1, 'admin', 5, '1', '-', 'Saving document'),
(53, 1294845495, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(54, 1294845499, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(55, 1294845501, 1, 'admin', 76, '-', '-', 'Resource management'),
(56, 1294845512, 1, 'admin', 75, '-', '-', 'User/ role management'),
(57, 1294857378, 1, 'admin', 27, '1', '-', 'Editing document'),
(58, 1294857443, 1, 'admin', 27, '1', '-', 'Editing document'),
(59, 1294889541, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(60, 1294889546, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(61, 1294889758, 1, 'admin', 27, '1', '-', 'Editing document'),
(62, 1294889786, 1, 'admin', 27, '1', '-', 'Editing document'),
(63, 1294889952, 1, 'admin', 5, '1', '-', 'Saving document'),
(64, 1294889956, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(65, 1294971718, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(66, 1294971724, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(67, 1294971728, 1, 'admin', 27, '1', '-', 'Editing document'),
(68, 1294971737, 1, 'admin', 27, '1', '-', 'Editing document'),
(69, 1294971930, 1, 'admin', 27, '1', '-', 'Editing document'),
(70, 1294971964, 1, 'admin', 5, '1', '-', 'Saving document'),
(71, 1294971967, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(72, 1294976427, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(73, 1295063338, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(74, 1295063342, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(75, 1295063345, 1, 'admin', 27, '1', '-', 'Editing document'),
(76, 1295063735, 1, 'admin', 75, '-', '-', 'User/ role management'),
(77, 1295063740, 1, 'admin', 86, '-', '-', 'Role management'),
(78, 1295063747, 1, 'admin', 75, '-', '-', 'User/ role management'),
(79, 1295063752, 1, 'admin', 12, '2', 'mbdarby', 'Editing user'),
(80, 1295063783, 1, 'admin', 40, '-', '-', 'Editing Access Permissions'),
(81, 1295063790, 1, 'admin', 86, '-', '-', 'Role management'),
(82, 1295063792, 1, 'admin', 35, '2', 'Editor', 'Editing role'),
(83, 1295063796, 1, 'admin', 75, '-', '-', 'User/ role management'),
(84, 1295063801, 1, 'admin', 12, '1', 'admin', 'Editing user'),
(85, 1295063812, 1, 'admin', 40, '-', '-', 'Editing Access Permissions'),
(86, 1295063926, 1, 'admin', 8, '-', '-', 'Logged out'),
(87, 1295063941, 2, 'mbdarby', 58, '-', 'MODx', 'Logged in'),
(88, 1295063944, 2, 'mbdarby', 3, '1', 'Radical', 'Viewing data for document'),
(89, 1295064111, 2, 'mbdarby', 27, '1', '-', 'Editing document'),
(90, 1295064219, 2, 'mbdarby', 5, '1', '-', 'Saving document'),
(91, 1295064222, 2, 'mbdarby', 3, '1', 'Radical', 'Viewing data for document'),
(92, 1295109623, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(93, 1295109631, 1, 'admin', 8, '-', '-', 'Logged out'),
(94, 1295109635, 2, 'mbdarby', 58, '-', 'MODx', 'Logged in'),
(95, 1295109640, 2, 'mbdarby', 3, '1', 'Radical', 'Viewing data for document'),
(96, 1295109643, 2, 'mbdarby', 27, '1', '-', 'Editing document'),
(97, 1295115623, 2, 'mbdarby', 3, '1', 'Radical', 'Viewing data for document'),
(98, 1295115629, 2, 'mbdarby', 8, '-', '-', 'Logged out'),
(99, 1295115676, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(100, 1295115680, 1, 'admin', 75, '-', '-', 'User/ role management'),
(101, 1295115691, 1, 'admin', 12, '6', 'bdunn', 'Editing user'),
(102, 1295115842, 1, 'admin', 32, '6', '-', 'Saving user'),
(103, 1295115843, 1, 'admin', 75, '-', '-', 'User/ role management'),
(104, 1295115850, 1, 'admin', 17, '-', '-', 'Editing settings'),
(105, 1295115946, 1, 'admin', 30, '-', '-', 'Saving settings'),
(106, 1295115954, 1, 'admin', 31, '-', '-', 'Using file manager'),
(107, 1295115965, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(108, 1295145829, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(109, 1295145836, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(110, 1295145952, 1, 'admin', 40, '-', '-', 'Editing Access Permissions'),
(111, 1295145962, 1, 'admin', 13, '-', '-', 'Viewing logging'),
(112, 1295146339, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(113, 1295146342, 1, 'admin', 27, '1', '-', 'Editing document'),
(114, 1295146413, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(115, 1295146437, 1, 'admin', 27, '1', '-', 'Editing document'),
(116, 1295148947, 1, 'admin', 5, '1', '-', 'Saving document'),
(117, 1295148955, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(118, 1295232032, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(119, 1295232040, 1, 'admin', 27, '1', '-', 'Editing document'),
(120, 1295232777, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(121, 1295232784, 1, 'admin', 27, '1', '-', 'Editing document'),
(122, 1295233140, 1, 'admin', 5, '1', '-', 'Saving document'),
(123, 1295233143, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(124, 1295233209, 1, 'admin', 27, '1', '-', 'Editing document'),
(125, 1295233294, 1, 'admin', 5, '1', '-', 'Saving document'),
(126, 1295233296, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(127, 1295297398, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(128, 1295297408, 1, 'admin', 27, '1', '-', 'Editing document'),
(129, 1295318704, 1, 'admin', 5, '1', '-', 'Saving document'),
(130, 1295318705, 1, 'admin', 27, '1', '-', 'Editing document'),
(131, 1295318763, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(132, 1295318765, 1, 'admin', 27, '1', '-', 'Editing document'),
(133, 1295318911, 1, 'admin', 5, '1', '-', 'Saving document'),
(134, 1295318914, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(135, 1295363661, 3, 'bsmith', 58, '-', 'MODx', 'Logged in'),
(136, 1295363702, 3, 'bsmith', 8, '-', '-', 'Logged out'),
(137, 1295363952, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(138, 1295363956, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(139, 1295363965, 1, 'admin', 27, '1', '-', 'Editing document'),
(140, 1295367049, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(141, 1295367052, 1, 'admin', 27, '1', '-', 'Editing document'),
(142, 1295367222, 1, 'admin', 5, '1', '-', 'Saving document'),
(143, 1295367225, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(144, 1295367446, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(145, 1295367453, 1, 'admin', 27, '1', '-', 'Editing document'),
(146, 1295367584, 1, 'admin', 5, '1', '-', 'Saving document'),
(147, 1295367586, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(148, 1295744349, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(149, 1295744356, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(150, 1295744359, 1, 'admin', 27, '1', '-', 'Editing document'),
(151, 1295745844, 1, 'admin', 5, '1', '-', 'Saving document'),
(152, 1295745849, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(153, 1296530516, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(154, 1296530522, 1, 'admin', 27, '1', '-', 'Editing document'),
(155, 1296531108, 1, 'admin', 5, '1', '-', 'Saving document'),
(156, 1296531111, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(157, 1296703617, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(158, 1296703742, 1, 'admin', 27, '1', '-', 'Editing document'),
(159, 1296706496, 1, 'admin', 5, '1', '-', 'Saving document'),
(160, 1296706499, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(161, 1296961457, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(162, 1296961471, 1, 'admin', 27, '1', '-', 'Editing document'),
(163, 1296961982, 1, 'admin', 5, '1', '-', 'Saving document'),
(164, 1296961985, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(165, 1297610942, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(166, 1297610949, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(167, 1297611004, 1, 'admin', 27, '1', '-', 'Editing document'),
(168, 1297611164, 1, 'admin', 5, '1', '-', 'Saving document'),
(169, 1297611166, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(170, 1297683470, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(171, 1297683478, 1, 'admin', 27, '1', '-', 'Editing document'),
(172, 1297683571, 1, 'admin', 5, '1', '-', 'Saving document'),
(173, 1297683574, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(174, 1297769229, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(175, 1297769235, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(176, 1297769242, 1, 'admin', 27, '1', '-', 'Editing document'),
(177, 1297769356, 1, 'admin', 5, '1', '-', 'Saving document'),
(178, 1297769356, 1, 'admin', 27, '1', '-', 'Editing document'),
(179, 1297814502, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(180, 1297814594, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(181, 1297814634, 1, 'admin', 27, '1', '-', 'Editing document'),
(182, 1297814901, 1, 'admin', 5, '1', '-', 'Saving document'),
(183, 1297814905, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(184, 1297857106, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(185, 1297859266, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(186, 1297859304, 1, 'admin', 27, '1', '-', 'Editing document'),
(187, 1297859416, 1, 'admin', 5, '1', '-', 'Saving document'),
(188, 1297859422, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(189, 1297941766, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(190, 1297941784, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(191, 1297941791, 1, 'admin', 27, '1', '-', 'Editing document'),
(192, 1297941966, 1, 'admin', 5, '1', '-', 'Saving document'),
(193, 1297941970, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(194, 1298205781, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(195, 1298205795, 1, 'admin', 27, '1', '-', 'Editing document'),
(196, 1298205965, 1, 'admin', 5, '1', '-', 'Saving document'),
(197, 1298205969, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(198, 1298292371, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(199, 1298292397, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(200, 1298292407, 1, 'admin', 27, '1', '-', 'Editing document'),
(201, 1298292538, 1, 'admin', 5, '1', '-', 'Saving document'),
(202, 1298292542, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(203, 1298421348, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(204, 1298421364, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(205, 1298421386, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(206, 1298421388, 1, 'admin', 27, '1', '-', 'Editing document'),
(207, 1298421644, 1, 'admin', 5, '1', '-', 'Saving document'),
(208, 1298421647, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(209, 1298422387, 1, 'admin', 76, '-', '-', 'Resource management'),
(210, 1298422416, 1, 'admin', 16, '5', 'Radical Home', 'Editing template'),
(211, 1298423660, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(212, 1298423663, 1, 'admin', 27, '1', '-', 'Editing document'),
(213, 1298560451, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(214, 1298560456, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(215, 1298560462, 1, 'admin', 27, '1', '-', 'Editing document'),
(216, 1298560472, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(217, 1298814843, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(218, 1298814861, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(219, 1298814908, 1, 'admin', 27, '1', '-', 'Editing document'),
(220, 1298815089, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(221, 1298815091, 1, 'admin', 27, '1', '-', 'Editing document'),
(222, 1298815229, 1, 'admin', 5, '1', '-', 'Saving document'),
(223, 1298815231, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(224, 1298894522, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(225, 1298894531, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(226, 1298894562, 1, 'admin', 27, '1', '-', 'Editing document'),
(227, 1298894892, 1, 'admin', 5, '1', '-', 'Saving document'),
(228, 1298894896, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(229, 1299065447, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(230, 1299065457, 1, 'admin', 27, '1', '-', 'Editing document'),
(231, 1299380922, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(232, 1299380958, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(233, 1299380963, 1, 'admin', 27, '1', '-', 'Editing document'),
(234, 1299381639, 1, 'admin', 5, '1', '-', 'Saving document'),
(235, 1299381645, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(236, 1299644788, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(237, 1299644793, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(238, 1299644807, 1, 'admin', 27, '1', '-', 'Editing document'),
(239, 1300018816, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(240, 1300018846, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(241, 1300018868, 1, 'admin', 27, '1', '-', 'Editing document'),
(242, 1300018920, 1, 'admin', 5, '1', '-', 'Saving document'),
(243, 1300018923, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(244, 1300018925, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(245, 1300018928, 1, 'admin', 27, '1', '-', 'Editing document'),
(246, 1300019201, 1, 'admin', 5, '1', '-', 'Saving document'),
(247, 1300019204, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(248, 1300561897, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(249, 1300561903, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(250, 1300561906, 1, 'admin', 27, '1', '-', 'Editing document'),
(251, 1300561974, 1, 'admin', 5, '1', '-', 'Saving document'),
(252, 1300561976, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(253, 1300616490, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(254, 1300616508, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(255, 1300616523, 1, 'admin', 27, '1', '-', 'Editing document'),
(256, 1300616690, 1, 'admin', 5, '1', '-', 'Saving document'),
(257, 1300616692, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(258, 1300616716, 1, 'admin', 27, '1', '-', 'Editing document'),
(259, 1300617193, 1, 'admin', 5, '1', '-', 'Saving document'),
(260, 1300617195, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(261, 1301742494, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(262, 1301742524, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(263, 1301742528, 1, 'admin', 27, '1', '-', 'Editing document'),
(264, 1301743286, 1, 'admin', 5, '1', '-', 'Saving document'),
(265, 1301743289, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(266, 1302087089, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(267, 1302087094, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(268, 1302087097, 1, 'admin', 27, '1', '-', 'Editing document'),
(269, 1302087673, 1, 'admin', 5, '1', '-', 'Saving document'),
(270, 1302087676, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(271, 1302087822, 1, 'admin', 27, '1', '-', 'Editing document'),
(272, 1302087955, 1, 'admin', 5, '1', '-', 'Saving document'),
(273, 1302087958, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(274, 1302261898, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(275, 1302262355, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(276, 1302262389, 1, 'admin', 27, '1', '-', 'Editing document'),
(277, 1302262535, 1, 'admin', 5, '1', '-', 'Saving document'),
(278, 1302262542, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(279, 1302358274, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(280, 1302358279, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(281, 1302358283, 1, 'admin', 27, '1', '-', 'Editing document'),
(282, 1302358369, 1, 'admin', 5, '1', '-', 'Saving document'),
(283, 1302358371, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(284, 1302404643, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(285, 1302404651, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(286, 1302404673, 1, 'admin', 27, '1', '-', 'Editing document'),
(287, 1302404809, 1, 'admin', 5, '1', '-', 'Saving document'),
(288, 1302404812, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(289, 1302522249, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(290, 1302522264, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(291, 1302522269, 1, 'admin', 27, '1', '-', 'Editing document'),
(292, 1302522490, 1, 'admin', 5, '1', '-', 'Saving document'),
(293, 1302522495, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(294, 1302522540, 1, 'admin', 27, '1', '-', 'Editing document'),
(295, 1302522934, 1, 'admin', 5, '1', '-', 'Saving document'),
(296, 1302522937, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(297, 1302693286, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(298, 1302693307, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(299, 1302693310, 1, 'admin', 27, '1', '-', 'Editing document'),
(300, 1302693389, 1, 'admin', 5, '1', '-', 'Saving document'),
(301, 1302693392, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(302, 1302783212, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(303, 1302783258, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(304, 1302783263, 1, 'admin', 27, '1', '-', 'Editing document'),
(305, 1302783369, 1, 'admin', 5, '1', '-', 'Saving document'),
(306, 1302783372, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(307, 1302866206, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(308, 1302866219, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(309, 1302866227, 1, 'admin', 27, '1', '-', 'Editing document'),
(310, 1302866325, 1, 'admin', 5, '1', '-', 'Saving document'),
(311, 1302866328, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(312, 1303008017, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(313, 1303008022, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(314, 1303008029, 1, 'admin', 17, '-', '-', 'Editing settings'),
(315, 1303008049, 1, 'admin', 30, '-', '-', 'Saving settings'),
(316, 1303008055, 1, 'admin', 17, '-', '-', 'Editing settings'),
(317, 1303008084, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(318, 1303012077, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(319, 1303012082, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(320, 1303012087, 1, 'admin', 27, '1', '-', 'Editing document'),
(321, 1303012356, 1, 'admin', 5, '1', '-', 'Saving document'),
(322, 1303012359, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(323, 1303039946, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(324, 1303039953, 1, 'admin', 27, '1', '-', 'Editing document'),
(325, 1303040076, 1, 'admin', 5, '1', '-', 'Saving document'),
(326, 1303040079, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(327, 1303128674, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(328, 1303128698, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(329, 1303128708, 1, 'admin', 27, '1', '-', 'Editing document'),
(330, 1303128919, 1, 'admin', 5, '1', '-', 'Saving document'),
(331, 1303128925, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(332, 1303128929, 1, 'admin', 27, '1', '-', 'Editing document'),
(333, 1303129287, 1, 'admin', 5, '1', '-', 'Saving document'),
(334, 1303129292, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(335, 1303211570, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(336, 1303213195, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(337, 1303213252, 1, 'admin', 27, '1', '-', 'Editing document'),
(338, 1303213306, 1, 'admin', 5, '1', '-', 'Saving document'),
(339, 1303213309, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(340, 1303297212, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(341, 1303297238, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(342, 1303297354, 1, 'admin', 27, '1', '-', 'Editing document'),
(343, 1303298260, 1, 'admin', 5, '1', '-', 'Saving document'),
(344, 1303298266, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(345, 1303388466, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(346, 1303388494, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(347, 1303388498, 1, 'admin', 27, '1', '-', 'Editing document'),
(348, 1303388622, 1, 'admin', 5, '1', '-', 'Saving document'),
(349, 1303388624, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(350, 1303474059, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(351, 1303474074, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(352, 1303474077, 1, 'admin', 27, '1', '-', 'Editing document'),
(353, 1303474094, 1, 'admin', 5, '1', '-', 'Saving document'),
(354, 1303474097, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(355, 1303658781, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(356, 1303658801, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(357, 1303658970, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(358, 1303659203, 1, 'admin', 27, '1', '-', 'Editing document'),
(359, 1303659487, 1, 'admin', 5, '1', '-', 'Saving document'),
(360, 1303659489, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(361, 1303691898, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(362, 1303691969, 1, 'admin', 27, '1', '-', 'Editing document'),
(363, 1303692044, 1, 'admin', 5, '1', '-', 'Saving document'),
(364, 1303692047, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(365, 1303731758, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(366, 1303731764, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(367, 1303731767, 1, 'admin', 27, '1', '-', 'Editing document'),
(368, 1303731801, 1, 'admin', 5, '1', '-', 'Saving document'),
(369, 1303731804, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(370, 1303819786, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(371, 1303819792, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(372, 1303819799, 1, 'admin', 27, '1', '-', 'Editing document'),
(373, 1303819845, 1, 'admin', 5, '1', '-', 'Saving document'),
(374, 1303819848, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(375, 1303903001, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(376, 1303903008, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(377, 1303903017, 1, 'admin', 27, '1', '-', 'Editing document'),
(378, 1303954234, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(379, 1303954240, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(380, 1303954243, 1, 'admin', 27, '1', '-', 'Editing document'),
(381, 1303954306, 1, 'admin', 5, '1', '-', 'Saving document'),
(382, 1303954310, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(383, 1303991477, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(384, 1303991484, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(385, 1303991487, 1, 'admin', 27, '1', '-', 'Editing document'),
(386, 1303992297, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(387, 1303992299, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(388, 1303992303, 1, 'admin', 27, '1', '-', 'Editing document'),
(389, 1303992353, 1, 'admin', 5, '1', '-', 'Saving document'),
(390, 1303992357, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(391, 1304075931, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(392, 1304076001, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(393, 1304076004, 1, 'admin', 27, '1', '-', 'Editing document'),
(394, 1304076197, 1, 'admin', 5, '1', '-', 'Saving document'),
(395, 1304076201, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(396, 1304162695, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(397, 1304162727, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(398, 1304162729, 1, 'admin', 27, '1', '-', 'Editing document'),
(399, 1304163306, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(400, 1304163318, 1, 'admin', 27, '1', '-', 'Editing document'),
(401, 1304163374, 1, 'admin', 5, '1', '-', 'Saving document'),
(402, 1304163378, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(403, 1304248575, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(404, 1304248608, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(405, 1304248611, 1, 'admin', 27, '1', '-', 'Editing document'),
(406, 1304248738, 1, 'admin', 5, '1', '-', 'Saving document'),
(407, 1304248745, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(408, 1304248828, 1, 'admin', 27, '1', '-', 'Editing document'),
(409, 1304249171, 1, 'admin', 5, '1', '-', 'Saving document'),
(410, 1304249174, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(411, 1304249211, 1, 'admin', 27, '1', '-', 'Editing document'),
(412, 1304249278, 1, 'admin', 5, '1', '-', 'Saving document'),
(413, 1304249281, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(414, 1304337474, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(415, 1304337480, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(416, 1304418085, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(417, 1304418181, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(418, 1304418182, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(419, 1304418218, 1, 'admin', 27, '1', '-', 'Editing document'),
(420, 1304418389, 1, 'admin', 5, '1', '-', 'Saving document'),
(421, 1304418392, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(422, 1304508481, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(423, 1304508487, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(424, 1304508490, 1, 'admin', 27, '1', '-', 'Editing document'),
(425, 1304508533, 1, 'admin', 5, '1', '-', 'Saving document'),
(426, 1304508536, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(427, 1304594410, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(428, 1304594432, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(429, 1304594445, 1, 'admin', 27, '1', '-', 'Editing document'),
(430, 1304594489, 1, 'admin', 5, '1', '-', 'Saving document'),
(431, 1304594492, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(432, 1304681660, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(433, 1304681675, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(434, 1304681685, 1, 'admin', 27, '1', '-', 'Editing document'),
(435, 1304681766, 1, 'admin', 5, '1', '-', 'Saving document'),
(436, 1304681769, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(437, 1304768113, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(438, 1304768303, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(439, 1304768306, 1, 'admin', 27, '1', '-', 'Editing document'),
(440, 1304768846, 1, 'admin', 5, '1', '-', 'Saving document'),
(441, 1304768849, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(442, 1304857651, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(443, 1304857672, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(444, 1304857676, 1, 'admin', 27, '1', '-', 'Editing document'),
(445, 1304857717, 1, 'admin', 5, '1', '-', 'Saving document'),
(446, 1304857720, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(447, 1304942294, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(448, 1304942320, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(449, 1304942327, 1, 'admin', 27, '1', '-', 'Editing document'),
(450, 1304942367, 1, 'admin', 5, '1', '-', 'Saving document'),
(451, 1304942370, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(452, 1305026322, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(453, 1305026328, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(454, 1305026331, 1, 'admin', 27, '1', '-', 'Editing document'),
(455, 1305026360, 1, 'admin', 5, '1', '-', 'Saving document'),
(456, 1305026362, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(457, 1305113143, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(458, 1305113165, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(459, 1305113173, 1, 'admin', 27, '1', '-', 'Editing document'),
(460, 1305113210, 1, 'admin', 5, '1', '-', 'Saving document'),
(461, 1305113213, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(462, 1305196926, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(463, 1305197039, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(464, 1305197043, 1, 'admin', 27, '1', '-', 'Editing document'),
(465, 1305197067, 1, 'admin', 5, '1', '-', 'Saving document'),
(466, 1305197070, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(467, 1305283197, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(468, 1305283202, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(469, 1305283204, 1, 'admin', 27, '1', '-', 'Editing document'),
(470, 1305283233, 1, 'admin', 5, '1', '-', 'Saving document'),
(471, 1305283236, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(472, 1305373529, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(473, 1305373535, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(474, 1305373538, 1, 'admin', 27, '1', '-', 'Editing document'),
(475, 1305373568, 1, 'admin', 5, '1', '-', 'Saving document'),
(476, 1305373571, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(477, 1305373595, 1, 'admin', 27, '1', '-', 'Editing document'),
(478, 1305374211, 1, 'admin', 5, '1', '-', 'Saving document'),
(479, 1305374214, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(480, 1305515485, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(481, 1305515503, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(482, 1305515508, 1, 'admin', 27, '1', '-', 'Editing document'),
(483, 1305515515, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(484, 1305515597, 1, 'admin', 27, '1', '-', 'Editing document'),
(485, 1305515626, 1, 'admin', 5, '1', '-', 'Saving document'),
(486, 1305515629, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(487, 1305542694, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(488, 1305542704, 1, 'admin', 27, '1', '-', 'Editing document'),
(489, 1305542769, 1, 'admin', 5, '1', '-', 'Saving document'),
(490, 1305542772, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(491, 1305543739, 1, 'admin', 53, '-', '-', 'Viewing system info'),
(492, 1305543755, 1, 'admin', 13, '-', '-', 'Viewing logging'),
(493, 1305632796, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(494, 1305632801, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(495, 1305632805, 1, 'admin', 27, '1', '-', 'Editing document'),
(496, 1305632849, 1, 'admin', 5, '1', '-', 'Saving document'),
(497, 1305632851, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(498, 1305716682, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(499, 1305716687, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(500, 1305716689, 1, 'admin', 27, '1', '-', 'Editing document'),
(501, 1305716718, 1, 'admin', 5, '1', '-', 'Saving document'),
(502, 1305716720, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(503, 1305802225, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(504, 1305802230, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(505, 1305802234, 1, 'admin', 27, '1', '-', 'Editing document'),
(506, 1305802277, 1, 'admin', 5, '1', '-', 'Saving document'),
(507, 1305802280, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(508, 1305890086, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(509, 1305890128, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(510, 1305890132, 1, 'admin', 27, '1', '-', 'Editing document'),
(511, 1305976737, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(512, 1305976767, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(513, 1305976774, 1, 'admin', 27, '1', '-', 'Editing document'),
(514, 1305977188, 1, 'admin', 5, '1', '-', 'Saving document'),
(515, 1305977194, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(516, 1306087697, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(517, 1306087706, 1, 'admin', 27, '1', '-', 'Editing document'),
(518, 1306088489, 1, 'admin', 5, '1', '-', 'Saving document'),
(519, 1306088492, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(520, 1306145222, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(521, 1306145271, 1, 'admin', 27, '1', '-', 'Editing document'),
(522, 1306145661, 1, 'admin', 5, '1', '-', 'Saving document'),
(523, 1306145664, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(524, 1306233778, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(525, 1306233820, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(526, 1306233823, 1, 'admin', 27, '1', '-', 'Editing document'),
(527, 1306233973, 1, 'admin', 5, '1', '-', 'Saving document'),
(528, 1306233975, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(529, 1306408826, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(530, 1306408875, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(531, 1306408880, 1, 'admin', 27, '1', '-', 'Editing document'),
(532, 1306409052, 1, 'admin', 5, '1', '-', 'Saving document'),
(533, 1306409055, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(534, 1306409502, 1, 'admin', 27, '1', '-', 'Editing document'),
(535, 1306409716, 1, 'admin', 5, '1', '-', 'Saving document'),
(536, 1306409719, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(537, 1306409768, 1, 'admin', 27, '1', '-', 'Editing document'),
(538, 1306410002, 1, 'admin', 5, '1', '-', 'Saving document'),
(539, 1306410005, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(540, 1306496320, 1, 'admin', 27, '1', '-', 'Editing document'),
(541, 1306496616, 1, 'admin', 5, '1', '-', 'Saving document'),
(542, 1306496619, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(543, 1306592612, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(544, 1306592619, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(545, 1306592622, 1, 'admin', 27, '1', '-', 'Editing document'),
(546, 1306593986, 1, 'admin', 5, '1', '-', 'Saving document'),
(547, 1306593988, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(548, 1306667232, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(549, 1306667253, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(550, 1306667258, 1, 'admin', 27, '1', '-', 'Editing document'),
(551, 1306668206, 1, 'admin', 5, '1', '-', 'Saving document'),
(552, 1306668209, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(553, 1306789924, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(554, 1306789970, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(555, 1306789975, 1, 'admin', 27, '1', '-', 'Editing document'),
(556, 1306790582, 1, 'admin', 5, '1', '-', 'Saving document'),
(557, 1306790607, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(558, 1306925547, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(559, 1306925551, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(560, 1306925612, 1, 'admin', 27, '1', '-', 'Editing document'),
(561, 1306925665, 1, 'admin', 5, '1', '-', 'Saving document'),
(562, 1306925667, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(563, 1306925884, 1, 'admin', 27, '1', '-', 'Editing document'),
(564, 1306926209, 1, 'admin', 5, '1', '-', 'Saving document'),
(565, 1306926211, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(566, 1307012739, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(567, 1307187888, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(568, 1307187893, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(569, 1307188320, 1, 'admin', 27, '1', '-', 'Editing document'),
(570, 1307188364, 1, 'admin', 5, '1', '-', 'Saving document'),
(571, 1307188366, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(572, 1307269944, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(573, 1307269953, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(574, 1307269956, 1, 'admin', 27, '1', '-', 'Editing document'),
(575, 1307270065, 1, 'admin', 5, '1', '-', 'Saving document'),
(576, 1307270067, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(577, 1307365347, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(578, 1307365361, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(579, 1307365364, 1, 'admin', 27, '1', '-', 'Editing document'),
(580, 1307365501, 1, 'admin', 5, '1', '-', 'Saving document'),
(581, 1307365504, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(582, 1307365511, 1, 'admin', 27, '1', '-', 'Editing document'),
(583, 1307365741, 1, 'admin', 5, '1', '-', 'Saving document'),
(584, 1307365744, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(585, 1307365746, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(586, 1307365774, 1, 'admin', 27, '1', '-', 'Editing document'),
(587, 1307365790, 1, 'admin', 5, '1', '-', 'Saving document'),
(588, 1307365793, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(589, 1307371170, 1, 'admin', 27, '1', '-', 'Editing document'),
(590, 1307371395, 1, 'admin', 5, '1', '-', 'Saving document'),
(591, 1307371398, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(592, 1307371411, 1, 'admin', 27, '1', '-', 'Editing document'),
(593, 1307371434, 1, 'admin', 5, '1', '-', 'Saving document'),
(594, 1307371437, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(595, 1307371529, 1, 'admin', 27, '1', '-', 'Editing document'),
(596, 1307446681, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(597, 1307447207, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(598, 1307447209, 1, 'admin', 27, '1', '-', 'Editing document'),
(599, 1307447300, 1, 'admin', 5, '1', '-', 'Saving document'),
(600, 1307447303, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(601, 1307531785, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(602, 1307531791, 1, 'admin', 27, '1', '-', 'Editing document'),
(603, 1307531927, 1, 'admin', 5, '1', '-', 'Saving document'),
(604, 1307531929, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(605, 1307531932, 1, 'admin', 27, '1', '-', 'Editing document'),
(606, 1307532011, 1, 'admin', 5, '1', '-', 'Saving document'),
(607, 1307532013, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(608, 1307532014, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(609, 1307532015, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(610, 1307532016, 1, 'admin', 27, '1', '-', 'Editing document'),
(611, 1307532223, 1, 'admin', 5, '1', '-', 'Saving document'),
(612, 1307532225, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(613, 1307615195, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(614, 1307615199, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(615, 1307615202, 1, 'admin', 27, '1', '-', 'Editing document'),
(616, 1307615233, 1, 'admin', 5, '1', '-', 'Saving document'),
(617, 1307615235, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(618, 1307699565, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(619, 1307699570, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(620, 1307699572, 1, 'admin', 27, '1', '-', 'Editing document'),
(621, 1307699601, 1, 'admin', 5, '1', '-', 'Saving document'),
(622, 1307699603, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(623, 1307791941, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(624, 1307791946, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(625, 1307791948, 1, 'admin', 27, '1', '-', 'Editing document'),
(626, 1307791983, 1, 'admin', 5, '1', '-', 'Saving document'),
(627, 1307791985, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(628, 1307792032, 1, 'admin', 27, '1', '-', 'Editing document'),
(629, 1307792831, 1, 'admin', 5, '1', '-', 'Saving document'),
(630, 1307792833, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(631, 1307874187, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(632, 1307874402, 1, 'admin', 27, '1', '-', 'Editing document'),
(633, 1307874539, 1, 'admin', 5, '1', '-', 'Saving document'),
(634, 1307874542, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(635, 1307966091, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(636, 1307966097, 1, 'admin', 27, '1', '-', 'Editing document'),
(637, 1307966182, 1, 'admin', 5, '1', '-', 'Saving document'),
(638, 1307966184, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(639, 1308049743, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(640, 1308049748, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(641, 1308049750, 1, 'admin', 27, '1', '-', 'Editing document'),
(642, 1308049760, 1, 'admin', 5, '1', '-', 'Saving document'),
(643, 1308049763, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(644, 1308134235, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(645, 1308134514, 1, 'admin', 27, '1', '-', 'Editing document'),
(646, 1308134557, 1, 'admin', 5, '1', '-', 'Saving document'),
(647, 1308134560, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(648, 1308223670, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(649, 1308223682, 1, 'admin', 27, '1', '-', 'Editing document'),
(650, 1308223778, 1, 'admin', 5, '1', '-', 'Saving document'),
(651, 1308223781, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(652, 1308309054, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(653, 1308309066, 1, 'admin', 27, '1', '-', 'Editing document'),
(654, 1308309094, 1, 'admin', 5, '1', '-', 'Saving document'),
(655, 1308309097, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(656, 1308309326, 1, 'admin', 27, '1', '-', 'Editing document'),
(657, 1308309339, 1, 'admin', 5, '1', '-', 'Saving document'),
(658, 1308309342, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(659, 1308389670, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(660, 1308389767, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(661, 1308389792, 1, 'admin', 27, '1', '-', 'Editing document'),
(662, 1308389933, 1, 'admin', 5, '1', '-', 'Saving document'),
(663, 1308389936, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(664, 1308480700, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(665, 1308480705, 1, 'admin', 27, '1', '-', 'Editing document'),
(666, 1308483463, 1, 'admin', 5, '1', '-', 'Saving document'),
(667, 1308483466, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(668, 1308483472, 1, 'admin', 27, '1', '-', 'Editing document'),
(669, 1308483483, 1, 'admin', 5, '1', '-', 'Saving document'),
(670, 1308483485, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(671, 1308566030, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(672, 1308566436, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(673, 1308566448, 1, 'admin', 27, '1', '-', 'Editing document'),
(674, 1308566464, 1, 'admin', 5, '1', '-', 'Saving document'),
(675, 1308566467, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(676, 1308566602, 1, 'admin', 27, '1', '-', 'Editing document'),
(677, 1308566668, 1, 'admin', 5, '1', '-', 'Saving document'),
(678, 1308566671, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(679, 1308566859, 1, 'admin', 27, '1', '-', 'Editing document'),
(680, 1308568553, 1, 'admin', 5, '1', '-', 'Saving document'),
(681, 1308568555, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(682, 1308569112, 1, 'admin', 27, '1', '-', 'Editing document'),
(683, 1308569131, 1, 'admin', 5, '1', '-', 'Saving document'),
(684, 1308569134, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(685, 1308650746, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(686, 1308651199, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(687, 1308651201, 1, 'admin', 27, '1', '-', 'Editing document'),
(688, 1308651303, 1, 'admin', 5, '1', '-', 'Saving document'),
(689, 1308651305, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(690, 1308738556, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(691, 1308738562, 1, 'admin', 27, '1', '-', 'Editing document'),
(692, 1308738843, 1, 'admin', 5, '1', '-', 'Saving document'),
(693, 1308738846, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(694, 1308826037, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(695, 1308826051, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(696, 1308826053, 1, 'admin', 27, '1', '-', 'Editing document'),
(697, 1308826106, 1, 'admin', 5, '1', '-', 'Saving document'),
(698, 1308826108, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(699, 1308826159, 1, 'admin', 27, '1', '-', 'Editing document'),
(700, 1308826262, 1, 'admin', 5, '1', '-', 'Saving document'),
(701, 1308826265, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(702, 1308913730, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(703, 1308913737, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(704, 1308913740, 1, 'admin', 27, '1', '-', 'Editing document'),
(705, 1308913795, 1, 'admin', 5, '1', '-', 'Saving document'),
(706, 1308913802, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(707, 1309004584, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(708, 1309004590, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(709, 1309004591, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(710, 1309004592, 1, 'admin', 27, '1', '-', 'Editing document'),
(711, 1309004697, 1, 'admin', 5, '1', '-', 'Saving document'),
(712, 1309004699, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(713, 1309086621, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(714, 1309086625, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(715, 1309086626, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(716, 1309086628, 1, 'admin', 27, '1', '-', 'Editing document'),
(717, 1309086667, 1, 'admin', 5, '1', '-', 'Saving document'),
(718, 1309086670, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(719, 1309172151, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(720, 1309172156, 1, 'admin', 27, '1', '-', 'Editing document'),
(721, 1309172235, 1, 'admin', 5, '1', '-', 'Saving document'),
(722, 1309172238, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(723, 1309261641, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(724, 1309261646, 1, 'admin', 27, '1', '-', 'Editing document'),
(725, 1309261708, 1, 'admin', 5, '1', '-', 'Saving document'),
(726, 1309261711, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(727, 1309345742, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(728, 1309345746, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(729, 1309345748, 1, 'admin', 27, '1', '-', 'Editing document'),
(730, 1309345884, 1, 'admin', 5, '1', '-', 'Saving document'),
(731, 1309345887, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(732, 1309432318, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(733, 1309432323, 1, 'admin', 27, '1', '-', 'Editing document'),
(734, 1309432374, 1, 'admin', 5, '1', '-', 'Saving document'),
(735, 1309432377, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(736, 1309519907, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(737, 1309519926, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(738, 1309519929, 1, 'admin', 27, '1', '-', 'Editing document'),
(739, 1309520119, 1, 'admin', 5, '1', '-', 'Saving document'),
(740, 1309520121, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(741, 1309521708, 1, 'admin', 27, '1', '-', 'Editing document'),
(742, 1309521814, 1, 'admin', 5, '1', '-', 'Saving document'),
(743, 1309521816, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(744, 1309602902, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(745, 1309602907, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document');
INSERT INTO `mtzrad_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(746, 1309602910, 1, 'admin', 27, '1', '-', 'Editing document'),
(747, 1309602989, 1, 'admin', 5, '1', '-', 'Saving document'),
(748, 1309602992, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(749, 1309604038, 1, 'admin', 27, '1', '-', 'Editing document'),
(750, 1309604105, 1, 'admin', 5, '1', '-', 'Saving document'),
(751, 1309604108, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(752, 1309657691, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(753, 1309657695, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(754, 1309657698, 1, 'admin', 27, '1', '-', 'Editing document'),
(755, 1309658608, 1, 'admin', 5, '1', '-', 'Saving document'),
(756, 1309658611, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(757, 1309658614, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(758, 1309693002, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(759, 1309693007, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(760, 1309693009, 1, 'admin', 27, '1', '-', 'Editing document'),
(761, 1309694089, 1, 'admin', 5, '1', '-', 'Saving document'),
(762, 1309694091, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(763, 1309782316, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(764, 1309782324, 1, 'admin', 27, '1', '-', 'Editing document'),
(765, 1309782514, 1, 'admin', 5, '1', '-', 'Saving document'),
(766, 1309782517, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(767, 1309866703, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(768, 1309866714, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(769, 1309866717, 1, 'admin', 27, '1', '-', 'Editing document'),
(770, 1309866800, 1, 'admin', 5, '1', '-', 'Saving document'),
(771, 1309866803, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(772, 1309912622, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(773, 1309913432, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(774, 1309913435, 1, 'admin', 27, '1', '-', 'Editing document'),
(775, 1309913647, 1, 'admin', 5, '1', '-', 'Saving document'),
(776, 1309913650, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(777, 1309913660, 1, 'admin', 27, '1', '-', 'Editing document'),
(778, 1309913716, 1, 'admin', 5, '1', '-', 'Saving document'),
(779, 1309913718, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(780, 1309951509, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(781, 1309951811, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(782, 1309951814, 1, 'admin', 27, '1', '-', 'Editing document'),
(783, 1309951955, 1, 'admin', 5, '1', '-', 'Saving document'),
(784, 1309951957, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(785, 1310037602, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(786, 1310037611, 1, 'admin', 27, '1', '-', 'Editing document'),
(787, 1310038305, 1, 'admin', 5, '1', '-', 'Saving document'),
(788, 1310038308, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(789, 1310122130, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(790, 1310122136, 1, 'admin', 27, '1', '-', 'Editing document'),
(791, 1310122269, 1, 'admin', 5, '1', '-', 'Saving document'),
(792, 1310122271, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(793, 1310213342, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(794, 1310213346, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(795, 1310213348, 1, 'admin', 27, '1', '-', 'Editing document'),
(796, 1310213447, 1, 'admin', 5, '1', '-', 'Saving document'),
(797, 1310213449, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(798, 1310215006, 1, 'admin', 27, '1', '-', 'Editing document'),
(799, 1310215066, 1, 'admin', 5, '1', '-', 'Saving document'),
(800, 1310215069, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(801, 1310299390, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(802, 1310299396, 1, 'admin', 27, '1', '-', 'Editing document'),
(803, 1310299443, 1, 'admin', 5, '1', '-', 'Saving document'),
(804, 1310299446, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(805, 1310385975, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(806, 1310385981, 1, 'admin', 27, '1', '-', 'Editing document'),
(807, 1310386034, 1, 'admin', 5, '1', '-', 'Saving document'),
(808, 1310386036, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(809, 1310398269, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(810, 1310398272, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(811, 1310398277, 1, 'admin', 27, '1', '-', 'Editing document'),
(812, 1310398447, 1, 'admin', 5, '1', '-', 'Saving document'),
(813, 1310398450, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(814, 1310398517, 1, 'admin', 27, '1', '-', 'Editing document'),
(815, 1310398643, 1, 'admin', 5, '1', '-', 'Saving document'),
(816, 1310398646, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(817, 1310470382, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(818, 1310470489, 1, 'admin', 27, '1', '-', 'Editing document'),
(819, 1310470789, 1, 'admin', 5, '1', '-', 'Saving document'),
(820, 1310470792, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(821, 1310513333, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(822, 1310642178, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(823, 1310642198, 1, 'admin', 27, '1', '-', 'Editing document'),
(824, 1310642392, 1, 'admin', 5, '1', '-', 'Saving document'),
(825, 1310642395, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(826, 1310646297, 1, 'admin', 27, '1', '-', 'Editing document'),
(827, 1310646343, 1, 'admin', 5, '1', '-', 'Saving document'),
(828, 1310646346, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(829, 1310692927, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(830, 1310692951, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(831, 1310692954, 1, 'admin', 27, '1', '-', 'Editing document'),
(832, 1310693229, 1, 'admin', 5, '1', '-', 'Saving document'),
(833, 1310693232, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(834, 1310693345, 1, 'admin', 27, '1', '-', 'Editing document'),
(835, 1310693640, 1, 'admin', 5, '1', '-', 'Saving document'),
(836, 1310693644, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(837, 1310693646, 1, 'admin', 27, '1', '-', 'Editing document'),
(838, 1310693664, 1, 'admin', 5, '1', '-', 'Saving document'),
(839, 1310693666, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(840, 1310726010, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(841, 1310726016, 1, 'admin', 27, '1', '-', 'Editing document'),
(842, 1310726027, 1, 'admin', 5, '1', '-', 'Saving document'),
(843, 1310726029, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(844, 1310821695, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(845, 1310821698, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(846, 1310821698, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(847, 1310821700, 1, 'admin', 27, '1', '-', 'Editing document'),
(848, 1310821712, 1, 'admin', 5, '1', '-', 'Saving document'),
(849, 1310821715, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(850, 1310901347, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(851, 1310901356, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(852, 1310901359, 1, 'admin', 27, '1', '-', 'Editing document'),
(853, 1310901630, 1, 'admin', 5, '1', '-', 'Saving document'),
(854, 1310901632, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(855, 1311036794, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(856, 1311036798, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(857, 1311036803, 1, 'admin', 27, '1', '-', 'Editing document'),
(858, 1311036822, 1, 'admin', 5, '1', '-', 'Saving document'),
(859, 1311036825, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(860, 1311078229, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(861, 1311078298, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(862, 1311078300, 1, 'admin', 27, '1', '-', 'Editing document'),
(863, 1311078300, 1, 'admin', 27, '1', '-', 'Editing document'),
(864, 1311078439, 1, 'admin', 5, '1', '-', 'Saving document'),
(865, 1311078441, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(866, 1311222325, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(867, 1311222330, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(868, 1311222333, 1, 'admin', 27, '1', '-', 'Editing document'),
(869, 1311222357, 1, 'admin', 5, '1', '-', 'Saving document'),
(870, 1311222360, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(871, 1311222439, 1, 'admin', 27, '1', '-', 'Editing document'),
(872, 1311222462, 1, 'admin', 5, '1', '-', 'Saving document'),
(873, 1311222467, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(874, 1311255924, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(875, 1311255954, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(876, 1311255963, 1, 'admin', 27, '1', '-', 'Editing document'),
(877, 1311255976, 1, 'admin', 5, '1', '-', 'Saving document'),
(878, 1311255979, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(879, 1311342205, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(880, 1311342312, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(881, 1311342653, 1, 'admin', 27, '1', '-', 'Editing document'),
(882, 1311343049, 1, 'admin', 5, '1', '-', 'Saving document'),
(883, 1311343068, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(884, 1311497130, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(885, 1311497156, 1, 'admin', 27, '1', '-', 'Editing document'),
(886, 1311497256, 1, 'admin', 5, '1', '-', 'Saving document'),
(887, 1311497262, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(888, 1311595294, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(889, 1311595296, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(890, 1311595302, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(891, 1311595304, 1, 'admin', 27, '1', '-', 'Editing document'),
(892, 1311595329, 1, 'admin', 5, '1', '-', 'Saving document'),
(893, 1311595332, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(894, 1311595543, 1, 'admin', 27, '1', '-', 'Editing document'),
(895, 1311596452, 1, 'admin', 5, '1', '-', 'Saving document'),
(896, 1311596454, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(897, 1311679352, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(898, 1311679722, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(899, 1311679725, 1, 'admin', 27, '1', '-', 'Editing document'),
(900, 1311679806, 1, 'admin', 5, '1', '-', 'Saving document'),
(901, 1311679808, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(902, 1311765264, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(903, 1311765304, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(904, 1311765306, 1, 'admin', 27, '1', '-', 'Editing document'),
(905, 1311765333, 1, 'admin', 5, '1', '-', 'Saving document'),
(906, 1311765335, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(907, 1311849418, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(908, 1311849512, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(909, 1311849514, 1, 'admin', 27, '1', '-', 'Editing document'),
(910, 1311849556, 1, 'admin', 5, '1', '-', 'Saving document'),
(911, 1311849558, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(912, 1311972068, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(913, 1311972073, 1, 'admin', 27, '1', '-', 'Editing document'),
(914, 1311972083, 1, 'admin', 5, '1', '-', 'Saving document'),
(915, 1311972086, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(916, 1312038219, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(917, 1312038223, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(918, 1312038227, 1, 'admin', 27, '1', '-', 'Editing document'),
(919, 1312038290, 1, 'admin', 5, '1', '-', 'Saving document'),
(920, 1312038292, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(921, 1312112302, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(922, 1312112380, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(923, 1312112383, 1, 'admin', 27, '1', '-', 'Editing document'),
(924, 1312112383, 1, 'admin', 27, '1', '-', 'Editing document'),
(925, 1312112397, 1, 'admin', 5, '1', '-', 'Saving document'),
(926, 1312112399, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(927, 1312198190, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(928, 1312198196, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(929, 1312198199, 1, 'admin', 27, '1', '-', 'Editing document'),
(930, 1312198232, 1, 'admin', 5, '1', '-', 'Saving document'),
(931, 1312198235, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(932, 1312198237, 1, 'admin', 27, '1', '-', 'Editing document'),
(933, 1312199127, 1, 'admin', 5, '1', '-', 'Saving document'),
(934, 1312199129, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(935, 1312284003, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(936, 1312284011, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(937, 1312284014, 1, 'admin', 27, '1', '-', 'Editing document'),
(938, 1312284033, 1, 'admin', 5, '1', '-', 'Saving document'),
(939, 1312284035, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(940, 1312370226, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(941, 1312370231, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(942, 1312370233, 1, 'admin', 27, '1', '-', 'Editing document'),
(943, 1312370299, 1, 'admin', 5, '1', '-', 'Saving document'),
(944, 1312370301, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(945, 1312456633, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(946, 1312456636, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(947, 1312456638, 1, 'admin', 27, '1', '-', 'Editing document'),
(948, 1312456648, 1, 'admin', 5, '1', '-', 'Saving document'),
(949, 1312456650, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(950, 1312497586, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(951, 1312497617, 1, 'admin', 27, '1', '-', 'Editing document'),
(952, 1312542999, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(953, 1312543004, 1, 'admin', 27, '1', '-', 'Editing document'),
(954, 1312543049, 1, 'admin', 5, '1', '-', 'Saving document'),
(955, 1312543052, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(956, 1312715605, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(957, 1312715771, 1, 'admin', 27, '1', '-', 'Editing document'),
(958, 1312715805, 1, 'admin', 5, '1', '-', 'Saving document'),
(959, 1312715807, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(960, 1312715823, 1, 'admin', 27, '1', '-', 'Editing document'),
(961, 1312716275, 1, 'admin', 5, '1', '-', 'Saving document'),
(962, 1312716278, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(963, 1312716515, 1, 'admin', 27, '1', '-', 'Editing document'),
(964, 1312716765, 1, 'admin', 5, '1', '-', 'Saving document'),
(965, 1312716767, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(966, 1312716776, 1, 'admin', 27, '1', '-', 'Editing document'),
(967, 1312716876, 1, 'admin', 5, '1', '-', 'Saving document'),
(968, 1312716878, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(969, 1312803847, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(970, 1312803879, 1, 'admin', 27, '1', '-', 'Editing document'),
(971, 1312804094, 1, 'admin', 5, '1', '-', 'Saving document'),
(972, 1312804096, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(973, 1312887313, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(974, 1312887317, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(975, 1312887320, 1, 'admin', 27, '1', '-', 'Editing document'),
(976, 1312887365, 1, 'admin', 5, '1', '-', 'Saving document'),
(977, 1312887367, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(978, 1312976501, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(979, 1312976506, 1, 'admin', 27, '1', '-', 'Editing document'),
(980, 1312976548, 1, 'admin', 5, '1', '-', 'Saving document'),
(981, 1312976550, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(982, 1313061128, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(983, 1313061133, 1, 'admin', 27, '1', '-', 'Editing document'),
(984, 1313061152, 1, 'admin', 5, '1', '-', 'Saving document'),
(985, 1313061155, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(986, 1313147000, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(987, 1313147006, 1, 'admin', 27, '1', '-', 'Editing document'),
(988, 1313147027, 1, 'admin', 5, '1', '-', 'Saving document'),
(989, 1313147030, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(990, 1313239023, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(991, 1313239030, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(992, 1313239033, 1, 'admin', 27, '1', '-', 'Editing document'),
(993, 1313239276, 1, 'admin', 5, '1', '-', 'Saving document'),
(994, 1313239279, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(995, 1313239424, 1, 'admin', 27, '1', '-', 'Editing document'),
(996, 1313239448, 1, 'admin', 5, '1', '-', 'Saving document'),
(997, 1313239450, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(998, 1313264895, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(999, 1313264909, 1, 'admin', 27, '1', '-', 'Editing document'),
(1000, 1313287665, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1001, 1313287671, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1002, 1313287673, 1, 'admin', 27, '1', '-', 'Editing document'),
(1003, 1313288015, 1, 'admin', 5, '1', '-', 'Saving document'),
(1004, 1313288018, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1005, 1313320144, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1006, 1313320148, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1007, 1313320151, 1, 'admin', 27, '1', '-', 'Editing document'),
(1008, 1313320174, 1, 'admin', 5, '1', '-', 'Saving document'),
(1009, 1313320176, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1010, 1313406975, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1011, 1313407025, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1012, 1313407027, 1, 'admin', 27, '1', '-', 'Editing document'),
(1013, 1313407539, 1, 'admin', 5, '1', '-', 'Saving document'),
(1014, 1313407541, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1015, 1313493728, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1016, 1313493735, 1, 'admin', 27, '1', '-', 'Editing document'),
(1017, 1313493780, 1, 'admin', 5, '1', '-', 'Saving document'),
(1018, 1313493783, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1019, 1313494628, 1, 'admin', 27, '1', '-', 'Editing document'),
(1020, 1313495059, 1, 'admin', 5, '1', '-', 'Saving document'),
(1021, 1313495062, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1022, 1313579010, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1023, 1313579016, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1024, 1313579018, 1, 'admin', 27, '1', '-', 'Editing document'),
(1025, 1313579070, 1, 'admin', 5, '1', '-', 'Saving document'),
(1026, 1313579073, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1027, 1313579090, 1, 'admin', 27, '1', '-', 'Editing document'),
(1028, 1313579159, 1, 'admin', 5, '1', '-', 'Saving document'),
(1029, 1313579162, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1030, 1313662106, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1031, 1313662115, 1, 'admin', 27, '1', '-', 'Editing document'),
(1032, 1313662176, 1, 'admin', 5, '1', '-', 'Saving document'),
(1033, 1313662179, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1034, 1313772339, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1035, 1313772379, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1036, 1313772399, 1, 'admin', 27, '1', '-', 'Editing document'),
(1037, 1313772579, 1, 'admin', 5, '1', '-', 'Saving document'),
(1038, 1313772583, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1039, 1313877952, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1040, 1313877957, 1, 'admin', 51, '1', '-', 'Moving document'),
(1041, 1313877961, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1042, 1313877964, 1, 'admin', 27, '1', '-', 'Editing document'),
(1043, 1313878017, 1, 'admin', 5, '1', '-', 'Saving document'),
(1044, 1313878019, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1045, 1313924793, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1046, 1313925245, 1, 'admin', 27, '1', '-', 'Editing document'),
(1047, 1313925715, 1, 'admin', 5, '1', '-', 'Saving document'),
(1048, 1313925718, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1049, 1314011551, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1050, 1314011553, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1051, 1314011556, 1, 'admin', 27, '1', '-', 'Editing document'),
(1052, 1314013552, 1, 'admin', 5, '1', '-', 'Saving document'),
(1053, 1314013554, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1054, 1314097598, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1055, 1314097640, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1056, 1314097643, 1, 'admin', 27, '1', '-', 'Editing document'),
(1057, 1314097694, 1, 'admin', 5, '1', '-', 'Saving document'),
(1058, 1314097696, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1059, 1314100849, 1, 'admin', 27, '1', '-', 'Editing document'),
(1060, 1314101170, 1, 'admin', 5, '1', '-', 'Saving document'),
(1061, 1314101172, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1062, 1314185035, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1063, 1314185038, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1064, 1314185040, 1, 'admin', 27, '1', '-', 'Editing document'),
(1065, 1314185365, 1, 'admin', 5, '1', '-', 'Saving document'),
(1066, 1314185367, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1067, 1314270970, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1068, 1314270974, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1069, 1314270977, 1, 'admin', 27, '1', '-', 'Editing document'),
(1070, 1314270986, 1, 'admin', 5, '1', '-', 'Saving document'),
(1071, 1314270988, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1072, 1314356622, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1073, 1314356626, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1074, 1314356630, 1, 'admin', 27, '1', '-', 'Editing document'),
(1075, 1314356656, 1, 'admin', 5, '1', '-', 'Saving document'),
(1076, 1314356658, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1077, 1314356727, 1, 'admin', 27, '1', '-', 'Editing document'),
(1078, 1314356739, 1, 'admin', 5, '1', '-', 'Saving document'),
(1079, 1314356741, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1080, 1314444558, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1081, 1314444648, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1082, 1314444651, 1, 'admin', 27, '1', '-', 'Editing document'),
(1083, 1314444701, 1, 'admin', 5, '1', '-', 'Saving document'),
(1084, 1314444704, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1085, 1314533425, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1086, 1314533430, 1, 'admin', 27, '1', '-', 'Editing document'),
(1087, 1314533920, 1, 'admin', 5, '1', '-', 'Saving document'),
(1088, 1314533922, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1089, 1314617509, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1090, 1314618121, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1091, 1314618126, 1, 'admin', 27, '1', '-', 'Editing document'),
(1092, 1314618320, 1, 'admin', 5, '1', '-', 'Saving document'),
(1093, 1314618322, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1094, 1314704287, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1095, 1314704292, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1096, 1314704330, 1, 'admin', 27, '1', '-', 'Editing document'),
(1097, 1314704353, 1, 'admin', 5, '1', '-', 'Saving document'),
(1098, 1314704356, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1099, 1314752439, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1100, 1314752465, 1, 'admin', 27, '1', '-', 'Editing document'),
(1101, 1314753033, 1, 'admin', 5, '1', '-', 'Saving document'),
(1102, 1314753035, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1103, 1314789680, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1104, 1314789686, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1105, 1314789688, 1, 'admin', 27, '1', '-', 'Editing document'),
(1106, 1314789695, 1, 'admin', 5, '1', '-', 'Saving document'),
(1107, 1314789697, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1108, 1314875019, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1109, 1314875023, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1110, 1314875026, 1, 'admin', 27, '1', '-', 'Editing document'),
(1111, 1314875474, 1, 'admin', 5, '1', '-', 'Saving document'),
(1112, 1314875479, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1113, 1314962258, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1114, 1314962266, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1115, 1314962268, 1, 'admin', 27, '1', '-', 'Editing document'),
(1116, 1314962305, 1, 'admin', 5, '1', '-', 'Saving document'),
(1117, 1314962308, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1118, 1315054218, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1119, 1315054221, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1120, 1315054224, 1, 'admin', 27, '1', '-', 'Editing document'),
(1121, 1315054267, 1, 'admin', 5, '1', '-', 'Saving document'),
(1122, 1315054270, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1123, 1315102603, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1124, 1315137047, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1125, 1315137052, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1126, 1315137054, 1, 'admin', 27, '1', '-', 'Editing document'),
(1127, 1315137098, 1, 'admin', 5, '1', '-', 'Saving document'),
(1128, 1315137101, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1129, 1315223534, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1130, 1315223537, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1131, 1315223539, 1, 'admin', 27, '1', '-', 'Editing document'),
(1132, 1315223738, 1, 'admin', 5, '1', '-', 'Saving document'),
(1133, 1315223740, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1134, 1315223941, 1, 'admin', 27, '1', '-', 'Editing document'),
(1135, 1315224201, 1, 'admin', 5, '1', '-', 'Saving document'),
(1136, 1315224203, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1137, 1315224220, 1, 'admin', 27, '1', '-', 'Editing document'),
(1138, 1315224680, 1, 'admin', 5, '1', '-', 'Saving document'),
(1139, 1315224682, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1140, 1315224935, 1, 'admin', 27, '1', '-', 'Editing document'),
(1141, 1315224962, 1, 'admin', 5, '1', '-', 'Saving document'),
(1142, 1315224965, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1143, 1315307393, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1144, 1315307397, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1145, 1315307401, 1, 'admin', 27, '1', '-', 'Editing document'),
(1146, 1315311322, 1, 'admin', 5, '1', '-', 'Saving document'),
(1147, 1315311325, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1148, 1315353249, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1149, 1315353259, 1, 'admin', 76, '-', '-', 'Resource management'),
(1150, 1315353261, 1, 'admin', 75, '-', '-', 'User/ role management'),
(1151, 1315393287, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1152, 1315393293, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1153, 1315393295, 1, 'admin', 27, '1', '-', 'Editing document'),
(1154, 1315393316, 1, 'admin', 5, '1', '-', 'Saving document'),
(1155, 1315393319, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1156, 1315480103, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1157, 1315480108, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1158, 1315480112, 1, 'admin', 27, '1', '-', 'Editing document'),
(1159, 1315480132, 1, 'admin', 5, '1', '-', 'Saving document'),
(1160, 1315480135, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1161, 1315566623, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1162, 1315566627, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1163, 1315566627, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1164, 1315566630, 1, 'admin', 27, '1', '-', 'Editing document'),
(1165, 1315566679, 1, 'admin', 5, '1', '-', 'Saving document'),
(1166, 1315566681, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1167, 1315657273, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1168, 1315657277, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1169, 1315657279, 1, 'admin', 27, '1', '-', 'Editing document'),
(1170, 1315657298, 1, 'admin', 5, '1', '-', 'Saving document'),
(1171, 1315657300, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1172, 1315741392, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1173, 1315741398, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1174, 1315741401, 1, 'admin', 27, '1', '-', 'Editing document'),
(1175, 1315742108, 1, 'admin', 5, '1', '-', 'Saving document'),
(1176, 1315742111, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1177, 1315828841, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1178, 1315828869, 1, 'admin', 27, '1', '-', 'Editing document'),
(1179, 1315828956, 1, 'admin', 5, '1', '-', 'Saving document'),
(1180, 1315828958, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1181, 1315829611, 1, 'admin', 27, '1', '-', 'Editing document'),
(1182, 1315830067, 1, 'admin', 5, '1', '-', 'Saving document'),
(1183, 1315830070, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1184, 1315911616, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1185, 1315911620, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1186, 1315911623, 1, 'admin', 27, '1', '-', 'Editing document'),
(1187, 1315911632, 1, 'admin', 5, '1', '-', 'Saving document'),
(1188, 1315911634, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1189, 1315994354, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1190, 1315994358, 1, 'admin', 27, '1', '-', 'Editing document'),
(1191, 1315994398, 1, 'admin', 5, '1', '-', 'Saving document'),
(1192, 1315994400, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1193, 1315994441, 1, 'admin', 27, '1', '-', 'Editing document'),
(1194, 1316082371, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1195, 1316082377, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1196, 1316082379, 1, 'admin', 27, '1', '-', 'Editing document'),
(1197, 1316082405, 1, 'admin', 5, '1', '-', 'Saving document'),
(1198, 1316082407, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1199, 1316135290, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1200, 1316135428, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1201, 1316135503, 1, 'admin', 76, '-', '-', 'Resource management'),
(1202, 1316135506, 1, 'admin', 16, '5', 'Radical Home', 'Editing template'),
(1203, 1316135570, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1204, 1316135581, 1, 'admin', 76, '-', '-', 'Resource management'),
(1205, 1316135583, 1, 'admin', 16, '5', 'Radical Home', 'Editing template'),
(1206, 1316135608, 1, 'admin', 20, '5', '-', 'Saving template'),
(1207, 1316135608, 1, 'admin', 76, '-', '-', 'Resource management'),
(1208, 1316135619, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1209, 1316136289, 1, 'admin', 76, '-', '-', 'Resource management'),
(1210, 1316136291, 1, 'admin', 16, '5', 'Radical Home', 'Editing template'),
(1211, 1316136322, 1, 'admin', 20, '5', '-', 'Saving template'),
(1212, 1316136322, 1, 'admin', 76, '-', '-', 'Resource management'),
(1213, 1316136365, 1, 'admin', 16, '5', 'Radical Home', 'Editing template'),
(1214, 1316136386, 1, 'admin', 20, '5', '-', 'Saving template'),
(1215, 1316136386, 1, 'admin', 76, '-', '-', 'Resource management'),
(1216, 1316137269, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1217, 1316137274, 1, 'admin', 76, '-', '-', 'Resource management'),
(1218, 1316137278, 1, 'admin', 16, '5', 'Radical Home', 'Editing template'),
(1219, 1316137387, 1, 'admin', 20, '5', '-', 'Saving template'),
(1220, 1316137387, 1, 'admin', 76, '-', '-', 'Resource management'),
(1221, 1316137497, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1222, 1316137502, 1, 'admin', 27, '1', '-', 'Editing document'),
(1223, 1316137692, 1, 'admin', 5, '1', '-', 'Saving document'),
(1224, 1316137694, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1225, 1316170095, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1226, 1316170107, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1227, 1316170111, 1, 'admin', 27, '1', '-', 'Editing document'),
(1228, 1316170497, 1, 'admin', 5, '1', '-', 'Saving document'),
(1229, 1316170499, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1230, 1316215408, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1231, 1316215414, 1, 'admin', 75, '-', '-', 'User/ role management'),
(1232, 1316215419, 1, 'admin', 12, '8', 'rhardaway', 'Editing user'),
(1233, 1316215428, 1, 'admin', 32, '8', '-', 'Saving user'),
(1234, 1316215434, 1, 'admin', 75, '-', '-', 'User/ role management'),
(1235, 1316215436, 1, 'admin', 12, '8', 'rhardaway', 'Editing user'),
(1236, 1316215455, 1, 'admin', 32, '8', '-', 'Saving user'),
(1237, 1316272875, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1238, 1316272881, 1, 'admin', 27, '1', '-', 'Editing document'),
(1239, 1316273109, 1, 'admin', 5, '1', '-', 'Saving document'),
(1240, 1316273112, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1241, 1316308944, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1242, 1316345710, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1243, 1316345715, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1244, 1316345717, 1, 'admin', 27, '1', '-', 'Editing document'),
(1245, 1316345790, 1, 'admin', 5, '1', '-', 'Saving document'),
(1246, 1316345792, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1247, 1316394048, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1248, 1316394309, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1249, 1316394566, 1, 'admin', 27, '1', '-', 'Editing document'),
(1250, 1316394938, 1, 'admin', 5, '1', '-', 'Saving document'),
(1251, 1316394940, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1252, 1316430997, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1253, 1316431004, 1, 'admin', 27, '1', '-', 'Editing document'),
(1254, 1316431018, 1, 'admin', 5, '1', '-', 'Saving document'),
(1255, 1316431021, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1256, 1316516065, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1257, 1316516069, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1258, 1316516072, 1, 'admin', 27, '1', '-', 'Editing document'),
(1259, 1316516072, 1, 'admin', 27, '1', '-', 'Editing document'),
(1260, 1316516295, 1, 'admin', 5, '1', '-', 'Saving document'),
(1261, 1316516298, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1262, 1316558465, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1263, 1316602125, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1264, 1316602129, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1265, 1316602133, 1, 'admin', 27, '1', '-', 'Editing document'),
(1266, 1316602149, 1, 'admin', 5, '1', '-', 'Saving document'),
(1267, 1316602152, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1268, 1316690184, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1269, 1316690184, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1270, 1316690188, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1271, 1316690190, 1, 'admin', 27, '1', '-', 'Editing document'),
(1272, 1316690199, 1, 'admin', 5, '1', '-', 'Saving document'),
(1273, 1316690201, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1274, 1316776015, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1275, 1316776299, 1, 'admin', 27, '1', '-', 'Editing document'),
(1276, 1316776377, 1, 'admin', 5, '1', '-', 'Saving document'),
(1277, 1316776379, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1278, 1316879184, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1279, 1316879187, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1280, 1316879191, 1, 'admin', 27, '1', '-', 'Editing document'),
(1281, 1316879234, 1, 'admin', 5, '1', '-', 'Saving document'),
(1282, 1316879236, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1283, 1316950289, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1284, 1316950294, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1285, 1316950298, 1, 'admin', 27, '1', '-', 'Editing document'),
(1286, 1316950417, 1, 'admin', 5, '1', '-', 'Saving document'),
(1287, 1316950419, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1288, 1317035481, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1289, 1317035486, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1290, 1317035491, 1, 'admin', 27, '1', '-', 'Editing document'),
(1291, 1317035498, 1, 'admin', 5, '1', '-', 'Saving document'),
(1292, 1317035501, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1293, 1317082855, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1294, 1317082859, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1295, 1317082862, 1, 'admin', 27, '1', '-', 'Editing document'),
(1296, 1317093780, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1297, 1317093783, 1, 'admin', 27, '1', '-', 'Editing document'),
(1298, 1317093849, 1, 'admin', 5, '1', '-', 'Saving document'),
(1299, 1317093851, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1300, 1317121776, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1301, 1317121782, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1302, 1317121785, 1, 'admin', 27, '1', '-', 'Editing document'),
(1303, 1317121804, 1, 'admin', 5, '1', '-', 'Saving document'),
(1304, 1317121808, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1305, 1317206584, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1306, 1317212287, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1307, 1317212290, 1, 'admin', 27, '1', '-', 'Editing document'),
(1308, 1317212307, 1, 'admin', 5, '1', '-', 'Saving document'),
(1309, 1317212309, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1310, 1317294830, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1311, 1317294835, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1312, 1317294838, 1, 'admin', 27, '1', '-', 'Editing document'),
(1313, 1317294890, 1, 'admin', 5, '1', '-', 'Saving document'),
(1314, 1317294893, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1315, 1317296198, 1, 'admin', 27, '1', '-', 'Editing document'),
(1316, 1317296361, 1, 'admin', 5, '1', '-', 'Saving document'),
(1317, 1317296363, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1318, 1317296384, 1, 'admin', 27, '1', '-', 'Editing document'),
(1319, 1317296416, 1, 'admin', 5, '1', '-', 'Saving document'),
(1320, 1317296419, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1321, 1317380038, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1322, 1317380060, 1, 'admin', 27, '1', '-', 'Editing document'),
(1323, 1317380173, 1, 'admin', 5, '1', '-', 'Saving document'),
(1324, 1317380176, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1325, 1317471096, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1326, 1317471106, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1327, 1317471109, 1, 'admin', 27, '1', '-', 'Editing document'),
(1328, 1317471163, 1, 'admin', 5, '1', '-', 'Saving document'),
(1329, 1317471165, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1330, 1317556765, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1331, 1317556769, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1332, 1317556771, 1, 'admin', 27, '1', '-', 'Editing document'),
(1333, 1317556810, 1, 'admin', 5, '1', '-', 'Saving document'),
(1334, 1317556812, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1335, 1317585236, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1336, 1317585290, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1337, 1317585293, 1, 'admin', 27, '1', '-', 'Editing document'),
(1338, 1317585350, 1, 'admin', 5, '1', '-', 'Saving document'),
(1339, 1317585353, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1340, 1317585460, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1341, 1317585465, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1342, 1317585467, 1, 'admin', 27, '1', '-', 'Editing document'),
(1343, 1317585668, 1, 'admin', 5, '1', '-', 'Saving document'),
(1344, 1317585671, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1345, 1317641464, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1346, 1317641467, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1347, 1317641469, 1, 'admin', 27, '1', '-', 'Editing document'),
(1348, 1317641515, 1, 'admin', 5, '1', '-', 'Saving document'),
(1349, 1317641518, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1350, 1317726153, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1351, 1317726158, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1352, 1317726161, 1, 'admin', 27, '1', '-', 'Editing document'),
(1353, 1317726171, 1, 'admin', 5, '1', '-', 'Saving document'),
(1354, 1317726174, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1355, 1317811928, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1356, 1317811933, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1357, 1317811935, 1, 'admin', 27, '1', '-', 'Editing document'),
(1358, 1317811944, 1, 'admin', 5, '1', '-', 'Saving document'),
(1359, 1317811946, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1360, 1317898799, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1361, 1317898909, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1362, 1317898912, 1, 'admin', 27, '1', '-', 'Editing document'),
(1363, 1317898937, 1, 'admin', 5, '1', '-', 'Saving document'),
(1364, 1317898939, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1365, 1317986562, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1366, 1317986573, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1367, 1317986576, 1, 'admin', 27, '1', '-', 'Editing document'),
(1368, 1317986599, 1, 'admin', 5, '1', '-', 'Saving document'),
(1369, 1317986601, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1370, 1317987343, 1, 'admin', 27, '1', '-', 'Editing document'),
(1371, 1318076550, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1372, 1318076554, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1373, 1318076554, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1374, 1318076557, 1, 'admin', 27, '1', '-', 'Editing document'),
(1375, 1318078661, 1, 'admin', 5, '1', '-', 'Saving document'),
(1376, 1318078661, 1, 'admin', 27, '1', '-', 'Editing document'),
(1377, 1318078669, 1, 'admin', 5, '1', '-', 'Saving document'),
(1378, 1318078673, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1379, 1318159015, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1380, 1318159020, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1381, 1318159023, 1, 'admin', 27, '1', '-', 'Editing document'),
(1382, 1318159122, 1, 'admin', 5, '1', '-', 'Saving document'),
(1383, 1318159125, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1384, 1318222522, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1385, 1318222532, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1386, 1318222534, 1, 'admin', 27, '1', '-', 'Editing document'),
(1387, 1318222766, 1, 'admin', 5, '1', '-', 'Saving document'),
(1388, 1318222769, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1389, 1318222888, 1, 'admin', 27, '1', '-', 'Editing document'),
(1390, 1318223030, 1, 'admin', 5, '1', '-', 'Saving document'),
(1391, 1318223033, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1392, 1318335714, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1393, 1318335719, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1394, 1318335721, 1, 'admin', 27, '1', '-', 'Editing document'),
(1395, 1318335731, 1, 'admin', 5, '1', '-', 'Saving document'),
(1396, 1318335733, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1397, 1318338160, 1, 'admin', 27, '1', '-', 'Editing document'),
(1398, 1318417363, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1399, 1318417367, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1400, 1318417370, 1, 'admin', 27, '1', '-', 'Editing document'),
(1401, 1318417388, 1, 'admin', 5, '1', '-', 'Saving document'),
(1402, 1318417390, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1403, 1318501058, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1404, 1318501070, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1405, 1318501072, 1, 'admin', 27, '1', '-', 'Editing document'),
(1406, 1318501148, 1, 'admin', 5, '1', '-', 'Saving document'),
(1407, 1318501150, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1408, 1318501174, 1, 'admin', 27, '1', '-', 'Editing document'),
(1409, 1318501210, 1, 'admin', 5, '1', '-', 'Saving document'),
(1410, 1318501213, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1411, 1318592974, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1412, 1318592982, 1, 'admin', 27, '1', '-', 'Editing document'),
(1413, 1318593058, 1, 'admin', 5, '1', '-', 'Saving document'),
(1414, 1318593061, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1415, 1318593107, 1, 'admin', 27, '1', '-', 'Editing document'),
(1416, 1318593124, 1, 'admin', 5, '1', '-', 'Saving document'),
(1417, 1318593126, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1418, 1318675966, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1419, 1318675970, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1420, 1318675972, 1, 'admin', 27, '1', '-', 'Editing document'),
(1421, 1318676427, 1, 'admin', 5, '1', '-', 'Saving document'),
(1422, 1318676430, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1423, 1318764088, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1424, 1318764422, 1, 'admin', 27, '1', '-', 'Editing document'),
(1425, 1318764714, 1, 'admin', 5, '1', '-', 'Saving document'),
(1426, 1318764716, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1427, 1318772728, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1428, 1318811847, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1429, 1318811855, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1430, 1318811858, 1, 'admin', 27, '1', '-', 'Editing document'),
(1431, 1318813070, 1, 'admin', 5, '1', '-', 'Saving document'),
(1432, 1318813073, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1433, 1318851461, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1434, 1318851466, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1435, 1318851469, 1, 'admin', 27, '1', '-', 'Editing document'),
(1436, 1318851528, 1, 'admin', 5, '1', '-', 'Saving document'),
(1437, 1318851530, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1438, 1318936011, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1439, 1318936018, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1440, 1318936041, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1441, 1318936047, 1, 'admin', 27, '1', '-', 'Editing document'),
(1442, 1318936073, 1, 'admin', 5, '1', '-', 'Saving document'),
(1443, 1318936076, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1444, 1319021214, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1445, 1319021223, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1446, 1319021225, 1, 'admin', 27, '1', '-', 'Editing document'),
(1447, 1319022881, 1, 'admin', 5, '1', '-', 'Saving document'),
(1448, 1319022886, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1449, 1319104055, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1450, 1319104058, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1451, 1319104061, 1, 'admin', 27, '1', '-', 'Editing document'),
(1452, 1319152755, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1453, 1319152759, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1454, 1319152761, 1, 'admin', 27, '1', '-', 'Editing document'),
(1455, 1319152770, 1, 'admin', 5, '1', '-', 'Saving document'),
(1456, 1319152772, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1457, 1319192686, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1458, 1319192705, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1459, 1319192709, 1, 'admin', 27, '1', '-', 'Editing document'),
(1460, 1319192738, 1, 'admin', 5, '1', '-', 'Saving document'),
(1461, 1319192741, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1462, 1319279547, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1463, 1319279551, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1464, 1319279554, 1, 'admin', 27, '1', '-', 'Editing document'),
(1465, 1319279582, 1, 'admin', 5, '1', '-', 'Saving document'),
(1466, 1319279585, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1467, 1319368076, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1468, 1319368081, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1469, 1319368084, 1, 'admin', 27, '1', '-', 'Editing document'),
(1470, 1319368191, 1, 'admin', 5, '1', '-', 'Saving document'),
(1471, 1319368193, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1472, 1319368362, 1, 'admin', 27, '1', '-', 'Editing document'),
(1473, 1319368767, 1, 'admin', 5, '1', '-', 'Saving document'),
(1474, 1319368770, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1475, 1319368785, 1, 'admin', 27, '1', '-', 'Editing document'),
(1476, 1319368810, 1, 'admin', 5, '1', '-', 'Saving document'),
(1477, 1319368813, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1478, 1319422343, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1479, 1319422349, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1480, 1319422352, 1, 'admin', 27, '1', '-', 'Editing document'),
(1481, 1319422647, 1, 'admin', 5, '1', '-', 'Saving document'),
(1482, 1319422649, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1483, 1319455742, 1, 'admin', 58, '-', 'MODx', 'Logged in');
INSERT INTO `mtzrad_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(1484, 1319455752, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1485, 1319455759, 1, 'admin', 27, '1', '-', 'Editing document'),
(1486, 1319455824, 1, 'admin', 5, '1', '-', 'Saving document'),
(1487, 1319455826, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1488, 1319540122, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1489, 1319540127, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1490, 1319540150, 1, 'admin', 27, '1', '-', 'Editing document'),
(1491, 1319540307, 1, 'admin', 5, '1', '-', 'Saving document'),
(1492, 1319540309, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1493, 1319621456, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1494, 1319621460, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1495, 1319621463, 1, 'admin', 27, '1', '-', 'Editing document'),
(1496, 1319621484, 1, 'admin', 5, '1', '-', 'Saving document'),
(1497, 1319621486, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1498, 1319707348, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1499, 1319707445, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1500, 1319707451, 1, 'admin', 27, '1', '-', 'Editing document'),
(1501, 1319707490, 1, 'admin', 5, '1', '-', 'Saving document'),
(1502, 1319707492, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1503, 1319800066, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1504, 1319800115, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1505, 1319800119, 1, 'admin', 27, '1', '-', 'Editing document'),
(1506, 1319800551, 1, 'admin', 5, '1', '-', 'Saving document'),
(1507, 1319800554, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1508, 1319882974, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1509, 1319882978, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1510, 1319882981, 1, 'admin', 27, '1', '-', 'Editing document'),
(1511, 1319883071, 1, 'admin', 5, '1', '-', 'Saving document'),
(1512, 1319883074, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1513, 1319975010, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1514, 1319975015, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1515, 1319975018, 1, 'admin', 27, '1', '-', 'Editing document'),
(1516, 1319975029, 1, 'admin', 5, '1', '-', 'Saving document'),
(1517, 1319975032, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1518, 1320060015, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1519, 1320060021, 1, 'admin', 27, '1', '-', 'Editing document'),
(1520, 1320060074, 1, 'admin', 5, '1', '-', 'Saving document'),
(1521, 1320060077, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1522, 1320144869, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1523, 1320144877, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1524, 1320144879, 1, 'admin', 27, '1', '-', 'Editing document'),
(1525, 1320144915, 1, 'admin', 5, '1', '-', 'Saving document'),
(1526, 1320144917, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1527, 1320147511, 1, 'admin', 27, '1', '-', 'Editing document'),
(1528, 1320147650, 1, 'admin', 5, '1', '-', 'Saving document'),
(1529, 1320147653, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1530, 1320229841, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1531, 1320229846, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1532, 1320229848, 1, 'admin', 27, '1', '-', 'Editing document'),
(1533, 1320229865, 1, 'admin', 5, '1', '-', 'Saving document'),
(1534, 1320229867, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1535, 1320317080, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1536, 1320317088, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1537, 1320317093, 1, 'admin', 27, '1', '-', 'Editing document'),
(1538, 1320317104, 1, 'admin', 5, '1', '-', 'Saving document'),
(1539, 1320317109, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1540, 1320403195, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1541, 1320403200, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1542, 1320403203, 1, 'admin', 27, '1', '-', 'Editing document'),
(1543, 1320403230, 1, 'admin', 5, '1', '-', 'Saving document'),
(1544, 1320403233, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1545, 1320503526, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1546, 1320503530, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1547, 1320503532, 1, 'admin', 27, '1', '-', 'Editing document'),
(1548, 1320503553, 1, 'admin', 5, '1', '-', 'Saving document'),
(1549, 1320503555, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1550, 1320542809, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1551, 1320577164, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1552, 1320577169, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1553, 1320577171, 1, 'admin', 27, '1', '-', 'Editing document'),
(1554, 1320577212, 1, 'admin', 5, '1', '-', 'Saving document'),
(1555, 1320577215, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1556, 1320668184, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1557, 1320668188, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1558, 1320668193, 1, 'admin', 27, '1', '-', 'Editing document'),
(1559, 1320668238, 1, 'admin', 5, '1', '-', 'Saving document'),
(1560, 1320668240, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1561, 1320668682, 1, 'admin', 27, '1', '-', 'Editing document'),
(1562, 1320668683, 1, 'admin', 27, '1', '-', 'Editing document'),
(1563, 1320668880, 1, 'admin', 5, '1', '-', 'Saving document'),
(1564, 1320668882, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1565, 1320755257, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1566, 1320755274, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1567, 1320755287, 1, 'admin', 27, '1', '-', 'Editing document'),
(1568, 1320755322, 1, 'admin', 5, '1', '-', 'Saving document'),
(1569, 1320755324, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1570, 1320839702, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1571, 1320840082, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1572, 1320840087, 1, 'admin', 27, '1', '-', 'Editing document'),
(1573, 1320840148, 1, 'admin', 5, '1', '-', 'Saving document'),
(1574, 1320840151, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1575, 1320919735, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1576, 1320919743, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1577, 1320919745, 1, 'admin', 27, '1', '-', 'Editing document'),
(1578, 1320919757, 1, 'admin', 5, '1', '-', 'Saving document'),
(1579, 1320919759, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1580, 1321017804, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1581, 1321017814, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1582, 1321017818, 1, 'admin', 27, '1', '-', 'Editing document'),
(1583, 1321017818, 1, 'admin', 27, '1', '-', 'Editing document'),
(1584, 1321017847, 1, 'admin', 5, '1', '-', 'Saving document'),
(1585, 1321017859, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1586, 1321028572, 1, 'admin', 27, '1', '-', 'Editing document'),
(1587, 1321028738, 1, 'admin', 5, '1', '-', 'Saving document'),
(1588, 1321028741, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1589, 1321099388, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1590, 1321099393, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1591, 1321099397, 1, 'admin', 27, '1', '-', 'Editing document'),
(1592, 1321099424, 1, 'admin', 5, '1', '-', 'Saving document'),
(1593, 1321099427, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1594, 1321162360, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1595, 1321162366, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1596, 1321162370, 1, 'admin', 27, '1', '-', 'Editing document'),
(1597, 1321162408, 1, 'admin', 5, '1', '-', 'Saving document'),
(1598, 1321162411, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1599, 1321274734, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1600, 1321274739, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1601, 1321274742, 1, 'admin', 27, '1', '-', 'Editing document'),
(1602, 1321274860, 1, 'admin', 5, '1', '-', 'Saving document'),
(1603, 1321274863, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1604, 1321359170, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1605, 1321359177, 1, 'admin', 27, '1', '-', 'Editing document'),
(1606, 1321359194, 1, 'admin', 5, '1', '-', 'Saving document'),
(1607, 1321359197, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1608, 1321444719, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1609, 1321444841, 1, 'admin', 27, '1', '-', 'Editing document'),
(1610, 1321444865, 1, 'admin', 5, '1', '-', 'Saving document'),
(1611, 1321444868, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document'),
(1612, 1321530969, 1, 'admin', 58, '-', 'MODx', 'Logged in'),
(1613, 1321530979, 1, 'admin', 27, '1', '-', 'Editing document'),
(1614, 1321533389, 1, 'admin', 5, '1', '-', 'Saving document'),
(1615, 1321533391, 1, 'admin', 3, '1', 'Radical', 'Viewing data for document');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_manager_users`
--

CREATE TABLE IF NOT EXISTS `mtzrad_manager_users` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mtzrad_manager_users`
--

INSERT INTO `mtzrad_manager_users` (`id`, `username`, `password`) VALUES
(1, 'admin', '7adc409167972ff5e1e4e78a29fc8fc7'),
(2, 'mbdarby', '7adc409167972ff5e1e4e78a29fc8fc7'),
(3, 'bsmith', 'fdad797fcbcf9f1d27d2418e2546da7a'),
(4, 'wharris', 'e9d68a74ce0066ba7e1c14b15dc42336'),
(5, 'drice', 'd09c31a91b6c88c264bf9a0d977b97b6'),
(6, 'bdunn', '166bc808dfc9687abbfabe687bc983e5'),
(7, 'rcredle', 'd09c31a91b6c88c264bf9a0d977b97b6'),
(8, 'rhardaway', '0f359740bd1cda994f8b55330c86d845'),
(9, 'lbethea', '97499df7db2ae2b252345088b2c1f8ad'),
(10, 'nsawyer', '8cd54918dab7e26093477e6cc802b805');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_membergroup_access`
--

CREATE TABLE IF NOT EXISTS `mtzrad_membergroup_access` (
  `id` int(10) NOT NULL auto_increment,
  `membergroup` int(10) NOT NULL default '0',
  `documentgroup` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_membergroup_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_membergroup_names`
--

CREATE TABLE IF NOT EXISTS `mtzrad_membergroup_names` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_membergroup_names`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_member_groups`
--

CREATE TABLE IF NOT EXISTS `mtzrad_member_groups` (
  `id` int(10) NOT NULL auto_increment,
  `user_group` int(10) NOT NULL default '0',
  `member` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_member_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_content`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_content` (
  `id` int(10) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default 'document',
  `contentType` varchar(50) NOT NULL default 'text/html',
  `pagetitle` varchar(255) NOT NULL default '',
  `longtitle` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `alias` varchar(255) default '',
  `link_attributes` varchar(255) NOT NULL default '',
  `published` int(1) NOT NULL default '0',
  `pub_date` int(20) NOT NULL default '0',
  `unpub_date` int(20) NOT NULL default '0',
  `parent` int(10) NOT NULL default '0',
  `isfolder` int(1) NOT NULL default '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL default '1',
  `template` int(10) NOT NULL default '1',
  `menuindex` int(10) NOT NULL default '0',
  `searchable` int(1) NOT NULL default '1',
  `cacheable` int(1) NOT NULL default '1',
  `createdby` int(10) NOT NULL default '0',
  `createdon` int(20) NOT NULL default '0',
  `editedby` int(10) NOT NULL default '0',
  `editedon` int(20) NOT NULL default '0',
  `deleted` int(1) NOT NULL default '0',
  `deletedon` int(20) NOT NULL default '0',
  `deletedby` int(10) NOT NULL default '0',
  `publishedon` int(20) NOT NULL default '0',
  `publishedby` int(10) NOT NULL default '0',
  `menutitle` varchar(255) NOT NULL default '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL default '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL default '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL default '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL default '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL default '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL default '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL default '0' COMMENT 'Hide document from menu',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mtzrad_site_content`
--

INSERT INTO `mtzrad_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `haskeywords`, `hasmetatags`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`) VALUES
(1, 'document', 'text/html', 'Radical', 'The Radical Experiment at Mt. Zion', '', 'home', '', 1, 0, 0, 0, 0, '', '<p>In 2011 Mt. Zion will participate in The Radical Experiment, a one-year commitment. Since 2008 we have continued to build upon yearly themes such as making disciples of all people, growing to spiritual maturity and last year''s theme to impact the world. The goal of the Radical Experiment is for individuals and families to seek God and spend time in the Word and in prayer for the church, the lost and the poor around the world for God''s glory. The Radical Experiment is inspired by the book <a href="http://radicalthebook.com">Radical</a> by David Platt, pastor of <a href="http://brookhills.org">The Church at Brook Hills</a>. </p>\r\n<p>There are five parts to the experiment: </p>\r\n<ul>\r\n<li><a href="#pray">Pray for the entire world</a> </li>\r\n<li><a href="#read">Read through the entire Word</a> </li>\r\n<li><a href="#sacrifice">Sacrifice money for a specific purpose</a> </li>\r\n<li><a href="#spendtime">Spend time in another context</a> </li>\r\n<li><a href="#commit">Commit our lives to multiplying communities</a> </li>\r\n</ul>\r\n<div id="-chrome-auto-translate-plugin-dialog" style="display: none; opacity: 1 !important; border-color: none !important; background: transparent !important; padding: 0 !important; margin: 0 !important; position: absolute !important; top: 0; left: 0; overflow: visible !important; z-index: 999999 !important; text-align: left !important;">\r\n<img style="position: absolute !important; z-index: -1 !important; right: 1px !important; top: -20px !important; cursor: pointer !important; background-color: rgba(200, 200, 200, 0.3) !important; padding: 3px 5px 0 !important; margin: 0 !important;" onclick="document.location.href=''http://translate.google.com/'';" src="http://www.google.com/uds/css/small-logo.png" alt="" /></div>', 1, 5, 0, 1, 1, 1, 1130304721, 1, 1321533388, 0, 0, 0, 1130304721, 1, 'Base Install', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_content_metatags`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_content_metatags` (
  `content_id` int(11) NOT NULL default '0',
  `metatag_id` int(11) NOT NULL default '0',
  KEY `content_id` (`content_id`),
  KEY `metatag_id` (`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

--
-- Dumping data for table `mtzrad_site_content_metatags`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_htmlsnippets`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_htmlsnippets` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default 'Chunk',
  `editor_type` int(11) NOT NULL default '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL default '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL default '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mtzrad_site_htmlsnippets`
--

INSERT INTO `mtzrad_site_htmlsnippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`) VALUES
(1, 'mm_demo_rules', 'ManagerManager rules for the demo content. Should be modified for your own sites.', 0, 1, 0, '// PHP *is* allowed\n// $news_role and $news_tpl will not apply to demo content but are left as a demonstration of what can be done\n\n// For everyone\nmm_default(''pub_date'');\nmm_renameField(''introtext'',''Summary'');\nmm_changeFieldHelp(''alias'', ''The URL that will be used to reach this resource. Only numbers, letters and hyphens can be used'');\nmm_widget_tags(''documentTags'','' ''); // Give blog tag editing capabilities to the ''documentTags (3)'' TV\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n// mm_widget_colors(''color'', ''#666666''); // make a color selector widget for the ''colour'' TV\n\n// For everyone except administrators\nmm_hideFields(''link_attributes'', ''!1'');\nmm_hideFields(''loginName '', ''!1'');\n// mm_renameField(''alias'',''URL alias'',''!1'');\n\n// News editors role -- creating a variable makes it easier to manage if this changes in the future\n$news_role = ''3'';\nmm_hideFields(''pagetitle,menutitle,link_attributes,template,menuindex,description,show_in_menu,which_editor,is_folder,is_richtext,log,searchable,cacheable,clear_cache'', $news_role);\nmm_renameTab(''settings'', ''Publication settings'', $news_role);	\nmm_synch_fields(''pagetitle,menutitle,longtitle'', $news_role);\nmm_renameField(''longtitle'',''Headline'', $news_role, '''', ''This will be displayed at the top of each page'');\n\n// News story template\n$news_tpl = ''8'';\n// mm_createTab(''Categories'',''HrCats'', '''', $news_tpl, '''', ''600'');\n// mm_moveFieldsToTab(''updateImage1'', ''general'', '''', $news_tpl);\n// mm_hideFields(''menuindex,show_in_menu'', '''', $news_tpl);\nmm_changeFieldHelp(''longtitle'', ''The story\\''s headline'', '''', $news_tpl);\nmm_changeFieldHelp(''introtext'', ''A short summary of the story'', '''', $news_tpl);\nmm_changeFieldHelp(''parent'', ''To move this story to a different folder: Click this icon to activate, then choose a new folder in the tree on the left.'', '''', $news_tpl);\n\n', 0),
(2, 'WebLoginSidebar', 'WebLogin Tpl', 0, 2, 0, '<!-- #declare:separator <hr> --> \n<!-- login form section-->\n<form method="post" name="loginfrm" action="[+action+]" style="margin: 0px; padding: 0px;"> \n<input type="hidden" value="[+rememberme+]" name="rememberme"> \n<table border="0" cellspacing="0" cellpadding="0">\n<tr>\n<td>\n<table border="0" cellspacing="0" cellpadding="0">\n  <tr>\n	<td><b>User:</b></td>\n	<td><input type="text" name="username" tabindex="1" onkeypress="return webLoginEnter(document.loginfrm.password);" size="5" style="width: 100px;" value="[+username+]" /></td>\n  </tr>\n  <tr>\n	<td><b>Password:</b></td>\n	<td><input type="password" name="password" tabindex="2" onkeypress="return webLoginEnter(document.loginfrm.cmdweblogin);" size="5" style="width: 100px;" value="" /></td>\n  </tr>\n  <tr>\n	<td><label for="chkbox" style="cursor:pointer">Remember me:&nbsp; </label></td>\n	<td>\n	<table width="100%"  border="0" cellspacing="0" cellpadding="0">\n	  <tr>\n		<td valign="top"><input type="checkbox" id="chkbox" name="chkbox" tabindex="4" size="1" value="" [+checkbox+] onClick="webLoginCheckRemember()" /></td>\n		<td align="right">									\n		<input type="submit" value="[+logintext+]" name="cmdweblogin" /></td>\n	  </tr>\n	</table>\n	</td>\n  </tr>\n  <tr>\n	<td colspan="2"><a href="#" onclick="webLoginShowForm(2);return false;">Forget Password?</a></td>\n  </tr>\n</table>\n</td>\n</tr>\n</table>\n</form>\n<hr>\n<!-- log out hyperlink section -->\n<a href=''[+action+]''>[+logouttext+]</a>\n<hr>\n<!-- Password reminder form section -->\n<form name="loginreminder" method="post" action="[+action+]" style="margin: 0px; padding: 0px;">\n<input type="hidden" name="txtpwdrem" value="0" />\n<table border="0">\n	<tr>\n	  <td>Enter the email address of your account <br />below to receive your password:</td>\n	</tr>\n	<tr>\n	  <td><input type="text" name="txtwebemail" size="24" /></td>\n	</tr>\n	<tr>\n	  <td align="right"><input type="submit" value="Submit" name="cmdweblogin" />\n	  <input type="reset" value="Cancel" name="cmdcancel" onclick="webLoginShowForm(1);" /></td>\n	</tr>\n  </table>\n</form>\n\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_keywords`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_keywords` (
  `id` int(11) NOT NULL auto_increment,
  `keyword` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_site_keywords`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_metatags`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_metatags` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `tag` varchar(50) NOT NULL default '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL default '',
  `http_equiv` tinyint(4) NOT NULL default '0' COMMENT '1 - use http_equiv tag style, 0 - use name',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_site_metatags`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_modules`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_modules` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '0',
  `editor_type` int(11) NOT NULL default '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL default '0',
  `category` int(11) NOT NULL default '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL default '0',
  `locked` tinyint(4) NOT NULL default '0',
  `icon` varchar(255) NOT NULL default '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL default '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL default '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL default '0',
  `editedon` int(11) NOT NULL default '0',
  `guid` varchar(32) NOT NULL default '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL default '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Site Modules' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mtzrad_site_modules`
--

INSERT INTO `mtzrad_site_modules` (`id`, `name`, `description`, `editor_type`, `disabled`, `category`, `wrap`, `locked`, `icon`, `enable_resource`, `resourcefile`, `createdon`, `editedon`, `guid`, `enable_sharedparams`, `properties`, `modulecode`) VALUES
(1, 'Doc Manager', '<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions', 0, 0, 3, 0, 0, '', 0, '', 0, 0, '', 1, '', 'include_once(MODX_BASE_PATH.''assets/modules/docmanager/classes/docmanager.class.php'');\ninclude_once(MODX_BASE_PATH.''assets/modules/docmanager/classes/dm_frontend.class.php'');\ninclude_once(MODX_BASE_PATH.''assets/modules/docmanager/classes/dm_backend.class.php'');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[''theme''] = $dm->getTheme();\n$dm->ph[''ajax.endpoint''] = MODX_SITE_URL.''assets/modules/docmanager/tv.ajax.php'';\n$dm->ph[''datepicker.offset''] = $modx->config[''datepicker_offset''];\n$dm->ph[''datetime.format''] = $modx->config[''datetime_format''];\n\nif (isset($_POST[''tabAction''])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(''main.tpl'', $dm->ph);\n}');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_module_access`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_module_access` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `module` int(11) NOT NULL default '0',
  `usergroup` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_site_module_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_module_depobj`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_module_depobj` (
  `id` int(11) NOT NULL auto_increment,
  `module` int(11) NOT NULL default '0',
  `resource` int(11) NOT NULL default '0',
  `type` int(2) NOT NULL default '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_site_module_depobj`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_plugins`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_plugins` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default 'Plugin',
  `editor_type` int(11) NOT NULL default '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL default '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL default '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL default '0',
  `properties` text,
  `disabled` tinyint(4) NOT NULL default '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL default '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mtzrad_site_plugins`
--

INSERT INTO `mtzrad_site_plugins` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`) VALUES
(1, 'Forgot Manager Login', '<strong>1.1.2</strong> Resets your manager login when you forget your password via email confirmation', 0, 3, 0, 'if(!class_exists(''ForgotManagerPassword'')) {\n    class ForgotManagerPassword{\n        function ForgotManagerPassword(){\n            $this->errors = array();\n            $this->checkLang();\n        }\n\n        function getLink() {\n            global $_lang;\n  \n            $link = <<<EOD\n<a id="ForgotManagerPassword-show_form" href="index.php?action=show_form">{$_lang[''forgot_your_password'']}</a>\nEOD;\n\n            return $link;\n        }\n\n        function getForm() {\n            global $_lang;\n\n            $form = <<<EOD\n<label id="FMP-email_label" for="FMP_email">{$_lang[''account_email'']}:</label>\n<input id="FMP-email" type="text" />\n<button id="FMP-email_button" type="button" onclick="window.location = ''index.php?action=send_email&email=''+document.getElementById(''FMP-email'').value;">{$_lang[''send'']}</button>\nEOD;\n\n            return $form;\n        }\n\n        /* Get user info including a hash unique to this user, password, and day */\n        function getUser($user_id=false, $username='''', $email='''', $hash='''') {\n            global $modx, $_lang;\n\n            $user_id = $user_id == false ? false : $modx->db->escape($user_id);\n            $username = $modx->db->escape($username);\n            $email = $modx->db->escape($email);\n            $emaail = $modx->db->escape($hash);\n\n			$pre = $modx->db->config[''table_prefix''];\n			$site_id = $modx->config[''site_id''];\n			$today = date(''Yz''); // Year and day of the year\n			$wheres = array();\n			$where = '''';\n			$user = null;\n  \n            if($user_id !== false) { $wheres[] = "usr.id = ''{$user_id}''"; }\n            if(!empty($username)) { $wheres[] = "usr.username = ''{$username}''"; }\n            if(!empty($email)) { $wheres[] = "attr.email = ''{$email}''"; }\n            if(!empty($hash)) { $wheres[] = "MD5(CONCAT(usr.username,usr.password,''{$site_id}'',''{$today}'')) = ''{$hash}''"; } \n\n            if($wheres) {\n                $where = '' WHERE ''.implode('' AND '',$wheres);\n                $sql = "SELECT usr.id, usr.username, attr.email, MD5(CONCAT(usr.username,usr.password,''{$site_id}'',''{$today}'')) AS hash\n                    FROM `{$pre}manager_users` usr\n                    INNER JOIN `{$pre}user_attributes` attr ON usr.id = attr.internalKey\n                    {$where}      \n                    LIMIT 1;"; \n\n                if($result = $modx->db->query($sql)){\n                    if($modx->db->getRecordCount($result)==1) {\n                        $user = $modx->db->getRow($result);\n                    }\n                }\n            }\n\n            if($user == null) { $this->errors[] = $_lang[''could_not_find_user'']; }\n\n            return $user;\n        }\n\n\n\n        /* Send an email with a link to login */\n        function sendEmail($to) {\n            global $modx, $_lang;\n\n            $subject = $_lang[''password_change_request''];\n            $headers  = "MIME-Version: 1.0\\r\\n".\n                "Content-type: text/html; charset=\\"{$modx->config[''modx_charset'']}\\"\\r\\n".\n		"From: MODx <{$modx->config[''emailsender'']}>\\r\\n".\n                "Reply-To: no-reply@{$_SERVER[''HTTP_HOST'']}\\r\\n".\n                "X-Mailer: PHP/".phpversion();\n\n            $user = $this->getUser(0, '''', $to);\n  \n            if($user[''username'']) {\n                $body = <<<EOD\n<p>{$_lang[''forgot_password_email_intro'']} <a href="{$modx->config[''site_url'']}manager/processors/login.processor.php?username={$user[''username'']}&hash={$user[''hash'']}">{$_lang[''forgot_password_email_link'']}</a></p>\n<p>{$_lang[''forgot_password_email_instructions'']}</p>\n<p><small>{$_lang[''forgot_password_email_fine_print'']}</small></p>\nEOD;\n\n                $mail = mail($to, $subject, $body, $headers);\n                if(!$mail) { $this->errors[] = $_lang[''error_sending_email'']; }\n   \n                return $mail;  \n            }\n        }\n\n        function unblockUser($user_id) {\n            global $modx, $_lang;\n\n            $pre = $modx->db->config[''table_prefix''];\n            $modx->db->update(array(''blocked'' => 0, ''blockeduntil'' => 0, ''failedlogincount'' => 0), "`{$pre}user_attributes`", "internalKey = ''{$user_id}''");\n\n            if(!$modx->db->getAffectedRows()) { $this->errors[] = $_lang[''user_doesnt_exist'']; return; }\n\n            return true;\n        }\n\n        function checkLang() {\n            global $_lang;\n\n            $eng = array();\n            $eng[''forgot_your_password''] = ''Forgot your password?'';\n            $eng[''account_email''] = ''Account email'';\n            $eng[''send''] = ''Send'';\n            $eng[''password_change_request''] = ''Password change request'';\n            $eng[''forgot_password_email_intro''] = ''A request has been made to change the password on your account.'';\n            $eng[''forgot_password_email_link''] = ''Click here to complete the process.'';\n            $eng[''forgot_password_email_instructions''] = ''From there you will be able to change your password from the My Account menu.'';\n            $eng[''forgot_password_email_fine_print''] = ''* The URL above will expire once you change your password or after today.'';\n            $eng[''error_sending_email''] = ''Error sending email'';\n            $eng[''could_not_find_user''] = ''Could not find user'';\n            $eng[''user_doesnt_exist''] = ''User does not exist'';\n            $eng[''email_sent''] = ''Email sent'';\n\n            foreach($eng as $key=>$value) {\n                if(empty($_lang[$key])) { $_lang[$key] = $value; }\n            }  \n        }\n\n        function getErrorOutput() {\n            $output = '''';\n\n            if($this->errors) {\n                $output = ''<span class="error">''.implode(''</span><span class="errors">'', $this->errors).''</span>'';\n            }\n  \n            return $output;\n        }\n    }\n}\n\nglobal $_lang;\n\n$output = '''';\n$event_name = $modx->Event->name;\n$action = (empty($_GET[''action'']) ? '''' : $_GET[''action'']);\n$username = (empty($_GET[''username'']) ? false : $_GET[''username'']);\n$to = (empty($_GET[''email'']) ? '''' : $_GET[''email'']);\n$hash = (empty($_GET[''hash'']) ? false : $_GET[''hash'']);\n$forgot = new ForgotManagerPassword();\n\nif($event_name == ''OnManagerLoginFormRender'') {\n    switch($action) {\n        case ''show_form'':\n            $output = $forgot->getForm();\n            break;\n        case ''send_email'':\n            if($forgot->sendEmail($to)) { $output = $_lang[''email_sent'']; }\n            break;\n        default:\n            $output = $forgot->getLink();\n            break;\n    }\n\n    if($forgot->errors) { $output = $forgot->getErrorOutput() . $forgot->getLink(); }\n}\n\nif($event_name == ''OnBeforeManagerLogin'') {\n    $user = $forgot->getUser(false, $username, '''', $hash);\n    if($user && is_array($user) && !$forgot->errors) {\n        $forgot->unblockUser($user[''id'']);\n    }\n}\n\nif($event_name == ''OnManagerAuthentication'' && $hash && $username) {\n    $user = $forgot->getUser(false, $username, '''', $hash);\n    $output = ($user !== null && count($forgot->errors) == 0) ? true : false;\n}\n\n$modx->Event->output($output);', 0, '', 0, ''),
(2, 'Show Image TVs', '<strong>1.0</strong> Preview images in the Manager from image Template Variables', 0, 0, 0, '//    @author     Brett @ The Man Can!\n//                rewritten by Rachael Black, update by pixelchutes and rthrash\n//                now works with MooTools and finds the image tvs itself\n//\n\n/* ---------------------------------------------------------------\nInstructions:\n     Create a new Plugin and tick Documents > OnDocFormRender event.\n     Make sure it is set to execute after any other plugin that\n     could effect the template, like InheritParentTemplate. To edit\n     the plugin execution order, from the manager go to Resources >\n     Manage Resources > Plugins > Edit Plugin Execution Order by Event\n     link. That''s it. It should now show images of all image TVs.\n\n     To configure image size, copy the following text (no leading spaces):\n       &w=Max width;int;300 &h=Max height;int;100\n     into the plugin configuration and change values to suit\n     This sets style="max-width: ; max-height: " for the image\n     If you don''t configure w or h, the image will be fullsize but\n     you can add a css rule rule div.tvimage img {...} to the Manager Theme\n------------------------------------------------------------------- */\n\nglobal $content;\n$template = $content[''template''];\n$e = &$modx->Event;\n\nif ($e->name == ''OnDocFormRender'' && ($template > 0)) {\n	$site = $modx->config[''site_url''];\n\n	if (isset($w) || isset($h)) {\n		$w = isset($w) ? $w : 300;\n		$h = isset($h) ? $h : 100;\n		$style = "''max-width:{$w}px; max-height:{$h}px''";\n	}\n	else\n		$style = '''';\n\n	// get list of all image template vars using TV ids from Evo\n	$table = $modx->getFullTableName(''site_tmplvars'');\n	$result = $modx->db->select(''id'', $table, "type=''image''");\n	$tvs = '''';\n	while ($row = $modx->db->getRow($result))\n		$tvs .= ",''" . $row[''id''] . "''";\n	$tvs = substr($tvs, 1);		// remove leading '',''\n\n	$output = <<< EOT\n<!-- ShowImageTVs Plugin :: Start -->\n\n<script type="text/javascript" charset="utf-8">\n  var imageNames = [$tvs];\n  var pageImages = [];\n\n  function full_url(url)\n  {\n	new_url = (url != '''' && url.search(/http:\\/\\//i) == -1) ? (''$site'' + url) : url;\n	return ( ( new_url.search(''@INHERIT'') == -1 ) ? new_url : new_url.replace( new RegExp(/@INHERIT/ig), '''' ) ); // Update by pixelchutes\n  }\n\n  function checkImages()\n  {\n    for (var i = 0; i < pageImages.length; i++) {\n    	var elem = pageImages[i];\n      var url = elem.value;\n      if (url != elem.oldUrl) {\n     	  elem.thumbnail.setProperty(''src'', full_url(url));\n     	  elem.thumbnail.setStyle(''display'', url=='''' ? ''none'': ''inline'');\n        elem.oldUrl = url;\n      }\n    }\n  }\n\n  window.onDomReady(function() {\n    for (var i = 0; i < imageNames.length; i++) {\n    	var elem = $(''tv'' + imageNames[i]);\n		if (elem) {\n		  var url = elem.value;\n\n		  // create div and img to show thumbnail\n		  var div = new Element(''div'').addClass(''tvimage'');\n		  var img = new Element(''img'').setProperty(''src'', full_url(url)).setStyles($style);\n		  if (url == '''') img.setStyle(''display'', ''none'');\n		  elem.getParent().adopt(div.adopt(img));\n\n		  elem.thumbnail = img;    // direct access for when need to update\n		  elem.oldUrl = url;   	   // oldUrl so change HTML only when necessary\n		  pageImages.push(elem);   // save so don''t have to search each time\n		}\n    }\n    setInterval(checkImages, 1000);\n  })\n</script>\n\n<!-- ShowImageTVs Plugin :: End -->\nEOT;\n\n	$e->output($output);\n}\n\n// ?>\n', 0, '', 1, ''),
(3, 'Inherit Parent Template', '<strong>1.1</strong> Newly created Resources use the same template as their Parent or Sibling Containers', 0, 3, 0, '/*\n * Inherit Parent Template\n *\n * Written By Raymond Irving - 12 Oct 2006\n *\n * Simply results in new documents inheriting the template \n * of their parent folder upon creating a new document\n *\n * Configuration:\n * check the OnDocFormPrerender event\n *\n * Version 1.1\n *\n */\n\nglobal $content;\n$e = &$modx->Event;\n\nswitch($e->name) {\n    case ''OnDocFormPrerender'':        \n        if ($inheritTemplate == ''From First Sibling'') {\n            if ($_REQUEST[''pid''] > 0 && $id == 0) {\n                if ($sibl = $modx->getDocumentChildren($_REQUEST[''pid''], 1, 0, ''template'', '''', ''menuindex'', ''ASC'', 1)) {\n                    $content[''template''] = $sibl[0][''template''];\n                } else if ($sibl = $modx->getDocumentChildren($_REQUEST[''pid''], 0, 0, ''template'', '''', ''menuindex'', ''ASC'', 1)) {\n                    $content[''template''] = $sibl[0][''template''];\n                } else if ($parent = $modx->getPageInfo($_REQUEST[''pid''], 0, ''template'')) {\n                    $content[''template''] = $parent[''template''];\n                }\n            }\n        } else {\n             if ($parent = $modx->getPageInfo($_REQUEST[''pid''],0,''template'')) {\n                 $content[''template''] = $parent[''template''];\n             }\n        }\n        break;\n    default:\n        break;\n}', 0, '&inheritTemplate=Inherit Template;list;From Parent,From First Sibling;From Parent', 0, ''),
(4, 'ManagerManager', '<strong>0.3.8</strong> Customize the MODx Manager to offer bespoke admin functions for end users.', 0, 3, 0, '// You can put your ManagerManager rules EITHER in a chunk OR in an external file - whichever suits your development style the best\n\n// To use an external file, put your rules in /assets/plugins/managermanager/mm_rules.inc.php \n// (you can rename default.mm_rules.inc.php and use it as an example)\n// The chunk SHOULD have php opening tags at the beginning and end\n\n// If you want to put your rules in a chunk (so you can edit them through the Manager),\n// create the chunk, and enter its name in the configuration tab.\n// The chunk should NOT have php tags at the beginning or end\n\n// ManagerManager requires jQuery 1.3+\n// The URL to the jQuery library. Choose from the configuration tab whether you want to use \n// a local copy (which defaults to the jQuery library distributed with ModX 1.0.1)\n// a remote copy (which defaults to the Google Code hosted version)\n// or specify a URL to a custom location.\n// Here we set some default values, because this is a convenient place to change them if we need to,\n// but you should configure your preference via the Configuration tab.\n$js_default_url_local = $modx->config[''site_url'']. ''/assets/js/jquery-1.3.2.min.js'';\n$js_default_url_remote = ''http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js'';\n\n// You don''t need to change anything else from here onwards\n//-------------------------------------------------------\n\n// Run the main code\n$asset_path = $modx->config[''base_path''] . ''assets/plugins/managermanager/mm.inc.php'';\ninclude($asset_path);', 0, '&config_chunk=Configuration Chunk;text;mm_demo_rules; &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &which_jquery=jQuery source;list;local (assets/js),remote (google code),manual url (specify below);local (assets/js) &js_src_type=jQuery URL override;text;', 0, ''),
(5, 'Quick Manager+', '<strong>1.3.4.1</strong> Enables QuickManager front end content editing support', 0, 3, 0, '$show = TRUE;\n\nif ($disabled  != '''') {\n    $arr = explode(",", $disabled );\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    include_once($modx->config[''base_path''].''assets/plugins/qm/qm.inc.php'');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide);\n}', 0, '&jqpath=Path to jQuery;text;assets/js/jquery-1.3.2.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;true &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3  &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true', 0, ''),
(6, 'Search Highlight', '<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results', 0, 4, 0, '/*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.modx.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://modxcms.com/forums/index.php/topic,1237.0.html\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  ''utf8'' => ''UTF-8'',\n  ''latin1'' => ''ISO-8859-1'',\n  ''latin2'' => ''ISO-8859-2''\n);\n\nif (isset($_REQUEST[''searched'']) && isset($_REQUEST[''highlight''])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = ''<div class="searchTerms">Search Terms: '';\n     $removeText = ''Remove Highlighting'';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = ''oneword'';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  // magic quotes check\n  if (get_magic_quotes_gpc()){\n    $searched = strip_tags(stripslashes($_REQUEST[''searched'']));\n    $highlight = strip_tags(stripslashes($_REQUEST[''highlight'']));\n    if (isset($_REQUEST[''advsearch''])) $advsearch = strip_tags(stripslashes($_REQUEST[''advsearch'']));\n  }\n  else {\n    $searched = strip_tags($_REQUEST[''searched'']);\n    $highlight = strip_tags($_REQUEST[''highlight'']);\n    if (isset($_REQUEST[''advsearch''])) $advsearch = strip_tags($_REQUEST[''advsearch'']);\n  }\n\n  if ($advsearch != ''nowords'') {\n\n    $searchArray = array();\n    if ($advsearch == ''exactphrase'') $searchArray[0] = $searched;\n    else $searchArray = explode('' '', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(''term'' => $word, ''class'' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode("<body", $output); // break out the head\n\n    $highlightClass = explode('' '',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(''/[^A-Za-z0-9_-]/ms'', $value) == 1 ? '''' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == ''UTF-8'') ? ''iu'' : ''i'';\n    $lookBehind = ''/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)'';  // avoid a match with a html entity\n    $lookAhead = ''(?=[^>]*<)/''; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][''term''];\n      $class = $highlightClass[0].'' ''.$highlightClass[$searchTerms[$i][''class'']];\n\n      $highlightText .= ($i > 0) ? '', '' : '''';\n      $highlightText .= ''<span class="''.$class.''">''.$word.''</span>'';\n\n      $pattern = $lookBehind . preg_quote($word, ''/'') . $lookAhead . $pcreModifier;\n      $replacement = ''<span class="'' . $class . ''">${0}</span>'';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode("<body", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= ''<br /><a href="''.$removeUrl.''" class="ajaxSearch_removeHighlight">''.$removeText.''</a></div>'';\n\n    $output = str_replace(''<!--search_terms-->'',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}', 0, '', 0, ''),
(7, 'TinyMCE Rich Text Editor', '<strong>3.3.5.1</strong> Javascript WYSIWYG Editor', 0, 3, 0, '// Set the name of the plugin folder\n$plugin_dir = "tinymce";\n\n// Set path and base setting variables\nif(!isset($mce_path))\n{ \n	$mce_path = MODX_BASE_PATH . ''assets/plugins/''.$plugin_dir . ''/''; \n	$mce_url  = MODX_BASE_URL  . ''assets/plugins/''.$plugin_dir . ''/''; \n}\n\n$params[''customparams'']    = $customparams;\n$params[''blockFormats'']    = $mce_formats;\n$params[''entity_encoding''] = $entity_encoding;\n$params[''entities'']        = $entities;\n$params[''pathoptions'']     = $mce_path_options;\n$params[''resizing'']        = $mce_resizing;\n$params[''disabledButtons''] = $disabledButtons;\n$params[''link_list'']       = $link_list;\n$params[''theme'']           = $webtheme;\n$params[''custom_plugins'']  = $webPlugins;\n$params[''custom_buttons1''] = $webButtons1;\n$params[''custom_buttons2''] = $webButtons2;\n$params[''custom_buttons3''] = $webButtons3;\n$params[''custom_buttons4''] = $webButtons4;\n$params[''toolbar_align'']   = $webAlign;\n$params[''width'']           = $width;\n$params[''height'']          = $height;\n\n$params[''mce_path'']        = $mce_path;\n$params[''mce_url'']         = $mce_url;\n\ninclude_once $mce_path . ''lang/tinymce.lang.php'';\ninclude_once $mce_path . ''tinymce.functions.php'';\n\n$mce = new TinyMCE($params);\n\n// Handle event\n$e = &$modx->Event; \nswitch ($e->name)\n{\n	case "OnRichTextEditorRegister": // register only for backend\n		$e->output("TinyMCE");\n		break;\n\n	case "OnRichTextEditorInit": \n		if($editor!=="TinyMCE") return;\n		\n		$params[''elements'']        = $elements;\n		$params[''css_selectors'']   = $modx->config[''tinymce_css_selectors''];\n		$params[''use_browser'']     = $modx->config[''use_browser''];\n		$params[''editor_css_path''] = $modx->config[''editor_css_path''];\n		\n		if($modx->isBackend())\n		{\n			$params[''theme'']           = $modx->config[''tinymce_editor_theme''];\n			$params[''language'']        = getTinyMCELang($modx->config[''manager_language'']);\n			$params[''frontend'']        = false;\n			$params[''custom_plugins'']  = $modx->config[''tinymce_custom_plugins''];\n			$params[''custom_buttons1''] = $modx->config[''tinymce_custom_buttons1''];\n			$params[''custom_buttons2''] = $modx->config[''tinymce_custom_buttons2''];\n			$params[''custom_buttons3''] = $modx->config[''tinymce_custom_buttons3''];\n			$params[''custom_buttons4''] = $modx->config[''tinymce_custom_buttons4''];\n			$params[''toolbar_align'']   = $modx->config[''manager_direction''];\n			$params[''webuser'']         = null;\n			\n			$html = $mce->get_mce_script($params);\n		}\n		else\n		{\n			$frontend_language = isset($modx->config[''fe_editor_lang'']) ? $modx->config[''fe_editor_lang'']:'''';\n			$webuser = (isset($modx->config[''rb_webuser'']) ? $modx->config[''rb_webuser''] : null);\n			\n			$params[''webuser'']         = $webuser;\n			$params[''language'']        = getTinyMCELang($frontend_language);\n			$params[''frontend'']        = true;\n			\n			$html = $mce->get_mce_script($params);\n		}\n		$e->output($html);\n		break;\n\n	case "OnInterfaceSettingsRender":\n		global $usersettings,$settings;\n		$action = $modx->manager->action;\n		switch ($action)\n		{\n			case 11:\n				$mce_settings = '''';\n				break;\n			case 12:\n				$mce_settings = $usersettings;\n				break;\n			case 17:\n				$mce_settings = $settings;\n				break;\n			default:\n				$mce_settings = $settings;\n				break;\n		}\n		\n		$params[''use_editor'']       = $modx->config[''base_url''].$modx->config[''use_editor''];\n        $params[''editor_css_path'']  = $modx->config[''editor_css_path''];\n		$params[''theme'']            = $mce_settings[''tinymce_editor_theme''];\n		$params[''css_selectors'']    = $mce_settings[''tinymce_css_selectors''];\n		$params[''custom_plugins'']   = $mce_settings[''tinymce_custom_plugins''];\n		$params[''custom_buttons1'']  = $mce_settings[''tinymce_custom_buttons1''];\n		$params[''custom_buttons2'']  = $mce_settings[''tinymce_custom_buttons2''];\n		$params[''custom_buttons3'']  = $mce_settings[''tinymce_custom_buttons3''];\n		$params[''custom_buttons4'']  = $mce_settings[''tinymce_custom_buttons4''];\n		\n		$html = $mce->get_mce_settings($params);\n		$e->output($html);\n		break;\n		\n	default :\n		return; // stop here - this is very important. \n		break; \n}\n', 0, '&customparams=Custom Parameters;textarea; &mce_formats=Block Formats;text;p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre &entity_encoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &mce_path_options=Path Options;list;rootrelative,docrelative,fullpathurl;docrelative &mce_resizing=Advanced Resizing;list;true,false;true &disabledButtons=Disabled Buttons;text; &link_list=Link List;list;enabled,disabled;enabled &webtheme=Web Theme;list;simple,editor,creative,custom;simple &webPlugins=Web Plugins;text;style,advimage,advlink,searchreplace,contextmenu,paste,fullscreen,nonbreaking,xhtmlxtras,visualchars,media &webButtons1=Web Buttons 1;text;undo,redo,selectall,|,pastetext,pasteword,|,search,replace,|,nonbreaking,hr,charmap,|,image,link,unlink,anchor,media,|,cleanup,removeformat,|,fullscreen,code,help &webButtons2=Web Buttons 2;text;bold,italic,underline,strikethrough,sub,sup,|,|,blockquote,bullist,numlist,outdent,indent,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,|,styleprops &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400', 0, ''),
(8, 'TransAlias', '<strong>1.0.1</strong> Human readible URL translation supporting multiple languages and overrides', 0, 3, 0, '/*\n * Initialize parameters\n */\nif (!isset ($alias)) { return ; }\nif (!isset ($plugin_dir) ) { $plugin_dir = ''transalias''; }\nif (!isset ($plugin_path) ) { $plugin_path = $modx->config[''base_path''].''assets/plugins/''.$plugin_dir; }\nif (!isset ($table_name)) { $table_name = ''common''; }\nif (!isset ($char_restrict)) { $char_restrict = ''lowercase alphanumeric''; }\nif (!isset ($remove_periods)) { $remove_periods = ''No''; }\nif (!isset ($word_separator)) { $word_separator = ''dash''; }\nif (!isset ($override_tv)) { $override_tv = ''''; }\n\nif (!class_exists(''TransAlias'')) {\n    require_once $plugin_path.''/transalias.class.php'';\n}\n$trans = new TransAlias($modx);\n\n/*\n * see if TV overrides the table name\n */\nif(!empty($override_tv)) {\n    $tvval = $trans->getTVValue($override_tv);\n    if(!empty($tvval)) {\n        $table_name = $tvval;\n    }\n}\n\n/*\n * Handle events\n */\n$e =& $modx->event;\nswitch ($e->name ) {\n    case ''OnStripAlias'':\n        if ($trans->loadTable($table_name, $remove_periods)) {\n            $output = $trans->stripAlias($alias,$char_restrict,$word_separator);\n            $e->output($output);\n            $e->stopPropagation();\n        }\n        break ;\n    default:\n        return ;\n}', 0, '&table_name=Trans table;list;common,russian,utf8,utf8lowercase;utf8lowercase &char_restrict=Restrict alias to;list;lowercase alphanumeric,alphanumeric,legal characters;legal characters &remove_periods=Remove Periods;list;Yes,No;No &word_separator=Word Separator;list;dash,underscore,none;dash &override_tv=Override TV name;string;', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_plugin_events`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL default '0',
  `priority` int(10) NOT NULL default '0' COMMENT 'determines plugin run order'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

--
-- Dumping data for table `mtzrad_site_plugin_events`
--

INSERT INTO `mtzrad_site_plugin_events` (`pluginid`, `evtid`, `priority`) VALUES
(1, 80, 0),
(1, 81, 0),
(1, 93, 0),
(2, 29, 0),
(3, 28, 0),
(4, 28, 0),
(4, 29, 0),
(4, 35, 0),
(4, 53, 0),
(5, 3, 0),
(5, 13, 0),
(5, 28, 0),
(5, 31, 0),
(6, 3, 0),
(7, 85, 0),
(7, 87, 0),
(7, 88, 0),
(8, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_snippets`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_snippets` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default 'Snippet',
  `editor_type` int(11) NOT NULL default '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL default '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL default '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL default '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL default '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `mtzrad_site_snippets`
--

INSERT INTO `mtzrad_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`) VALUES
(1, 'AjaxSearch', '<strong>1.9.0</strong> Ajax and non-Ajax search that supports results highlighting', 0, 4, 0, '/**\r\n--------------------------------------------------------------------------------\r\n:: Preamble\r\n--------------------------------------------------------------------------------\r\nThe release 1.9 looks like the previous release, but it is a completely\r\nrefactored development.\r\n\r\nIt is partially based on the previous releases of AjaxSearch written by the\r\nfollowing authors:\r\n\r\n Coroico <coroico@wangba.fr>\r\n Jason Coward <jason@opengeek.com>\r\n Kyle Jaebker <kjaebker@muddydogpaws.com>\r\n Ryan Thrash  <ryan@vertexworks.com>\r\n\r\n--------------------------------------------------------------------------------\r\n:: Description\r\n--------------------------------------------------------------------------------\r\n\r\n        Ajax and non-Ajax search that supports results highlighting.\r\n\r\nThis snippet adds AJAX functionality on top of the robust content searching.\r\n\r\nWhat AjaxSearch do:\r\n- search in fields of the content an TV MODx tables\r\n- several customizable input forms available\r\n- search in a subset of documents\r\n- highlighting of searchword in the results returned\r\n- allow a filtering of search results\r\n- displaying of search results customizable thru templates\r\n- group the search results by categories\r\n- filter features (allow to set up specific search forms)\r\n\r\nIt could works in two modes:\r\n\r\najax mode :\r\n- search results displayed in current page through AJAX request\r\n- multiple search options including live search\r\n- available link to view all results in a new page when only a subset is returned\r\n- customize the number of results returned\r\n- offer two types for paginating the results\r\n- uses the MooTools or JQuery js library for AJAX and visual effects\r\n\r\nnon-ajax mode :\r\n- search results displayed in a new page or below on the same page\r\n- offer two types for paginating the results\r\n- works without JS enabled\r\n\r\nWhat AjaxSearch don''t :\r\n- search in dynamic content. AjaxSearch could retreive only data stored in\r\ndatabase. It can''t find something stored in a chunk or generated by a snippet.\r\n\r\nMORE : See the ajaxSearch.readme.txt file for more informations. \r\n\r\n----------------------------------------------------------------------------- */\r\n\r\n// ajaxSearch version being executed\r\ndefine(''AS_VERSION'', ''1.9.0'');\r\n// Path where ajaxSearch is installed\r\ndefine(''AS_SPATH'', ''assets/snippets/ajaxSearch/'');\r\n//include snippet file\r\ndefine(''AS_PATH'', MODX_BASE_PATH . AS_SPATH);\r\n\r\n//------------------------------------------------------------------------------\r\n// Configuration - general AjaxSearch snippet setup options\r\n//------------------------------------------------------------------------------\r\nglobal $modx;\r\n$tstart = $modx->getMicroTime();\r\n\r\n// Load the default configuration $dcfg to get the default values\r\n$default = AS_PATH . ''configs/default.config.php'';\r\nif (file_exists($default)) include $default;\r\nelse return "<h3>AjaxSearch error: $default not found !<br />Check the existing of this file!</h3>";\r\nif (!isset($dcfg)) return "<h3>AjaxSearch error: default configuration array not defined in $default!<br /> Check the content of this file!</h3>";\r\n$cfg = array(); // current configuration\r\n\r\n// Load a custom configuration file if required\r\n// config_name - Other config installed in the configs folder or in any folder within the MODx base path via @FILE\r\n// Configuration files should be named in the form: <config_name>.config.php\r\n// Default: '''' - no custom config\r\n$cfg[''config''] = isset($config) ? $config : $dcfg[''config''];\r\nif ($cfg[''config'']) {\r\n    $config = $cfg[''config''];\r\n    $lconfig = (substr($config, 0, 5) != "@FILE") ? AS_PATH . "configs/$config.config.php" : $modx->config[''base_path''] . trim(substr($config, 5));\r\n    if (file_exists($lconfig)) include $lconfig;\r\n    else return "<h3>AjaxSearch error: " . $lconfig . " not found !<br />Check your config parameter or your config file name!</h3>";\r\n}\r\n\r\n// &debug = [ 0 | 1 | 2 | 3 ]\r\n// 1,2,3 : File mode - Output logged into a file named ajaxSearch_log.txt in ajaxSearch/debug/ directory.\r\n// this directory should be writable.\r\n// Default: 0 - no logs\r\n$cfg[''debug''] = isset($debug) ? $debug : (isset($__debug) ? $__debug : $dcfg[''debug'']);\r\n\r\n// &timeLimit = [ int | 60 ]\r\n// Max execution time in seconds for the AjaxSearch script\r\n// 0 - If set to zero, no time limit is imposed\r\n// Default: 60 - 1 minute.\r\n$cfg[''timeLimit''] = isset($timeLimit) ? $timeLimit : (isset($__timeLimit) ? $__timeLimit : $dcfg[''timeLimit'']);\r\n\r\n// &language [ language_name | manager_language ] (optional)\r\n// Default: $modx->config[''manager_language''] - manager language used\r\n$cfg[''language''] = isset($language) ? $language : (isset($__language) ? $__language : $dcfg[''language'']);\r\n\r\n// &ajaxSearch [1 | 0] (as passed in snippet variable ONLY)\r\n// Use this to display the search results using ajax You must include the Mootools library in your template\r\n// Default: 1 - ajax mode selected\r\n$cfg[''ajaxSearch''] = isset($ajaxSearch) ? $ajaxSearch : (isset($__ajaxSearch) ? $__ajaxSearch : $dcfg[''ajaxSearch'']);\r\n\r\n// &advSearch [ ''exactphrase'' | ''allwords'' | ''nowords'' | ''oneword'' ]\r\n// Advanced search:\r\n// - exactphrase : provides the documents which contain the exact phrase\r\n// - allwords : provides the documents which contain all the words\r\n// - nowords : provides the documents which do not contain the words\r\n// - oneword : provides the document which contain at least one word\r\n// Default: ''oneword''\r\n$cfg[''advSearch''] = isset($advSearch) ? $advSearch : (isset($__advSearch) ? $__advSearch : $dcfg[''advSearch'']);\r\n\r\n// &asId - Unique id for AjaxSearch instance\r\n// this allows to distinguish several Ajaxsearch instances on the same page\r\n// Any combination of characters a-z, underscores, and numbers 0-9\r\n// This is case sensitive. Default = empty string\r\n// With ajax mode, the first snippet call of the page shouldn''t use the asId parameter\r\n$cfg[''asId''] = isset($asId) ? $asId : (isset($__asId) ? $__asId : $dcfg[''asId'']);\r\n\r\n// &whereSearch\r\n// Define where should occur the search\r\n// a separated list of keywords describing the tables where to search\r\n// keywords allowed :\r\n// "content" for site_content, "tv" for site_tmplvar_contentvalues, "jot" for jot_content, "maxigallery" for maxigallery\r\n// you could add your own keywords. But the keyword should be a user function which describes the tables to use\r\n// all the text fields are searchable but you could specify the fields like this:\r\n// whereSearch=`content:pagetitle,introtext,content|tv:tv_value|maxigallery:gal_title`\r\n// Default: ''content|tv''\r\n$cfg[''whereSearch''] = isset($whereSearch) ? $whereSearch : (isset($__whereSearch) ? $__whereSearch : $dcfg[''whereSearch'']);\r\n\r\n// &sites : [comma separated list of sites]\r\n// sites allow to define sites where to do the search\r\n$cfg[''sites''] = isset($sites) ? $sites : (isset($__sites) ? $__sites : $dcfg[''sites'']);\r\n\r\n// &subSearch  [comma separated list of subsites]\r\n// subSearch allow to define sub-domains or subsites where to do the search\r\n$cfg[''subSearch''] = isset($subSearch) ? $subSearch : (isset($__subSearch) ? $__subSearch : $dcfg[''subSearch'']);\r\n\r\n// &category  [ tv_name ]\r\n// Any combination of characters a-z, underscores, and numbers 0-9\r\n// This is case sensitive. Default = empty string\r\n// Name of a TV. The category of a MODx document is provided by this TV content\r\n$cfg[''category''] = isset($category) ? $category : (isset($__category) ? $__category : $dcfg[''category'']);\r\n\r\n// &display [ ''mixed'' | ''unmixed'' ]\r\n// When results comes from differents sites, subsites or categories, you could choose to display the results mixed or unmixed.\r\n// Default: unmixed\r\n// Unmixed mode display the results grouped by site, subsite or category. Each group of results could be paginated.\r\n// Mixed mode mixe all the results coming from the differents area.\r\n// With unmixed mode, results are ordered by the field provided by the first field of the order parameter\r\n$cfg[''display''] = isset($display) ? $display : (isset($__display) ? $__display : $dcfg[''display'']);\r\n\r\n// &init  [ ''none'' | ''all'' ]\r\n// init defines if the search display all the results or none when the search term is an empty string\r\n// Default: none\r\n$cfg[''init''] = isset($init) ? $init : (isset($__init) ? $__init : $dcfg[''init'']);\r\n\r\n// &withTvs - Define which Tvs are used for the search in Tvs\r\n// a comma separated list of TV names\r\n// Default: '''' - all TVs are used (empty list)\r\n$cfg[''withTvs''] = isset($withTvs) ? $withTvs : (isset($__withTvs) ? $__withTvs : $dcfg[''withTvs'']);\r\n\r\n// &order - Define the sort order of results\r\n// Comma separated list of fields defined as searchable in the table definition\r\n// to suppress the sorting, use &order=``\r\n// Default: ''pub_date,pagetitle''\r\n$cfg[''order''] = isset($order) ? $order : (isset($__order) ? $__order : $dcfg[''order'']);\r\n\r\n// &rank - Define the rank of search results. Results are sorted by rank value\r\n// Comma separated list of fields with optionally user defined weight\r\n// Default: ''pagetitle:100,extract''\r\n// to suppress the rank sorting, use &rank=``;\r\n// &rank sort occurs after the &order sort\r\n$cfg[''rank''] = isset($rank) ? $rank : (isset($__rank) ? $__rank : $dcfg[''rank'']);\r\n\r\n// &maxWords [ 1 < int < 10 ]\r\n// Maximum number of words for searching\r\n// Default: 5\r\n$cfg[''maxWords''] = isset($maxWords) ? intval($maxWords) : (isset($__maxWords) ? intval($__maxWords) : $dcfg[''maxWords'']);\r\n\r\n// &minChars [  2 < int < 100 ]\r\n// Minimum number of characters to require for a word to be valid for searching.\r\n// length of each word with $advSearch = ''allwords'', ''oneword'' or ''nowords''\r\n// length of the search string with possible spaces with $advSearch = ''exactphrase''\r\n// Default: 3\r\n$cfg[''minChars''] = isset($minChars) ? intval($minChars) : (isset($__minChars) ? intval($__minChars) : $dcfg[''minChars'']);\r\n\r\n// &showInputForm [0 | 1]\r\n// If you would like to turn off the search form when showing results you can set this to false.(1=true, 0=false)\r\n// Default: 1\r\n$cfg[''showInputForm''] = isset($showInputForm) ? $showInputForm : (isset($__showInputForm) ? $__showInputForm : $dcfg[''showInputForm'']);\r\n\r\n// &showIntro [0 | 1]\r\n// If you would like to turn off the intro message beyond the input form you can set this to false.(1=true, 0=false)\r\n// Default: 1\r\n$cfg[''showIntro''] = isset($showIntro) ? $showIntro : (isset($__showIntro) ? $__showIntro : $dcfg[''showIntro'']);\r\n\r\n// &grabMax [ int ]\r\n// Set to the max number of records you would like on each page. Set to 0 if unlimited.\r\n// Default: 10\r\n$cfg[''grabMax''] = isset($grabMax) ? intval($grabMax) : (isset($__grabMax) ? intval($__grabMax) : $dcfg[''grabMax'']);\r\n\r\n// &extract [ n:searchable fields list | 1:content,description,introtext,tv_content]\r\n// show the search terms highlighted in a little extract\r\n// n : maximum number of extracts displayed\r\n// ordered searchable fields list : separated list of fields define as searchable in the table definition\r\n// Default: ''1:content,description,introtext,tv_value'' - One extract from content then description,introtext,tv_value\r\n$cfg[''extract''] = isset($extract) ? $extract : (isset($__extract) ? $__extract : $dcfg[''extract'']);\r\n\r\n// &extractLength [ 50 < int < 800]\r\n// Length of extract around the search words found - between 50 and 800 characters\r\n// Default: 200\r\n$cfg[''extractLength''] = isset($extractLength) ? intval($extractLength) : (isset($__extractLength) ? intval($__extractLength) : $dcfg[''extractLength'']);\r\n\r\n// &extractEllips [ string ]\r\n// Ellipside to mark the star and the end of  an extract when the sentence is cutting\r\n// Default: ''...''\r\n$cfg[''extractEllips''] = isset($extractEllips) ? $extractEllips : (isset($__extractEllips) ? $__extractEllips : $dcfg[''extractEllips'']);\r\n\r\n// &extractSeparator [ string ]\r\n// Any html tag to mark the separation between extracts\r\n// Default: ''<br />'' - but you could also choose for instance ''<hr />''\r\n$cfg[''extractSeparator''] = isset($extractSeparator) ? $extractSeparator : (isset($__extractSeparator) ? $__extractSeparator : $dcfg[''extractSeparator'']);\r\n\r\n// &formatDate [ string ]\r\n// The format of outputted dates. See http://www.php.net/manual/en/function.date.php\r\n// Default: ''d/m/y : H:i:s'' - e.g: 21/01/08 : 23:09:22\r\n$cfg[''formatDate''] = isset($formatDate) ? $formatDate : (isset($__formatDate) ? $__formatDate : $dcfg[''formatDate'']);\r\n\r\n// &highlightResult [1 | 0]\r\n// create links so that search terms will be highlighted when linked page clicked\r\n// Default: 1 - Results highlighted\r\n$cfg[''highlightResult''] = isset($highlightResult) ? $highlightResult : (isset($__highlightResult) ? $__highlightResult : $dcfg[''highlightResult'']);\r\n\r\n// &pagingType[ 0 | 1 | 2 ]\r\n// Determine the pagination type used - Default 1 : Previous - X-Y/Z - Next\r\n$cfg[''pagingType''] = isset($pagingType) ? $pagingType : (isset($__pagingType) ? $__pagingType : $dcfg[''pagingType'']);\r\n\r\n// &pageLinkSeparator [ string ]\r\n// What you want, if anything, between your page link numbers\r\n// Default: '' | ''\r\n$cfg[''pageLinkSeparator''] = isset($pageLinkSeparator) ? $pageLinkSeparator : (isset($__pageLinkSeparator) ? $__pageLinkSeparator : $dcfg[''pageLinkSeparator'']);\r\n\r\n// &showPagingAlways[1 | 0]\r\n// Determine whether or not to always show paging\r\n$cfg[''showPagingAlways''] = isset($showPagingAlways) ? $showPagingAlways : (isset($__showPagingAlways) ? $__showPagingAlways : $dcfg[''showPagingAlways'']);\r\n\r\n// &landingPage  [int] set the page to show the results page (non Ajax search)\r\n// Default: false\r\n$cfg[''landingPage''] = isset($landingPage) ? $landingPage : (isset($__landingPage) ? $__landingPage : $dcfg[''landingPage'']);\r\n\r\n// &showResults  [1 | 0]  establish whether to show the results or not\r\n// Default: 1\r\n$cfg[''showResults''] = isset($showResults) ? $showResults : (isset($__showResults) ? $__showResults : $dcfg[''showResults'']);\r\n\r\n// &parents [ [ in | not in ] : comma separated list of Ids | '''' ]\r\n// Ids of documents to retrieve their children to &depth depth  where to do the search in or not in\r\n// Default: '''' - empty list\r\n$cfg[''parents''] = isset($parents) ? $parents : (isset($__parents) ? $__parents : $dcfg[''parents'']);\r\n\r\n// &documents [ [ in | not in ] : comma separated list of Ids | '''' ]\r\n// Ids of documents where to do the search in or not in\r\n// Default: '''' - empty list\r\n$cfg[''documents''] = isset($documents) ? $documents : (isset($__documents) ? $__documents : $dcfg[''documents'']);\r\n\r\n// &depth [ 0 < int ] Number of levels deep to retrieve documents\r\n// Default: 10\r\n$cfg[''depth''] = isset($depth) ? intval($depth) : (isset($__depth) ? intval($__depth) : $dcfg[''depth'']);\r\n\r\n// &hideMenu [0 | 1| 2]  Search in hidden documents from menu.\r\n// 0 - search only in documents visible from menu\r\n// 1 - search only in documents hidden from menu\r\n// 2 - search in hidden or visible documents from menu\r\n// Default: 2\r\n$cfg[''hideMenu''] = isset($hideMenu) ? $hideMenu : (isset($__hideMenu) ? $__hideMenu : $dcfg[''hideMenu'']);\r\n\r\n// &hideLink [0 | 1 ]   Search in content of type reference (link)\r\n// 0 - search in content of type document AND reference\r\n// 1 - search only in content of type document\r\n// Default: 1\r\n$cfg[''hideLink''] = isset($hideLink) ? $hideLink : (isset($__hideLink) ? $__hideLink : $dcfg[''hideLink'']);\r\n\r\n// &filter - Basic filtering : remove unwanted documents that meets the criteria of the filter\r\n// See Ditto 2 Basic filtering and the ajaxSearch demo site for more information\r\n// Default: '''' - empty list\r\n$cfg[''filter''] = isset($filter) ? $filter : (isset($__filter) ? $__filter : $dcfg[''filter'']);\r\n\r\n// &output [0 | 1 ]Custom layout\r\n// Default: 0 - Results are listed just under the input form\r\n// 1 - custom layout. put [+as.inputForm+] and [+as.results+] where you want to define the layout\r\n$cfg[''output''] = isset($output) ? $output : (isset($__output) ? $__output : $dcfg[''output'']);\r\n\r\n// &tplInput - Chunk to style the ajaxSearch input form\r\n// Default: ''@FILE:'' . AS_SPATH . ''templates/input.tpl.html''\r\n$cfg[''tplInput''] = isset($tplInput) ? $tplInput : (isset($__tplInput) ? $__tplInput : $dcfg[''tplInput'']);\r\n\r\n// &tplResults - Chunk to style the non-ajax output results outer\r\n// Default: ''@FILE:'' . AS_SPATH . ''templates/results.tpl.html''\r\n$cfg[''tplResults''] = isset($tplResults) ? $tplResults : (isset($__tplResults) ? $__tplResults : $dcfg[''tplResults'']);\r\n\r\n// &tplGrpResult - Chunk to style the non-ajax output group result outer\r\n// Default: ''@FILE:'' . AS_SPATH . ''templates/grpResult.tpl.html''\r\n$cfg[''tplGrpResult''] = isset($tplGrpResult) ? $tplGrpResult : (isset($__tplGrpResult) ? $__tplGrpResult : $dcfg[''tplGrpResult'']);\r\n\r\n// &tplResult - Chunk to style each output result\r\n// Default: "@FILE:" . AS_SPATH . ''templates/result.tpl.html''\r\n$cfg[''tplResult''] = isset($tplResult) ? $tplResult : (isset($__tplResult) ? $__tplResult : $dcfg[''tplResult'']);\r\n\r\n// &tplComment - Chunk to style the comment form (Also used with the ajax mode)\r\n// Default: ''@FILE:'' . AS_SPATH . ''templates/comment.tpl.html''\r\n$cfg[''tplComment''] = isset($tplComment) ? $tplComment : (isset($__tplComment) ? $__tplComment : $dcfg[''tplComment'']);\r\n\r\n// &tplPaging0 - Chunk to style the paging links - type 0\r\n// Default: ''@FILE:'' . AS_SPATH . ''templates/paging0.tpl.html''\r\n$cfg[''tplPaging0''] = isset($tplPaging0) ? $tplPaging0 : (isset($__tplPaging0) ? $__tplPaging0 : $dcfg[''tplPaging0'']);\r\n\r\n// &tplPaging1 - Chunk to style the paging links - type 1\r\n// Default: ''@FILE:'' . AS_SPATH . ''templates/paging1.tpl.html''\r\n$cfg[''tplPaging1''] = isset($tplPaging1) ? $tplPaging1 : (isset($__tplPaging1) ? $__tplPaging1 : $dcfg[''tplPaging1'']);\r\n\r\n// &tplPaging2 - Chunk to style the paging links - type 2\r\n// Default: ''@FILE:'' . AS_SPATH . ''templates/paging2.tpl.html''\r\n$cfg[''tplPaging2''] = isset($tplPaging2) ? $tplPaging2 : (isset($__tplPaging2) ? $__tplPaging2 : $dcfg[''tplPaging2'']);\r\n\r\n// &stripInput - stripInput user function name\r\n// Default: ''defaultStripInput''\r\n$cfg[''stripInput''] = isset($stripInput) ? $stripInput : (isset($__stripInput) ? $__stripInput : $dcfg[''stripInput'']);\r\n\r\n// &stripOutput - stripOutput user function name\r\n// Default: ''defaultStripOutput''\r\n$cfg[''stripOutput''] = isset($stripOutput) ? $stripOutput : (isset($__stripOutput) ? $__stripOutput : $dcfg[''stripOutput'']);\r\n\r\n// &breadcrumbs\r\n// 0 : disallow the breadcrumbs link\r\n// Name of the breadcrumbs function : allow the breadcrumbs link\r\n// The function name could be followed by some parameter initialization\r\n// e.g: &breadcrumbs=`Breadcrumbs,showHomeCrumb:0,showCrumbsAtHome:1`\r\n// Default: '''' - empty string\r\n$cfg[''breadcrumbs''] = isset($breadcrumbs) ? $breadcrumbs : (isset($__breadcrumbs) ? $__breadcrumbs : $dcfg[''breadcrumbs'']);\r\n\r\n// &tvPhx - display and set placeHolders for TV (template variables)\r\n// 0 : disallow the feature\r\n// 1 : allow the display of all Modx TVs of the document found (default)\r\n// ''tb_alias:display_function_name[,[tb_alias:display_function_name]*]'' : set up placeholders for custom joined tables\r\n// Default: 1 - tvPhx allowed for TV only\r\n$cfg[''tvPhx''] = isset($tvPhx) ? $tvPhx : (isset($__tvPhx) ? $__tvPhx : $dcfg[''tvPhx'']);\r\n\r\n// &clearDefault - Clearing default text\r\n// Set this to 1 if you would like to include the clear default js function\r\n// add the class "cleardefault" to your input text form and set this parameter\r\n// Default: 0\r\n$cfg[''clearDefault''] = isset($clearDefault) ? $clearDefault : (isset($__clearDefault) ? $__clearDefault : $dcfg[''clearDefault'']);\r\n\r\n// &jsClearDefault - Location of the js library\r\n// Default: AS_SPATH . ''js/clearDefault.js''\r\n$cfg[''jsClearDefault''] = $dcfg[''jsClearDefault''];\r\n\r\n// &mbstring - php_mbstring extension available [0 | 1]\r\n// Default: 1 - extension available\r\n$cfg[''mbstring''] = isset($mbstring) ? $mbstring : (isset($__mbstring) ? $__mbstring : $dcfg[''mbstring'']);\r\n\r\n//  &asLog - ajaxSearch log [ level [: comment [: purge]]]\r\n//  level:\r\n//        0 : disallow the ajaxSearch log (Default)\r\n//        1 : failed search requests are logged\r\n//        2 : all ajaxSearch requests are logged\r\n//  comment:\r\n//        0 : user comment not allowed (Default)\r\n//        1 : user comment allowed\r\n//  purge: number of logs allowed before to do an automatic purge of the table\r\n//        Default: 200\r\n$cfg[''asLog''] = isset($asLog) ? $asLog : (isset($__asLog) ? $__asLog : $dcfg[''asLog'']);\r\n\r\n\r\n//------------------------------------------------------------------------------\r\n// Configuration - Simple Ajax mode\r\n//------------------------------------------------------------------------------\r\n\r\nif ($cfg[''ajaxSearch'']) {\r\n\r\n    // $liveSearch [1 | 0] (as passed in snippet variable ONLY)\r\n    // Set this to 1 if you would like to use the live search (i.e. results as you type)\r\n    // Default: 0 - livesearch mode inactivated\r\n    $cfg[''liveSearch''] = isset($liveSearch) ? $liveSearch : (isset($__liveSearch) ? $__liveSearch : $dcfg[''liveSearch'']);\r\n\r\n    // &ajaxMax [int] - The maximum number of results to show for the ajaxsearch\r\n    // Default: 6\r\n    $cfg[''ajaxMax''] = isset($ajaxMax) ? $ajaxMax : (isset($__ajaxMax) ? $__ajaxMax : $dcfg[''ajaxMax'']);\r\n\r\n    // &moreResultsPage [int]\r\n    // The document id of the page you want the more results link to point to\r\n    // Default: 0\r\n    $cfg[''moreResultsPage''] = isset($moreResultsPage) ? $moreResultsPage : (isset($__moreResultsPage) ? $__moreResultsPage : $dcfg[''moreResultsPage'']);\r\n\r\n    // &opacity - set the opacity of the div ajaxSearch_output\r\n    // Should be a float value: [ 0. < float <= 1. ]\r\n    // Default: 1.\r\n    $cfg[''opacity''] = isset($opacity) ? $opacity : (isset($__opacity) ? $__opacity : $dcfg[''opacity'']);\r\n\r\n    // &tplAjaxResults - Chunk to style the ajax output results outer\r\n    // Default: '''' - empty string\r\n    $cfg[''tplAjaxResults''] = isset($tplAjaxResults) ? $tplAjaxResults : (isset($__tplAjaxResults) ? $__tplAjaxResults : $dcfg[''tplAjaxResults'']);\r\n\r\n    // &tplAjaxGrpResult - Chunk to style each ajax output group result outer\r\n    // Default: '''' - empty string\r\n    $cfg[''tplAjaxGrpResult''] = isset($tplAjaxGrpResult) ? $tplAjaxGrpResult : (isset($__tplAjaxGrpResult) ? $__tplAjaxGrpResult : $dcfg[''tplAjaxGrpResult'']);\r\n\r\n    // &tplAjaxResult - Chunk to style each ajax output result\r\n    // Default: '''' - empty string\r\n    $cfg[''tplAjaxResult''] = isset($tplAjaxResult) ? $tplAjaxResult : (isset($__tplAjaxResult) ? $__tplAjaxResult : $dcfg[''tplAjaxResult'']);\r\n\r\n    // &jscript [''jquery''|''mootools2''|''mootools'']\r\n    // Set this to jquery if you would like use the jquery library\r\n    // set mootools2 to use the version 1.2 of mootools (limited to JS functions used by AS)\r\n    // Default: ''mootools'' - use the version 1.11 of mootools provided with MODx\r\n    $cfg[''jscript''] = isset($jscript) ? $jscript : (isset($__jscript) ? $__jscript : $dcfg[''jscript'']);\r\n\r\n    // &addJscript [1 | 0]\r\n    // Set this to 1 if you would like to include or not the mootool/jquery library in the header of your pages automatically\r\n    // Default: 1\r\n    $cfg[''addJscript''] = isset($addJscript) ? $addJscript : (isset($__addJscript) ? $__addJscript : $dcfg[''addJscript'']);\r\n\r\n    // &jsMooTools - Location of the mootools javascript library (current version of MODx)\r\n    // Default: ''manager/media/script/mootools/mootools.js''\r\n    $cfg[''jsMooTools''] = isset($jsMooTools) ? $jsMooTools : (isset($__jsMooTools) ? $__jsMooTools : $dcfg[''jsMooTools'']);\r\n\r\n    // &jsMooTools2 - Location of an alternative mootools javascript library\r\n    // Default: AS_SPATH . ''js/mootools1.2/mootools.js'' - contains only the required functions for AS\r\n    // to use an another library, use this parameter and change the ajaxSearch/js/ajaxSearch1/ajaxSearch-mootools2.js file\r\n    $cfg[''jsMooTools2''] = isset($jsMooTools2) ? $jsMooTools2 : (isset($__jsMooTools2) ? $__jsMooTools2 : $dcfg[''jsMooTools2'']);\r\n\r\n    // &jsQuery - Location of the jquery javascript library\r\n    // Default: AS_SPATH . ''js/jquery/jquery.js''\r\n    $cfg[''jsJquery''] = isset($jsJquery) ? $jsJquery : (isset($__jsJquery) ? $__jsJquery : $dcfg[''jsJquery'']);\r\n}\r\n\r\n\r\n// ========================================================== End of config\r\ninclude_once AS_PATH . "classes/ajaxSearch.class.inc.php";\r\nif (class_exists(''AjaxSearch'')) {\r\n    $as = new AjaxSearch();\r\n    $output = $as->run($tstart, $dcfg, $cfg);\r\n} else {\r\n    $output = "<h3>error: AjaxSearch class not found</h3>";\r\n}\r\n$elapsedTime = $modx->getMicroTime() - $tstart;\r\n$etime = sprintf("%.4fs",$elapsedTime);\r\n//$f=fopen(''test.txt'',''a+'');fwrite($f,"etime=".$etime."\\n\\n");\r\nreturn $output;\r\n', 0, '', ''),
(2, 'Breadcrumbs', '<strong>1.0.2</strong> Configurable breadcrumb page-trail navigation', 0, 5, 0, '/*\r\n * This snippet shows the path through the various levels of site structure. It\r\n * is NOT necessarily the path the user took to arrive at a given page.\r\n * Version: 1.0.2\r\n */\r\n\r\n/* -----------------------------------------------------------------------------\r\n * CONFIGURATION\r\n * -----------------------------------------------------------------------------\r\n * This section contains brief explanations of the available parameters.\r\n */\r\n\r\n/* General setup\r\n * -----------------------------------------------------------------------------\r\n */\r\n\r\n/* $maxCrumbs [ integer ]\r\n * Max number of elemetns to have in a breadcrumb path. The default 100 is an\r\n * arbitrarily high number that will essentially include everything. If you were\r\n * to set it to 2, and you were 5 levels deep, it would appear like:\r\n * HOME > ... > Level 3 > Level 4 > CURRENT PAGE\r\n * It should be noted that the "home" link, and the current page do not count as\r\n * they are managed by their own configuration settings.\r\n */\r\n( isset($maxCrumbs) ) ? $maxCrumbs : $maxCrumbs = 100;\r\n\r\n/* $pathThruUnPub [ 1 | 0 ]\r\n * When your path includes an unpublished folder, setting this to 1 (true) will\r\n * show all documents in path EXCEPT the unpublished. When set to 0 (false), the\r\n * path will not go "through" that unpublished folder and will stop there.\r\n */\r\n( isset($pathThruUnPub) ) ? $pathThruUnPub : $pathThruUnPub = 1;\r\n\r\n/* $respectHidemenu [ 0 | 1 ]\r\n * Setting this to 1 (true) will respect the hidemenu setting of the document\r\n * and not include it in trail.\r\n */\r\n( isset($respectHidemenu) ) ? (int)$respectHidemenu : $respectHidemenu = 1;\r\n\r\n/* $showCurrentCrumb [ 1 | 0 ]\r\n * Include the current page at the end of the trail. On by default.\r\n */\r\n( isset($showCurrentCrumb) ) ? $showCurrentCrumb : $showCurrentCrumb = 1;\r\n\r\n/* $currentAsLink [ 1 | 0 ]\r\n * If the current page is included, this parameter will show it as a link (1) or\r\n * just plain text (0).\r\n */\r\n( $currentAsLink ) ? $currentAsLink : $currentAsLink = 0;\r\n\r\n/* $linkTextField [ string ]\r\n * Prioritized list of fields to use as link text. Options are: pagetitle,\r\n * longtitle, description, menutitle. The first of these fields that has a value\r\n * will be the title.\r\n */\r\n( isset($linkTextField) ) ? $linkTextField : $linkTextField = ''menutitle,pagetitle,longtitle'';\r\n\r\n/* $linkDescField [ string ]\r\n * Prioritized list of fields to use as link title text. Options are: pagetitle,\r\n * longtitle, description, menutitle. The first of these fields that has a value\r\n * will be the title.\r\n */\r\n( isset($linkDescField) ) ? $linkDescField : $linkDescField = ''description,longtitle,pagetitle,menutitle'';\r\n\r\n/* $showCrumbsAsLinks [ 1 | 0 ]\r\n * If for some reason you want breadcrumbs to be text and not links, set to 0\r\n * (false).\r\n */\r\n( isset($showCrumbsAsLinks) ) ? $showCrumbsAsLinks : $showCrumbsAsLinks = 1;\r\n\r\n/* $templateSet [ string ]\r\n * The set of templates you''d like to use. (Templates are defined below.) It\r\n * will default to defaultString which replicates the output of previous\r\n * versions.\r\n */\r\n( isset($templateSet) ) ? $templateSet : $templateSet = ''defaultString'';\r\n\r\n/* $crumbGap [ string ]\r\n * String to be shown to represent gap if there are more crumbs in trail than\r\n * can be shown. Note: if you would like to use an image, the entire image tag\r\n * must be provided. When making a snippet call, you cannot use "=", so use "||"\r\n * instead and it will be converted for you.\r\n */\r\n( isset($crumbGap) ) ? $crumbGap : $crumbGap = ''...'';\r\n\r\n/* $stylePrefix [ string ]\r\n * Breadcrumbs will add style classes to various parts of the trail. To avoid\r\n * class name conflicts, you can determine your own prefix. The following\r\n * classes will be attached:\r\n * crumbBox: Span that surrounds all crumb output\r\n * hideCrumb: Span that surrounds the "..." if there are more crumbs than will\r\n * be shown\r\n * currentCrumb: Span or A tag surrounding the current crumb\r\n * firstCrumb: Span that will be applied to first crumb, whether it is "home" or\r\n * not\r\n * lastCrumb: Span surrounding last crumb, whether it is the current page or\r\n * not\r\n * crumb: Class given to each A tag surrounding the intermediate crumbs (not\r\n * "home", "current", or "hide")\r\n * homeCrumb: Class given to the home crumb\r\n */\r\n( isset($stylePrefix) ) ? $stylePrefix : $stylePrefix = ''B_'';\r\n\r\n\r\n\r\n/* Home link parameters\r\n * -----------------------------------------------------------------------------\r\n * The home link is unique. It is a link that can be placed at the head of the\r\n * breadcrumb trail, even if it is not truly in the hierarchy.\r\n */\r\n\r\n/* $showHomeCrumb [ 1 | 0 ]\r\n * This toggles the "home" crumb to be added to the beginning of your trail.\r\n */\r\n( isset($showHomeCrumb) ) ? $showHomeCrumb : $showHomeCrumb = 1;\r\n\r\n/* $homeId [ integer ]\r\n * Usually the page designated as "site start" in MODx configuration is\r\n * considered the home page. But if you would like to use some other document,\r\n * you may explicitly define it.\r\n */\r\n( isset($homeId) ) ? (int)$homeId : $homeId = $modx->config[''site_start''];\r\n\r\n/* $homeCrumbTitle [ string ]\r\n * If you''d like to use something other than the menutitle (or pagetitle) for\r\n * the home link.\r\n */\r\n( isset($homeCrumbTitle) ) ? $homeCrumbTitle : $homeCrumbTitle = '''';\r\n\r\n/* $homeCrumbDescription [ string ]\r\n * If you''d like to use a custom description (link title) on the home link. If\r\n * left blank, the title will follow the title order set in $titleField.\r\n */\r\n( isset($homeCrumbDescription) ) ? $homeCrumbDescription : $homeCrumbDescription = '''';\r\n\r\n\r\n/* Custom behaviors\r\n * -----------------------------------------------------------------------------\r\n * The following parameters will alter the behavior of the Breadcrumbs based on\r\n * the page it is on.\r\n */\r\n\r\n/* $showCrumbsAtHome [ 1 | 0 ]\r\n * You can turn off Breadcrumbs all together on the home page by setting this to\r\n * 1 (true);\r\n */\r\n( isset($showCrumbsAtHome) ) ? $showCrumbsAtHome : $showCrumbsAtHome = 0;\r\n\r\n/* $hideOn [ string ]\r\n * Comma separated list of documents you don''t want Breadcrumbs on at all. If\r\n * you have a LOT of pages like this, you might try $hideUnder or use another\r\n * template. This parameter is best for those rare odd balls - otherwise it will\r\n * become a pain to manage.\r\n */\r\n( isset($hideOn) ) ? $hideOn : $hideOn = '''';\r\n\r\n/* $hideUnder [ string ]\r\n * Comma separated list of parent documents, whose CHILDREN you don''t want\r\n * Breadcrumbs to appear on at all. This enables you to hide Breadcrumbs on a\r\n * whole folders worth of documents by specifying the parent only. The PARENT\r\n * will not have Breadcrumbs hidden however. If you wanted to hide the parent\r\n * and the children, put the parent ID in hideUnder AND hideOn.\r\n */\r\n( isset($hideUnder) ) ? $hideUnder : $hideUnder = '''';\r\n\r\n/* $stopIds [ string ]\r\n * Comma separated list of document IDs that when reached, stops Breadcrumbs\r\n * from going any further. This is useful in situations like where you have\r\n * language branches, and you don''t want the Breadcrumbs going past the "home"\r\n * of the language you''re in.\r\n */\r\n( isset($stopIds) ) ? $stopIds : $stopIds = '''';\r\n\r\n/* $ignoreIds [ string ]\r\n * Comma separated list of document IDs to explicitly ignore.\r\n */\r\n( isset($ignoreIds) ) ? $ignoreids : $ignoreids = '''';\r\n\r\n/* Templates\r\n * -----------------------------------------------------------------------------\r\n * In an effort to keep the MODx chunks manager from getting mired down in lots\r\n * of templates, Breadcrumbs templates are included here. Two sets are provided\r\n * prefixed with defaultString, and defaultList. You can create as many more as\r\n * you like, each set with it''s own prefix\r\n */\r\n$templates = array(\r\n    ''defaultString'' => array(\r\n        ''crumb'' => ''[+crumb+]'',\r\n        ''separator'' => '' &raquo; '',\r\n        ''crumbContainer'' => ''<span class="[+crumbBoxClass+]">[+crumbs+]</span>'',\r\n        ''lastCrumbWrapper'' => ''<span class="[+lastCrumbClass+]">[+lastCrumbSpanA+]</span>'',\r\n        ''firstCrumbWrapper'' => ''<span class="[+firstCrumbClass+]">[+firstCrumbSpanA+]</span>''\r\n    ),\r\n    ''defaultList'' => array(\r\n        ''crumb'' => ''<li>[+crumb+]</li>'',\r\n        ''separator'' => '''',\r\n        ''crumbContainer'' => ''<ul class="[+crumbBoxClass+]">[+crumbs+]</ul>'',\r\n        ''lastCrumbWrapper'' => ''<span class="[+lastCrumbClass+]">[+lastCrumbSpanA+]</span>'',\r\n        ''firstCrumbWrapper'' => ''<span class="[+firstCrumbClass+]">[+firstCrumbSpanA+]</span>''\r\n    ),\r\n);\r\n\r\n\r\n/* -----------------------------------------------------------------------------\r\n * END CONFIGURATION\r\n * -----------------------------------------------------------------------------\r\n */\r\n\r\n// Return blank if necessary: on home page\r\nif ( !$showCrumbsAtHome && $homeId == $modx->documentObject[''id''] )\r\n{\r\n    return '''';\r\n}\r\n// Return blank if necessary: specified pages\r\nif ( $hideOn || $hideUnder )\r\n{\r\n    // Create array of hide pages\r\n    $hideOn = str_replace('' '','''',$hideOn);\r\n    $hideOn = explode('','',$hideOn);\r\n\r\n    // Get more hide pages based on parents if needed\r\n    if ( $hideUnder )\r\n    {\r\n        $hiddenKids = array();\r\n        // Get child pages to hide\r\n        $hideKidsQuery = $modx->db->select(''id'',$modx->getFullTableName("site_content"),"parent IN ($hideUnder)");\r\n        while ( $hideKid = $modx->db->getRow($hideKidsQuery) )\r\n        {\r\n            $hiddenKids[] = $hideKid[''id''];\r\n        }\r\n        // Merge with hideOn pages\r\n        $hideOn = array_merge($hideOn,$hiddenKids);\r\n    }\r\n\r\n    if ( in_array($modx->documentObject[''id''],$hideOn) )\r\n    {\r\n        return '''';\r\n    }\r\n\r\n}\r\n\r\n\r\n// Initialize ------------------------------------------------------------------\r\n\r\n// Put certain parameters in arrays\r\n$stopIds = str_replace('' '','''',$stopIds);\r\n$stopIds = explode('','',$stopIds);\r\n$linkTextField = str_replace('' '','''',$linkTextField);\r\n$linkTextField = explode('','',$linkTextField);\r\n$linkDescField = str_replace('' '','''',$linkDescField);\r\n$linkDescField = explode('','',$linkDescField);\r\n$ignoreIds = str_replace('' '','''',$ignoreIds);\r\n$ignoreIds = explode('','',$ignoreIds);\r\n\r\n/* $crumbs\r\n * Crumb elements are: id, parent, pagetitle, longtitle, menutitle, description,\r\n * published, hidemenu\r\n */\r\n$crumbs = array();\r\n$parent = $modx->documentObject[''parent''];\r\n$output = '''';\r\n$maxCrumbs += ($showCurrentCrumb) ? 1 : 0;\r\n\r\n// Replace || in snippet parameters that accept them with =\r\n$crumbGap = str_replace(''||'',''='',$crumbGap);\r\n\r\n// Curent crumb ----------------------------------------------------------------\r\n\r\n// Decide if current page is to be a crumb\r\nif ( $showCurrentCrumb )\r\n{\r\n    $crumbs[] = array(\r\n        ''id'' => $modx->documentObject[''id''],\r\n        ''parent'' => $modx->documentObject[''parent''],\r\n        ''pagetitle'' => $modx->documentObject[''pagetitle''],\r\n        ''longtitle'' => $modx->documentObject[''longtitle''],\r\n        ''menutitle'' => $modx->documentObject[''menutitle''],\r\n        ''description'' => $modx->documentObject[''description'']);\r\n}\r\n\r\n// Intermediate crumbs ---------------------------------------------------------\r\n\r\n\r\n// Iterate through parents till we hit root or a reason to stop\r\n$loopSafety = 0;\r\nwhile ( $parent && $loopSafety < 1000 )\r\n{\r\n    // Get next crumb\r\n    $tempCrumb = $modx->getPageInfo($parent,0,"id,parent,pagetitle,longtitle,menutitle,description,published,hidemenu");\r\n\r\n    // Check for include conditions & add to crumbs\r\n    if (\r\n        $tempCrumb[''published''] &&\r\n        ( !$tempCrumb[''hidemenu''] || !$respectHidemenu ) &&\r\n        !in_array($tempCrumb[''id''],$ignoreIds)\r\n    )\r\n    {\r\n        // Add crumb\r\n        $crumbs[] = array(\r\n        ''id'' => $tempCrumb[''id''],\r\n        ''parent'' => $tempCrumb[''parent''],\r\n        ''pagetitle'' => $tempCrumb[''pagetitle''],\r\n        ''longtitle'' => $tempCrumb[''longtitle''],\r\n        ''menutitle'' => $tempCrumb[''menutitle''],\r\n        ''description'' => $tempCrumb[''description'']);\r\n    }\r\n\r\n    // Check stop conditions\r\n    if (\r\n        in_array($tempCrumb[''id''],$stopIds) ||  // Is one of the stop IDs\r\n        !$tempCrumb[''parent''] || // At root\r\n        ( !$tempCrumb[''published''] && !$pathThruUnPub ) // Unpublished\r\n    )\r\n    {\r\n        // Halt making crumbs\r\n        break;\r\n    }\r\n\r\n    // Reset parent\r\n    $parent = $tempCrumb[''parent''];\r\n\r\n    // Increment loop safety\r\n    $loopSafety++;\r\n}\r\n\r\n// Home crumb ------------------------------------------------------------------\r\n\r\nif ( $showHomeCrumb && $homeCrumb = $modx->getPageInfo($homeId,0,"id,parent,pagetitle,longtitle,menutitle,description,published,hidemenu") )\r\n{\r\n    $crumbs[] = array(\r\n    ''id'' => $homeCrumb[''id''],\r\n    ''parent'' => $homeCrumb[''parent''],\r\n    ''pagetitle'' => $homeCrumb[''pagetitle''],\r\n    ''longtitle'' => $homeCrumb[''longtitle''],\r\n    ''menutitle'' => $homeCrumb[''menutitle''],\r\n    ''description'' => $homeCrumb[''description'']);\r\n}\r\n\r\n\r\n// Process each crumb ----------------------------------------------------------\r\n$pretemplateCrumbs = array();\r\n\r\nforeach ( $crumbs as $c )\r\n{\r\n\r\n    // Skip if we''ve exceeded our crumb limit but we''re waiting to get to home\r\n    if ( count($pretemplateCrumbs) > $maxCrumbs && $c[''id''] != $homeId )\r\n    {\r\n        continue;\r\n    }\r\n\r\n    $text = '''';\r\n    $title = '''';\r\n    $pretemplateCrumb = '''';\r\n\r\n    // Determine appropriate span/link text: home link specified\r\n    if ( $c[''id''] == $homeId && $homeCrumbTitle )\r\n    {\r\n        $text = $homeCrumbTitle;\r\n    }\r\n    else\r\n    // Determine appropriate span/link text: home link not specified\r\n    {\r\n        for ($i = 0; !$text && $i < count($linkTextField); $i++)\r\n        {\r\n            if ( $c[$linkTextField[$i]] )\r\n            {\r\n                $text = $c[$linkTextField[$i]];\r\n            }\r\n        }\r\n    }\r\n\r\n    // Determine link/span class(es)\r\n    if ( $c[''id''] == $homeId )\r\n    {\r\n        $crumbClass = $stylePrefix.''homeCrumb'';\r\n    }\r\n    else if ( $modx->documentObject[''id''] == $c[''id''] )\r\n    {\r\n        $crumbClass = $stylePrefix.''currentCrumb'';\r\n    }\r\n    else\r\n    {\r\n        $crumbClass = $stylePrefix.''crumb'';\r\n    }\r\n\r\n    // Make link\r\n    if (\r\n        ( $c[''id''] != $modx->documentObject[''id''] && $showCrumbsAsLinks ) ||\r\n        ( $c[''id''] == $modx->documentObject[''id''] && $currentAsLink )\r\n    )\r\n    {\r\n        // Determine appropriate title for link: home link specified\r\n        if ( $c[''id''] == $homeId && $homeCrumbDescription )\r\n        {\r\n            $title = htmlspecialchars($homeCrumbDescription);\r\n        }\r\n        else\r\n        // Determine appropriate title for link: home link not specified\r\n        {\r\n            for ($i = 0; !$title && $i < count($linkDescField); $i++)\r\n            {\r\n                if ( $c[$linkDescField[$i]] )\r\n                {\r\n                    $title = htmlspecialchars($c[$linkDescField[$i]]);\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n        $pretemplateCrumb .= ''<a class="''.$crumbClass.''" href="''.$modx->makeUrl($c[''id'']).''" title="''.$title.''">''.$text.''</a>'';\r\n    }\r\n    else\r\n    // Make a span instead of a link\r\n    {\r\n       $pretemplateCrumb .= ''<span class="''.$crumbClass.''">''.$text.''</span>'';\r\n    }\r\n\r\n    // Add crumb to pretemplate crumb array\r\n    $pretemplateCrumbs[] = $pretemplateCrumb;\r\n\r\n    // If we have hit the crumb limit\r\n    if ( count($pretemplateCrumbs) == $maxCrumbs )\r\n    {\r\n        if ( count($crumbs) > ($maxCrumbs + (($showHomeCrumb) ? 1 : 0)) )\r\n        {\r\n            // Add gap\r\n            $pretemplateCrumbs[] = ''<span class="''.$stylePrefix.''hideCrumb''.''">''.$crumbGap.''</span>'';\r\n        }\r\n\r\n        // Stop here if we''re not looking for the home crumb\r\n        if ( !$showHomeCrumb )\r\n        {\r\n            break;\r\n        }\r\n    }\r\n}\r\n\r\n// Put in correct order for output\r\n$pretemplateCrumbs = array_reverse($pretemplateCrumbs);\r\n\r\n// Wrap first/last spans\r\n$pretemplateCrumbs[0] = str_replace(\r\n    array(''[+firstCrumbClass+]'',''[+firstCrumbSpanA+]''),\r\n    array($stylePrefix.''firstCrumb'',$pretemplateCrumbs[0]),\r\n    $templates[$templateSet][''firstCrumbWrapper'']\r\n);\r\n$pretemplateCrumbs[(count($pretemplateCrumbs)-1)] = str_replace(\r\n    array(''[+lastCrumbClass+]'',''[+lastCrumbSpanA+]''),\r\n    array($stylePrefix.''lastCrumb'',$pretemplateCrumbs[(count($pretemplateCrumbs)-1)]),\r\n    $templates[$templateSet][''lastCrumbWrapper'']\r\n);\r\n\r\n// Insert crumbs into crumb template\r\n$processedCrumbs = array();\r\nforeach ( $pretemplateCrumbs as $pc )\r\n{\r\n    $processedCrumbs[] = str_replace(''[+crumb+]'',$pc,$templates[$templateSet][''crumb'']);\r\n}\r\n\r\n// Combine crumbs together into one string with separator\r\n$processedCrumbs = implode($templates[$templateSet][''separator''],$processedCrumbs);\r\n\r\n// Put crumbs into crumb container template\r\n$container = str_replace(\r\n    array(''[+crumbBoxClass+]'',''[+crumbs+]''),\r\n    array($stylePrefix.''crumbBox'',$processedCrumbs),\r\n    $templates[$templateSet][''crumbContainer'']\r\n    );\r\n\r\n// Return crumbs\r\nreturn $container;', 0, '', '');
INSERT INTO `mtzrad_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`) VALUES
(3, 'Ditto', '<strong>2.1.0</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more', 0, 6, 0, '/* Description:\n *      Aggregates documents to create blogs, article/news\n *      collections, and more,with full support for templating.\n * \n * Author: \n *      Mark Kaplan for MODx CMF\n*/\n\n//---Core Settings---------------------------------------------------- //\n\n$ditto_version = "2.1.0";\n    // Ditto version being executed\n\n$ditto_base = isset($ditto_base) ? $modx->config[''base_path''].$ditto_base : $modx->config[''base_path'']."assets/snippets/ditto/";\n/*\n    Param: ditto_base\n    \n    Purpose:\n    Location of Ditto files\n\n    Options:\n    Any valid folder location containing the Ditto source code with a trailing slash\n\n    Default:\n    [(base_path)]assets/snippets/ditto/\n*/\n$dittoID = (!isset($id)) ? "" : $id."_";\n$GLOBALS["dittoID"] = $dittoID;\n/*\n    Param: id\n\n    Purpose:\n    Unique ID for this Ditto instance for connection with other scripts (like Reflect) and unique URL parameters\n\n    Options:\n    Any combination of characters a-z, underscores, and numbers 0-9\n    \n    Note:\n    This is case sensitive\n\n    Default:\n    "" - blank\n*/      \n$language = (isset($language))? $language : $modx->config[''manager_language''];\nif (!file_exists($ditto_base."lang/".$language.".inc.php")) {\n    $language ="english";\n}\n/*\n    Param: language\n\n    Purpose:\n    language for defaults, debug, and error messages\n\n    Options:\n    Any language name with a corresponding file in the &ditto_base/lang folder\n\n    Default:\n    "english"\n*/\n$format = (isset($format)) ? strtolower($format) : "html" ;\n/*\n    Param: format\n\n    Purpose:\n    Output format to use\n\n    Options:\n    - "html"\n    - "json"\n    - "xml"\n    - "atom"\n    - "rss"\n\n    Default:\n    "html"\n*/\n$config = (isset($config)) ? $config : "default";\n/*\n    Param: config\n\n    Purpose:\n    Load a custom configuration\n\n    Options:\n    "default" - default blank config file\n    CONFIG_NAME - Other configs installed in the configs folder or in any folder within the MODx base path via @FILE\n\n    Default:\n    "default"\n    \n    Related:\n    - <extenders>\n*/\n$debug = isset($debug)? $debug : 0;\n/*\n    Param: debug\n\n    Purpose:\n    Output debugging information\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    0 - off\n    \n    Related:\n    - <debug>\n*/\n$phx = (isset($phx))? $phx : 1;\n/*\n    Param: phx\n\n    Purpose:\n    Use PHx formatting\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/      \n$extenders = isset($extenders) ? explode(",",$extenders) : array();\n/*\n    Param: extenders\n\n    Purpose:\n    Load an extender which adds functionality to Ditto\n\n    Options:\n    Any extender in the extenders folder or in any folder within the MODx base path via @FILE\n\n    Default:\n    [NULL]\n\n    Related:\n    - <config>\n*/\n    // Variable: extenders\n    // Array that can be added to by configs or formats to load that extender\n    \n$placeholders = array();\n    // Variable: placeholders\n    // Initialize custom placeholders array for configs or extenders to add to\n\n$filters = array("custom"=>array(),"parsed"=>array());\n    // Variable: filters\n    // Holds both the custom filters array for configs or extenders to add to \n    // and the parsed filters array. To add to this array, use the following format\n    // (code)\n    // $filters["parsed"][] = array("name" => array("source"=>$source,"value"=>$value,"mode"=>$mode));\n    // $filters["custom"][] = array("source","callback_function");\n\n$orderBy = array(''parsed''=>array(),''custom''=>array(),''unparsed''=>$orderBy);\n    // Variable: orderBy\n    // An array that holds all criteria to sort the result set by. \n    // Note that using a custom sort will disable all other sorting.\n    // (code)\n    // $orderBy["parsed"][] = array("sortBy","sortDir");\n    // $orderBy["custom"][] = array("sortBy","callback_function");\n        \n//---Includes-------------------------------------------------------- //\n\n$files = array (\n    "base_language" => $ditto_base."lang/english.inc.php",\n    "language" => $ditto_base."lang/$language.inc.php",\n    "main_class" => $ditto_base."classes/ditto.class.inc.php",\n    "template_class" => $ditto_base."classes/template.class.inc.php",\n    "filter_class" => $ditto_base."classes/filter.class.inc.php",\n    "format" => $ditto_base."formats/$format.format.inc.php",\n    "config" => $ditto_base."configs/default.config.php",\n    "user_config" => (substr($config, 0, 5) != "@FILE") ? $ditto_base."configs/$config.config.php" : $modx->config[''base_path''].trim(substr($config, 5))\n);\n\nif ($phx == 1) {\n    $files["prePHx_class"] = $ditto_base."classes/phx.pre.class.inc.php";\n}\nif (isset($randomize)) {\n    $files["randomize_class"] = $ditto_base."classes/random.class.inc.php";\n}\nif ($debug == 1) {\n    $files["modx_debug_class"] = $ditto_base."debug/modxDebugConsole.class.php";\n    $files["debug_class"] = $ditto_base."classes/debug.class.inc.php";\n    $files["debug_templates"] = $ditto_base."debug/debug.templates.php";\n}\n\n$files = array_unique($files);\nforeach ($files as $filename => $filevalue) {\n    if (file_exists($filevalue) && strpos($filename,"class")) {\n        include_once($filevalue);\n    } else if (file_exists($filevalue)) {\n        include($filevalue);\n    } else if ($filename == "language") {\n        $modx->logEvent(1, 3, "Language file does not exist Please check: " . $filevalue, "Ditto " . $ditto_version);\n        return "Language file does not exist Please check: " . $filevalue;\n    } else {\n        $modx->logEvent(1, 3, $filevalue . " " . $_lang[''file_does_not_exist''], "Ditto " . $ditto_version);\n        return $filevalue . " " . $_lang[''file_does_not_exist''];\n    }\n}\n\n//---Initiate Class-------------------------------------------------- //\nif (class_exists(''ditto'')) {\n    $ditto = new ditto($dittoID,$format,$_lang,$dbg_templates);\n        // create a new Ditto instance in the specified format and language with the requested debug level\n} else {\n    $modx->logEvent(1,3,$_lang[''invalid_class''],"Ditto ".$ditto_version);\n    return $_lang[''invalid_class''];\n}\n\n//---Initiate Extenders---------------------------------------------- //\nif (isset($tagData)) {\n    $extenders[] = "tagging";\n}\nif(count($extenders) > 0) {\n    $extenders = array_unique($extenders);\n    foreach ($extenders as $extender) {\n            if(substr($extender, 0, 5) != "@FILE") {\n                $extender_path = $ditto_base."extenders/".$extender.".extender.inc.php";                \n            } else {\n                $extender_path = $modx->config[''base_path''].trim(substr($extender, 5));\n            }\n            \n            if (file_exists($extender_path)){\n                include($extender_path);\n            } else {\n                $modx->logEvent(1, 3, $extender . " " . $_lang[''extender_does_not_exist''], "Ditto ".$ditto_version);\n                return $extender . " " . $_lang[''extender_does_not_exist''];\n            }       \n    }   \n}\n\n//---Parameters------------------------------------------------------- /*\nif (isset($startID)) {$parents = $startID;}\nif (isset($summarize)) {$display = $summarize;}\nif (isset($limit)) {$queryLimit = $limit;}\nif (isset($sortBy) || isset($sortDir) || is_null($orderBy[''unparsed''])) {\n    $sortDir = isset($sortDir) ? strtoupper($sortDir) : ''DESC'';\n    $sortBy = isset($sortBy) ? $sortBy : "createdon";\n    $orderBy[''parsed''][]=array($sortBy,$sortDir);\n}\n    // Allow backwards compatibility\n\n$idType = isset($documents) ? "documents" : "parents";\n    // Variable: idType\n    // type of IDs provided; can be either parents or documents\n\n$parents = isset($parents) ? $ditto->cleanIDs($parents) : $modx->documentIdentifier;\n\n/*\n    Param: parents\n\n    Purpose:\n    IDs of containers for Ditto to retrieve their children to &depth depth\n\n    Options:\n    Any valid MODx document marked as a container\n\n    Default:\n    Current MODx Document\n\n    Related:\n    - <documents>\n    - <depth>\n*/\n$documents = isset($documents) ? $ditto->cleanIDs($documents) : false;\n/*\n    Param: documents\n\n    Purpose:\n    IDs of documents for Ditto to retrieve\n\n    Options:\n    Any valid MODx document marked as a container\n\n    Default:\n    None\n\n    Related:\n    - <parents>\n*/\n\n$IDs = ($idType == "parents") ? $parents : $documents;\n    // Variable: IDs\n    // Internal variable which holds the set of IDs for Ditto to fetch\n\n$depth = isset($depth) ? $depth : 1;\n/*\n    Param: depth\n\n    Purpose:\n    Number of levels deep to retrieve documents\n\n    Options:\n    Any number greater than or equal to 1\n    0 - infinite depth\n\n    Default:\n    1\n\n    Related:\n    - <seeThruUnpub>\n*/\n$paginate = isset($paginate)? $paginate : 0;\n/*\n    Param: paginate\n\n    Purpose:\n    Paginate the results set into pages of &display length.\n    Use &total to limit the number of documents retreived.\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    0 - off\n    \n    Related:\n    - <paginateAlwaysShowLinks>\n    - <paginateSplitterCharacter>\n    - <display>\n*/\n$dateSource = isset($dateSource) ? $dateSource : "createdon";\n/*\n    Param: dateSource\n\n    Purpose:\n    Source of the [+date+] placeholder\n\n    Options:\n    # - Any UNIX timestamp from MODx fields or TVs such as createdon, pub_date, or editedon\n    \n    Default:\n    "createdon"\n    \n    Related:\n    - <dateFormat>\n*/\n$dateFormat = isset($dateFormat)? $dateFormat : $_lang["dateFormat"];\n/*\n    Param: dateFormat\n\n    Purpose:\n    Format the [+date+] placeholder in human readable form\n\n    Options:\n    Any PHP valid strftime option\n\n    Default:\n    [LANG]\n    \n    Related:\n    - <dateSource>\n*/\n$display = isset($display) ? $display : "all";\n/*\n    Param: display\n\n    Purpose:\n    Number of documents to display in the results\n\n    Options:\n    # - Any number\n    "all" - All documents found\n\n    Default:\n    "all"\n    \n    Related:\n    - <queryLimit>\n    - <total>\n*/\n$total = isset($total) ? $total : "all";\n/*\n    Param: total\n\n    Purpose:\n    Number of documents to retrieve\n    \n    Options:\n    # - Any number\n    "all" - All documents found\n\n    Default:\n    "all" - All documents found\n    \n    Related:\n    - <display>\n    - <queryLimit>\n*/\n$showPublishedOnly = isset($showPublishedOnly) ? $showPublishedOnly : 1;\n/*\n    Param: showPublishedOnly\n\n    Purpose:\n    Show only published documents\n\n    Options:\n    0 - show only unpublished documents\n    1 - show both published and unpublished documents\n    \n    Default:\n    1 - show both published and unpublished documents\n    \n    Related:\n    - <seeThruUnpub>\n    - <hideFolders>\n    - <showPublishedOnly>\n    - <where>\n*/\n$showInMenuOnly = isset($showInMenuOnly) ? $showInMenuOnly : 0;\n/*\n    Param: showInMenuOnly\n\n    Purpose:\n    Show only documents visible in the menu\n\n    Options:\n    0 - show all documents\n    1 - show only documents with the show in menu flag checked\n    \n    Default:\n    0 - show all documents\n    \n    Related:\n    - <seeThruUnpub>\n    - <hideFolders>\n    - <where>\n*/\n$hideFolders = isset($hideFolders)? $hideFolders : 0;\n/*\n    Param: hideFolders\n\n    Purpose:\n    Don''t show folders in the returned results\n\n    Options:\n    0 - keep folders\n    1 - remove folders\n    \n    Default:\n    0 - keep folders\n    \n    Related:\n    - <seeThruUnpub>\n    - <showInMenuOnly>\n    - <where>\n*/\n$hidePrivate = isset($hidePrivate)? $hidePrivate : 1;\n/*\n    Param: hidePrivate\n\n    Purpose:\n    Don''t show documents the guest or user does not have permission to see\n\n    Options:\n    0 - show private documents\n    1 - hide private documents\n    \n    Default:\n    1 - hide private documents\n    \n    Related:\n    - <seeThruUnpub>\n    - <showInMenuOnly>\n    - <where>\n*/\n$seeThruUnpub = (isset($seeThruUnpub))? $seeThruUnpub : 1 ;\n/*\n    Param: seeThruUnpub\n\n    Purpose:\n    See through unpublished folders to retrive their children\n    Used when depth is greater than 1\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    0 - off\n    \n    Related:\n    - <hideFolders>\n    - <showInMenuOnly>\n    - <where>\n*/\n$queryLimit = (isset($queryLimit))? $queryLimit : 0;\n/*\n    Param: queryLimit\n\n    Purpose:\n    Number of documents to retrieve from the database, same as MySQL LIMIT\n\n    Options:\n    # - Any number\n    0 - automatic\n\n    Default:\n    0 - automatic\n    \n    Related:\n    - <where>\n*/\n$where = (isset($where))? $where : "";\n/*\n    Param: where\n\n    Purpose:\n    Custom MySQL WHERE statement\n\n    Options:\n    A valid MySQL WHERE statement using only document object items (no TVs)\n\n    Default:\n    [NULL]\n    \n    Related:\n    - <queryLimit>\n*/\n$noResults = isset($noResults)? $ditto->getParam($noResults,"no_documents") : $_lang[''no_documents''];\n/*\n    Param: noResults\n\n    Purpose:\n    Text or chunk to display when there are no results\n\n    Options:\n    Any valid chunk name or text\n\n    Default:\n    [LANG]\n*/\n$removeChunk = isset($removeChunk) ? explode(",",$removeChunk) : false;\n/*\n    Param: removeChunk\n\n    Purpose:\n    Name of chunks to be stripped from content separated by commas\n    - Commonly used to remove comments\n\n    Options:\n    Any valid chunkname that appears in the output\n\n    Default:\n    [NULL]\n*/\n$hiddenFields = isset($hiddenFields) ? explode(",",$hiddenFields) : false;\n/*\n    Param: hiddenFields\n\n    Purpose:\n    Allow Ditto to retrieve fields its template parser cannot handle such as nested placeholders and [*fields*]\n\n    Options:\n    Any valid MODx fieldnames or TVs comma separated\n\n    Default:\n    [NULL]\n*/\n$offset = isset($start) ? $start : 0;\n$start = (isset($_GET[$dittoID.''start''])) ? intval($_GET[$dittoID.''start'']) : 0;\n/*\n    Param: start\n\n    Purpose:\n    Number of documents to skip in the results\n    \n    Options:\n    Any number\n\n    Default:\n    0\n*/\n$globalFilterDelimiter = isset($globalFilterDelimiter) ? $globalFilterDelimiter : "|";\n/*\n    Param: globalFilterDelimiter\n\n    Purpose:\n    Filter delimiter used to separate filters in the filter string\n    \n    Options:\n    Any character not used in the filters\n\n    Default:\n    "|"\n    \n    Related:\n    - <localFilterDelimiter>\n    - <filter>\n    - <parseFilters>\n*/\n    \n$localFilterDelimiter = isset($localFilterDelimiter) ? $localFilterDelimiter : ",";\n/*\n    Param: localFilterDelimiter\n\n    Purpose:\n    Delimiter used to separate individual parameters within each filter string\n    \n    Options:\n    Any character not used in the filter itself\n\n    Default:\n    ","\n    \n    Related:\n    - <globalFilterDelimiter>\n    - <filter>\n    - <parseFilters>\n*/\n$filters["custom"] = isset($cFilters) ? array_merge($filters["custom"],$cFilters) : $filters["custom"];\n$filters["parsed"] = isset($parsedFilters) ? array_merge($filters["parsed"],$parsedFilters) : $filters["parsed"];\n    // handle 2.0.0 compatibility\n$filter = (isset($filter) || ($filters["custom"] != false) || ($filters["parsed"] != false)) ? $ditto->parseFilters($filter,$filters["custom"],$filters["parsed"],$globalFilterDelimiter,$localFilterDelimiter) : false;\n/*\n    Param: filter\n\n    Purpose:\n    Removes items not meeting a critera. Thus, if pagetitle == joe then it will be removed.\n    Use in the format field,criteria,mode with the comma being the local delimiter\n\n    *Mode* *Meaning*\n    \n    1 - !=\n    2 - ==\n    3 - <\n    4 - >\n    5 - <=\n    6 - >=\n    7 - Text not in field value\n    8 - Text in field value\n    9 - case insenstive version of #7\n    10 - case insenstive version of #8\n    11 - checks leading character of the field\n    \n    @EVAL:\n        @EVAL in filters works the same as it does in MODx exect it can only be used \n        with basic filtering, not custom filtering (tagging, etc). Make sure that\n        you return the value you wish Ditto to filter by and that the code is valid PHP.\n\n    Default:\n    [NULL]\n    \n    Related:\n    - <localFilterDelimiter>\n    - <globalFilterDelimiter>\n    - <parseFilters>\n*/\n$keywords = (isset($keywords))? $keywords : 0;\n/*  \n    Param: keywords\n    \n    Purpose: \n    Enable fetching of associated keywords for each document\n    Can be used as [+keywords+] or as a tagData source\n    \n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    0 - off\n*/\n\n$randomize = (isset($randomize))? $randomize : 0;\n/*  \n    Param: randomize\n    \n    Purpose: \n    Randomize the order of the output\n    \n    Options:\n    0 - off\n    1 - on\n    Any MODx field or TV for weighted random\n    \n    Default:\n    0 - off\n*/\n$save = (isset($save))? $save : 0;\n/*\n    Param: save\n\n    Purpose:\n    Saves the ditto object and results set to placeholders\n    for use by other snippets\n\n    Options:\n    0 - off; returns output\n    1 - remaining; returns output\n    2 - all;\n    3 - all; returns ph only\n\n    Default:\n        0 - off; returns output\n*/\n$templates = array(\n    "default" => "@CODE".$_lang[''default_template''],\n    "base" => $tpl,\n    "alt" => $tplAlt,\n    "first" => $tplFirst,\n    "last" => $tplLast,\n    "current" => $tplCurrentDocument\n);\n/*\n    Param: tpl\n\n    Purpose:\n    User defined chunk to format the documents \n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE\n    - File via @FILE\n\n    Default:\n    [LANG]\n*/\n/*\n    Param: tplAlt\n\n    Purpose:\n    User defined chunk to format every other document\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE\n    - File via @FILE\n\n    Default:\n    &tpl\n*/\n/*\n    Param: tplFirst\n\n    Purpose:\n    User defined chunk to format the first document \n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE\n    - File via @FILE\n\n    Default:\n    &tpl\n*/\n/*\n    Param: tplLast\n\n    Purpose:\n    User defined chunk to format the last document \n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE\n    - File via @FILE\n\n    Default:\n    &tpl\n*/\n/*\n    Param: tplCurrentDocument\n\n    Purpose:\n    User defined chunk to format the current document\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE\n    - File via @FILE\n\n    Default:\n    &tpl\n*/\n$orderBy = $ditto->parseOrderBy($orderBy,$randomize);\n/*\n    Param: orderBy\n\n    Purpose:\n    Sort the result set\n\n    Options:\n    Any valid MySQL style orderBy statement\n\n    Default:\n    createdon DESC\n*/\n//-------------------------------------------------------------------- */\n$templates = $ditto->template->process($templates);\n    // parse the templates for TV''s and store them for later use\n\n$ditto->setDisplayFields($ditto->template->fields,$hiddenFields);\n    // parse hidden fields\n    \n$ditto->parseFields($placeholders,$seeThruUnpub,$dateSource,$randomize);\n    // parse the fields into the field array\n    \n$documentIDs = $ditto->determineIDs($IDs, $idType, $ditto->fields["backend"]["tv"], $orderBy, $depth, $showPublishedOnly, $seeThruUnpub, $hideFolders, $hidePrivate, $showInMenuOnly, $where, $keywords, $dateSource, $queryLimit, $display, $filter,$paginate, $randomize);\n    // retrieves a list of document IDs that meet the criteria and populates the $resources array with them\n$count = count($documentIDs);\n    // count the number of documents to be retrieved\n$count = $count-$offset;\n    // handle the offset\n\nif ($count > 0) {\n    // if documents are returned continue with execution\n    \n    $total = ($total == "all") ? $count : min($total,$count);\n        // set total equal to count if all documents are to be included\n    \n    $display = ($display == "all") ? min($count,$total) : min($display,$total);\n        // allow show to use all option\n\n    $stop = ($save != "1") ? min($total-$start,$display) : min($count,$total);\n        // set initial stop count\n\n    if($paginate == 1) {\n        $paginateAlwaysShowLinks = isset($paginateAlwaysShowLinks)? $paginateAlwaysShowLinks : 0;\n        /*\n            Param: paginateAlwaysShowLinks\n\n            Purpose:\n            Determine whether or not to always show previous next links\n\n            Options:\n            0 - off\n            1 - on\n\n            Default:\n            0 - off\n        \n            Related:\n            - <paginate>\n            - <paginateSplitterCharacter>\n        */\n        $paginateSplitterCharacter = isset($paginateSplitterCharacter)? $paginateSplitterCharacter : $_lang[''button_splitter''];\n        /*\n            Param: paginateSplitterCharacter\n\n            Purpose:\n            Splitter to use if always show is disabled\n\n            Options:\n            Any valid character\n\n            Default:\n            [LANG]\n        \n            Related:\n            - <paginate>\n            - <paginateSplitterCharacter>\n        */\n        $tplPaginatePrevious = isset($tplPaginatePrevious)? $ditto->template->fetch($tplPaginatePrevious) : "<a href=''[+url+]'' class=''ditto_previous_link''>[+lang:previous+]</a>";\n        /*\n            Param: tplPaginatePrevious\n\n            Purpose:\n            Template for the previous link\n\n            Options:\n            - Any valid chunk name\n            - Code via @CODE\n            - File via @FILE\n\n            Placeholders:\n            url - URL for the previous link\n            lang:previous - value of ''prev'' from the language file\n        \n            Related:\n            - <tplPaginateNext>\n            - <paginateSplitterCharacter>\n        */\n        $tplPaginateNext = isset($tplPaginateNext)? $ditto->template->fetch($tplPaginateNext) : "<a href=''[+url+]'' class=''ditto_next_link''>[+lang:next+]</a>";\n        /*\n            Param: tplPaginateNext\n\n            Purpose:\n            Template for the next link\n\n            Options:\n            - Any valid chunk name\n            - Code via @CODE\n            - File via @FILE\n\n            Placeholders:\n            url - URL for the next link\n            lang:next - value of ''next'' from the language file\n        \n            Related:\n            - <tplPaginatePrevious>\n            - <paginateSplitterCharacter>\n        */\n        $tplPaginateNextOff = isset($tplPaginateNextOff)? $ditto->template->fetch($tplPaginateNextOff) : "<span class=''ditto_next_off ditto_off''>[+lang:next+]</span>";\n        /*\n            Param: tplPaginateNextOff\n\n            Purpose:\n            Template for the inside of the next link\n\n            Options:\n            - Any valid chunk name\n            - Code via @CODE\n            - File via @FILE\n\n            Placeholders:\n            lang:next - value of ''next'' from the language file\n        \n            Related:\n            - <tplPaginatePrevious>\n            - <paginateSplitterCharacter>\n        */\n        $tplPaginatePreviousOff = isset($tplPaginatePreviousOff)? $ditto->template->fetch($tplPaginatePreviousOff) : "<span class=''ditto_previous_off ditto_off''>[+lang:previous+]</span>";\n        /*\n            Param: tplPaginatePreviousOff\n\n            Purpose:\n            Template for the previous link when it is off\n\n            Options:\n            - Any valid chunk name\n            - Code via @CODE\n            - File via @FILE\n\n            Placeholders:\n            lang:previous - value of ''prev'' from the language file\n    \n            Related:\n            - <tplPaginatePrevious>\n            - <paginateSplitterCharacter>\n        */\n        $tplPaginatePage = isset($tplPaginatePage)? $ditto->template->fetch($tplPaginatePage) : "<a class=''ditto_page'' href=''[+url+]''>[+page+]</a>";\n        /*\n            Param: tplPaginatePage\n\n            Purpose:\n            Template for the page link\n\n            Options:\n            - Any valid chunk name\n            - Code via @CODE\n            - File via @FILE\n\n            Placeholders:\n            url - url for the page\n            page - number of the page\n    \n            Related:\n            - <tplPaginatePrevious>\n            - <paginateSplitterCharacter>\n        */\n        $tplPaginateCurrentPage = isset($tplPaginateCurrentPage)? $ditto->template->fetch($tplPaginateCurrentPage) : "<span class=''ditto_currentpage''>[+page+]</span>";\n        /*\n            Param: tplPaginateCurrentPage\n\n            Purpose:\n            Template for the current page link\n\n            Options:\n            - Any valid chunk name\n            - Code via @CODE\n            - File via @FILE\n\n            Placeholders:\n            page - number of the page\n    \n            Related:\n            - <tplPaginatePrevious>\n            - <paginateSplitterCharacter>\n        */\n        \n        $ditto->paginate($start, $stop, $total, $display, $tplPaginateNext, $tplPaginatePrevious, $tplPaginateNextOff, $tplPaginatePreviousOff, $tplPaginatePage, $tplPaginateCurrentPage, $paginateAlwaysShowLinks, $paginateSplitterCharacter);\n            // generate the pagination placeholders\n    }\n\n    $dbFields = $ditto->fields["display"]["db"];\n        // get the database fields\n    $TVs = $ditto->fields["display"]["tv"];\n        // get the TVs\n    \n    switch($orderBy[''parsed''][0][1]) {\n        case "DESC":\n            $stop = ($ditto->prefetch === false) ? $stop + $start + $offset : $stop + $offset; \n            $start += $offset;\n        break;\n        case "ASC":\n            $start += $offset;\n            $stop += $start;\n        break;\n    }\n\n    if ($ditto->prefetch !== false) {\n        $documentIDs = array_slice($documentIDs,$start,$stop);\n            // set the document IDs equal to the trimmed array\n        $dbFields = array_diff($dbFields,$ditto->prefetch["fields"]["db"]);\n            // calculate the difference between the database fields and those already prefetched\n        $dbFields[] = "id";\n            // append id to the db fields array\n        $TVs = array_diff($TVs,$ditto->prefetch["fields"]["tv"]);\n            // calculate the difference between the tv fields and those already prefetched\n        $start = 0;\n        $stop = min($display,($queryLimit != 0) ? $queryLimit : $display,count($documentIDs));\n    } else {\n        $queryLimit = ($queryLimit == 0) ? "" : $queryLimit;\n    }\n    \n    $resource = $ditto->getDocuments($documentIDs, $dbFields, $TVs, $orderBy, $showPublishedOnly, 0, $hidePrivate, $where, $queryLimit, $keywords, $randomize, $dateSource);\n        // retrieves documents\n    $output = $header;\n        // initialize the output variable and send the header\n\n    if ($resource) {\n        if ($randomize != "0" && $randomize != "1") {\n            $resource = $ditto->weightedRandom($resource,$randomize,$stop);\n                // randomize the documents\n        }\n        \n        $resource = array_values($resource);\n\n        for ($x=$start;$x<$stop;$x++) {\n            $template = $ditto->template->determine($templates,$x,0,$stop,$resource[$x]["id"]);\n                // choose the template to use and set the code of that template to the template variable\n            $renderedOutput = $ditto->render($resource[$x], $template, $removeChunk, $dateSource, $dateFormat, $placeholders,$phx,abs($start-$x));\n                // render the output using the correct template, in the correct format and language\n            $modx->setPlaceholder($dittoID."item[".abs($start-$x)."]",$renderedOutput);\n            /*\n                Placeholder: item[x]\n\n                Content:\n                Individual items rendered output\n            */\n            $output .= $renderedOutput;\n                // send the rendered output to the buffer\n        }\n    } else {\n        $output .= $ditto->noResults($noResults,$paginate);\n            // if no documents are found return a no documents found string\n    }\n    $output .= $footer;\n        // send the footer\n\n    // ---------------------------------------------------\n    // Save Object\n    // ---------------------------------------------------\n\n    if($save) {\n        $modx->setPlaceholder($dittoID."ditto_object", $ditto);\n        $modx->setPlaceholder($dittoID."ditto_resource", ($save == "1") ? array_slice($resource,$display) : $resource);\n    }\n} else {\n    $output = $header.$ditto->noResults($noResults,$paginate).$footer;\n}\n// ---------------------------------------------------\n// Handle Debugging\n// ---------------------------------------------------\n\nif ($debug == 1) {\n    $ditto_params =& $modx->event_params;\n    if (!isset($_GET["ditto_".$dittoID."debug"])) {\n    $_SESSION["ditto_debug_$dittoID"] = $ditto->debug->render_popup($ditto, $ditto_base, $ditto_version, $ditto_params, $documentIDs, array("db"=>$dbFields,"tv"=>$TVs), $display, $templates, $orderBy, $start, $stop, $total,$filter,$resource);\n    }\n    if (isset($_GET["ditto_".$dittoID."debug"])) {\n        switch ($_GET["ditto_".$dittoID."debug"]) {\n            case "open" :\n                exit($_SESSION["ditto_debug_$dittoID"]);\n            break;\n            case "save" :\n                $ditto->debug->save($_SESSION["ditto_debug_$dittoID"],"ditto".strtolower($ditto_version)."_debug_doc".$modx->documentIdentifier.".html");\n            break;\n        }\n    } else {\n        $output = $ditto->debug->render_link($dittoID,$ditto_base).$output;\n    }\n}\n\nreturn ($save != 3) ? $output : "";', 0, '', ''),
(4, 'eForm', '<strong>1.4.4.6</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads', 0, 7, 0, '# eForm 1.4.4.6 - Electronic Form Snippet\n# Original created by Raymond Irving 15-Dec-2004.\n# Version 1.3+ extended by Jelle Jager (TobyL) September 2006\n# -----------------------------------------------------\n# Captcha image support - thanks to Djamoer\n# Multi checkbox, radio, select support - thanks to Djamoer\n# Form Parser and extened validation - by Jelle Jager\n#\n# see eform/docs/eform.htm for history, usage and examples\n#\n\n# Set Snippet Paths\n$snipFolder = isset($snipFolder)?$snipFolder:''eform'';\n$snipPath = $modx->config["base_path"].''assets/snippets/''.$snipFolder.''/'';\n\n\n# check if inside manager\nif ($modx->isBackend()) {\nreturn ''''; # don''t go any further when inside manager\n}\n\n//tidying up some casing errors in parameters\nif(isset($eformOnValidate)) $eFormOnValidate = $eformOnValidate;\nif(isset($eformOnBeforeMailSent)) $eFormOnBeforeMailSent = $eformOnBeforeMailSent;\nif(isset($eformOnMailSent)) $eFormOnMailSent = $eformOnMailSent;\nif(isset($eformOnValidate)) $eFormOnValidate = $eformOnValidate;\nif(isset($eformOnBeforeFormMerge)) $eFormOnBeforeFormMerge = $eformOnBeforeFormMerge;\nif(isset($eformOnBeforeFormParse)) $eFormOnBeforeFormParse = $eformOnBeforeFormParse;\n//for sottwell :)\nif(isset($eFormCSS)) $cssStyle = $eFormCSS;\n\n# Snippet customize settings\n$params = array (\n   // Snippet Path\n   ''snipPath'' => $snipPath, //includes $snipFolder\n	 ''snipFolder'' => $snipFolder,\n\n// eForm Params\n   ''vericode'' => isset($vericode)? $vericode:"",\n   ''formid'' => isset($formid)? $formid:"",\n   ''from'' => isset($from)? $from:$modx->config[''emailsender''],\n   ''fromname'' => isset($fromname)? $fromname:$modx->config[''site_name''],\n   ''to'' => isset($to)? $to:$modx->config[''emailsender''],\n   ''cc'' => isset($cc)? $cc:"",\n   ''bcc'' => isset($bcc)? $bcc:"",\n   ''subject'' => isset($subject)? $subject:"",\n   ''ccsender'' => isset($ccsender)?$ccsender:0,\n   ''sendirect'' => isset($sendirect)? $sendirect:0,\n   ''mselector'' => isset($mailselector)? $mailselector:0,\n   ''mobile'' => isset($mobile)? $mobile:'''',\n   ''mobiletext'' => isset($mobiletext)? $mobiletext:'''',\n   ''autosender'' => isset($autosender)? $autosender:$from,\n   ''autotext'' => isset($automessage)? $automessage:"",\n   ''category'' => isset($category)? $category:0,\n   ''keywords'' => isset($keywords)? $keywords:"",\n   ''gid'' => isset($gotoid)? $gotoid:$modx->documentIdentifier,\n   ''noemail'' => isset($noemail)? ($noemail):false,\n   ''saveform'' => isset($saveform)? ($saveform? true:false):true,\n   ''tpl'' => isset($tpl)? $tpl:"",\n   ''report'' => isset($report)? $report:"",\n   ''allowhtml'' => isset($allowhtml)? $allowhtml:0,\n   //Added by JJ\n   ''replyto'' => isset($replyto)? $replyto:"",\n   ''language'' => isset($language)? $language:$modx->config[''manager_language''],\n   ''thankyou'' => isset($thankyou)? $thankyou:"",\n   ''isDebug'' => isset($debug)? $debug:0,\n   ''reportAbuse'' => isset($reportAbuse)? $reportAbuse:false,\n   ''disclaimer'' => isset($disclaimer)?$disclaimer:'''',\n   ''sendAsHtml'' => isset($sendAsHtml)?$sendAsHtml:false,\n   ''sendAsText'' => isset($sendAsText)?$sendAsText:false,\n   ''sessionVars'' => isset($sessionVars)?$sessionVars:false,\n   ''postOverides'' => isset($postOverides)?$postOverides:0,\n   ''eFormOnBeforeMailSent'' => isset($eFormOnBeforeMailSent)?$eFormOnBeforeMailSent:'''',\n   ''eFormOnMailSent'' => isset($eFormOnMailSent)?$eFormOnMailSent:'''',\n   ''eFormOnValidate'' => isset($eFormOnValidate)?$eFormOnValidate:'''',\n   ''eFormOnBeforeFormMerge'' => isset($eFormOnBeforeFormMerge)?$eFormOnBeforeFormMerge:'''',\n   ''eFormOnBeforeFormParse'' => isset($eFormOnBeforeFormParse)?$eFormOnBeforeFormParse:'''',\n   ''cssStyle'' => isset($cssStyle)?$cssStyle:'''',\n   ''jScript'' => isset($jScript)?$jScript:'''',\n   ''submitLimit'' => (isset($submitLimit) &&  is_numeric($submitLimit))?$submitLimit*60:0,\n   ''protectSubmit'' => isset($protectSubmit)?$protectSubmit:1,\n   ''requiredClass'' => isset($requiredClass)?$requiredClass:"required",\n   ''invalidClass'' => isset($invalidClass)?$invalidClass:"invalid",\n   ''runSnippet'' => ( isset($runSnippet) && !is_numeric($runSnippet) )?$runSnippet:'''',\n   ''autoSenderName'' => isset($autoSenderName)?$autoSenderName:'''',\n   ''version'' => ''1.4.4''\n);\n\n// pixelchutes PHx workaround\nforeach( $params as $key=>$val ) $params[ $key ] = str_replace( array(''(('',''))''), array(''[+'',''+]''), $val );\n\n# Start processing\n\ninclude_once ($snipPath."eform.inc.php");\n\n$output = eForm($modx,$params);\n\n# Return\nreturn $output;', 0, '', ''),
(5, 'FirstChildRedirect', '<strong>1.0</strong> Automatically redirects to the first child of a Container Resource', 0, 5, 0, '/*\n * @name FirstChildRedirect\n * @author Jason Coward <jason@opengeek.com>\n * @modified-by Ryan Thrash <ryan@vertexworks.com>\n * @license Public Domain\n * @version 1.0\n * \n * This snippet redirects to the first child document of a folder in which this\n * snippet is included within the content (e.g. [!FirstChildRedirect!]).  This\n * allows MODx folders to emulate the behavior of real folders since MODx\n * usually treats folders as actual documents with their own content.\n * \n * Modified to make Doc ID a required parameter... now defaults to the current \n * Page/Folder you call the snippet from.\n * \n * &docid=`12` \n * Use the docid parameter to have this snippet redirect to the\n * first child document of the specified document.\n */\n\n$docid = (isset($docid))? $docid: $modx->documentIdentifier;\n\n$children= $modx->getActiveChildren($docid, ''menuindex'', ''ASC'');\nif (!$children === false) {\n    $firstChild= $children[0];\n    $firstChildUrl= $modx->makeUrl($firstChild[''id'']);\n} else {\n    $firstChildUrl= $modx->makeUrl($modx->config[''site_start'']);\n}\nreturn $modx->sendRedirect($firstChildUrl);\n', 0, '', ''),
(6, 'Jot', '<strong>1.1.4</strong> User comments with moderation and email subscription', 0, 6, 0, '/*####\n#\n# Author: Armand "bS" Pondman (apondman@zerobarrier.nl)\n#\n# Latest Version: http://modxcms.com/Jot-998.html\n# Jot Demo Site: http://projects.zerobarrier.nl/modx/\n# Documentation: http://wiki.modxcms.com/index.php/Jot (wiki)\n#\n####*/\n\n$jotPath = $modx->config[''base_path''] . ''assets/snippets/jot/'';\ninclude_once($jotPath.''jot.class.inc.php'');\n\n$Jot = new CJot;\n$Jot->VersionCheck("1.1.4");\n$Jot->Set("path",$jotPath);\n$Jot->Set("action", $action);\n$Jot->Set("postdelay", $postdelay);\n$Jot->Set("docid", $docid);\n$Jot->Set("tagid", $tagid);\n$Jot->Set("subscribe", $subscribe);\n$Jot->Set("moderated", $moderated);\n$Jot->Set("captcha", $captcha);\n$Jot->Set("badwords", $badwords);\n$Jot->Set("bw", $bw);\n$Jot->Set("sortby", $sortby);\n$Jot->Set("numdir", $numdir);\n$Jot->Set("customfields", $customfields);\n$Jot->Set("guestname", $guestname);\n$Jot->Set("canpost", $canpost);\n$Jot->Set("canview", $canview);\n$Jot->Set("canedit", $canedit);\n$Jot->Set("canmoderate", $canmoderate);\n$Jot->Set("trusted", $trusted);\n$Jot->Set("pagination", $pagination);\n$Jot->Set("placeholders", $placeholders);\n$Jot->Set("subjectSubscribe", $subjectSubscribe);\n$Jot->Set("subjectModerate", $subjectModerate);\n$Jot->Set("subjectAuthor", $subjectAuthor);\n$Jot->Set("notify", $notify);\n$Jot->Set("notifyAuthor", $notifyAuthor);\n$Jot->Set("validate", $validate);\n$Jot->Set("title", $title);\n$Jot->Set("authorid", $authorid);\n$Jot->Set("css", $css);\n$Jot->Set("cssFile", $cssFile);\n$Jot->Set("cssRowAlt", $cssRowAlt);\n$Jot->Set("cssRowMe", $cssRowMe);\n$Jot->Set("cssRowAuthor", $cssRowAuthor);\n$Jot->Set("tplForm", $tplForm);\n$Jot->Set("tplComments", $tplComments);\n$Jot->Set("tplModerate", $tplModerate);\n$Jot->Set("tplNav", $tplNav);\n$Jot->Set("tplNotify", $tplNotify);\n$Jot->Set("tplNotifyModerator", $tplNotifyModerator);\n$Jot->Set("tplNotifyAuthor", $tplNotifyAuthor);\n$Jot->Set("tplSubscribe", $tplSubscribe);\n$Jot->Set("debug", $debug);\n$Jot->Set("output", $output);\nreturn $Jot->Run();', 0, '', '');
INSERT INTO `mtzrad_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`) VALUES
(7, 'ListIndexer', '<strong>1.0.1</strong> A flexible way to show the most recent Resources and other Resource lists', 0, 5, 0, '// added in 1.0.1: hidePrivate (hide items from unauthorized users)\n//\n// Derived from ListIndex 0.6j by jaredc@honeydewdesign.com\n// Now supports Show In Menu\n//\n// This snippet was designed to be a VERY flexible way\n// of showing what has been recently added. You can use\n// this snippet to show news from one folder, or what has\n// been recently added site wide. You can even show what''s\n// new in a ''section'' (everything under a defined folder)!\n\n// Configuration Settings\n\n   // Set the following snippet defaults the way you would normally\n   // use this snippet, then use snippet variables in other situations\n   // to override the default behaviors.\n\n   // GENERAL OPTIONS\n\n   // $rootFolder [ NULL | string (comma separated page id''s) ]\n   // Decide which folder to pull recent documents from.\n   // If you want to specify a few folders, comma separate them.\n   // The default NULL will set current page as root. Using 0\n   // would search site wide. Can be set with snippet parameter\n   // $LIn_root like:\n   // [[ListIndexer?LIn_root=3,6,88]] \n   $rootFolder = NULL;\n\n   // $descendentDepth [ int ]\n   // How many levels below the root folder(s) do you want to\n   // include? Can be overridden in snippet call with LIn_depth:\n   // [[ListIndexer?LIn_depth=2]]\n   // Uncomment one of these common two or create your own:\n   // $descendentDepth = 1; // just children of root folder(s)\n   $descendentDepth = 0; // all decendents of root folder(s)\n\n   // $seeThruUnpub [ true | false ]\n   // When using descendents, do you want to consider files below\n   // an unpublished (hidden) folder? Usually no. But you decide.\n   // Snippet parameter: LIn_seeThru\n   // [[ListIndexer?LIn_seeThru=1]]\n   $seeThruUnpub = false;\n\n   // $seeShowInMenu [ true | false ]\n   // When using descendents, do you want to consider files flagged\n   // to be hidden from the menus? Usually no. But you decide.\n   // Snippet parameter: LIn_seeShowInMenu\n   // [[ListIndexer?LIn_seeShowInMenu=1]]\n   $seeShowInMenu = false;\n   \n   // $hidePrivate [ true | false ]\n   // Hide items from users that don''t have appropriate\n   // rights to view. Usually true. But you decide.\n   // Snippet parameter: LIn_hidePrivate\n   // [[ListIndexer?LIn_hidePrivate=0]]\n   $hidePrivate = true;\n\n   // $mode [ ''short'' | ''full'' ]\n   // Defines whether this list should be a full, paged\n   // list of all documents, or a short list of the most\n   // recent few (how many will be defined next). Can be\n   // overridden in snippet call with $LIn_mode:\n   // [[ListIndexer?LIn_mode=full]]\n   $mode = ''short'';\n   \n   // $sortBy [ ''alpha'' | ''date'' | ''menuindex'' ]\n   // The default date will sort by most recent items first, but\n   // by using the ''alpha'' option, and using full mode, you could\n   // use this to create an index, or directory.\n   // Settable with snippet call $LIn_sort:\n   // [[ListIndexer?LIn_sort=alpha]]\n   $sortBy = ''date'';\n   \n   // $sortDir [ ''ASC'' | ''DESC'' ]\n   // Sort direction ascending or descending. Is applied to whatever $sortBy\n   // field you have chosen above. If left blank, menuindex and alpha will sort\n   // ASC and date DESC.\n   // $LIn_dir in snippet call:\n   // [[ListIndexer?LIn_dir=ASC&LIn_sortBy=menuindex]]\n   $sortDir = '''';\n\n   // WHAT TO DISPLAY\n\n   // $defaultTitle [ string ]\n   // If you want a default title for your list\n   // you can declare it here. Or use an empty\n   // string to leave this off. This can be overridden\n   // in the snippet call with the variable $LIn_title:\n   // [[ListIndexer?LIn_title=Some new title]]\n   $defaultTitle = '''';\n\n   // $shortDesc [ true | false ]\n   // Show the description on the short list, or not. Snippet\n   // parameter $LIn_sDesc:\n   // [[ListIndexer?LIn_sDesc=0]]\n   $shortDesc = true;\n\n   // $fullDesc [ true | false ]\n   // Show the description on the full list, or not. Snippet\n   // parameter $LIn_fDesc:\n   // [[ListIndexer?LIn_fDesc=0]]\n   $fullDesc = true;\n\n   // $linkToIndex [ int ]\n   // If you have a page set up as an ''index'' for all the \n   // documents in this list, you can link to it by specifying \n   // its id- can also be set in snippet call with LIn_link:\n   // [[ListIndexer?LIn_link=8]]\n   // The default 0 will eliminate this link\n   $linkToIndex = 0;\n\n   // $indexText [ string ]\n   // If you want a link to an index (probably a page running this\n   // snippet in "full" mode), you can declare what you want that\n   // link to say here. Or in the snippet call with LIn_indexText:\n   // [[ListIndexer?LIn_indexText=Financial News Index]]\n   $indexText = ''Index'';\n\n   // $showCreationDate [ true | false ]\n   // Decide to include date of creation in output or not. From\n   // snippet call $LIn_showDate use 1 (true) or 0 (false)\n   // [[ListIndexer?LIn_showDate=1]]\n   $showCreationDate = true;\n\n   // $dateFormat [ string ]\n   // Used to define how date will be displayed (if using date)\n   // Y = 4 digit year     y = 2 digit year\n   // M = Jan - Dec        m = 01 - 12\n   // D = Sun - Sat        d = 01 -31\n   // Other standard PHP characters may be used\n   $dateFormat = ''Y.m.d'';\n\n   // $shortQty [ int ]\n   // Number of entries to list in the short list. Can be\n   // overridden in snippet call with $LIn_sQty:\n   //[[ListIndexer?LIn_sQty=3]]\n   $shortQty = 3;\n\n   // PAGING\n\n   // $fullQty [ int ]\n   // Number of entries PER PAGE to list in the full list\n   // Can be overridden in snippet call with $LIn_fQty:\n   // [[ListIndexer?LIn_fQty=20]]\n   // To show all set to 0 here or in snippet call\n   $fullQty = 10;\n   \n   // $pageSeparator [ string ]\n   // What you want your page number links to be separated by.\n   // You NEED to include spaces if you want them. They are NOT\n   // created automatically to facilitate styling ability.\n   // For instance, " | " will render links like:\n   // 1 | 2 | 3 | 4\n   $pageSeparator = " | ";\n   \n   // $pgPosition [ ''top'' | ''bottom'' | ''both'']\n   // Pick where you want your pagination links to appear.\n   $pgPosition = ''both'';\n\n   // PERFORMANCE\n\n   // $useFastUrls [ true | false ]\n   // IMPORTANT- using fast urls will reduce database queries\n   // and improve performance WHEN IN FULL MODE ONLY and \n   // should NOT be used when multiple instances of this snippet\n   // appear on the same page. With snippet call LIn_fast use 1\n   // (true) or 0 (false)\n   // [[ListIndexer?LIn_fast=0]]\n   $useFastUrls = false;\n\n   // $newLinesForLists [ true | false ]\n   // Depending on how you want to style your list, you may\n   // or may not want your <li>s on new lines. Generally, if you\n   // are displaying then inline (horizontal, you do not want new\n   // lines, but standard vertical block styling you do. This is\n   // for IE, real browsers don''t care.\n   $newLinesForLists = true;\n\n// Styles\n//\n// The following are the styles included in this snippet. It is up\n// to you to include these styles in your stylesheet to get them to\n// look the way you want.\n\n   // div.LIn_title {}          List title div\n   // ul.LIn_fullMode {}        UL class\n   // ul.LIn_shortMode {}       UL class\n   // span.LIn_date {}          Span surrounding pub/created date\n   // span.LIn_desc {}          Span surrounding description\n   // div.LIn_pagination        Div surrounding pagination links\n   // span.LIn_currentPage {}   Span surrounding current page of\n   //                           pagination (which wouldn''t be css-able\n   //                           by virtue of its <a> tag)\n\n\n// **********************************************************************\n// END CONFIG SETTINGS\n// THE REST SHOULD TAKE CARE OF ITSELF\n// **********************************************************************\n\n// Take care of IE list issue\n$ie = ($newLinesForLists)? "\\n" : '''' ;\n\n// Use snippet call defined variables if set\n$activeTitle = (isset($LIn_title))? $LIn_title : $defaultTitle ;\n$mode = (isset($LIn_mode))? $LIn_mode : $mode ;\n$descendentDepth = (isset($LIn_depth))? $LIn_depth : $descendentDepth ;\n$seeThruUnpub = (isset($LIn_seeThru))? $LIn_seeThru : $seeThruUnpub ;\n$seeShowInMenu = (isset($LIn_seeShowInMenu))? $LIn_seeShowInMenu : $seeShowInMenu ;\n$hidePrivate = (isset($LIn_hidePrivate))? $LIn_hidePrivate : $hidePrivate;\n$linkToIndex = (isset($LIn_link))? $LIn_link : $linkToIndex ;\n$rootFolder = (isset($LIn_root))? $LIn_root : $rootFolder ;\n$shortQty = (isset($LIn_sQty))? $LIn_sQty : $shortQty ;\n$fullQty = (isset($LIn_fQty))? $LIn_fQty : $fullQty ;\n$showCreationDate = (isset($LIn_showDate))? $LIn_showDate : $showCreationDate ;\n$indexText = (isset($LIn_indexText))? $LIn_indexText : $indexText ;\n$useFastUrls = (isset($LIn_fast))? $LIn_fast : $useFastUrls ;\n$sortBy = (isset($LIn_sort))? $LIn_sort : $sortBy;\n$shortDesc = (isset($LIn_sDesc))? $LIn_sDesc : $shortDesc ;\n$fullDesc = (isset($LIn_fDesc))? $LIn_fDesc : $fullDesc ;\n$sortDir = (isset($LIn_dir))? $LIn_dir : $sortDir ;\nif ($sortDir == '''') $sortDir = ($sortBy == ''date'')? ''DESC'' : ''ASC'' ;\n\n\n// Make useful variable shortcut for the content table\n//$tbl = $modx->dbConfig[''dbase''] . "." . $modx->dbConfig[''table_prefix''] . "site_content";\n$tblsc = $modx->getFullTableName("site_content");\n$tbldg = $modx->getFullTableName("document_groups");\n\n// Initialize output\n$output = '''';\n\n// ---------------------------------------------------\n// ---------------------------------------------------\n// Query db for parent folders, or not. First check to\n// see if a querystring cheat has been provided- this\n// should speed things up considerably when using this\n// in full mode. (a.k.a. fastUrls)\n// ---------------------------------------------------\n// ---------------------------------------------------\n$inFolder= isset($_GET[''LIn_f''])? $_GET[''LIn_f'']: 0;\nif ((!$inFolder && $useFastUrls) || !$useFastUrls ){\n  // Only run all the database queries if we don''t already\n  // know the folders AND fastUrls are desired.\n\n  // ---------------------------------------------------\n  // Seed list of viable parents\n  // ---------------------------------------------------\n\n  if ($rootFolder == NULL){\n    $rootFolder = $modx->documentIdentifier;\n  }\n  // Set root level parent array\n  $seedArray = explode('','',$rootFolder);\n  $parentsArray = array();\n  foreach($seedArray AS $seed){\n    $parentsArray[''level_0''][] = $seed;\n  }\n\n  // ---------------------------------------------------\n  // Make array of all allowed parents\n  // ---------------------------------------------------\n\n  // Process valid parents\n  $levelCounter = 1;\n\n  while (((count($parentsArray) < $descendentDepth) || ($descendentDepth == 0)) && ($levelCounter <= count($parentsArray)) && ($levelCounter < 10)){\n\n    // Find all decendant parents for this level\n    $pLevel = ''level_''.($levelCounter - 1);\n    $tempLevelArray = $parentsArray[$pLevel];\n\n    foreach($tempLevelArray AS $p){\n\n      // Get children who are parents (isfolder = 1)\n      $validParentSql = "";\n      $validParentSql .= "SELECT id FROM $tblsc sc WHERE ";\n      $validParentSql .= "isfolder = 1 AND parent = $p ";\n      $validParentSql .= "AND sc.deleted=0 ";\n      $validParentSql .= ($seeThruUnpub)? ";" : "AND sc.published = 1;";\n\n      // Run statement\n      $rsTempParents = $modx->dbQuery($validParentSql);\n      // Get number of results\n      $countTempParents = $modx->recordCount($rsTempParents);\n\n      // If there are results, put them in an array\n      $tempValidArray = false;\n      if ($countTempParents){\n        for ($i=0;$i<$countTempParents;$i++){\n          $tempId = $modx->fetchRow($rsTempParents);\n          $tempValidArray[] = $tempId[''id''];\n        } // end while\n      } // end if\n\n	  // populate next level of array \n	  if ($tempValidArray){\n	    foreach($tempValidArray AS $kid){\n	      $kidLevel = ''level_''.$levelCounter;\n	      $parentsArray[$kidLevel][] = $kid;\n	    } // end foreach\n\n	  } // end if\n    } // end foreach\n\n    // Do next level\n    $levelCounter++;\n\n  } // end while\n\n  // Finalize list of parents\n  $validParents = '''';\n  foreach ($parentsArray AS $level){\n    foreach ($level AS $validP){\n      $validParents .= $validP . '','';\n    }\n  }\n\n  // Remove trailing comma\n  $validParents = substr($validParents,0,strlen($validParents)-1);\n\n} else {\n  $validParents = $_GET[''LIn_f''];\n}\n\n// ---------------------------------------------------\n// Make appropriate SQL statement to pull recent items\n// ---------------------------------------------------\n\n// get document groups for current user\nif($docgrp = $modx->getUserDocGroups()) $docgrp = implode(",",$docgrp);\n\n$access = " (".($modx->isFrontend() ? "sc.privateweb=0":"1=''".$_SESSION[''mgrRole'']."'' OR sc.privatemgr=0").\n          (!$docgrp ? "":" OR dg.document_group IN ($docgrp)").") AND ";\n\n// Initialize\n$recentSql = "";\n$recentSql .= "SELECT sc.id, pagetitle, description";\n// Include pub_date or createdon date if date is desired\n$recentSql .= ($showCreationDate)? ", IF(pub_date > 0, pub_date, createdon) AS pubDate ": " " ;\n$recentSql .= "FROM $tblsc sc LEFT JOIN $tbldg dg on dg.document = sc.id ";\n$recentSql .= "WHERE ";\n$recentSql .= ($hidePrivate)? $access:"";\n// Look everywhere, or just under valid parents\n$recentSql .= (($rootFolder == 0) && $seeThruUnpub && ($descendentDepth == 0))? "" : "parent IN ($validParents) AND " ;\n// Published\n$recentSql .= "sc.published = 1 ";\n// Show In Menu\n$recentSql .= ($seeShowInMenu)? " " : " AND sc.hidemenu=0 " ;\n// Not deleted\n$recentSql .= "AND sc.deleted=0 ";\n// Choose sort method\nswitch ($sortBy){\n  case ''alpha'':\n    $recentSql .= "ORDER BY pagetitle ";\n    break;\n  case ''menuindex'':\n    $recentSql .= "ORDER BY menuindex ";\n    break;\n  default:\n    $recentSql .= "ORDER BY IF(pub_date>0, pub_date, createdon) ";\n    break;\n}\n// Provide a sort direction\n$recentSql .= $sortDir;\n\n// If this is a short list, just pull a limited number\n$recentSql .= ($mode == ''short'')? " LIMIT $shortQty;" : ";" ;\n\n// Run statement\n$rsRecent = $modx->dbQuery($recentSql);\n// Count records\n$recentLimit = $modx->recordCount($rsRecent);\n\n// ---------------------------------------------------\n// Generate pagination string if needed\n// ---------------------------------------------------\n$offsetParam = isset($_GET[''LIn_o''])? $_GET[''LIn_o'']: 0;\n$offset = ($offsetParam && ($mode == ''full''))? $offsetParam : 0 ;\n$pagination = '''';\n\n// Don''t bother unless there are enough records to justify it\nif ( ($mode == ''full'') && ($recentLimit > $fullQty) && ($fullQty) ){\n  $fullUrl = $_SERVER[''REQUEST_URI''];\n  $urlPieces = parse_url($fullUrl);\n  $urlPath = $urlPieces[''path''];\n  $otherQs = '''';\n\n  if ($urlPieces[''query'']){\n    foreach($_GET AS $qsKey=>$qsValue){\n	  if (($qsKey != ''LIn_o'') && ($qsKey != ''LIn_f'')){\n	    $otherQs .= ''&''.$qsKey.''=''.$qsValue;\n	  }\n	}\n  } \n  \n  $fastUrl = $urlPath.''?LIn_f=''.$validParents.$otherQs;\n\n  // Determine number of pages needed to show results\n  $totalPages = ceil($recentLimit/$fullQty);\n  \n  // Make links\n  for ($j = 0 ; $j < $totalPages; $j++){\n    // only include links to OTHER pages, not current page\n    if($offset == $j*$fullQty){\n	  $pagination .= ''<span class="LIn_currentPage">''.($j+1) .''</span>'';\n	} else {\n      $pagination .= ''<a href="''.$fastUrl.''&LIn_o=''.($j*$fullQty).''" title="''.($j+1).''">''.($j+1) .''</a>'';\n	}\n	if ($j < $totalPages-1){\n	  $pagination .= $pageSeparator;\n	}\n  }\n  \n  // Make final pagination link set in it''s own div\n  $pagination = ''<div class="LIn_pagination">''."\\n".$pagination."\\n</div>\\n";\n  \n}\n\n\n// ---------------------------------------------------\n// Create title if wanted\n// ---------------------------------------------------\n\nif ($activeTitle){\n  $output .= ''<div class="LIn_title">''.$activeTitle.''</div>''."\\n";\n}\n\n// ---------------------------------------------------\n// Create list of recent items\n// ---------------------------------------------------\n\n// Include pagination\n$output .= ($pgPosition == ''top'' || $pgPosition == ''both'')? $pagination : '''' ;\n\n$output .= ''<ul class="LIn_''.$mode.''Mode">'' . $ie;\n\n$recentCounter = $offset;\nif ($mode == ''short'') {\n  $recentCounterLimit = min($shortQty,$recentLimit);\n} else {\n  $recentCounterLimit = ($fullQty)? min(($fullQty+$offset),$recentLimit) : $recentLimit ;\n}\n\nwhile (($recentCounter < $recentCounterLimit) && $rsRecent && ($recentLimit > 0)){\n  mysql_data_seek($rsRecent,$recentCounter);\n  $recentRecord = $modx->fetchRow($rsRecent);\n  $output .= ''<li>'';\n  // Link to page\n  $output .= ''<a href="[~''.$recentRecord[''id''].''~]" title="''.strip_tags($recentRecord[''pagetitle'']).''">''.$recentRecord[''pagetitle''].''</a> '';\n  // Date if desired\n  if ($showCreationDate){\n    $output .= ''<span class="LIn_date">''.date($dateFormat,$recentRecord[''pubDate'']).''</span> '';\n  }\n  // Description if desired\n  if ((($mode == ''short'') && ($shortDesc)) || (($mode == ''full'') && ($fullDesc))){\n   $output .= ''<span class="LIn_desc">''.$recentRecord[''description''].''</span>'';\n  }\n  // wrap it up\n  $output .= ''</li>'' . $ie;\n  $recentCounter ++;\n}\n\n$output .= ''</ul>'' . $ie;\n\n$output .= ($pgPosition == ''bottom'' || $pgPosition == ''both'')? $pagination : '''' ;\n\n// ---------------------------------------------------\n// Link to index\n// ---------------------------------------------------\n\nif ($linkToIndex) {\n\n  $output .= ''<div class="LIn_index">'';\n  $output .= ''<a href="[~''.$linkToIndex.''~]" title="''.$indexText.''">''.$indexText.''</a>'';\n  $output .= ''</div>'';\n\n}\n\n// ---------------------------------------------------\n// Send to browser\n// ---------------------------------------------------\n\nreturn $output;', 0, '', ''),
(8, 'MemberCheck', '<strong>1.1</strong> Show chunks based on a logged in Web User''s group membership', 0, 2, 0, '#::::::::::::::::::::::::::::::::::::::::\n# Version: 1.0\n# Created By Ryan Thrash (vertexworks.com)\n# Sanitized By Jason Coward (opengeek.com)\n#\n# Date: November 29, 2005\n#\n# Changelog: \n# Nov 29, 05 -- initial release\n# Jul 13, 06 -- adjusted Singleton to work under PHP4, added placeholder code (by: garryn)\n#\n#::::::::::::::::::::::::::::::::::::::::\n# Description: 	\n#	Checks to see if users belong to a certain group and \n#	displays the specified chunk if they do. Performs several\n#	sanity checks and allows to be used multiple times on a page.\n#\n# Params:\n#	&groups [array] (REQUIRED)\n#		array of webuser group-names to check against\n#\n#	&chunk [string] (REQUIRED)\n#		name of the chunk to use if passes the check\n#\n#	&ph [string] (optional)\n#		name of the placeholder to set instead of directly retuning chunk\n#\n#	&debug [boolean] (optional | false) \n#		turn on debug mode for extra troubleshooting\n#\n# Example Usage:\n#\n#	[[MemberCheck? &groups=`siteadmin, registered users` &chunk=`privateSiteNav` &ph=`MemberMenu` &debug=`true`]]\n#\n#	This would place the ''members-only'' navigation store in the chunk ''privateSiteNav''\n#	into a placeholder (called ''MemberMenu''). It will only do this as long as the user \n#	is logged in as a webuser and is a member of the ''siteadmin'' or the ''registered users''\n#	groups. The optional debug parameter can be used to display informative error messages \n#	when configuring this snippet for your site. For example, if the developer had \n#	mistakenly typed ''siteowners'' for the first group, and none existed with debug mode on, \n#	it would have returned the error message: The group siteowners could not be found....\n#\n#::::::::::::::::::::::::::::::::::::::::\n\n# debug parameter\n$debug = isset ($debug) ? $debug : false;\n\n# check if inside manager\nif ($m = $modx->insideManager()) {\n	return ''''; # don''t go any further when inside manager\n}\n\nif (!isset ($groups)) {\n	return $debug ? ''<p>Error: No Group Specified</p>'' : '''';\n}\n\nif (!isset ($chunk)) {\n	return $debug ? ''<p>Error: No Chunk Specified</p>'' : '''';\n}\n\n# turn comma-delimited list of groups into an array\n$groups = explode('','', $groups);\n\nif (!class_exists(''MemberCheck'')) {\n	class MemberCheck {\n		var $allGroups = NULL;\n		var $debug;\n\n		function getInstance($debug) {\n			static $instance;\n			if (!isset ($instance)) {\n				$instance = new MemberCheck($debug);\n			}\n			return $instance;\n		}\n\n		function MemberCheck($debug = false) {\n			global $modx;\n\n			$this->debug = $debug;\n			if ($debug) {\n				$this->allGroups = array ();\n				$tableName = $modx->getFullTableName(''webgroup_names'');\n				$sql = "SELECT name FROM $tableName";\n				if ($rs = $modx->db->query($sql)) {\n					while ($row = $modx->db->getRow($rs)) {\n						array_push($this->allGroups, stripslashes($row[''name'']));\n					}\n				}\n			}\n		}\n\n		function isValidGroup($groupName) {\n			$isValid = !(array_search($groupName, $this->allGroups) === false);\n			return $isValid;\n		}\n\n		function getMemberChunk(& $groups, $chunk) {\n			global $modx;\n			$o = '''';\n			if (is_array($groups)) {\n				for ($i = 0; $i < count($groups); $i++) {\n					$groups[$i] = trim($groups[$i]);\n					if ($this->debug) {\n						if (!$this->isValidGroup($groups[$i])) {\n							return "<p>The group <strong>" . $groups[$i] . "</strong> could not be found...</p>";\n						}\n					}\n				}\n\n				$check = $modx->isMemberOfWebGroup($groups);\n\n				$chunkcheck = $modx->getChunk($chunk);\n\n				$o .= ($check && $chunkcheck) ? $chunkcheck : '''';\n				if (!$chunkcheck)\n					$o .= $this->debug ? "<p>The chunk <strong>$chunk</strong> not found...</p>" : '''';\n			} else {\n				$o .= "<p>No valid group names were specified!</p>";\n			}\n\n			return $o;\n		}\n	}\n}\n\n$memberCheck = MemberCheck :: getInstance($debug);\n\nif (!isset ($ph)) {\n	return $memberCheck->getMemberChunk($groups, $chunk);\n} else {\n	$modx->setPlaceholder($ph, $memberCheck->getMemberChunk($groups, $chunk));\n	return '''';\n}', 0, '', ''),
(9, 'Personalize', '<strong>2.0</strong> Basic personalization for web users', 0, 2, 0, '#::::::::::::::::::::::::::::::::::::::::\n# Created By:Ryan Thrash (modx@vertexworks.com), \n#	and then powered up by kudo (kudo@kudolink.com)\n#\n# Date: Aug 03, 2006\n#\n# Changelog: \n# Dec 01, 05 -- initial release\n# Jun 19, 06 -- updated description\n# Jul 19, 06 -- hacked by kudo to output chunks\n# Aug 03, 06 -- added placeholder for username\n#\n#::::::::::::::::::::::::::::::::::::::::\n# Description: 	\n#	Checks to see if webusers are logged in and displays yesChunk if the user\n#	is logged or noChunk if user is not logged. Insert only the chunk name as\n#	param, without {{}}. Can use a placeholder to output the username.\n#	TESTED: can be used more than once per page.\n#	TESTED: chunks can contain snippets.\n#	\n#	\n# Params:\n#	&yesChunk [string] [REQUIRED]\n#		Output for LOGGED users\n#\n#	&noChunk [string] [REQUIRED] \n#		Output for NOT logged users\n#\n#	&ph [string] (optional) \n#		Placeholder for placing the username\n#		ATTENTION!: place this ph only in yesChunk!\n#	\n#\n# Example Usage:\n#\n#	[[LoggedOrNot? &yesChunk=`Link` &noChunk=`Register` &ph=`name`]]\n#\n#	Having Chunks named {{Link}} and another {{Register}}, the first will be\n#	published to registered user, the second to non-registered users.\n#\n#::::::::::::::::::::::::::::::::::::::::\n\n# prepare params and variables\n$o = '''';\n$yesChunk = (isset($yesChunk))? $yesChunk : '''';\n$noChunk = (isset($noChunk))? $noChunk : '''';\n\n# do the work\n$test = $modx->getLoginUserName();\nif ($test) {\n    $o = $modx->getChunk($yesChunk);\n  } else {\n    $o = $modx->getChunk($noChunk);\n}\n\nif (isset($ph)) {\n	$modx->setPlaceholder($ph,$test);\n	return $o;\n} else {\n	return $o;\n}\n', 0, '', ''),
(10, 'Reflect', '<strong>2.1.0</strong> Generates date-based archives using Ditto', 0, 6, 0, '/*\n * Author: \n *      Mark Kaplan for MODx CMF\n * \n * Note: \n *      If Reflect is not retrieving its own documents, make sure that the\n *          Ditto call feeding it has all of the fields in it that you plan on\n *       calling in your Reflect template. Furthermore, Reflect will ONLY\n *          show what is currently in the Ditto result set.\n *       Thus, if pagination is on it will ONLY show that page''s items.\n*/\n \n\n// ---------------------------------------------------\n//  Includes\n// ---------------------------------------------------\n\n$reflect_base = isset($reflect_base) ? $modx->config[''base_path''].$reflect_base : $modx->config[''base_path'']."assets/snippets/reflect/";\n/*\n    Param: ditto_base\n    \n    Purpose:\n    Location of Ditto files\n\n    Options:\n    Any valid folder location containing the Ditto source code with a trailing slash\n\n    Default:\n    [(base_path)]assets/snippets/ditto/\n*/\n\n$config = (isset($config)) ? $config : "default";\n/*\n    Param: config\n\n    Purpose:\n    Load a custom configuration\n\n    Options:\n    "default" - default blank config file\n    CONFIG_NAME - Other configs installed in the configs folder or in any folder within the MODx base path via @FILE\n\n    Default:\n    "default"\n    \n    Related:\n    - <extenders>\n*/\n\nrequire($reflect_base."configs/default.config.php");\nrequire($reflect_base."default.templates.php");\nif ($config != "default") {\n    require((substr($config, 0, 5) != "@FILE") ? $reflect_base."configs/$config.config.php" : $modx->config[''base_path''].trim(substr($config, 5)));\n}\n\n// ---------------------------------------------------\n//  Parameters\n// ---------------------------------------------------\n\n$id = isset($id) ? $id."_" : false;\n/*\n    Param: id\n\n    Purpose:\n    Unique ID for this Ditto instance for connection with other scripts (like Reflect) and unique URL parameters\n\n    Options:\n    Any valid folder location containing the Ditto source code with a trailing slash\n\n    Default:\n    "" - blank\n*/\n$getDocuments = isset($getDocuments) ? $getDocuments : 0;\n/*\n    Param: getDocuments\n\n    Purpose:\n    Force Reflect to get documents\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    0 - off\n*/\n$showItems = isset($showItems) ? $showItems : 1;\n/*\n    Param: showItems\n\n    Purpose:\n    Show individual items in the archive\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n$groupByYears = isset($groupByYears)? $groupByYears : 1;\n/*\n    Param: groupByYears\n\n    Purpose:\n    Group the archive by years\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n$targetID = isset($targetID) ? $targetID : $modx->documentObject[''id''];\n/*\n    Param: targetID\n\n    Purpose:\n    ID for archive links to point to\n\n    Options:\n    Any MODx document with a Ditto call setup with extenders=`dateFilter`\n    \n    Default:\n    Current MODx Document\n*/\n$dateSource = isset($dateSource) ? $dateSource : "createdon";\n/*\n    Param: dateSource\n\n    Purpose:\n    Date source to display for archive items\n\n    Options:\n    # - Any UNIX timestamp from MODx fields or TVs such as createdon, pub_date, or editedon\n    \n    Default:\n    "createdon"\n    \n    Related:\n    - <dateFormat>\n*/\n$dateFormat = isset($dateFormat) ? $dateFormat : "%d-%b-%y %H:%M";  \n/*\n    Param: dateFormat\n\n    Purpose:\n    Format the [+date+] placeholder in human readable form\n\n    Options:\n    Any PHP valid strftime option\n\n    Default:\n    "%d-%b-%y %H:%M"\n    \n    Related:\n    - <dateSource>\n*/\n$yearSortDir = isset($yearSortDir) ? $yearSortDir : "DESC";\n/*\n    Param: yearSortDir\n\n    Purpose:\n    Direction to sort documents\n\n    Options:\n    ASC - ascending\n    DESC - descending\n\n    Default:\n    "DESC"\n    \n    Related:\n    - <monthSortDir>\n*/\n$monthSortDir = isset($monthSortDir) ? $monthSortDir : "ASC";\n/*\n    Param: monthSortDir\n\n    Purpose:\n    Direction to sort the months\n\n    Options:\n    ASC - ascending\n    DESC - descending\n\n    Default:\n    "ASC"\n    \n    Related:\n    - <yearSortDir>\n*/\n$start = isset($start)? intval($start) : 0;\n/*\n    Param: start\n\n    Purpose:\n    Number of documents to skip in the results\n    \n    Options:\n    Any number\n\n    Default:\n    0\n*/  \n$phx = (isset($phx))? $phx : 1;\n/*\n    Param: phx\n\n    Purpose:\n    Use PHx formatting\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n\n// ---------------------------------------------------\n//  Initialize Ditto\n// ---------------------------------------------------\n$placeholder = ($id != false && $getDocuments == 0) ? true : false;\nif ($placeholder === false) {\n    $rID = "reflect_".rand(1,1000);\n    $itemTemplate = isset($tplItem) ? $tplItem: "@CODE:".$defaultTemplates[''item''];\n    $dParams = array(\n        "id" => "$rID",\n        "save" => "3",  \n        "summarize" => "all",\n        "tpl" => $itemTemplate,\n    );\n    \n    $source = $dittoSnippetName;\n    $params = $dittoSnippetParameters;\n        // TODO: Remove after 3.0\n        \n    if (isset($params)) {\n        $givenParams = explode("|",$params);\n        foreach ($givenParams as $parameter) {\n            $p = explode(":",$parameter);\n            $dParams[$p[0]] = $p[1];\n        }\n    }\n    /*\n        Param: params\n\n        Purpose:\n        Pass parameters to the Ditto instance used to retreive the documents\n\n        Options:\n        Any valid ditto parameters in the format name:value \n        with multiple parameters separated by a pipe (|)\n        \n        Note:\n        This parameter is only needed for config, start, and phx as you can\n        now simply use the parameter as if Reflect was Ditto\n\n        Default:\n        [NULL]\n    */\n    \n    $reflectParameters = array(''reflect_base'',''config'',''id'',''getDocuments'',''showItems'',''groupByYears'',''targetID'',''yearSortDir'',''monthSortDir'',''start'',''phx'',''tplContainer'',''tplYear'',''tplMonth'',''tplMonthInner'',''tplItem'',''save'');\n    $params =& $modx->event->params;\n    if(is_array($params)) {\n        foreach ($params as $param=>$value) {\n            if (!in_array($param,$reflectParameters) && substr($param,-3) != ''tpl'') {\n                $dParams[$param] = $value;\n            }\n        }\n    }\n\n    $source = isset($source) ? $source : "Ditto";\n    /*\n        Param: source\n\n        Purpose:\n        Name of the Ditto snippet to use\n\n        Options:\n        Any valid snippet name\n\n        Default:\n        "Ditto"\n    */\n    $snippetOutput = $modx->runSnippet($source,$dParams);\n    $ditto = $modx->getPlaceholder($rID."_ditto_object");\n    $resource = $modx->getPlaceholder($rID."_ditto_resource");\n} else {\n    $ditto = $modx->getPlaceholder($id."ditto_object");\n    $resource = $modx->getPlaceholder($id."ditto_resource");\n}\nif (!is_object($ditto) || !isset($ditto) || !isset($resource)) {\n    return !empty($snippetOutput) ? $snippetOutput : "The Ditto object is invalid. Please check it.";\n}\n\n// ---------------------------------------------------\n//  Templates\n// ---------------------------------------------------\n\n$templates[''tpl''] = isset($tplContainer) ? $ditto->template->fetch($tplContainer): $defaultTemplates[''tpl''];\n/*\n    Param: tplContainer\n\n    Purpose:\n    Container template for the archive\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[''year''] = isset($tplYear) ? $ditto->template->fetch($tplYear): $defaultTemplates[''year''];\n/*\n    Param: tplYear\n\n    Purpose:\n    Template for the year item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[''year_inner''] = isset($tplYearInner) ? $ditto->template->fetch($tplYearInner): $defaultTemplates[''year_inner''];\n/*\n    Param: tplYearInner\n\n    Purpose:\n    Template for the year item (the ul to hold the year template)\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[''month''] = isset($tplMonth) ? $ditto->template->fetch($tplMonth): $defaultTemplates[''month''];\n/*\n    Param: tplMonth\n\n    Purpose:\n    Template for the month item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[''month_inner''] = isset($tplMonthInner) ? $ditto->template->fetch($tplMonthInner): $defaultTemplates[''month_inner''];\n/*\n    Param: tplMonthInner\n\n    Purpose:\n    Template for the month item  (the ul to hold the month template)\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[''item''] = isset($tplItem) ? $ditto->template->fetch($tplItem): $defaultTemplates[''item''];\n/*\n    Param: tplItem\n\n    Purpose:\n    Template for the individual item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n\n$ditto->addField("date","display","custom");\n    // force add the date field if receiving data from a Ditto instance\n\n// ---------------------------------------------------\n//  Reflect\n// ---------------------------------------------------\n\nif (function_exists("reflect") === FALSE) {\nfunction reflect($templatesDocumentID, $showItems, $groupByYears, $resource, $templatesDateSource, $dateFormat, $ditto, $templates,$id,$start,$yearSortDir,$monthSortDir) {\n    global $modx;\n    $cal = array();\n    $output = '''';\n    $ph = array(''year''=>'''',''month''=>'''',''item''=>'''',''out''=>'''');\n    $build = array();\n    $stop = count($resource);\n\n    // loop and fetch all the results\n    for ($i = $start; $i < $stop; $i++) {\n        $date = getdate($resource[$i][$templatesDateSource]);\n        $year = $date["year"];\n        $month = $date["mon"];\n        $cal[$year][$month][] = $resource[$i];\n    }\n    if ($yearSortDir == "DESC") {\n        krsort($cal);\n    } else {\n        ksort($cal);\n    }\n    foreach ($cal as $year=>$months) {\n        if ($monthSortDir == "ASC") {\n            ksort($months);\n        } else {\n            krsort($months);\n        }\n        $build[$year] = $months;\n    }\n    \n    foreach ($build as $year=>$months) {\n        $r_year = '''';\n        $r_month = '''';\n        $r_month_2 = '''';\n        $year_count = 0;\n        $items = array();\n        \n        foreach ($months as $mon=>$month) {\n            $month_text = strftime("%B", mktime(10, 10, 10, $mon, 10, $year));\n            $month_url = $ditto->buildURL("month=".$mon."&year=".$year."&day=false&start=0",$templatesDocumentID,$id);\n            $month_count = count($month);\n            $year_count += $month_count;\n            $r_month = $ditto->template->replace(array("year"=>$year,"month"=>$month_text,"url"=>$month_url,"count"=>$month_count),$templates[''month'']);\n            if ($showItems) {\n                foreach ($month as $item) {\n                    $items[$year][$mon][''items''][] = $ditto->render($item, $templates[''item''], false, $templatesDateSource, $dateFormat, array(),$phx);\n                }\n                $r_month_2 = $ditto->template->replace(array(''wrapper'' => implode('''',$items[$year][$mon][''items''])),$templates[''month_inner'']);\n                $items[$year][$mon] = $ditto->template->replace(array(''wrapper'' => $r_month_2),$r_month);\n            } else {\n                $items[$year][$mon] = $r_month;\n            }\n        }\n        if ($groupByYears) {\n            $year_url = $ditto->buildURL("year=".$year."&month=false&day=false&start=0",$templatesDocumentID,$id);\n            $r_year =  $ditto->template->replace(array("year"=>$year,"url"=>$year_url,"count"=>$year_count),$templates[''year'']);\n            $var = $ditto->template->replace(array(''wrapper''=>implode('''',$items[$year])),$templates[''year_inner'']);\n            $output .= $ditto->template->replace(array(''wrapper''=>$var),$r_year);\n        } else {\n            $output .= implode('''',$items[$year]);\n        }\n    }\n\n    $output = $ditto->template->replace(array(''wrapper''=>$output),$templates[''tpl'']);\n    $modx->setPlaceholder($id.''reset'',$ditto->buildURL(''year=false&month=false&day=false'',$templatesDocumentID,$id));\n\nreturn $output;\n    \n}\n}\n\nreturn reflect($targetID, $showItems, $groupByYears, $resource, $dateSource, $dateFormat, $ditto, $templates,$id,$start,$yearSortDir,$monthSortDir);', 0, '', ''),
(11, 'UltimateParent', '<strong>2.0</strong> Travels up the document tree from a specified document and returns its "ultimate" non-root parent', 0, 5, 0, '/*\n * @name UltimateParent\n * @version 2.0 beta (requires MODx 0.9.5+)\n * @author Jason Coward <modx@opengeek.com>\n * \n * @param &id The id of the document whose parent you want to find.\n * @param &top The top node for the search.\n * @param &topLevel The top level node for the search (root = level 1)\n * \n * @license Public Domain, use as you like.\n * \n * @example [[UltimateParent? &id=`45` &top=`6`]] \n * Will find the ultimate parent of document 45 if it is a child of document 6;\n * otherwise it will return 45.\n * \n * @example [[UltimateParent? &topLevel=`2`]]\n * Will find the ultimate parent of the current document at a depth of 2 levels\n * in the document hierarchy, with the root level being level 1.\n * \n * This snippet travels up the document tree from a specified document and\n * returns the "ultimate" parent.  Version 2.0 was rewritten to use the new\n * getParentIds function features available only in MODx 0.9.5 or later.\n * \n * Based on the original UltimateParent 1.x snippet by Susan Ottwell\n * <sottwell@sottwell.com>.  The topLevel parameter was introduced by staed and\n * adopted here.\n */\n$top= isset ($top) && intval($top) ? $top : 0;\n$id= isset ($id) && intval($id) ? intval($id) : $modx->documentIdentifier;\n$topLevel= isset ($topLevel) && intval($topLevel) ? intval($topLevel) : 0;\nif ($id && $id != $top) {\n    $pid= $id;\n    if (!$topLevel || count($modx->getParentIds($id)) >= $topLevel) {\n        while ($parentIds= $modx->getParentIds($id, 1)) {\n            $pid= array_pop($parentIds);\n            if ($pid == $top) {\n                break;\n            }\n            $id= $pid;\n            if ($topLevel && count($modx->getParentIds($id)) < $topLevel) {\n                break;\n            }\n        }\n    }\n}\nreturn $id;', 0, '', ''),
(12, 'Wayfinder', '<strong>2.0</strong> Completely template-driven and highly flexible menu builder', 0, 5, 0, '/*\n::::::::::::::::::::::::::::::::::::::::\n Snippet name: Wayfinder\n Short Desc: builds site navigation\n Version: 2.0\n Authors: \n	Kyle Jaebker (muddydogpaws.com)\n	Ryan Thrash (vertexworks.com)\n Date: February 27, 2006\n::::::::::::::::::::::::::::::::::::::::\nDescription:\n    Totally refactored from original DropMenu nav builder to make it easier to\n    create custom navigation by using chunks as output templates. By using templates,\n    many of the paramaters are no longer needed for flexible output including tables,\n    unordered- or ordered-lists (ULs or OLs), definition lists (DLs) or in any other\n    format you desire.\n::::::::::::::::::::::::::::::::::::::::\nExample Usage:\n    [[Wayfinder? &startId=`0`]]\n::::::::::::::::::::::::::::::::::::::::\n*/\n\n$wayfinder_base = $modx->config[''base_path'']."assets/snippets/wayfinder/";\n\n//Include a custom config file if specified\n$config = (isset($config)) ? "{$wayfinder_base}configs/{$config}.config.php" : "{$wayfinder_base}configs/default.config.php";\nif (file_exists($config)) {\n	include_once("$config");\n}\n\ninclude_once("{$wayfinder_base}wayfinder.inc.php");\n\nif (class_exists(''Wayfinder'')) {\n   $wf = new Wayfinder();\n} else {\n    return ''error: Wayfinder class not found'';\n}\n\n$wf->_config = array(\n	''id'' => isset($startId) ? $startId : $modx->documentIdentifier,\n	''level'' => isset($level) ? $level : 0,\n	''includeDocs'' => isset($includeDocs) ? $includeDocs : 0,\n	''excludeDocs'' => isset($excludeDocs) ? $excludeDocs : 0,\n	''ph'' => isset($ph) ? $ph : FALSE,\n	''debug'' => isset($debug) ? TRUE : FALSE,\n	''ignoreHidden'' => isset($ignoreHidden) ? $ignoreHidden : FALSE,\n	''hideSubMenus'' => isset($hideSubMenus) ? $hideSubMenus : FALSE,\n	''useWeblinkUrl'' => isset($useWeblinkUrl) ? $useWeblinkUrl : TRUE,\n	''fullLink'' => isset($fullLink) ? $fullLink : FALSE,\n	''nl'' => isset($removeNewLines) ? '''' : "\\n",\n	''sortOrder'' => isset($sortOrder) ? strtoupper($sortOrder) : ''ASC'',\n	''sortBy'' => isset($sortBy) ? $sortBy : ''menuindex'',\n	''limit'' => isset($limit) ? $limit : 0,\n	''cssTpl'' => isset($cssTpl) ? $cssTpl : FALSE,\n	''jsTpl'' => isset($jsTpl) ? $jsTpl : FALSE,\n	''rowIdPrefix'' => isset($rowIdPrefix) ? $rowIdPrefix : FALSE,\n	''textOfLinks'' => isset($textOfLinks) ? $textOfLinks : ''menutitle'',\n	''titleOfLinks'' => isset($titleOfLinks) ? $titleOfLinks : ''pagetitle'',\n	''displayStart'' => isset($displayStart) ? $displayStart : FALSE,\n);\n\n//get user class definitions\n$wf->_css = array(\n	''first'' => isset($firstClass) ? $firstClass : '''',\n	''last'' => isset($lastClass) ? $lastClass : ''last'',\n	''here'' => isset($hereClass) ? $hereClass : ''active'',\n	''parent'' => isset($parentClass) ? $parentClass : '''',\n	''row'' => isset($rowClass) ? $rowClass : '''',\n	''outer'' => isset($outerClass) ? $outerClass : '''',\n	''inner'' => isset($innerClass) ? $innerClass : '''',\n	''level'' => isset($levelClass) ? $levelClass: '''',\n	''self'' => isset($selfClass) ? $selfClass : '''',\n	''weblink'' => isset($webLinkClass) ? $webLinkClass : '''',\n);\n\n//get user templates\n$wf->_templates = array(\n	''outerTpl'' => isset($outerTpl) ? $outerTpl : '''',\n	''rowTpl'' => isset($rowTpl) ? $rowTpl : '''',\n	''parentRowTpl'' => isset($parentRowTpl) ? $parentRowTpl : '''',\n	''parentRowHereTpl'' => isset($parentRowHereTpl) ? $parentRowHereTpl : '''',\n	''hereTpl'' => isset($hereTpl) ? $hereTpl : '''',\n	''innerTpl'' => isset($innerTpl) ? $innerTpl : '''',\n	''innerRowTpl'' => isset($innerRowTpl) ? $innerRowTpl : '''',\n	''innerHereTpl'' => isset($innerHereTpl) ? $innerHereTpl : '''',\n	''activeParentRowTpl'' => isset($activeParentRowTpl) ? $activeParentRowTpl : '''',\n	''categoryFoldersTpl'' => isset($categoryFoldersTpl) ? $categoryFoldersTpl : '''',\n	''startItemTpl'' => isset($startItemTpl) ? $startItemTpl : '''',\n);\n\n//Process Wayfinder\n$output = $wf->run();\n\nif ($wf->_config[''debug'']) {\n	$output .= $wf->renderDebugOutput();\n}\n\n//Ouput Results\nif ($wf->_config[''ph'']) {\n    $modx->setPlaceholder($wf->_config[''ph''],$output);\n} else {\n    return $output;\n}', 0, '', ''),
(13, 'WebChangePwd', '<strong>1.0</strong> Allows Web User to change their password from the front-end of the website', 0, 2, 0, '# Created By Raymond Irving April, 2005\n#::::::::::::::::::::::::::::::::::::::::\n# Params:	\n#\n#	&tpl			- (Optional)\n#		Chunk name or document id to use as a template\n#				  \n#	Note: Templats design:\n#			section 1: change pwd template\n#			section 2: notification template \n#\n# Examples:\n#\n#	[[WebChangePwd? &tpl=`ChangePwd`]] \n\n# Set Snippet Paths \n$snipPath  = (($modx->insideManager())? "../":"");\n$snipPath .= "assets/snippets/";\n\n# check if inside manager\nif ($m = $modx->insideManager()) {\n	return ''''; # don''t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl		= isset($tpl)? $tpl:"";\n\n# System settings\n$isPostBack		= count($_POST) && isset($_POST[''cmdwebchngpwd'']);\n\n# Start processing\ninclude_once $snipPath."weblogin/weblogin.common.inc.php";\ninclude_once $snipPath."weblogin/webchangepwd.inc.php";\n\n# Return\nreturn $output;\n\n\n\n', 0, '', ''),
(14, 'WebLogin', '<strong>1.1</strong> Allows webusers to login to protected pages in the website, supporting multiple user groups', 0, 2, 0, '# Created By Raymond Irving 2004\n#::::::::::::::::::::::::::::::::::::::::\n# Params:	\n#\n#	&loginhomeid 	- (Optional)\n#		redirects the user to first authorized page in the list.\n#		If no id was specified then the login home page id or \n#		the current document id will be used\n#\n#	&logouthomeid 	- (Optional)\n#		document id to load when user logs out	\n#\n#	&pwdreqid 	- (Optional)\n#		document id to load after the user has submited\n#		a request for a new password\n#\n#	&pwdactid 	- (Optional)\n#		document id to load when the after the user has activated\n#		their new password\n#\n#	&logintext		- (Optional) \n#		Text to be displayed inside login button (for built-in form)\n#\n#	&logouttext 	- (Optional)\n#		Text to be displayed inside logout link (for built-in form)\n#	\n#	&tpl			- (Optional)\n#		Chunk name or document id to as a template\n#				  \n#	Note: Templats design:\n#			section 1: login template\n#			section 2: logout template \n#			section 3: password reminder template \n#\n#			See weblogin.tpl for more information\n#\n# Examples:\n#\n#	[[WebLogin? &loginhomeid=`8` &logouthomeid=`1`]] \n#\n#	[[WebLogin? &loginhomeid=`8,18,7,5` &tpl=`Login`]] \n\n# Set Snippet Paths \n$snipPath = $modx->config[''base_path''] . "assets/snippets/";\n\n# check if inside manager\nif ($m = $modx->insideManager()) {\n	return ''''; # don''t go any further when inside manager\n}\n\n# deprecated params - only for backward compatibility\nif(isset($loginid)) $loginhomeid=$loginid;\nif(isset($logoutid)) $logouthomeid = $logoutid;\nif(isset($template)) $tpl = $template;\n\n# Snippet customize settings\n$liHomeId	= isset($loginhomeid)? explode(",",$loginhomeid):array($modx->config[''login_home''],$modx->documentIdentifier);\n$loHomeId	= isset($logouthomeid)? $logouthomeid:$modx->documentIdentifier;\n$pwdReqId	= isset($pwdreqid)? $pwdreqid:0;\n$pwdActId	= isset($pwdactid)? $pwdactid:0;\n$loginText	= isset($logintext)? $logintext:''Login'';\n$logoutText	= isset($logouttext)? $logouttext:''Logout'';\n$tpl		= isset($tpl)? $tpl:"";\n\n# System settings\n$webLoginMode = isset($_REQUEST[''webloginmode''])? $_REQUEST[''webloginmode'']: '''';\n$isLogOut		= $webLoginMode==''lo'' ? 1:0;\n$isPWDActivate	= $webLoginMode==''actp'' ? 1:0;\n$isPostBack		= count($_POST) && (isset($_POST[''cmdweblogin'']) || isset($_POST[''cmdweblogin_x'']));\n$txtPwdRem 		= isset($_REQUEST[''txtpwdrem''])? $_REQUEST[''txtpwdrem'']: 0;\n$isPWDReminder	= $isPostBack && $txtPwdRem==''1'' ? 1:0;\n\n$site_id = isset($site_id)? $site_id: '''';\n$cookieKey = substr(md5($site_id."Web-User"),0,15);\n\n# Start processing\ninclude_once $snipPath."weblogin/weblogin.common.inc.php";\ninclude_once ($modx->config[''base_path''] . "manager/includes/crypt.class.inc.php");\n\nif ($isPWDActivate || $isPWDReminder || $isLogOut || $isPostBack) {\n	# include the logger class\n	include_once $modx->config[''base_path''] . "manager/includes/log.class.inc.php";\n	include_once $snipPath."weblogin/weblogin.processor.inc.php";\n}\n\ninclude_once $snipPath."weblogin/weblogin.inc.php";\n\n# Return\nreturn $output;\n', 0, '&loginhomeid=Login Home Id;string; &logouthomeid=Logout Home Id;string; &logintext=Login Button Text;string; &logouttext=Logout Button Text;string; &tpl=Template;string;', '');
INSERT INTO `mtzrad_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`) VALUES
(15, 'WebSignup', '<strong>1.1</strong> Basic Web User account creation/signup system', 0, 2, 0, '# Created By Raymond Irving April, 2005\n#::::::::::::::::::::::::::::::::::::::::\n# Usage:     \n#    Allows a web user to signup for a new web account from the website\n#    This snippet provides a basic set of form fields for the signup form\n#    You can customize this snippet to create your own signup form\n#\n# Params:    \n#\n#    &tpl        - (Optional) Chunk name or document id to use as a template\n#    &groups     - Web users groups to be assigned to users\n#    &useCaptcha - (Optional) Determine to use (1) or not to use (0) captcha\n#                  on signup form - if not defined, will default to system\n#                  setting. GD is required for this feature. If GD is not \n#                  available, useCaptcha will automatically be set to false;\n#                  \n#    Note: Templats design:\n#        section 1: signup template\n#        section 2: notification template \n#\n# Examples:\n#\n#    [[WebSignup? &tpl=`SignupForm` &groups=`NewsReaders,WebUsers`]] \n\n# Set Snippet Paths \n$snipPath = $modx->config[''base_path''] . "assets/snippets/";\n\n# check if inside manager\nif ($m = $modx->insideManager()) {\n    return ''''; # don''t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl = isset($tpl)? $tpl:"";\n$useCaptcha = isset($useCaptcha)? $useCaptcha : $modx->config[''use_captcha''] ;\n// Override captcha if no GD\nif ($useCaptcha && !gd_info()) $useCaptcha = 0;\n\n# setup web groups\n$groups = isset($groups) ? explode('','',$groups):array();\nfor($i=0;$i<count($groups);$i++) $groups[$i] = trim($groups[$i]);\n\n# System settings\n$isPostBack        = count($_POST) && isset($_POST[''cmdwebsignup'']);\n\n$output = '''';\n\n# Start processing\ninclude_once $snipPath."weblogin/weblogin.common.inc.php";\ninclude_once $snipPath."weblogin/websignup.inc.php";\n\n# Return\nreturn $output;', 0, '&tpl=Template;string;', '');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_templates`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_templates` (
  `id` int(10) NOT NULL auto_increment,
  `templatename` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default 'Template',
  `editor_type` int(11) NOT NULL default '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL default '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL default '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL default '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mtzrad_site_templates`
--

INSERT INTO `mtzrad_site_templates` (`id`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`) VALUES
(3, 'Minimal Template', 'Default minimal empty template (content returned only)', 0, 0, '', 0, '[*content*]', 0),
(4, 'MODxHost', '<strong>1.0</strong> Legacy MODx Host template including dropdown menu', 0, 1, '', 0, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n\n<head>\n  <title>[(site_name)] | [*pagetitle*]</title>\n  <meta http-equiv="Content-Type" content="text/html; charset=[(modx_charset)]" />\n  <base href="[(site_url)]"></base>\n  <link rel="stylesheet" href="assets/templates/modxhost/layout.css" type="text/css" media="screen" />\n  <link rel="stylesheet" href="assets/templates/modxhost/modxmenu.css" type="text/css" media="screen" />\n  <link rel="stylesheet" href="assets/templates/modxhost/form.css" type="text/css" media="screen" />\n  <link rel="stylesheet" href="assets/templates/modxhost/modx.css" type="text/css" media="screen" />\n  <link rel="stylesheet" href="assets/templates/modxhost/print.css" type="text/css" media="print" />\n  <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="[(site_url)][~11~]" />\n  <script src="manager/media/script/mootools/mootools.js" type="text/javascript"></script>\n  <script src="assets/templates/modxhost/drop_down_menu.js" type="text/javascript"></script>\n</head>\n<body>\n<div id="wrapper">\n  <div id="minHeight"></div>\n  <div id="outer">\n    <div id="inner">\n      <div id="right">\n        <div id="right-inner">\n          <h1 style="text-indent: -5000px;padding: 0px; margin:0px; font-size: 1px;">[(site_name)]</h1>\n          <div id="sidebar">\n            <h2>News:</h2>\n            [[Ditto? &parents=`2` &display=`2` &total=`20` &removeChunk=`Comments` &tpl=`nl_sidebar`]]\n            <div id="recentdocsctnr">\n              <h2>Most Recent:</h2>\n              <a name="recentdocs"></a>[[ListIndexer?LIn_root=0]] </div>\n            <h2>Login:</h2>\n            <div id="sidebarlogin">[!WebLogin? &tpl=`FormLogin` &loginhomeid=`[(site_start)]`!]</div>\n            <h2>Meta:</h2>\n            <p><a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional">Valid <abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a></p>\n            <p><a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page uses valid Cascading Stylesheets" rel="external">Valid <abbr title="W3C Cascading Stylesheets">css</abbr></a></p>\n            <p><a href="http://modxcms.com" title="Ajax CMS and PHP Application Framework">MODx</a></p>\n          </div>\n          <!-- close #sidebar -->\n        </div>\n        <!-- end right inner-->\n      </div>\n      <!-- end right -->\n      <div id="left">\n        <div id="left-inner">\n          <div id="content">\n            <div class="post">\n              <h2>[*longtitle*]</h2>\n              [*#content*] </div>\n            <!-- close .post (main column content) -->\n          </div>\n          <!-- close #content -->\n        </div>\n        <!-- end left-inner -->\n      </div>\n      <!-- end left -->\n    </div>\n    <!-- end inner -->\n    <div id="clearfooter"></div>\n    <div id="header">\n      <h1><a id="logo" href="[~[(site_start)]~]" title="[(site_name)]">[(site_name)]</a></h1>\n\n      <div id="search"><!--search_terms--><span id="search-txt">SEARCH</span><a name="search"></a>[!AjaxSearch? &ajaxSearch=`1` &landingPage=`8` &moreResultsPage=`8` &addJscript=`0` &showIntro=`0` &ajaxMax=`5` &extract=`1`!]</div>\n      <div id="ajaxmenu"> [[Wayfinder?startId=`0` &outerTpl=`mh.OuterTpl` &innerTpl=`mh.InnerTpl` &rowTpl=`mh.RowTpl` &innerRowTpl=`mh.InnerRowTpl` &firstClass=`first` &hereClass=``]] </div>\n      <!-- end topmenu -->\n    </div>\n    <!-- end header -->\n    <br style="clear:both;height:0;font-size: 1px" />\n    <div id="footer">\n      <p> <a href="http://modxcms.com" title="Ajax CMS and PHP Application Framework">Powered\n          by MODx</a> &nbsp;<a href="http://www.modxhost.com/" title="Template Designed by modXhost.com">Template &copy; 2006-2010\n          modXhost.com</a><br />\n        MySQL: [^qt^], [^q^] request(s), PHP: [^p^], total: [^t^], document retrieved\n        from [^s^]. </p>\n    </div>\n    <!-- end footer -->\n  </div>\n  <!-- end outer div -->\n</div>\n<!-- end wrapper -->\n</body>\n</html>', 0),
(5, 'Radical Home', '', 0, 0, '', 0, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> \r\n<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">\r\n  <head>\r\n    <meta name="generator" content=\r\n    "HTML Tidy for Windows (vers 14 February 2006), see www.w3.org" />\r\n    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />\r\n    <meta name="description" content="[[*description]]"/>\r\n    [[MetaTagsExtra]]\r\n    <base href="[(site_url)]" />\r\n    <title>[(site_name)]</title>\r\n    <!-- add your meta tags here -->\r\n    <link href="/css/my_layout.css" rel="stylesheet" type="text/css" />\r\n    <script type="text/javascript" src="/js/google-analytics.js">\r\n</script><!--[if lte IE 7]>\r\n<link href="/css/patches/patch_my_layout.css" rel="stylesheet" type="text/css" />\r\n<![endif]-->\r\n  </head>\r\n  <body>\r\n    <div class="page_margins">\r\n  <!-- start: skip link navigation -->\r\n      <a class="skip" title="skip link" href="#navigation">Skip to the\r\n      navigation</a><span class="hideme">.</span> <a class="skip" title=\r\n      "skip link" href="#content">Skip to the content</a><span class=\r\n      "hideme">.</span> <!-- end: skip link navigation -->\r\n       <!-- start: skip link navigation -->\r\n       <!-- end: skip link navigation -->\r\n       <!-- start: skip link navigation -->\r\n       <!-- end: skip link navigation -->\r\n      <div id="header">\r\n        <img src="/images/experimentLogo.jpg" alt="The Radical Experiment" />\r\n      </div>\r\n		<div id="navigation">\r\n			<ul>\r\n				<li><a title="Mt. Zion Church" href="http://local.mtzion/">Mt. Zion</a></li>\r\n				<li><a title="Mt. Zion Family" href="http://local.family">Family</a></li>\r\n				<li><a title="The Radical Experiment at Mt. Zion" href="http://local.radical">Radical</a></li>\r\n			</ul>\r\n		</div>\r\n      <div class="page">\r\n        <div id="main">\r\n  [*content*] \r\n<h2><a name="pray"></a>Pray for the entire world</h2>\r\n[*RadicalPrayer*]\r\n<h2><a name="read"></a>Read through the entire Word</h2>\r\n[*RadicalWord*]\r\n<h2><a name="sacrifice"></a>Sacrifice money for a specific purpose</h2>\r\n[*RadicalGiving*]\r\n<h2><a name="spendtime"></a>Spend time in another context</h2>\r\n[*RadicalTime*]\r\n<h2><a name="commit"></a>Commit our lives to multiplying communities</h2>\r\n[*RadicalCommitment*]\r\n        </div><!-- begin: #footer -->\r\n        <div id="footer">\r\n          <p>\r\n            <a href="http://local.mtzion/">Mt. Zion Church</a> - Cary, NC\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </body>\r\n</html>\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_tmplvars`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_tmplvars` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `caption` varchar(80) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `editor_type` int(11) NOT NULL default '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL default '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL default '0',
  `elements` text,
  `rank` int(11) NOT NULL default '0',
  `display` varchar(20) NOT NULL default '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  PRIMARY KEY  (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Site Template Variables' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mtzrad_site_tmplvars`
--

INSERT INTO `mtzrad_site_tmplvars` (`id`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `display_params`, `default_text`) VALUES
(1, 'richtext', 'RadicalPrayer', 'Prayer', 'Pray for the Entire World', 0, 8, 0, '', 0, '', '', ''),
(2, 'richtext', 'RadicalWord', 'Bible', 'Read through the entire Word', 0, 8, 0, '', 1, '', '', ''),
(3, 'richtext', 'RadicalGiving', 'Sacrifice Money', 'Sacrifice money for a specific purpose', 0, 8, 0, '', 2, '', '', ''),
(4, 'richtext', 'RadicalTime', 'Spend Time', 'Spend time in another context', 0, 8, 0, '', 3, '', '', ''),
(5, 'richtext', 'RadicalCommitment', 'Commitment', 'Commit our lives to multiplying communities', 0, 8, 0, '', 4, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_tmplvar_access`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_tmplvar_access` (
  `id` int(10) NOT NULL auto_increment,
  `tmplvarid` int(10) NOT NULL default '0',
  `documentgroup` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_site_tmplvar_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_tmplvar_contentvalues`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL auto_increment,
  `tmplvarid` int(10) NOT NULL default '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL default '0' COMMENT 'Site Content Id',
  `value` text,
  PRIMARY KEY  (`id`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mtzrad_site_tmplvar_contentvalues`
--

INSERT INTO `mtzrad_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 1, '<hr />\r\n<p>Pray for specific needs among the nations. We will be using <a href="http://www.operationworld.org/">Operation World</a> as our prayer guide to pray for every nation.</p>\r\n<div id="cou_text">\r\n<h3 class="cou_text"><a name="tanz"></a>Today''s Prayer - Tanzania - November 17</h3>\r\n<h4 class="cou_text">Republic of Tanzania</h4>\r\n<h5 class="cou_text">Africa</h5>\r\n<h5><a href="#prayer">See Prayer Information</a></h5>\r\n<h4>Geography</h4>\r\n<p><strong>Area:</strong> 945,037 sq km</p>\r\n<p>Comprising mainland Tanganyika and the offshore islands of Zanzibar and Pemba (2,460 sq km).</p>\r\n<p><strong>Population:</strong> 45,039,573&nbsp;&nbsp;&nbsp;&nbsp;<strong>Annual Growth</strong>: 2.92%</p>\r\n<p><strong>Capital:</strong> Dodoma (official); Dar es Salaam (de facto)</p>\r\n<p><strong>Urbanites:</strong> 26.4% </p>\r\n<p><strong><a href="http://hdr.undp.org/en/statistics/" target="_blank">HDI Rank:</a></strong> 151 of 182 (<a href="http://hdr.undp.org/en/" target="_blank">UN Human Development Reports 2009</a>)</p>\r\n<h4>Peoples</h4>\r\n<p><strong>Peoples:</strong> 160 (21% unreached) <a href="http://www.joshuaproject.net/countries.php?rog3=tz" target="_blank">All peoples</a><br /><a href="http://www.joshuaproject.net/assets/prayer-cards/en/PrayerCards-Country-TZ-en.pdf" target="_blank">Unreached Peoples Prayer Card<br /><img src="http://operationworld.org/files/ow/PrayerCardImages/tanz.jpg" alt="" /></a></p>\r\n<p><strong>Official language:</strong> Swahili, English; 2% speak only Swahili and no local African language&nbsp;&nbsp;&nbsp;&nbsp;<strong>Languages:</strong> 127<a href="http://www.ethnologue.com/show_country.asp?name=TZ" target="_blank"> All languages</a></p>\r\n<h4>Religion</h4>\r\n<p><strong>Largest Religion:</strong> Christian</p>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<th>Religion</th>\r\n<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>\r\n<th align="right">Pop %</th>\r\n<th align="right">Ann Gr</th>\r\n</tr>\r\n<tr>\r\n<td><a title="Anyone who professes to be Christian. The term embraces all traditions and confessions of Christianity." href="http://operationworld.org/node/570" target="_blank">Christians</a></td>\r\n<td align="right">24,352,897</td>\r\n<td align="right">54.07</td>\r\n<td align="right">3.7</td>\r\n</tr>\r\n<tr>\r\n<td><a href="http://operationworld.org/node/570" target="_blank">Evangelicals</a></td>\r\n<td align="right">8,042,731</td>\r\n<td align="right">17.9</td>\r\n<td align="right">2.4</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class="cou_prayer"><a name="prayer"></a><br />\r\n<h4>Answer to Prayer</h4>\r\n<p><span class="k-3-prayeranswerstextheadline">Tanzania remains an &ldquo;island of peace&rdquo;</span> <span class="generated-style">amid many troubled nations. This not only allows positive inter-communal relations but also allows Tanzania to shelter over a million refugees who have fled from violence in their own lands and to function as an operation base for much regional ministry.</span></p>\r\n<p><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For an additional 2 Answers to Prayer see Operation World <a href="http://www.biblicadirect.com/c-316-operation-world.aspx">book, CD-ROM, or DVD-ROM</a>.</span></p>\r\n<h4>Challenge for Prayer</h4>\r\n<p><span class="l-5-prayerchallengestextheadline">The delicate inter-communal balance</span> <span class="generated-style">and religious stability of the country cannot be taken for granted. The Muslim community is increasingly polarized between moderates and Islamists, the latter pressing for political influence and the establishment of separate Islamist courts. Witchcraft is widespread and permeates both Christianity and Islam. Spiritual superstitions and outright occultism incur great financial expense and often result in sexual abuse or even death for the victims of such practices. Pray that the government may be ruthless in uprooting evil and wise in fostering communal harmony and religious freedom.</span></p>\r\n<p><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For an additional 10 Challenges for Prayer see Operation World <a href="http://www.biblicadirect.com/c-316-operation-world.aspx">book, CD-ROM, or DVD-ROM</a>.</span></p>\r\n</div>\r\n</div>\r\n<div id="-chrome-auto-translate-plugin-dialog" style="opacity: 1 !important; background-image: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important; background-color: transparent !important; position: absolute !important; top: 0px; left: 0px; overflow-x: visible !important; overflow-y: visible !important; z-index: 999999 !important; text-align: left !important; display: none; background-position: initial initial !important; background-repeat: initial initial !important; padding: 0px !important; margin: 0px !important;">\r\n<div style="max-width: 300px !important; color: #fafafa !important; opacity: 0.8 !important; border-color: #000000 !important; border-width: 0px !important; background-color: #363636 !important; font-size: 16px !important; padding: 8px !important; overflow: visible !important; background-image: -webkit-gradient(linear, left top, right bottom, color-stop(0%, #000), color-stop(50%, #363636), color-stop(100%, #000)); z-index: 999999 !important; text-align: left  !important;"></div>\r\n<img style="position: absolute !important; z-index: -1 !important; right: 1px !important; top: -20px !important; cursor: pointer !important; background-color: rgba(200, 200, 200, 0.3) !important; padding: 3px 5px 0 !important; margin: 0 !important;" onclick="document.location.href=''http://translate.google.com/'';" src="http://www.google.com/uds/css/small-logo.png" alt="" /></div>'),
(2, 2, 1, '<p>Get through the entirety of Scripture in one year. We recommend following a canonical reading plan to take us from Genesis to Revelation. Each week our daily reading will be updated. You can either read along with us using your personal copy of the Word or sign-up with an account with <a href="http://www.youversion.com/reading-plans/canonical">YouVersion</a> to be updated daily of the reading plan.</p>\r\n<h3>November 1 - Day 305&nbsp;</h3>\r\n<ul>\r\n<li>Luke 19</li>\r\n<li>Luke 20</li>\r\n</ul>\r\n<h3>November 2 - Day 306</h3>\r\n<ul>\r\n<li>Luke 21</li>\r\n<li>Luke 22</li>\r\n</ul>\r\n<h3>November 3 - Day 307</h3>\r\n<ul>\r\n<li>Luke 23</li>\r\n<li>Luke 24</li>\r\n</ul>\r\n<h3>November 4 - Day 308</h3>\r\n<ul>\r\n<li>John 1</li>\r\n<li>John 2</li>\r\n</ul>\r\n<h3>November 5 - Day 309</h3>\r\n<ul>\r\n<li>John 3</li>\r\n<li>John 4</li>\r\n</ul>\r\n<h3>November 6 - Day 310</h3>\r\n<ul>\r\n<li>John 5</li>\r\n<li>John 6</li>\r\n</ul>\r\n<h3>November 7 - Day 311</h3>\r\n<ul>\r\n<li>John 7</li>\r\n<li>John 8</li>\r\n</ul>\r\n<h3>November 8 - Day 312</h3>\r\n<ul>\r\n<li>John 9</li>\r\n<li>John 10</li>\r\n</ul>\r\n<h3>November 9 - Day 313</h3>\r\n<ul>\r\n<li>John 11</li>\r\n<li>John 12</li>\r\n</ul>\r\n<h3>November 10 - Day 314</h3>\r\n<ul>\r\n<li>John 13</li>\r\n<li>John 14</li>\r\n<li>John 15</li>\r\n</ul>\r\n<h3>November 11 - Day 315</h3>\r\n<ul>\r\n<li>John 16</li>\r\n<li>John 17</li>\r\n<li>John 18</li>\r\n</ul>\r\n<h3>November 12 - Day 316</h3>\r\n<ul>\r\n<li>John 19</li>\r\n<li>John 20</li>\r\n<li>John 21</li>\r\n</ul>\r\n<h3>November 13 - Day 317</h3>\r\n<ul>\r\n<li>Acts 1</li>\r\n<li>Acts 2</li>\r\n<li>Acts 3</li>\r\n</ul>\r\n<h3>November 14 - Day 318</h3>\r\n<ul>\r\n<li>Acts 4</li>\r\n<li>Acts 5</li>\r\n<li>Acts 6</li>\r\n</ul>\r\n<h3>November 15 - Day 319</h3>\r\n<ul>\r\n<li>Acts 7</li>\r\n<li>Acts 8</li>\r\n</ul>\r\n<h3>November 16 - Day 320</h3>\r\n<ul>\r\n<li>Acts 9</li>\r\n<li>Acts 10</li>\r\n</ul>\r\n<h3>November 17 - Day 321</h3>\r\n<ul>\r\n<li>Acts 11</li>\r\n<li>Acts 12</li>\r\n<li>Acts 13</li>\r\n</ul>\r\n<h3>November 18 - Day 322</h3>\r\n<ul>\r\n<li>Acts 14</li>\r\n<li>Acts 15</li>\r\n</ul>\r\n<h3>November 19 - Day 323</h3>\r\n<ul>\r\n<li>Acts 16</li>\r\n<li>Acts 17</li>\r\n</ul>\r\n<h3>November 20 - Day 324</h3>\r\n<ul>\r\n<li>Acts 18</li>\r\n<li>Acts 19</li>\r\n<li>Acts 20</li>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<div id="-chrome-auto-translate-plugin-dialog" style="display: none; opacity: 1 !important; border-color: none !important; background: transparent !important; padding: 0 !important; margin: 0 !important; position: absolute !important; top: 0; left: 0; overflow: visible !important; z-index: 999999 !important; text-align: left !important;">\r\n<img style="position: absolute !important; z-index: -1 !important; right: 1px !important; top: -20px !important; cursor: pointer !important; background-color: rgba(200, 200, 200, 0.3) !important; padding: 3px 5px 0 !important; margin: 0 !important;" onclick="document.location.href=''http://translate.google.com/'';" src="http://www.google.com/uds/css/small-logo.png" alt="" /></div>'),
(3, 3, 1, '<p>We should put a cap on our spending so that we can give more. Give to the church for ministry, give more to love offering, give toward mission trips, etc. </p>\r\n<div id="-chrome-auto-translate-plugin-dialog" style="display: none; opacity: 1 !important; border-color: none !important; background: transparent !important; padding: 0 !important; margin: 0 !important; position: absolute !important; top: 0; left: 0; overflow: visible !important; z-index: 999999 !important; text-align: left !important;">\r\n<img style="position: absolute !important; z-index: -1 !important; right: 1px !important; top: -20px !important; cursor: pointer !important; background-color: rgba(200, 200, 200, 0.3) !important; padding: 3px 5px 0 !important; margin: 0 !important;" onclick="document.location.href=''http://translate.google.com/'';" src="http://www.google.com/uds/css/small-logo.png" alt="" /></div>'),
(4, 4, 1, '<p>Whether it''s overseas for a short term missions trip or the soup kitchen downtown, we must go and be with people who aren''t like us. Mt. Zion is planning two missions trips during 2011: Ecuador and Haiti.</p>\r\n<h3>Ecuador</h3>\r\n<p>Mt. Zion will be partnering with <a href="http://www.carycog.org/">Cary Church of God</a>&nbsp;as they prepare for an annual missions trip to Ecuador in mid-July. &nbsp;Please read the following information regarding the upcoming trip.</p>\r\n<ul>\r\n<li><a href="http://fb.me/DLHE2qN5">Audio From the February 7 Informational Meeting at Cary Church of God </a></li>\r\n<li><a href="assets/files/Ecuador2011.pdf">Important Information/Dates Fact Sheet for Ecuador Mission Trip 2011</a></li>\r\n<li><a href="http://www.carycog.org/ECUADOR.html">Cary Church of God''s Information on Ecuador</a></li>\r\n<li><a href="http://www.operationworld.org/country/ecua/owtext.html">Ecuador - Operation World</a></li>\r\n</ul>\r\n<h3>Haiti</h3>\r\n<p>Northwest Haiti Christian Mission will be coordinating the trip to Haiti. &nbsp;The following information provides details on the trip including prices for anyone interested in attending.&nbsp;</p>\r\n<ul>\r\n<li><a href="http://www.nwhcm.org/misc/10TravelBookWeb.pdf">Team Member Pack - Northwest Haiti Christian Mission</a></li>\r\n<li><a href="assets/files/HaitiMissionApplicationSubmission.pdf">Important Information Dates for Haiti Mission Trip 2012</a></li>\r\n<li><a href="http://www.operationworld.org/country/hait/owtext.html">Haiti - Operation World</a></li>\r\n</ul>\r\n<div id="-chrome-auto-translate-plugin-dialog" style="display: none; opacity: 1 !important; border-color: none !important; background: transparent !important; padding: 0 !important; margin: 0 !important; position: absolute !important; top: 0; left: 0; overflow: visible !important; z-index: 999999 !important; text-align: left !important;">\r\n<img style="position: absolute !important; z-index: -1 !important; right: 1px !important; top: -20px !important; cursor: pointer !important; background-color: rgba(200, 200, 200, 0.3) !important; padding: 3px 5px 0 !important; margin: 0 !important;" onclick="document.location.href=''http://translate.google.com/'';" src="http://www.google.com/uds/css/small-logo.png" alt="" /></div>'),
(5, 5, 1, '<p>Be a part of a local church that is growing, making disciples and sending people out. Serve faithfully and pray fervently for it. And if you''re not in a ministry, get into one. </p>\r\n<h3>Project: Know Thy Neighbor</h3>\r\n<p>Do you know your neighbors? &nbsp;Maybe there is someone you see on occasion \r\nthat you might not know on a name basis, or some who lives near you whom\r\n you have never talked to. &nbsp;We have launched a new website to challenge \r\nyou in your spiritual growth.&nbsp; For \r\nmore information visit&nbsp; <a href="neighbors">Project: Know Thy Neighbor</a>.</p>\r\n<div id="-chrome-auto-translate-plugin-dialog" style="display: none; opacity: 1 !important; border-color: none !important; background: transparent !important; padding: 0 !important; margin: 0 !important; position: absolute !important; top: 0; left: 0; overflow: visible !important; z-index: 999999 !important; text-align: left !important;">\r\n<img style="position: absolute !important; z-index: -1 !important; right: 1px !important; top: -20px !important; cursor: pointer !important; background-color: rgba(200, 200, 200, 0.3) !important; padding: 3px 5px 0 !important; margin: 0 !important;" onclick="document.location.href=''http://translate.google.com/'';" src="http://www.google.com/uds/css/small-logo.png" alt="" /></div>');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_site_tmplvar_templates`
--

CREATE TABLE IF NOT EXISTS `mtzrad_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL default '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

--
-- Dumping data for table `mtzrad_site_tmplvar_templates`
--

INSERT INTO `mtzrad_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 5, 0),
(2, 5, 0),
(3, 5, 0),
(4, 5, 0),
(5, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_system_eventnames`
--

CREATE TABLE IF NOT EXISTS `mtzrad_system_eventnames` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `service` tinyint(4) NOT NULL default '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='System Event Names.' AUTO_INCREMENT=1001 ;

--
-- Dumping data for table `mtzrad_system_eventnames`
--

INSERT INTO `mtzrad_system_eventnames` (`id`, `name`, `service`, `groupname`) VALUES
(1, 'OnDocPublished', 5, ''),
(2, 'OnDocUnPublished', 5, ''),
(3, 'OnWebPagePrerender', 5, ''),
(4, 'OnWebLogin', 3, ''),
(5, 'OnBeforeWebLogout', 3, ''),
(6, 'OnWebLogout', 3, ''),
(7, 'OnWebSaveUser', 3, ''),
(8, 'OnWebDeleteUser', 3, ''),
(9, 'OnWebChangePassword ', 3, ''),
(10, 'OnWebCreateGroup', 3, ''),
(11, 'OnManagerLogin', 2, ''),
(12, 'OnBeforeManagerLogout', 2, ''),
(13, 'OnManagerLogout', 2, ''),
(14, 'OnManagerSaveUser ', 2, ''),
(15, 'OnManagerDeleteUser', 2, ''),
(16, 'OnManagerChangePassword ', 2, ''),
(17, 'OnManagerCreateGroup', 2, ''),
(18, 'OnBeforeCacheUpdate', 4, ''),
(19, 'OnCacheUpdate', 4, ''),
(20, 'OnLoadWebPageCache', 4, ''),
(21, 'OnBeforeSaveWebPageCache', 4, ''),
(22, 'OnChunkFormPrerender', 1, 'Chunks'),
(23, 'OnChunkFormRender', 1, 'Chunks'),
(24, 'OnBeforeChunkFormSave', 1, 'Chunks'),
(25, 'OnChunkFormSave', 1, 'Chunks'),
(26, 'OnBeforeChunkFormDelete', 1, 'Chunks'),
(27, 'OnChunkFormDelete', 1, 'Chunks'),
(28, 'OnDocFormPrerender', 1, 'Documents'),
(29, 'OnDocFormRender', 1, 'Documents'),
(30, 'OnBeforeDocFormSave', 1, 'Documents'),
(31, 'OnDocFormSave', 1, 'Documents'),
(32, 'OnBeforeDocFormDelete', 1, 'Documents'),
(33, 'OnDocFormDelete', 1, 'Documents'),
(34, 'OnPluginFormPrerender', 1, 'Plugins'),
(35, 'OnPluginFormRender', 1, 'Plugins'),
(36, 'OnBeforePluginFormSave', 1, 'Plugins'),
(37, 'OnPluginFormSave', 1, 'Plugins'),
(38, 'OnBeforePluginFormDelete', 1, 'Plugins'),
(39, 'OnPluginFormDelete', 1, 'Plugins'),
(40, 'OnSnipFormPrerender', 1, 'Snippets'),
(41, 'OnSnipFormRender', 1, 'Snippets'),
(42, 'OnBeforeSnipFormSave', 1, 'Snippets'),
(43, 'OnSnipFormSave', 1, 'Snippets'),
(44, 'OnBeforeSnipFormDelete', 1, 'Snippets'),
(45, 'OnSnipFormDelete', 1, 'Snippets'),
(46, 'OnTempFormPrerender', 1, 'Templates'),
(47, 'OnTempFormRender', 1, 'Templates'),
(48, 'OnBeforeTempFormSave', 1, 'Templates'),
(49, 'OnTempFormSave', 1, 'Templates'),
(50, 'OnBeforeTempFormDelete', 1, 'Templates'),
(51, 'OnTempFormDelete', 1, 'Templates'),
(52, 'OnTVFormPrerender', 1, 'Template Variables'),
(53, 'OnTVFormRender', 1, 'Template Variables'),
(54, 'OnBeforeTVFormSave', 1, 'Template Variables'),
(55, 'OnTVFormSave', 1, 'Template Variables'),
(56, 'OnBeforeTVFormDelete', 1, 'Template Variables'),
(57, 'OnTVFormDelete', 1, 'Template Variables'),
(58, 'OnUserFormPrerender', 1, 'Users'),
(59, 'OnUserFormRender', 1, 'Users'),
(60, 'OnBeforeUserFormSave', 1, 'Users'),
(61, 'OnUserFormSave', 1, 'Users'),
(62, 'OnBeforeUserFormDelete', 1, 'Users'),
(63, 'OnUserFormDelete', 1, 'Users'),
(64, 'OnWUsrFormPrerender', 1, 'Web Users'),
(65, 'OnWUsrFormRender', 1, 'Web Users'),
(66, 'OnBeforeWUsrFormSave', 1, 'Web Users'),
(67, 'OnWUsrFormSave', 1, 'Web Users'),
(68, 'OnBeforeWUsrFormDelete', 1, 'Web Users'),
(69, 'OnWUsrFormDelete', 1, 'Web Users'),
(70, 'OnSiteRefresh', 1, ''),
(71, 'OnFileManagerUpload', 1, ''),
(72, 'OnModFormPrerender', 1, 'Modules'),
(73, 'OnModFormRender', 1, 'Modules'),
(74, 'OnBeforeModFormDelete', 1, 'Modules'),
(75, 'OnModFormDelete', 1, 'Modules'),
(76, 'OnBeforeModFormSave', 1, 'Modules'),
(77, 'OnModFormSave', 1, 'Modules'),
(78, 'OnBeforeWebLogin', 3, ''),
(79, 'OnWebAuthentication', 3, ''),
(80, 'OnBeforeManagerLogin', 2, ''),
(81, 'OnManagerAuthentication', 2, ''),
(82, 'OnSiteSettingsRender', 1, 'System Settings'),
(83, 'OnFriendlyURLSettingsRender', 1, 'System Settings'),
(84, 'OnUserSettingsRender', 1, 'System Settings'),
(85, 'OnInterfaceSettingsRender', 1, 'System Settings'),
(86, 'OnMiscSettingsRender', 1, 'System Settings'),
(87, 'OnRichTextEditorRegister', 1, 'RichText Editor'),
(88, 'OnRichTextEditorInit', 1, 'RichText Editor'),
(89, 'OnManagerPageInit', 2, ''),
(90, 'OnWebPageInit', 5, ''),
(91, 'OnLoadWebDocument', 5, ''),
(92, 'OnParseDocument', 5, ''),
(93, 'OnManagerLoginFormRender', 2, ''),
(94, 'OnWebPageComplete', 5, ''),
(95, 'OnLogPageHit', 5, ''),
(96, 'OnBeforeManagerPageInit', 2, ''),
(97, 'OnBeforeEmptyTrash', 1, 'Documents'),
(98, 'OnEmptyTrash', 1, 'Documents'),
(99, 'OnManagerLoginFormPrerender', 2, ''),
(100, 'OnStripAlias', 1, 'Documents'),
(200, 'OnCreateDocGroup', 1, 'Documents'),
(201, 'OnManagerWelcomePrerender', 2, ''),
(202, 'OnManagerWelcomeHome', 2, ''),
(203, 'OnManagerWelcomeRender', 2, ''),
(204, 'OnBeforeDocDuplicate', 1, 'Documents'),
(205, 'OnDocDuplicate', 1, 'Documents'),
(999, 'OnPageUnauthorized', 1, ''),
(1000, 'OnPageNotFound', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_system_settings`
--

CREATE TABLE IF NOT EXISTS `mtzrad_system_settings` (
  `setting_name` varchar(50) NOT NULL default '',
  `setting_value` text,
  UNIQUE KEY `setting_name` (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

--
-- Dumping data for table `mtzrad_system_settings`
--

INSERT INTO `mtzrad_system_settings` (`setting_name`, `setting_value`) VALUES
('manager_theme', 'MODxCarbon'),
('settings_version', '1.0.4'),
('show_meta', '0'),
('server_offset_time', '0'),
('server_protocol', 'http'),
('manager_language', 'english'),
('modx_charset', 'UTF-8'),
('site_name', 'The Radical Experiment at Mt. Zion'),
('site_start', '1'),
('error_page', '1'),
('unauthorized_page', '1'),
('site_status', '1'),
('site_unavailable_message', 'The site is currently unavailable'),
('track_visitors', '0'),
('resolve_hostnames', '0'),
('top_howmany', '10'),
('default_template', '5'),
('old_template', '5'),
('publish_default', '0'),
('cache_default', '1'),
('search_default', '1'),
('friendly_urls', '1'),
('friendly_url_prefix', ''),
('friendly_url_suffix', '.html'),
('friendly_alias_urls', '1'),
('use_alias_path', '1'),
('use_udperms', '1'),
('udperms_allowroot', '0'),
('failed_login_attempts', '3'),
('blocked_minutes', '60'),
('use_captcha', '0'),
('captcha_words', 'MODx,Access,Better,BitCode,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Tattoo,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('emailsender', 'web.admin@mtzioncary.org'),
('emailsubject', 'Your login details'),
('number_of_logs', '100'),
('number_of_messages', '30'),
('number_of_results', '20'),
('use_editor', '1'),
('use_browser', '1'),
('rb_base_dir', '/var/web/mtzion/modx/radical/assets/'),
('rb_base_url', 'assets/'),
('which_editor', 'TinyMCE'),
('fe_editor_lang', 'english'),
('fck_editor_toolbar', 'standard'),
('fck_editor_autolang', '0'),
('editor_css_path', ''),
('editor_css_selectors', ''),
('strip_image_paths', '1'),
('upload_images', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff'),
('upload_media', 'au,avi,mp3,mp4,mpeg,mpg,wav,wmv'),
('upload_flash', 'fla,flv,swf'),
('upload_files', 'aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip'),
('upload_maxsize', '1048576'),
('new_file_permissions', '0644'),
('new_folder_permissions', '0755'),
('filemanager_path', '/var/web/mtzion/modx/radical/'),
('theme_refresher', ''),
('manager_layout', '4'),
('custom_contenttype', 'application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain'),
('auto_menuindex', '1'),
('session.cookie.lifetime', '604800'),
('mail_check_timeperiod', '60'),
('manager_direction', 'ltr'),
('tinymce_editor_theme', 'editor'),
('tinymce_custom_plugins', 'style,advimage,advlink,searchreplace,print,contextmenu,paste,fullscreen,nonbreaking,xhtmlxtras,visualchars,media'),
('tinymce_custom_buttons1', 'undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,link,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help'),
('tinymce_custom_buttons2', 'bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops'),
('tree_show_protected', '0'),
('rss_url_news', 'http://feeds.feedburner.com/modx-announce'),
('rss_url_security', 'http://feeds.feedburner.com/modxsecurity'),
('validate_referer', '1'),
('datepicker_offset', '-10'),
('xhtml_urls', '1'),
('allow_duplicate_alias', '0'),
('automatic_alias', '1'),
('datetime_format', 'dd-mm-YYYY'),
('warning_visibility', '0'),
('remember_last_tab', '0'),
('site_id', '4d2bc73f82293'),
('site_unavailable_page', ''),
('reload_site_unavailable', ''),
('siteunavailable_message_default', 'The site is currently unavailable.'),
('reload_captcha_words', ''),
('captcha_words_default', 'MODx,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('reload_emailsubject', ''),
('emailsubject_default', 'Your login details'),
('reload_signupemail_message', ''),
('signupemail_message', 'Hello [+uid+] \r\n\r\nHere are your login details for [+sname+] Content Manager:\r\n\r\nUsername: [+uid+]\r\nPassword: [+pwd+]\r\n\r\nOnce you log into the Content Manager ([+surl+]), you can change your password.\r\n\r\nRegards,\r\nSite Administrator'),
('system_email_signup_default', 'Hello [+uid+] \r\n\r\nHere are your login details for [+sname+] Content Manager:\r\n\r\nUsername: [+uid+]\r\nPassword: [+pwd+]\r\n\r\nOnce you log into the Content Manager ([+surl+]), you can change your password.\r\n\r\nRegards,\r\nSite Administrator'),
('reload_websignupemail_message', ''),
('websignupemail_message', 'Hello [+uid+]\r\n\r\nHere are your login details for [+sname+]:\r\n\r\nUsername: [+uid+]\r\nPassword: [+pwd+]\r\n\r\nOnce you log into [+sname+] ([+surl+]), you can change your password.\r\n\r\nRegards,\r\nSite Administrator'),
('system_email_websignup_default', 'Hello [+uid+]\r\n\r\nHere are your login details for [+sname+]:\r\n\r\nUsername: [+uid+]\r\nPassword: [+pwd+]\r\n\r\nOnce you log into [+sname+] ([+surl+]), you can change your password.\r\n\r\nRegards,\r\nSite Administrator'),
('reload_system_email_webreminder_message', ''),
('webpwdreminder_message', 'Hello [+uid+]\r\n\r\nTo activate your new password click the following link:\r\n\r\n[+surl+]\r\n\r\nIf successful you can use the following password to login:\r\n\r\nPassword:[+pwd+]\r\n\r\nIf you did not request this email then please ignore it.\r\n\r\nRegards,\r\nSite Administrator'),
('system_email_webreminder_default', 'Hello [+uid+]\r\n\r\nTo activate your new password click the following link:\r\n\r\n[+surl+]\r\n\r\nIf successful you can use the following password to login:\r\n\r\nPassword:[+pwd+]\r\n\r\nIf you did not request this email then please ignore it.\r\n\r\nRegards,\r\nSite Administrator'),
('tree_page_click', '3'),
('rb_webuser', '0'),
('tinymce_custom_buttons3', ''),
('tinymce_custom_buttons4', ''),
('tinymce_css_selectors', '');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_user_attributes`
--

CREATE TABLE IF NOT EXISTS `mtzrad_user_attributes` (
  `id` int(10) NOT NULL auto_increment,
  `internalKey` int(10) NOT NULL default '0',
  `fullname` varchar(100) NOT NULL default '',
  `role` int(10) NOT NULL default '0',
  `email` varchar(100) NOT NULL default '',
  `phone` varchar(100) NOT NULL default '',
  `mobilephone` varchar(100) NOT NULL default '',
  `blocked` int(1) NOT NULL default '0',
  `blockeduntil` int(11) NOT NULL default '0',
  `blockedafter` int(11) NOT NULL default '0',
  `logincount` int(11) NOT NULL default '0',
  `lastlogin` int(11) NOT NULL default '0',
  `thislogin` int(11) NOT NULL default '0',
  `failedlogincount` int(10) NOT NULL default '0',
  `sessionid` varchar(100) NOT NULL default '',
  `dob` int(10) NOT NULL default '0',
  `gender` int(1) NOT NULL default '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL default '',
  `state` varchar(25) NOT NULL default '',
  `zip` varchar(25) NOT NULL default '',
  `fax` varchar(100) NOT NULL default '',
  `photo` varchar(255) NOT NULL default '' COMMENT 'link to photo',
  `comment` varchar(255) NOT NULL default '' COMMENT 'short comment',
  PRIMARY KEY  (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mtzrad_user_attributes`
--

INSERT INTO `mtzrad_user_attributes` (`id`, `internalKey`, `fullname`, `role`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `country`, `state`, `zip`, `fax`, `photo`, `comment`) VALUES
(1, 1, 'Default admin account', 1, 'web.admin@mtzioncary.org', '', '', 0, 0, 0, 285, 1321444719, 1321530969, 0, 'v99aiej3a6r1603e5cqgh0js77', 0, 0, '', '', '', '', '', ''),
(2, 2, 'Matthew Darby', 2, 'matthew.darby@alumni.ncsu.edu', '919-413-1882', '', 0, 0, 0, 28, 1295063941, 1295109635, 0, '4dd00801c341f765dbb963005dfc5b4b', 322117200, 1, '223', 'NC', '27513', '', '', ''),
(3, 3, 'Barbra Smith', 3, 'mzsectry@bellsouth.net', '(919) 469-5323', '', 0, 0, 0, 461, 1295015161, 1295363661, 0, '4d690775674c582cd96ce8dfd6b6cc4b', 0, 2, '223', 'NC', '27513', '', '', ''),
(4, 4, 'Willie Harris', 1, 'willie@harriswebsite.net', '', '', 0, 0, 0, 88, 1289853166, 1294610279, 0, '59edf65dd86aaa9a7ad99bdf7de3be49', 0, 0, '', '', '', '', '', ''),
(5, 5, 'Don Rice', 1, 'dwricejr@hotmail.com', '', '', 0, 0, 0, 4, 1201236550, 1201494369, 0, '6cc944efd4819e3d94f441ff4cc4a5ba', 0, 0, '', '', '', '', '', ''),
(6, 6, 'Bobby Dunn', 1, 'bobby.dunn@ncwildlife.org', '', '', 0, 0, 0, 6, 1217299399, 1219759620, 0, 'a203bc8ef7078ade744f0cd65f3acc9c', 0, 0, '', '', '', '', '', ''),
(7, 7, 'Rufus P. Credle', 1, 'rcredle@nc.rr.com', '', '', 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', '', '', '', '', ''),
(8, 8, 'Regina Hardaway', 1, 'rhardaway1@nc.rr.com', '', '', 0, 0, 0, 11, 1240232541, 1242694192, 0, 'bdb1bcdfe527e0808774a6e677bc2795', 0, 0, '', '', '', '', '', ''),
(9, 9, 'LaDonna Bethea', 4, 'annodal99@yahoo.com', '', '', 0, 1271865417, 0, 86, 1272307036, 1274803702, 0, '8feb2a59bd23d10919635723b2abd6f3', 0, 0, '', '', '', '', '', ''),
(10, 10, 'Nicole Sawer', 2, 'nicolesawyer2@msn.com', '', '', 0, 0, 0, 6, 1227321253, 1227370829, 0, '03ff29b45a6b577ace99e6db6eee0832', 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_user_messages`
--

CREATE TABLE IF NOT EXISTS `mtzrad_user_messages` (
  `id` int(10) NOT NULL auto_increment,
  `type` varchar(15) NOT NULL default '',
  `subject` varchar(60) NOT NULL default '',
  `message` text,
  `sender` int(10) NOT NULL default '0',
  `recipient` int(10) NOT NULL default '0',
  `private` tinyint(4) NOT NULL default '0',
  `postdate` int(20) NOT NULL default '0',
  `messageread` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_user_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_user_roles`
--

CREATE TABLE IF NOT EXISTS `mtzrad_user_roles` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `frames` int(1) NOT NULL default '0',
  `home` int(1) NOT NULL default '0',
  `view_document` int(1) NOT NULL default '0',
  `new_document` int(1) NOT NULL default '0',
  `save_document` int(1) NOT NULL default '0',
  `publish_document` int(1) NOT NULL default '0',
  `delete_document` int(1) NOT NULL default '0',
  `empty_trash` int(1) NOT NULL default '0',
  `action_ok` int(1) NOT NULL default '0',
  `logout` int(1) NOT NULL default '0',
  `help` int(1) NOT NULL default '0',
  `messages` int(1) NOT NULL default '0',
  `new_user` int(1) NOT NULL default '0',
  `edit_user` int(1) NOT NULL default '0',
  `logs` int(1) NOT NULL default '0',
  `edit_parser` int(1) NOT NULL default '0',
  `save_parser` int(1) NOT NULL default '0',
  `edit_template` int(1) NOT NULL default '0',
  `settings` int(1) NOT NULL default '0',
  `credits` int(1) NOT NULL default '0',
  `new_template` int(1) NOT NULL default '0',
  `save_template` int(1) NOT NULL default '0',
  `delete_template` int(1) NOT NULL default '0',
  `edit_snippet` int(1) NOT NULL default '0',
  `new_snippet` int(1) NOT NULL default '0',
  `save_snippet` int(1) NOT NULL default '0',
  `delete_snippet` int(1) NOT NULL default '0',
  `edit_chunk` int(1) NOT NULL default '0',
  `new_chunk` int(1) NOT NULL default '0',
  `save_chunk` int(1) NOT NULL default '0',
  `delete_chunk` int(1) NOT NULL default '0',
  `empty_cache` int(1) NOT NULL default '0',
  `edit_document` int(1) NOT NULL default '0',
  `change_password` int(1) NOT NULL default '0',
  `error_dialog` int(1) NOT NULL default '0',
  `about` int(1) NOT NULL default '0',
  `file_manager` int(1) NOT NULL default '0',
  `save_user` int(1) NOT NULL default '0',
  `delete_user` int(1) NOT NULL default '0',
  `save_password` int(11) NOT NULL default '0',
  `edit_role` int(1) NOT NULL default '0',
  `save_role` int(1) NOT NULL default '0',
  `delete_role` int(1) NOT NULL default '0',
  `new_role` int(1) NOT NULL default '0',
  `access_permissions` int(1) NOT NULL default '0',
  `bk_manager` int(1) NOT NULL default '0',
  `new_plugin` int(1) NOT NULL default '0',
  `edit_plugin` int(1) NOT NULL default '0',
  `save_plugin` int(1) NOT NULL default '0',
  `delete_plugin` int(1) NOT NULL default '0',
  `new_module` int(1) NOT NULL default '0',
  `edit_module` int(1) NOT NULL default '0',
  `save_module` int(1) NOT NULL default '0',
  `delete_module` int(1) NOT NULL default '0',
  `exec_module` int(1) NOT NULL default '0',
  `view_eventlog` int(1) NOT NULL default '0',
  `delete_eventlog` int(1) NOT NULL default '0',
  `manage_metatags` int(1) NOT NULL default '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL default '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL default '0',
  `edit_web_user` int(1) NOT NULL default '0',
  `save_web_user` int(1) NOT NULL default '0',
  `delete_web_user` int(1) NOT NULL default '0',
  `web_access_permissions` int(1) NOT NULL default '0',
  `view_unpublished` int(1) NOT NULL default '0',
  `import_static` int(1) NOT NULL default '0',
  `export_static` int(1) NOT NULL default '0',
  `remove_locks` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mtzrad_user_roles`
--

INSERT INTO `mtzrad_user_roles` (`id`, `name`, `description`, `frames`, `home`, `view_document`, `new_document`, `save_document`, `publish_document`, `delete_document`, `empty_trash`, `action_ok`, `logout`, `help`, `messages`, `new_user`, `edit_user`, `logs`, `edit_parser`, `save_parser`, `edit_template`, `settings`, `credits`, `new_template`, `save_template`, `delete_template`, `edit_snippet`, `new_snippet`, `save_snippet`, `delete_snippet`, `edit_chunk`, `new_chunk`, `save_chunk`, `delete_chunk`, `empty_cache`, `edit_document`, `change_password`, `error_dialog`, `about`, `file_manager`, `save_user`, `delete_user`, `save_password`, `edit_role`, `save_role`, `delete_role`, `new_role`, `access_permissions`, `bk_manager`, `new_plugin`, `edit_plugin`, `save_plugin`, `delete_plugin`, `new_module`, `edit_module`, `save_module`, `delete_module`, `exec_module`, `view_eventlog`, `delete_eventlog`, `manage_metatags`, `edit_doc_metatags`, `new_web_user`, `edit_web_user`, `save_web_user`, `delete_web_user`, `web_access_permissions`, `view_unpublished`, `import_static`, `export_static`, `remove_locks`) VALUES
(2, 'Editor', 'Limited to managing content', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
(3, 'Publisher', 'Editor with expanded permissions including manage users, update Elements and site settings', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1),
(1, 'Administrator', 'Site administrators have full access to all functions', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_user_settings`
--

CREATE TABLE IF NOT EXISTS `mtzrad_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL default '',
  `setting_value` text,
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

--
-- Dumping data for table `mtzrad_user_settings`
--

INSERT INTO `mtzrad_user_settings` (`user`, `setting_name`, `setting_value`) VALUES
(6, 'manager_language', 'english'),
(6, 'allow_manager_access', '1'),
(8, 'allow_manager_access', '1'),
(8, 'manager_language', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_webgroup_access`
--

CREATE TABLE IF NOT EXISTS `mtzrad_webgroup_access` (
  `id` int(10) NOT NULL auto_increment,
  `webgroup` int(10) NOT NULL default '0',
  `documentgroup` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_webgroup_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_webgroup_names`
--

CREATE TABLE IF NOT EXISTS `mtzrad_webgroup_names` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_webgroup_names`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_web_groups`
--

CREATE TABLE IF NOT EXISTS `mtzrad_web_groups` (
  `id` int(10) NOT NULL auto_increment,
  `webgroup` int(10) NOT NULL default '0',
  `webuser` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_web_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_web_users`
--

CREATE TABLE IF NOT EXISTS `mtzrad_web_users` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `cachepwd` varchar(100) NOT NULL default '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_web_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_web_user_attributes`
--

CREATE TABLE IF NOT EXISTS `mtzrad_web_user_attributes` (
  `id` int(10) NOT NULL auto_increment,
  `internalKey` int(10) NOT NULL default '0',
  `fullname` varchar(100) NOT NULL default '',
  `role` int(10) NOT NULL default '0',
  `email` varchar(100) NOT NULL default '',
  `phone` varchar(100) NOT NULL default '',
  `mobilephone` varchar(100) NOT NULL default '',
  `blocked` int(1) NOT NULL default '0',
  `blockeduntil` int(11) NOT NULL default '0',
  `blockedafter` int(11) NOT NULL default '0',
  `logincount` int(11) NOT NULL default '0',
  `lastlogin` int(11) NOT NULL default '0',
  `thislogin` int(11) NOT NULL default '0',
  `failedlogincount` int(10) NOT NULL default '0',
  `sessionid` varchar(100) NOT NULL default '',
  `dob` int(10) NOT NULL default '0',
  `gender` int(1) NOT NULL default '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL default '',
  `state` varchar(25) NOT NULL default '',
  `zip` varchar(25) NOT NULL default '',
  `fax` varchar(100) NOT NULL default '',
  `photo` varchar(255) NOT NULL default '' COMMENT 'link to photo',
  `comment` varchar(255) NOT NULL default '' COMMENT 'short comment',
  PRIMARY KEY  (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mtzrad_web_user_attributes`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtzrad_web_user_settings`
--

CREATE TABLE IF NOT EXISTS `mtzrad_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL default '',
  `setting_value` text,
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

--
-- Dumping data for table `mtzrad_web_user_settings`
--


