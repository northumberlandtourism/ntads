-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: db411133592.db.1and1.com
-- Generation Time: Sep 04, 2013 at 11:44 AM
-- Server version: 5.1.71
-- PHP Version: 5.3.3-7+squeeze17
-- 
-- Database: `db411133592`
-- 
CREATE DATABASE `db411133592` DEFAULT CHARACTER SET latin1 COLLATE latin1_german2_ci;
USE db411133592;

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_api_key`
-- 

CREATE TABLE `ostn_api_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `ipaddr` varchar(16) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipaddr` (`ipaddr`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `ostn_api_key`
-- 

INSERT INTO `ostn_api_key` VALUES (1, 1, '192.168.1.5', 'siri!', '2012-04-07 13:17:25', '2012-04-07 13:17:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_config`
-- 

CREATE TABLE `ostn_config` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `isonline` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timezone_offset` float(3,1) NOT NULL DEFAULT '0.0',
  `enable_daylight_saving` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `staff_ip_binding` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `staff_max_logins` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `staff_login_timeout` int(10) unsigned NOT NULL DEFAULT '2',
  `staff_session_timeout` int(10) unsigned NOT NULL DEFAULT '30',
  `client_max_logins` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `client_login_timeout` int(10) unsigned NOT NULL DEFAULT '2',
  `client_session_timeout` int(10) unsigned NOT NULL DEFAULT '30',
  `max_page_size` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `max_open_tickets` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_file_size` int(11) unsigned NOT NULL DEFAULT '1048576',
  `autolock_minutes` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `overdue_grace_period` int(10) unsigned NOT NULL DEFAULT '0',
  `alert_email_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `default_email_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `default_dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default_priority_id` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `default_template_id` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `default_smtp_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `spoof_default_smtp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `clickable_urls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allow_priority_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_email_priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_captcha` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_auto_cron` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_mail_fetch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_email_piping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_sql_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `send_mailparse_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `send_login_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `save_email_headers` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `strip_quoted_reply` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_ticket_activity` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_autoresponder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_autoresponder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_notice_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_alert_admin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_alert_dept_members` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_alert_laststaff` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note_alert_laststaff` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `note_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `note_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overdue_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overdue_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `overdue_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `overdue_alert_dept_members` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `auto_assign_reopened_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `show_assigned_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_answered_tickets` tinyint(1) NOT NULL DEFAULT '0',
  `hide_staff_name` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overlimit_notice_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_attachments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allow_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_email_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_online_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_online_attachments_onlogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `random_ticket_ids` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_level` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `log_graceperiod` int(10) unsigned NOT NULL DEFAULT '12',
  `upload_dir` varchar(255) NOT NULL DEFAULT '',
  `allowed_filetypes` varchar(255) NOT NULL DEFAULT '.doc, .pdf',
  `time_format` varchar(32) NOT NULL DEFAULT ' h:i A',
  `date_format` varchar(32) NOT NULL DEFAULT 'm/d/Y',
  `datetime_format` varchar(60) NOT NULL DEFAULT 'm/d/Y g:i a',
  `daydatetime_format` varchar(60) NOT NULL DEFAULT 'D, M j Y g:ia',
  `reply_separator` varchar(60) NOT NULL DEFAULT '-- do not edit --',
  `admin_email` varchar(125) NOT NULL DEFAULT '',
  `helpdesk_title` varchar(255) NOT NULL DEFAULT 'osTicket Support Ticket System',
  `helpdesk_url` varchar(255) NOT NULL DEFAULT '',
  `api_passphrase` varchar(125) NOT NULL DEFAULT '',
  `ostversion` varchar(16) NOT NULL DEFAULT '',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `isoffline` (`isonline`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `ostn_config`
-- 

INSERT INTO `ostn_config` VALUES (1, 1, 0.0, 1, 1, 4, 2, 0, 4, 2, 0, 25, 5, 1048576, 3, 0, 2, 1, 1, 2, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 2, 12, '', '.doc, .pdf, docx,.jpg, .jpeg, .bmp,.xls, .xlsx', ' h:i A', 'm/d/Y', 'm/d/Y g:i a', 'D, M j Y g:ia', '-- do not edit --', 'ian.perks@northumberlandtourism.co.uk', 'Northumberland Tourism Support', 'http://support.ntads.co.uk/', '', '1.6 ST', '2012-04-07 13:17:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_department`
-- 

CREATE TABLE `ostn_department` (
  `dept_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `autoresp_email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `manager_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dept_name` varchar(32) NOT NULL DEFAULT '',
  `dept_signature` tinytext NOT NULL,
  `ispublic` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_auto_response` tinyint(1) NOT NULL DEFAULT '1',
  `message_auto_response` tinyint(1) NOT NULL DEFAULT '0',
  `can_append_signature` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_name` (`dept_name`),
  KEY `manager_id` (`manager_id`),
  KEY `autoresp_email_id` (`autoresp_email_id`),
  KEY `tpl_id` (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `ostn_department`
-- 

INSERT INTO `ostn_department` VALUES (1, 0, 1, 0, 0, 'Support', 'Support Dept', 1, 1, 1, 1, '2012-04-07 13:17:25', '2012-04-07 13:17:25');
INSERT INTO `ostn_department` VALUES (2, 0, 1, 0, 0, 'Billing', 'Billing Dept', 1, 1, 1, 1, '2012-04-07 13:17:25', '2012-04-07 13:17:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_email`
-- 

CREATE TABLE `ostn_email` (
  `email_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `noautoresp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `priority_id` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `email` varchar(125) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(125) NOT NULL,
  `userpass` varchar(125) NOT NULL,
  `mail_active` tinyint(1) NOT NULL DEFAULT '0',
  `mail_host` varchar(125) NOT NULL,
  `mail_protocol` enum('POP','IMAP') NOT NULL DEFAULT 'POP',
  `mail_encryption` enum('NONE','SSL') NOT NULL,
  `mail_port` int(6) DEFAULT NULL,
  `mail_fetchfreq` tinyint(3) NOT NULL DEFAULT '5',
  `mail_fetchmax` tinyint(4) NOT NULL DEFAULT '30',
  `mail_delete` tinyint(1) NOT NULL DEFAULT '0',
  `mail_errors` tinyint(3) NOT NULL DEFAULT '0',
  `mail_lasterror` datetime DEFAULT NULL,
  `mail_lastfetch` datetime DEFAULT NULL,
  `smtp_active` tinyint(1) DEFAULT '0',
  `smtp_host` varchar(125) NOT NULL,
  `smtp_port` int(6) DEFAULT NULL,
  `smtp_secure` tinyint(1) NOT NULL DEFAULT '1',
  `smtp_auth` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email` (`email`),
  KEY `priority_id` (`priority_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `ostn_email`
-- 

INSERT INTO `ostn_email` VALUES (1, 0, 2, 1, 'support@ntads.co.uk', 'Support', 'support@ntads.co.uk', 'qoR30gBJjgutg4ZwzuvxxViYZ5B+nX3PFN03i5BL7go=', 1, 'imap.1and1.co.uk', 'IMAP', 'NONE', 143, 5, 30, 0, 0, NULL, NULL, 0, '', 0, 1, 1, '2012-04-07 13:17:25', '2012-04-07 13:23:08');
INSERT INTO `ostn_email` VALUES (2, 0, 1, 1, 'alerts@ntads.co.uk', 'osTicket Alerts', '', '', 0, '', 'POP', 'NONE', NULL, 5, 30, 0, 0, NULL, NULL, 0, '', NULL, 1, 1, '2012-04-07 13:17:25', '2012-04-07 13:17:25');
INSERT INTO `ostn_email` VALUES (3, 0, 1, 1, 'noreply@ntads.co.uk', '', '', '', 0, '', 'POP', 'NONE', NULL, 5, 30, 0, 0, NULL, NULL, 0, '', NULL, 1, 1, '2012-04-07 13:17:25', '2012-04-07 13:17:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_email_banlist`
-- 

CREATE TABLE `ostn_email_banlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `submitter` varchar(126) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `ostn_email_banlist`
-- 

INSERT INTO `ostn_email_banlist` VALUES (1, 'test@example.com', 'System', '2012-04-07 13:17:25');
INSERT INTO `ostn_email_banlist` VALUES (2, 'info@danskflowers.com', 'Ian Perks', '2012-06-19 15:40:24');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_email_template`
-- 

CREATE TABLE `ostn_email_template` (
  `tpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cfg_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `notes` text,
  `ticket_autoresp_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_autoresp_body` text NOT NULL,
  `ticket_notice_subj` varchar(255) NOT NULL,
  `ticket_notice_body` text NOT NULL,
  `ticket_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_alert_body` text NOT NULL,
  `message_autoresp_subj` varchar(255) NOT NULL DEFAULT '',
  `message_autoresp_body` text NOT NULL,
  `message_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `message_alert_body` text NOT NULL,
  `note_alert_subj` varchar(255) NOT NULL,
  `note_alert_body` text NOT NULL,
  `assigned_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `assigned_alert_body` text NOT NULL,
  `ticket_overdue_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_overdue_body` text NOT NULL,
  `ticket_overlimit_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_overlimit_body` text NOT NULL,
  `ticket_reply_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_reply_body` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tpl_id`),
  KEY `cfg_id` (`cfg_id`),
  FULLTEXT KEY `message_subj` (`ticket_reply_subj`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `ostn_email_template`
-- 

INSERT INTO `ostn_email_template` VALUES (1, 1, 'osTicket Default Template', 'Default osTicket templates', 'Support Ticket Opened [#%ticket]', '%name,\r\n\r\nA request for support has been created and assigned ticket #%ticket. A representative will follow-up with you as soon as possible.\r\n\r\nYou can view this ticket''s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\nIf you wish to send additional comments or information regarding this issue, please don''t open a new ticket. Simply login using the link above and update the ticket.\r\n\r\n%signature', '[#%ticket] %subject', '%name,\r\n\r\nOur customer care team has created a ticket, #%ticket on your behalf, with the following message.\r\n\r\n%message\r\n\r\nIf you wish to provide additional comments or information regarding this issue, please don''t open a new ticket. You can update or view this ticket''s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature', 'New Ticket Alert', '%staff,\r\n\r\nNew ticket #%ticket created.\r\n-------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.', '[#%ticket] Message Added', '%name,\r\n\r\nYour reply to support request #%ticket has been noted.\r\n\r\nYou can view this support request progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature', 'New Message Alert', '%staff,\r\n\r\nNew message appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.', 'New Internal Note Alert', '%staff,\r\n\r\nInternal note appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\n\r\n%note\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.', 'Ticket #%ticket Assigned to you', '%assignee,\r\n\r\n%assigner has assigned ticket #%ticket to you!\r\n\r\n%message\r\n\r\nTo view complete details, simply login to the support system.\r\n\r\n- Your friendly Support Ticket System - powered by osTicket.', 'Stale Ticket Alert', '%staff,\r\n\r\nA ticket, #%ticket assigned to you or in your department is seriously overdue.\r\n\r\n%url/scp/tickets.php?id=%id\r\n\r\nWe should all work hard to guarantee that all tickets are being addressed in a timely manner. Enough baby talk...please address the issue or you will hear from me again.\r\n\r\n\r\n- Your friendly (although with limited patience) Support Ticket System - powered by osTicket.', 'Support Ticket Denied', '%name\r\n\r\nNo support ticket has been created. You''ve exceeded maximum number of open tickets allowed.\r\n\r\nThis is a temporary block. To be able to open another ticket, one of your pending tickets must be closed. To update or add comments to an open ticket simply login using the link below.\r\n\r\n%url/view.php?e=%email\r\n\r\nThank you.\r\n\r\nSupport Ticket System', '[#%ticket] %subject', '%name,\r\n\r\nA customer support staff member has replied to your support request, #%ticket with the following response:\r\n\r\n%response\r\n\r\nWe hope this response has sufficiently answered your questions. If not, please do not send another email. Instead, reply to this email or login to your account for a complete archive of all your support requests and responses.\r\n\r\n%url/view.php?e=%email&t=%ticket\r\n\r\n%signature', '2012-04-07 13:17:25', '2012-04-07 13:17:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_groups`
-- 

CREATE TABLE `ostn_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `dept_access` varchar(255) NOT NULL DEFAULT '',
  `can_create_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_edit_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_delete_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_close_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_transfer_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_ban_emails` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_manage_kb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`group_id`),
  KEY `group_active` (`group_enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `ostn_groups`
-- 

INSERT INTO `ostn_groups` VALUES (1, 1, 'Admins', '1', 1, 1, 1, 1, 1, 1, 1, '2012-04-07 13:17:25', '2012-04-07 13:17:25');
INSERT INTO `ostn_groups` VALUES (2, 1, 'Managers', '1', 1, 1, 0, 1, 1, 1, 1, '2012-04-07 13:17:25', '2012-04-07 13:17:25');
INSERT INTO `ostn_groups` VALUES (3, 1, 'Staff', '1', 1, 0, 0, 0, 0, 0, 0, '2012-04-07 13:17:25', '2012-04-07 13:17:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_help_topic`
-- 

CREATE TABLE `ostn_help_topic` (
  `topic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `noautoresp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `priority_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `topic` varchar(32) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic` (`topic`),
  KEY `priority_id` (`priority_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `ostn_help_topic`
-- 

INSERT INTO `ostn_help_topic` VALUES (1, 1, 0, 2, 1, 'Support', '2012-04-07 13:17:25', '2012-04-07 13:17:25');
INSERT INTO `ostn_help_topic` VALUES (2, 0, 0, 3, 1, 'Billing', '2012-04-07 13:17:25', '2012-04-07 13:51:40');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_kb_premade`
-- 

CREATE TABLE `ostn_kb_premade` (
  `premade_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` int(10) unsigned NOT NULL DEFAULT '0',
  `isenabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `title` varchar(125) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`premade_id`),
  UNIQUE KEY `title_2` (`title`),
  KEY `dept_id` (`dept_id`),
  KEY `active` (`isenabled`),
  FULLTEXT KEY `title` (`title`,`answer`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `ostn_kb_premade`
-- 

INSERT INTO `ostn_kb_premade` VALUES (1, 0, 1, 'What is osTicket (sample)?', '\r\nosTicket is a widely-used open source support ticket system, an attractive alternative to higher-cost and complex customer support systems - simple, lightweight, reliable, open source, web-based and easy to setup and use.', '2012-04-07 13:17:25', '2012-04-07 13:17:25');
INSERT INTO `ostn_kb_premade` VALUES (2, 0, 1, 'Sample (with variables)', '\r\n%name,\r\n\r\nYour ticket #%ticket created on %createdate is in %dept department.\r\n\r\n', '2012-04-07 13:17:25', '2012-04-07 13:17:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_staff`
-- 

CREATE TABLE `ostn_staff` (
  `staff_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dept_id` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `passwd` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `phone` varchar(24) NOT NULL DEFAULT '',
  `phone_ext` varchar(6) DEFAULT NULL,
  `mobile` varchar(24) NOT NULL DEFAULT '',
  `signature` tinytext NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `isvisible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `onvacation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `daylight_saving` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `append_signature` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `change_passwd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timezone_offset` float(3,1) NOT NULL DEFAULT '0.0',
  `max_page_size` int(11) unsigned NOT NULL DEFAULT '0',
  `auto_refresh_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` datetime DEFAULT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `username` (`username`),
  KEY `dept_id` (`dept_id`),
  KEY `issuperuser` (`isadmin`),
  KEY `group_id` (`group_id`,`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `ostn_staff`
-- 

INSERT INTO `ostn_staff` VALUES (1, 1, 1, 'ian.perks', 'Ian', 'Perks', '864da4d64275680de1a3f30372bac9f9', 'ian.perks@northumberlandtourism.co.uk', '', '', '', '', 1, 1, 1, 0, 1, 0, 0, 0.0, 25, 0, '2012-04-07 13:17:25', '2012-11-14 11:23:55', '2012-04-07 14:04:48');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_syslog`
-- 

CREATE TABLE `ostn_syslog` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` enum('Debug','Warning','Error') NOT NULL,
  `title` varchar(255) NOT NULL,
  `log` text NOT NULL,
  `logger` varchar(64) NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `ostn_syslog`
-- 

INSERT INTO `ostn_syslog` VALUES (1, 'Debug', 'osTicket installed!', 'Congratulations osTicket basic installation completed!\n\nThank you for choosing osTicket!', '', '92.11.235.35', '2012-04-07 13:17:25', '2012-04-07 13:17:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_ticket`
-- 

CREATE TABLE `ostn_ticket` (
  `ticket_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticketID` int(11) unsigned NOT NULL DEFAULT '0',
  `dept_id` int(10) unsigned NOT NULL DEFAULT '1',
  `priority_id` int(10) unsigned NOT NULL DEFAULT '2',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(120) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `subject` varchar(64) NOT NULL DEFAULT '[no subject]',
  `helptopic` varchar(255) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `phone_ext` varchar(8) DEFAULT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `status` enum('open','closed') NOT NULL DEFAULT 'open',
  `source` enum('Web','Email','Phone','Other') NOT NULL DEFAULT 'Other',
  `isoverdue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isanswered` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `duedate` datetime DEFAULT NULL,
  `reopened` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `lastmessage` datetime DEFAULT NULL,
  `lastresponse` datetime DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ticket_id`),
  UNIQUE KEY `email_extid` (`ticketID`,`email`),
  KEY `dept_id` (`dept_id`),
  KEY `staff_id` (`staff_id`),
  KEY `status` (`status`),
  KEY `priority_id` (`priority_id`),
  KEY `created` (`created`),
  KEY `closed` (`closed`),
  KEY `duedate` (`duedate`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `ostn_ticket`
-- 

INSERT INTO `ostn_ticket` VALUES (1, 261206, 1, 2, 0, 0, 'support@osticket.com', 'osTicket Support', 'osTicket Installed!', 'Commercial support', NULL, NULL, '', 'closed', 'Web', 0, 0, NULL, NULL, '2012-04-07 14:21:10', NULL, NULL, '2012-04-07 13:17:25', '2012-04-07 14:21:10');
INSERT INTO `ostn_ticket` VALUES (2, 384216, 1, 2, 1, 0, 'ianperks@gmail.com', 'Ian Perks', 'this is a test msg', 'Support', '', '', '92.11.235.35', 'closed', 'Web', 0, 1, NULL, NULL, '2012-04-07 14:20:52', '2012-04-07 13:36:11', '2012-04-07 14:20:52', '2012-04-07 13:36:11', '2012-04-07 14:20:52');
INSERT INTO `ostn_ticket` VALUES (3, 941999, 1, 2, 1, 0, 'ianperks@gmail.com', 'IP', 'test message admin end', 'Support', '', '', '92.11.235.35', 'closed', 'Phone', 0, 1, NULL, NULL, '2012-04-07 13:58:10', '2012-04-07 13:55:05', '2012-04-07 13:58:10', '2012-04-07 13:55:05', '2012-04-07 13:58:10');
INSERT INTO `ostn_ticket` VALUES (4, 689480, 1, 2, 1, 0, 'ianperks@gmail.com', 'Ian Perks', 'new ticket test', 'Support', '', '', '92.11.235.35', 'closed', 'Web', 0, 1, NULL, NULL, '2012-04-07 14:20:34', '2012-04-07 14:02:36', '2012-04-07 14:20:33', '2012-04-07 14:02:36', '2012-04-07 14:20:34');
INSERT INTO `ostn_ticket` VALUES (5, 335602, 1, 2, 1, 0, 'northernfunfairs@aol.com', 'peter richardson', 'Alnwick Festival Street fair 2012', 'Support', '01670857944', '', '90.214.145.37', 'closed', 'Web', 0, 1, NULL, NULL, '2012-05-22 09:36:15', '2012-05-21 20:59:26', '2012-05-22 09:36:15', '2012-05-21 20:59:26', '2012-05-22 09:36:15');
INSERT INTO `ostn_ticket` VALUES (6, 670441, 1, 3, 1, 0, 'jacqueline141778@aol.com', 'mrs jacqueline robson', 'booking problems', 'Support', '01434 320063', '', '195.93.21.34', 'closed', 'Web', 0, 1, NULL, NULL, '2012-05-28 10:13:53', '2012-05-26 22:59:29', '2012-05-28 10:13:50', '2012-05-26 22:59:29', '2012-05-28 10:13:53');
INSERT INTO `ostn_ticket` VALUES (7, 278355, 1, 3, 1, 0, 'jacqueline141778@aol.com', 'Mrs jacqueline robson', 'emails not getting through', 'Support', '014340320063', '', '195.93.21.34', 'closed', 'Web', 0, 1, NULL, NULL, '2012-06-05 19:56:04', '2012-06-04 14:04:19', '2012-06-05 19:37:57', '2012-06-04 14:02:55', '2012-06-05 19:56:04');
INSERT INTO `ostn_ticket` VALUES (8, 859657, 1, 2, 1, 0, 'info@laurarhodes.co.uk', 'laura Rhodes', 'Web entry', 'Support', '', '', '92.238.177.148', 'closed', 'Web', 0, 1, NULL, NULL, '2012-06-10 20:13:26', '2012-06-10 16:29:00', '2012-06-10 20:13:25', '2012-06-10 16:29:00', '2012-06-10 20:13:26');
INSERT INTO `ostn_ticket` VALUES (9, 257852, 1, 1, 1, 0, 'info@danskflowers.com', 'Achala', 'Man Made Review of sites', 'Support', '', '', '180.149.31.106', 'closed', 'Web', 0, 0, NULL, NULL, '2012-06-19 15:40:24', '2012-06-19 14:55:09', NULL, '2012-06-19 14:55:09', '2012-06-19 15:40:24');
INSERT INTO `ostn_ticket` VALUES (10, 142275, 1, 2, 1, 0, 'chester_potts@talktalk.net', 'chester potts', 'Password', 'Support', '07941368902', '', '92.30.130.150', 'closed', 'Web', 0, 1, NULL, NULL, '2012-07-01 22:33:25', '2012-06-30 13:23:39', '2012-07-01 22:33:25', '2012-06-30 13:23:39', '2012-07-01 22:33:25');
INSERT INTO `ostn_ticket` VALUES (11, 823120, 1, 2, 1, 0, 'markcvnw@hotmail.com', 'The Revd Mark Nash-Williams', 'Event not added', 'Support', '', '', '86.131.189.144', 'closed', 'Web', 0, 1, NULL, '2012-09-04 23:30:49', '2012-09-05 10:21:58', '2012-09-04 23:30:49', '2012-09-05 10:21:57', '2012-09-03 14:32:04', '2012-09-05 10:21:58');
INSERT INTO `ostn_ticket` VALUES (12, 912702, 1, 2, 1, 0, 'info@audaud.com', 'John Sunier', 'video playback', 'Support', '', '', '71.237.231.60', 'closed', 'Web', 0, 1, NULL, NULL, '2012-11-14 11:25:45', '2012-11-13 20:53:29', '2012-11-14 11:25:44', '2012-11-13 20:53:29', '2012-11-14 11:25:45');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_ticket_attachment`
-- 

CREATE TABLE `ostn_ticket_attachment` (
  `attach_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ref_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ref_type` enum('M','R') NOT NULL DEFAULT 'M',
  `file_size` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(128) NOT NULL DEFAULT '',
  `file_key` varchar(128) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`attach_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `ref_type` (`ref_type`),
  KEY `ref_id` (`ref_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `ostn_ticket_attachment`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_ticket_lock`
-- 

CREATE TABLE `ostn_ticket_lock` (
  `lock_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `expire` datetime DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`lock_id`),
  UNIQUE KEY `ticket_id` (`ticket_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- Dumping data for table `ostn_ticket_lock`
-- 

INSERT INTO `ostn_ticket_lock` VALUES (36, 12, 1, '2012-11-14 11:28:56', '2012-11-14 11:25:56');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_ticket_message`
-- 

CREATE TABLE `ostn_ticket_message` (
  `msg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `messageId` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `headers` text,
  `source` varchar(16) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `msgId` (`messageId`),
  FULLTEXT KEY `message` (`message`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `ostn_ticket_message`
-- 

INSERT INTO `ostn_ticket_message` VALUES (1, 1, NULL, 'Thank you for choosing osTicket.\n\nPlease make sure you join the osTicket forums at http://osticket.com/forums to stay up to date on the latest news, security alerts and updates. The osTicket forums are also a great place to get assistance, guidance, tips, and help from other osTicket users. In addition to the forums, the osTicket wiki provides a useful collection of educational materials, documentation, and notes from the community. We welcome your contributions to the osTicket community.\n\nIf you are looking for a greater level of support, we provide professional services and commercial support with guaranteed response times, and access to the core development team. We can also help customize osTicket or even add new features to the system to meet your unique needs.\n\nFor more information or to discuss your needs, please contact us today at http://osticket.com/support/. Your feedback is greatly appreciated!\n\n- The osTicket Team', NULL, 'Web', '', '2012-04-07 13:17:25', NULL);
INSERT INTO `ostn_ticket_message` VALUES (2, 2, '', 'hello this is my message', '', 'Web', '92.11.235.35', '2012-04-07 13:36:11', NULL);
INSERT INTO `ostn_ticket_message` VALUES (3, 3, '', 'Ticket created by staff', '', 'Phone', '92.11.235.35', '2012-04-07 13:55:05', NULL);
INSERT INTO `ostn_ticket_message` VALUES (4, 4, '', 'hello test', '', 'Web', '92.11.235.35', '2012-04-07 14:02:36', NULL);
INSERT INTO `ostn_ticket_message` VALUES (5, 5, '', 'upon vewing my entry for Alnwick Festival street fair\r\ni have noticed on the opening times it says Sunday 11 am\r\nuntil 16.30pm, i canot find out how to delete this as the fair is only wed 13th 2pm till 10pm & thursday 10am till 10pm\r\n\r\ni would be gratefull if you could amend this for me', '', 'Web', '90.214.145.37', '2012-05-21 20:59:26', NULL);
INSERT INTO `ostn_ticket_message` VALUES (6, 6, '', 'I have had a lady telephone today saying she could not book my cottage through your site, she emailed using your site and i never recieved it.Luckerly she phoned to book.I have tryed to get on to the booking page my self and it comes up you are not conected to website,internal server problem etc.Could you please check this as bookings are hard to come by at the moment and i dont want to miss any, thanks', '', 'Web', '195.93.21.34', '2012-05-26 22:59:29', NULL);
INSERT INTO `ostn_ticket_message` VALUES (7, 7, '', 'Hi i have sent myself several emails from other computers and they are not getting through ,your test one has not got through either', '', 'Web', '195.93.21.34', '2012-06-04 14:02:55', NULL);
INSERT INTO `ostn_ticket_message` VALUES (8, 7, '', 'contact emails from advert not getting through', '', 'Web', '195.93.21.71', '2012-06-04 14:04:19', NULL);
INSERT INTO `ostn_ticket_message` VALUES (9, 8, '', 'I am a Blue Badge Tourist Guide- how can I obtain an entry on the website please ', '', 'Web', '92.238.177.148', '2012-06-10 16:29:00', NULL);
INSERT INTO `ostn_ticket_message` VALUES (10, 9, '', 'Hello - I need some site like SocioFan. Can you give me. Got your mail from http://fff.to/YJI', '', 'Web', '180.149.31.106', '2012-06-19 14:55:09', NULL);
INSERT INTO `ostn_ticket_message` VALUES (11, 10, '', 'Can you tell me my username and apssword again re Great North Fly In', '', 'Web', '92.30.130.150', '2012-06-30 13:23:39', NULL);
INSERT INTO `ostn_ticket_message` VALUES (12, 11, '', 'Good morning\r\n\r\nAbout 10 days ago I submitted an event for inclusion on your site, http://www.visitnorthumberland.com/events/add-an-event - a concert at Holy Trinity Church, Matfen on Fri 14th Sept, 7.30pm, with jazz ensemble Djangologie.\r\n\r\nThe concert doesn''t seem to be listed anywhere on your site: is there a problem with the entry, or has it been overlooked, please?\r\n\r\nThank you', '', 'Web', '86.131.189.144', '2012-09-03 14:32:04', NULL);
INSERT INTO `ostn_ticket_message` VALUES (13, 11, '', 'Thank you, Ian\r\nUnfortunately the links to our website appear to be incorrect - http://www.visitnorthumberland.com/engine/referrer.asp?web=http%3A%2F%2Fhttp%3Awww.stamfordhamwithmatfen.org.uk%2Fdjangologie\r\nThere appears to be a superfluous http: before the www', '', 'Web', '86.131.189.144', '2012-09-04 23:30:49', NULL);
INSERT INTO `ostn_ticket_message` VALUES (14, 12, '', 'I just installed Flash 11 on my new iMac and none of the Northumberland videos appear on my screen. I have tried 3 different browsers.', '', 'Web', '71.237.231.60', '2012-11-13 20:53:29', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_ticket_note`
-- 

CREATE TABLE `ostn_ticket_note` (
  `note_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT 'Generic Intermal Notes',
  `note` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`note_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `staff_id` (`staff_id`),
  FULLTEXT KEY `note` (`note`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `ostn_ticket_note`
-- 

INSERT INTO `ostn_ticket_note` VALUES (1, 3, 1, 'Ian Perks', 'Ticket Assigned to Ian Perks', 'asdasdasd', '2012-04-07 13:55:05');
INSERT INTO `ostn_ticket_note` VALUES (2, 3, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-04-07 13:58:10');
INSERT INTO `ostn_ticket_note` VALUES (3, 4, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-04-07 14:20:34');
INSERT INTO `ostn_ticket_note` VALUES (4, 2, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-04-07 14:20:52');
INSERT INTO `ostn_ticket_note` VALUES (5, 1, 1, 'system', 'Ticket Closed', 'Ticket closed without response by Ian Perks', '2012-04-07 14:21:10');
INSERT INTO `ostn_ticket_note` VALUES (6, 5, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-05-22 09:36:15');
INSERT INTO `ostn_ticket_note` VALUES (7, 6, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-05-28 10:13:53');
INSERT INTO `ostn_ticket_note` VALUES (8, 7, 1, 'system', 'Ticket Closed', 'Ticket closed without response by Ian Perks', '2012-06-05 19:56:04');
INSERT INTO `ostn_ticket_note` VALUES (9, 8, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-06-10 20:13:26');
INSERT INTO `ostn_ticket_note` VALUES (10, 9, 1, 'system', 'Ticket Closed', 'Email (info@danskflowers.com) added to banlist & ticket status set to closed', '2012-06-19 15:40:24');
INSERT INTO `ostn_ticket_note` VALUES (11, 10, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-07-01 22:33:25');
INSERT INTO `ostn_ticket_note` VALUES (12, 11, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-09-03 15:17:19');
INSERT INTO `ostn_ticket_note` VALUES (13, 11, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-09-05 10:21:58');
INSERT INTO `ostn_ticket_note` VALUES (14, 12, 1, 'system', 'Ticket status changed to Closed', 'Ian Perks closed the ticket on reply', '2012-11-14 11:25:45');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_ticket_priority`
-- 

CREATE TABLE `ostn_ticket_priority` (
  `priority_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `priority` varchar(60) NOT NULL DEFAULT '',
  `priority_desc` varchar(30) NOT NULL DEFAULT '',
  `priority_color` varchar(7) NOT NULL DEFAULT '',
  `priority_urgency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ispublic` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`priority_id`),
  UNIQUE KEY `priority` (`priority`),
  KEY `priority_urgency` (`priority_urgency`),
  KEY `ispublic` (`ispublic`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `ostn_ticket_priority`
-- 

INSERT INTO `ostn_ticket_priority` VALUES (1, 'low', 'Low', '#DDFFDD', 4, 1);
INSERT INTO `ostn_ticket_priority` VALUES (2, 'normal', 'Normal', '#FFFFF0', 3, 1);
INSERT INTO `ostn_ticket_priority` VALUES (3, 'high', 'High', '#FEE7E7', 2, 1);
INSERT INTO `ostn_ticket_priority` VALUES (4, 'emergency', 'Emergency', '#FEE7E7', 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_ticket_response`
-- 

CREATE TABLE `ostn_ticket_response` (
  `response_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_name` varchar(32) NOT NULL DEFAULT '',
  `response` text NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`response_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `msg_id` (`msg_id`),
  KEY `staff_id` (`staff_id`),
  FULLTEXT KEY `response` (`response`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `ostn_ticket_response`
-- 

INSERT INTO `ostn_ticket_response` VALUES (1, 3, 3, 1, 'Ian Perks', 'asdasdasd', '92.11.235.35', '2012-04-07 13:55:05', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (2, 3, 3, 1, 'Ian Perks', 'all sorted', '92.11.235.35', '2012-04-07 13:58:10', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (3, 4, 4, 1, 'Ian Perks', 'sorted', '92.11.235.35', '2012-04-07 14:20:33', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (4, 2, 2, 1, 'Ian Perks', 'closed', '92.11.235.35', '2012-04-07 14:20:43', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (5, 2, 2, 1, 'Ian Perks', 't', '92.11.235.35', '2012-04-07 14:20:52', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (6, 5, 5, 1, 'Ian Perks', 'Mr Richardson,\r\n\r\nThank you for contacting us regarding the opening times. We''ll get the information and website updated shortly to reflect the changes requested.\r\n\r\nKind regards\r\n\r\nIan', '92.8.75.36', '2012-05-22 09:36:15', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (7, 6, 6, 1, 'Ian Perks', 'Mrs Wilson,\r\n\r\nThank you for contacting us regarding the email booking button on visitnorthumberland.com.\r\n\r\nI have tested the page this morning to send a test enquiry to myself and the message got through. I advise checking your spam/junk filters to see if the email has been placed in these folders. Emails are sent from the email address: delivery@messaging-master.com with the subject "Enquiry via Visit Northumberland". Would you like an alternative email address to be used, we currently have jacqueline141778@aol.com.\r\n\r\nKind regards\r\n\r\nIan', '109.204.98.34', '2012-05-28 10:13:50', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (8, 8, 7, 1, 'Ian Perks', 'Mrs Robson,\r\n\r\nThank you for contacting us regarding the contact emails from visitnorthumberland.com for Old Brewery Cottage. \r\n\r\nWhilst we are investigating the issue from our end please can you confirm that you have checked your spam/junk email folder to see if there are any emails with the subject "Availability Enquiry via Visit Northumberland". \r\n\r\nThe AOL spam filter is very sensitive and this could the the reason for the emails not getting through. Please see their instructions at: http://help.aol.com/help/microsites/microsite.do?cmd=displayKC&docType=kc&externalId=217148 \r\n\r\nKind regards\r\n\r\nIan', '92.8.69.176', '2012-06-05 19:37:57', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (9, 9, 8, 1, 'Ian Perks', 'Hi Laura,\r\n\r\nThank for you contacting us regarding obtaining a website entry on the official visitor website for Northumberland - visitnorthumberland.com.\r\n\r\nThe easiest way would be to speak to one of my colleagues - Alexis or James - by calling us on 01670 794 520 Mon-Fri 9-5.\r\n\r\nInformation can also be found online at: http://www.northumberlandtourism.org.uk/advertise/website-entries \r\n\r\nKind regards\r\n\r\nIan', '92.8.69.176', '2012-06-10 20:13:25', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (10, 11, 10, 1, 'Ian Perks', 'Mr Potts,\r\n\r\nThank you for contacting us regarding your login details for the Great North Fly In.\r\n\r\nTo make adjustements to the record go to:\r\n\r\nhttp://extranet.destine.nmspace.net/\r\n\r\nUsername: c.potts\r\nPassword: flyin1\r\n\r\nWhen logged in use the menu bar on the left and click ''Edit Details'' to bring up the editor. You can then change the text/photos/details from here. When done, click ''Ok'' at the bottom right of the editor screen. I suggest clicking ''Apply'' regularly to make sure the system saves the new information.\r\n\r\nKind regards,\r\n\r\nIan', '109.204.98.34', '2012-07-01 22:33:25', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (11, 12, 11, 1, 'Ian Perks', 'Good afternoon,\r\n\r\nThank you for contacting us regarding the event "Jazz under the spire presents ... Djangologie" not showing on the website. \r\n\r\nI have taken a look into this and it is now online. I apologise for the delay in getting the information published. http://www.visitnorthumberland.com/events/shows-and-festivals/jazz-under-the-spire-presents-djangologie-p672061 \r\n\r\nKind regards\r\n\r\nIan', '109.204.98.34', '2012-09-03 15:17:19', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (12, 13, 11, 1, 'Ian Perks', 'Apologies for the error. \r\n\r\nThis has now been corrected.\r\n\r\nKind regards\r\n\r\nIan', '109.204.98.34', '2012-09-05 10:21:57', '0000-00-00 00:00:00');
INSERT INTO `ostn_ticket_response` VALUES (13, 14, 12, 1, 'Ian Perks', 'Mr Sunier,\r\n\r\nThank you for contacting us and apologies for the problems you are encountering playing the videos.\r\n\r\nWe also have them on our YouTube account at: http://www.youtube.com/visitnorthumberland .\r\n\r\nKind regards\r\n\r\nIan', '109.204.98.34', '2012-11-14 11:25:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `ostn_timezone`
-- 

CREATE TABLE `ostn_timezone` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `offset` float(3,1) NOT NULL DEFAULT '0.0',
  `timezone` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `ostn_timezone`
-- 

INSERT INTO `ostn_timezone` VALUES (1, -12.0, 'Eniwetok, Kwajalein');
INSERT INTO `ostn_timezone` VALUES (2, -11.0, 'Midway Island, Samoa');
INSERT INTO `ostn_timezone` VALUES (3, -10.0, 'Hawaii');
INSERT INTO `ostn_timezone` VALUES (4, -9.0, 'Alaska');
INSERT INTO `ostn_timezone` VALUES (5, -8.0, 'Pacific Time (US & Canada)');
INSERT INTO `ostn_timezone` VALUES (6, -7.0, 'Mountain Time (US & Canada)');
INSERT INTO `ostn_timezone` VALUES (7, -6.0, 'Central Time (US & Canada), Mexico City');
INSERT INTO `ostn_timezone` VALUES (8, -5.0, 'Eastern Time (US & Canada), Bogota, Lima');
INSERT INTO `ostn_timezone` VALUES (9, -4.0, 'Atlantic Time (Canada), Caracas, La Paz');
INSERT INTO `ostn_timezone` VALUES (10, -3.5, 'Newfoundland');
INSERT INTO `ostn_timezone` VALUES (11, -3.0, 'Brazil, Buenos Aires, Georgetown');
INSERT INTO `ostn_timezone` VALUES (12, -2.0, 'Mid-Atlantic');
INSERT INTO `ostn_timezone` VALUES (13, -1.0, 'Azores, Cape Verde Islands');
INSERT INTO `ostn_timezone` VALUES (14, 0.0, 'Western Europe Time, London, Lisbon, Casablanca');
INSERT INTO `ostn_timezone` VALUES (15, 1.0, 'Brussels, Copenhagen, Madrid, Paris');
INSERT INTO `ostn_timezone` VALUES (16, 2.0, 'Kaliningrad, South Africa');
INSERT INTO `ostn_timezone` VALUES (17, 3.0, 'Baghdad, Riyadh, Moscow, St. Petersburg');
INSERT INTO `ostn_timezone` VALUES (18, 3.5, 'Tehran');
INSERT INTO `ostn_timezone` VALUES (19, 4.0, 'Abu Dhabi, Muscat, Baku, Tbilisi');
INSERT INTO `ostn_timezone` VALUES (20, 4.5, 'Kabul');
INSERT INTO `ostn_timezone` VALUES (21, 5.0, 'Ekaterinburg, Islamabad, Karachi, Tashkent');
INSERT INTO `ostn_timezone` VALUES (22, 5.5, 'Bombay, Calcutta, Madras, New Delhi');
INSERT INTO `ostn_timezone` VALUES (23, 6.0, 'Almaty, Dhaka, Colombo');
INSERT INTO `ostn_timezone` VALUES (24, 7.0, 'Bangkok, Hanoi, Jakarta');
INSERT INTO `ostn_timezone` VALUES (25, 8.0, 'Beijing, Perth, Singapore, Hong Kong');
INSERT INTO `ostn_timezone` VALUES (26, 9.0, 'Tokyo, Seoul, Osaka, Sapporo, Yakutsk');
INSERT INTO `ostn_timezone` VALUES (27, 9.5, 'Adelaide, Darwin');
INSERT INTO `ostn_timezone` VALUES (28, 10.0, 'Eastern Australia, Guam, Vladivostok');
INSERT INTO `ostn_timezone` VALUES (29, 11.0, 'Magadan, Solomon Islands, New Caledonia');
INSERT INTO `ostn_timezone` VALUES (30, 12.0, 'Auckland, Wellington, Fiji, Kamchatka');
