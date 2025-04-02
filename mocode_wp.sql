-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: dedi7440.your-server.de
-- Üretim Zamanı: 02 Nis 2025, 15:15:30
-- Sunucu sürümü: 10.11.11-MariaDB-hetzner1
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mocode_wp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_actionscheduler_actions`
--

CREATE TABLE `mc_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_actionscheduler_actions`
--

INSERT INTO `mc_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(224, 'action_scheduler/migration_hook', 'complete', '2025-03-10 19:46:59', '2025-03-10 20:46:59', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1741636019;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1741636019;}', 1, 1, '2025-03-10 19:47:03', '2025-03-10 20:47:03', 0, NULL),
(225, 'action_scheduler/migration_hook', 'complete', '2025-03-20 20:35:24', '2025-03-20 21:35:24', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1742502924;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1742502924;}', 1, 1, '2025-03-20 20:37:03', '2025-03-20 21:37:03', 0, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_actionscheduler_claims`
--

CREATE TABLE `mc_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_actionscheduler_groups`
--

CREATE TABLE `mc_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_actionscheduler_groups`
--

INSERT INTO `mc_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_actionscheduler_logs`
--

CREATE TABLE `mc_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_actionscheduler_logs`
--

INSERT INTO `mc_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(10, 224, 'action created', '2025-03-10 19:45:59', '2025-03-10 20:45:59'),
(11, 224, 'action started via WP Cron', '2025-03-10 19:47:03', '2025-03-10 20:47:03'),
(12, 224, 'action complete via WP Cron', '2025-03-10 19:47:03', '2025-03-10 20:47:03'),
(13, 225, 'action created', '2025-03-20 20:34:24', '2025-03-20 21:34:24'),
(14, 225, 'action started via WP Cron', '2025-03-20 20:37:03', '2025-03-20 21:37:03'),
(15, 225, 'action complete via WP Cron', '2025-03-20 20:37:03', '2025-03-20 21:37:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_cmplz_cookiebanners`
--

CREATE TABLE `mc_cmplz_cookiebanners` (
  `ID` int(11) NOT NULL,
  `title` text NOT NULL,
  `banner_version` int(11) NOT NULL,
  `default` int(11) NOT NULL,
  `position` text NOT NULL,
  `checkbox_style` text NOT NULL,
  `use_logo` text NOT NULL,
  `logo_attachment_id` text NOT NULL,
  `close_button` text NOT NULL,
  `revoke` text NOT NULL,
  `manage_consent_options` text NOT NULL,
  `header` text NOT NULL,
  `dismiss` text NOT NULL,
  `save_preferences` text NOT NULL,
  `view_preferences` text NOT NULL,
  `category_functional` text NOT NULL,
  `category_all` text NOT NULL,
  `category_stats` text NOT NULL,
  `category_prefs` text NOT NULL,
  `accept` text NOT NULL,
  `message_optin` text NOT NULL,
  `use_categories` text NOT NULL,
  `disable_cookiebanner` int(11) NOT NULL,
  `banner_width` int(11) NOT NULL,
  `soft_cookiewall` int(11) NOT NULL,
  `dismiss_on_scroll` int(11) NOT NULL,
  `dismiss_on_timeout` int(11) NOT NULL,
  `dismiss_timeout` text NOT NULL,
  `accept_informational` text NOT NULL,
  `message_optout` text NOT NULL,
  `use_custom_cookie_css` text NOT NULL,
  `custom_css` text NOT NULL,
  `statistics` text NOT NULL,
  `functional_text` text NOT NULL,
  `statistics_text` text NOT NULL,
  `statistics_text_anonymous` text NOT NULL,
  `preferences_text` text NOT NULL,
  `marketing_text` text NOT NULL,
  `colorpalette_background` text NOT NULL,
  `colorpalette_text` text NOT NULL,
  `colorpalette_toggles` text NOT NULL,
  `colorpalette_border_radius` text NOT NULL,
  `border_width` text NOT NULL,
  `font_size` text NOT NULL,
  `colorpalette_button_accept` text NOT NULL,
  `colorpalette_button_deny` text NOT NULL,
  `colorpalette_button_settings` text NOT NULL,
  `buttons_border_radius` text NOT NULL,
  `animation` text NOT NULL,
  `use_box_shadow` int(11) NOT NULL,
  `header_footer_shadow` int(11) NOT NULL,
  `hide_preview` int(11) NOT NULL,
  `disable_width_correction` int(11) NOT NULL,
  `legal_documents` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_cmplz_cookiebanners`
--

INSERT INTO `mc_cmplz_cookiebanners` (`ID`, `title`, `banner_version`, `default`, `position`, `checkbox_style`, `use_logo`, `logo_attachment_id`, `close_button`, `revoke`, `manage_consent_options`, `header`, `dismiss`, `save_preferences`, `view_preferences`, `category_functional`, `category_all`, `category_stats`, `category_prefs`, `accept`, `message_optin`, `use_categories`, `disable_cookiebanner`, `banner_width`, `soft_cookiewall`, `dismiss_on_scroll`, `dismiss_on_timeout`, `dismiss_timeout`, `accept_informational`, `message_optout`, `use_custom_cookie_css`, `custom_css`, `statistics`, `functional_text`, `statistics_text`, `statistics_text_anonymous`, `preferences_text`, `marketing_text`, `colorpalette_background`, `colorpalette_text`, `colorpalette_toggles`, `colorpalette_border_radius`, `border_width`, `font_size`, `colorpalette_button_accept`, `colorpalette_button_deny`, `colorpalette_button_settings`, `buttons_border_radius`, `animation`, `use_box_shadow`, `header_footer_shadow`, `hide_preview`, `disable_width_correction`, `legal_documents`) VALUES
(1, 'Banner A', 24, 1, 'center', 'slider', '', '0', '1', 'Zustimmung verwalten', 'hover-hide-mobile', 'a:2:{s:4:\"text\";s:20:\"Zustimmung verwalten\";s:4:\"show\";i:1;}', 'a:2:{s:4:\"text\";s:8:\"Ablehnen\";s:4:\"show\";i:1;}', 'Einstellungen speichern', 'Einstellungen ansehen', 'Funktional', 'a:2:{s:4:\"text\";s:9:\"Marketing\";s:4:\"show\";i:1;}', 'a:2:{s:4:\"text\";s:11:\"Statistiken\";s:4:\"show\";i:1;}', 'a:2:{s:4:\"text\";s:9:\"Vorlieben\";s:4:\"show\";i:1;}', 'Akzeptieren', 'Um dir ein optimales Erlebnis zu bieten, verwenden wir Technologien wie Cookies, um Geräteinformationen zu speichern und/oder darauf zuzugreifen. Wenn du diesen Technologien zustimmst, können wir Daten wie das Surfverhalten oder eindeutige IDs auf dieser Website verarbeiten. Wenn du deine Zustimmung nicht erteilst oder zurückziehst, können bestimmte Merkmale und Funktionen beeinträchtigt werden.', 'view-preferences', 0, 526, 0, 0, 0, '10', 'a:2:{s:4:\"text\";s:11:\"Akzeptieren\";s:4:\"show\";i:1;}', 'Um dir ein optimales Erlebnis zu bieten, verwenden wir Technologien wie Cookies, um Geräteinformationen zu speichern und/oder darauf zuzugreifen. Wenn du diesen Technologien zustimmst, können wir Daten wie das Surfverhalten oder eindeutige IDs auf dieser Website verarbeiten. Wenn du deine Zustimmung nicht erteilst oder zurückziehst, können bestimmte Merkmale und Funktionen beeinträchtigt werden.', '0', '/* Container */\n.cmplz-cookiebanner{}\n\n/* Logo */\n.cmplz-cookiebanner .cmplz-logo{}\n/* Title */\n.cmplz-cookiebanner .cmplz-title{}\n/* Close icon */\n.cmplz-cookiebanner .cmplz-close{}\n\n/* Message */\n.cmplz-cookiebanner .cmplz-message{}\n\n /* All buttons */\n.cmplz-buttons .cmplz-btn{}\n/* Accept button */\n.cmplz-btn .cmplz-accept{} \n /* Deny button */\n.cmplz-btn .cmplz-deny{}\n /* Save preferences button */\n.cmplz-btn .cmplz-deny{}\n /* View preferences button */\n.cmplz-btn .cmplz-deny{}\n\n /* Document hyperlinks */\n.cmplz-links .cmplz-documents{}\n\n /* Categories */\n.cmplz-cookiebanner .cmplz-category{}\n.cmplz-cookiebanner .cmplz-category-title{} \n\n/* Manage consent tab */\n#cmplz-manage-consent .cmplz-manage-consent{} \n\n/* Soft cookie wall */\n.cmplz-soft-cookiewall{}\n\n/* Placeholder button - Per category */\n.cmplz-blocked-content-container .cmplz-blocked-content-notice{}\n\n/* Placeholder button & message - Per service */\n.cmplz-blocked-content-container .cmplz-blocked-content-notice,\n.cmplz-blocked-content-notice{}\nbutton.cmplz-accept-service{}\n\n/* Styles for the AMP notice */\n#cmplz-consent-ui, #cmplz-post-consent-ui {}\n/* Message */\n#cmplz-consent-ui .cmplz-consent-message {}\n/* Buttons */\n#cmplz-consent-ui button, #cmplz-post-consent-ui button {}', 'a:0:{}', 'a:2:{s:4:\"text\";s:342:\"Die technische Speicherung oder der Zugang ist unbedingt erforderlich für den rechtmäßigen Zweck, die Nutzung eines bestimmten Dienstes zu ermöglichen, der vom Teilnehmer oder Nutzer ausdrücklich gewünscht wird, oder für den alleinigen Zweck, die Übertragung einer Nachricht über ein elektronisches Kommunikationsnetz durchzuführen.\";s:4:\"show\";i:1;}', 'a:2:{s:4:\"text\";s:98:\"Die technische Speicherung oder der Zugriff, der ausschließlich zu statistischen Zwecken erfolgt.\";s:4:\"show\";i:1;}', 'a:2:{s:4:\"text\";s:384:\"Die technische Speicherung oder der Zugriff, der ausschließlich zu anonymen statistischen Zwecken verwendet wird. Ohne eine Vorladung, die freiwillige Zustimmung deines Internetdienstanbieters oder zusätzliche Aufzeichnungen von Dritten können die zu diesem Zweck gespeicherten oder abgerufenen Informationen allein in der Regel nicht dazu verwendet werden, dich zu identifizieren.\";s:4:\"show\";i:1;}', 'a:2:{s:4:\"text\";s:183:\"Die technische Speicherung oder der Zugriff ist für den rechtmäßigen Zweck der Speicherung von Präferenzen erforderlich, die nicht vom Abonnenten oder Benutzer angefordert wurden.\";s:4:\"show\";i:1;}', 'a:2:{s:4:\"text\";s:233:\"Die technische Speicherung oder der Zugriff ist erforderlich, um Nutzerprofile zu erstellen, um Werbung zu versenden oder um den Nutzer auf einer Website oder über mehrere Websites hinweg zu ähnlichen Marketingzwecken zu verfolgen.\";s:4:\"show\";i:1;}', 'a:2:{s:5:\"color\";s:7:\"#ffffff\";s:6:\"border\";s:7:\"#f2f2f2\";}', 'a:2:{s:5:\"color\";s:7:\"#222222\";s:9:\"hyperlink\";s:7:\"#1E73BE\";}', 'a:3:{s:10:\"background\";s:7:\"#1e73be\";s:6:\"bullet\";s:7:\"#ffffff\";s:8:\"inactive\";s:7:\"#F56E28\";}', 'a:5:{s:3:\"top\";i:12;s:5:\"right\";i:12;s:6:\"bottom\";i:12;s:4:\"left\";i:12;s:4:\"type\";s:2:\"px\";}', 'a:4:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;}', '12', 'a:3:{s:10:\"background\";s:7:\"#1E73BE\";s:6:\"border\";s:7:\"#1E73BE\";s:4:\"text\";s:7:\"#ffffff\";}', 'a:3:{s:10:\"background\";s:7:\"#f9f9f9\";s:6:\"border\";s:7:\"#f2f2f2\";s:4:\"text\";s:7:\"#222222\";}', 'a:3:{s:10:\"background\";s:7:\"#f9f9f9\";s:6:\"border\";s:7:\"#f2f2f2\";s:4:\"text\";s:7:\"#333333\";}', 'a:5:{s:3:\"top\";i:6;s:5:\"right\";i:6;s:6:\"bottom\";i:6;s:4:\"left\";i:6;s:4:\"type\";s:2:\"px\";}', 'none', 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_cmplz_cookies`
--

CREATE TABLE `mc_cmplz_cookies` (
  `ID` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `sync` int(11) NOT NULL,
  `ignored` int(11) NOT NULL,
  `retention` text NOT NULL,
  `type` text NOT NULL,
  `serviceID` int(11) NOT NULL,
  `cookieFunction` text NOT NULL,
  `collectedPersonalData` text NOT NULL,
  `purpose` text NOT NULL,
  `language` varchar(6) NOT NULL,
  `isTranslationFrom` int(11) NOT NULL,
  `isOwnDomainCookie` int(11) NOT NULL,
  `domain` text NOT NULL,
  `deleted` int(11) NOT NULL,
  `isMembersOnly` int(11) NOT NULL,
  `showOnPolicy` int(11) NOT NULL,
  `lastUpdatedDate` int(11) NOT NULL,
  `lastAddDate` int(11) NOT NULL,
  `firstAddDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_cmplz_cookies`
--

INSERT INTO `mc_cmplz_cookies` (`ID`, `name`, `slug`, `sync`, `ignored`, `retention`, `type`, `serviceID`, `cookieFunction`, `collectedPersonalData`, `purpose`, `language`, `isTranslationFrom`, `isOwnDomainCookie`, `domain`, `deleted`, `isMembersOnly`, `showOnPolicy`, `lastUpdatedDate`, `lastAddDate`, `firstAddDate`) VALUES
(1, 'wpEmojiSettingsSupports', 'wpemojisettingssupports', 1, 0, 'session', 'localstorage', 1, 'store browser details', 'none', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(2, 'wpEmojiSettingsSupports', 'wpemojisettingssupports', 1, 0, 'Sitzung', '', 2, 'speichere Browser-Angaben', 'nichts', 'Funktional', 'de', 1, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(3, 'twk_uuid_*', 'twk_uuid_', 1, 0, '', 'cookie', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 1721652871, 1721820168, 1721652372),
(4, 'twk_uuid_*', 'twk_uuid_', 1, 0, '', '', 0, '', '', '', 'de', 3, 0, 'self', 0, 0, 1, 1721652871, 1721820168, 1721652372),
(5, 'wordpress_test_cookie', 'wordpress_test_cookie', 1, 0, 'session', 'cookie', 1, 'read if cookies can be placed', '', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(6, 'wordpress_test_cookie', 'wordpress_test_cookie', 1, 0, 'Sitzung', '', 2, 'überprüft, ob Cookies gesetzt werden können', '', 'Funktional', 'de', 5, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(7, 'wp-settings-*', 'wp-settings', 1, 0, 'persistent', 'cookie', 1, 'store user preferences', '', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(8, 'wp-settings-*', 'wp-settings', 1, 0, 'beständig', '', 2, 'speicher die Benutzervorlieben', '', 'Funktional', 'de', 7, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(9, 'wp-settings-time-*', 'wp-settings-time', 1, 0, '1 year', 'cookie', 1, 'store user preferences', '', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(10, 'wp-settings-time-*', 'wp-settings-time', 1, 0, '1 Jahr', '', 2, 'speicher die Benutzervorlieben', '', 'Funktional', 'de', 9, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(11, 'wordpress_logged_in_*', 'wordpress_logged_in_', 1, 0, 'persistent', 'cookie', 1, 'Store logged in users', '', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(12, 'wordpress_logged_in_*', 'wordpress_logged_in_', 1, 0, 'beständig', '', 2, 'Benutzer eingeloggt lassen', '', 'Funktional', 'de', 11, 0, 'self', 0, 0, 1, 1721652871, 1742502666, 1721652372),
(13, 'cmplz_functional', 'cmplz_functional', 1, 0, '365 Tage', 'cookie', 3, 'store cookie consent preferences', 'none', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721820165, 1742502666, 1721653250),
(14, 'cmplz_preferences', 'cmplz_preferences', 1, 0, '365 Tage', 'cookie', 3, 'store cookie consent preferences', 'none', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721820165, 1742502666, 1721653250),
(15, 'cmplz_marketing', 'cmplz_marketing', 1, 0, '365 Tage', 'cookie', 3, 'store cookie consent preferences', 'none', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721820165, 1742502666, 1721653250),
(16, 'cmplz_consented_services', 'cmplz_consented_services', 1, 0, '365 Tage', 'cookie', 3, 'store cookie consent preferences', 'none', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721820165, 1742502666, 1721653250),
(17, 'cmplz_functional', 'cmplz_functional', 1, 0, '365 Tage', '', 4, 'speichere Cookie-Einwilligungsvorgaben', 'nichts', 'Funktional', 'de', 13, 0, 'self', 0, 0, 1, 1721820165, 1742502666, 1721819442),
(18, 'cmplz_preferences', 'cmplz_preferences', 1, 0, '365 Tage', '', 4, 'speichere Cookie-Einwilligungsvorgaben', 'nichts', 'Funktional', 'de', 14, 0, 'self', 0, 0, 1, 1721820165, 1742502666, 1721819442),
(19, 'cmplz_marketing', 'cmplz_marketing', 1, 0, '365 Tage', '', 4, 'speichere Cookie-Einwilligungsvorgaben', 'nichts', 'Funktional', 'de', 15, 0, 'self', 0, 0, 1, 1721820165, 1742502666, 1721819442),
(20, 'cmplz_consented_services', 'cmplz_consented_services', 1, 0, '365 Tage', '', 4, 'speichere Cookie-Einwilligungsvorgaben', 'nichts', 'Funktional', 'de', 16, 0, 'self', 0, 0, 1, 1721820165, 1742502666, 1721819442),
(21, 'cmplz_banner-status', 'cmplz_banner-status', 1, 0, '365 Tage', 'cookie', 3, 'store if the cookie banner has been dismissed', 'none', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721820318, 1742502666, 1721820166),
(22, 'cmplz_banner-status', 'cmplz_banner-status', 1, 0, '365 Tage', '', 4, 'store if the cookie banner has been dismissed', 'nichts', 'Funktional', 'de', 21, 0, 'self', 0, 0, 1, 1721820318, 1742502666, 1721820166),
(23, 'cmplz_policy_id', 'cmplz_policy_id', 1, 0, '365 Tage', 'cookie', 3, 'store accepted cookie policy ID', 'none', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721820318, 1742502666, 1721820166),
(24, 'cmplz_policy_id', 'cmplz_policy_id', 1, 0, '365 Tage', '', 4, 'erfasse die ID für die angenommene Cookie-Richtlinie', 'nichts', 'Funktional', 'de', 23, 0, 'self', 0, 0, 1, 1721820318, 1742502666, 1721820166),
(25, 'cmplz_statistics', 'cmplz_statistics', 1, 0, '365 Tage', 'cookie', 3, 'store cookie consent preferences', 'none', 'Functional', 'en', 0, 0, 'self', 0, 0, 1, 1721820318, 1742502666, 1721820166),
(26, 'cmplz_statistics', 'cmplz_statistics', 1, 0, '365 Tage', '', 4, 'speichere Cookie-Einwilligungsvorgaben', 'nichts', 'Funktional', 'de', 25, 0, 'self', 0, 0, 1, 1721820318, 1742502666, 1721820166),
(27, 'loglevel', '', 1, 0, '', 'localstorage', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1732272579, 1729543938),
(28, 'loglevel', '', 1, 0, '', '', 0, '', '', '', 'de', 27, 0, 'self', 0, 0, 1, 0, 1732272579, 1729543938),
(29, 'acf', '', 1, 0, '', 'localstorage', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1732272579, 1729543938),
(30, 'acf', '', 1, 0, '', '', 0, '', '', '', 'de', 29, 0, 'self', 0, 0, 1, 0, 1732272579, 1729543938),
(31, 'cmplz_cookie_data', '', 1, 0, '365 Tage', 'localstorage', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1732272579, 1729543942),
(32, 'cmplz_cookie_data', '', 1, 0, '365 Tage', '', 0, '', '', '', 'de', 31, 0, 'self', 0, 0, 1, 0, 1732272579, 1729543942),
(33, 'WP_PREFERENCES_USER_1', '', 1, 0, '', 'localstorage', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1742502666, 1732272568),
(34, 'WP_PREFERENCES_USER_1', '', 1, 0, '', '', 0, '', '', '', 'de', 33, 0, 'self', 0, 0, 1, 0, 1742502666, 1732272568),
(35, '_pk_id.1.d35a', '', 1, 0, '', 'cookie', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272568),
(36, '_pk_id.1.d35a', '', 1, 0, '', '', 0, '', '', '', 'de', 35, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272568),
(37, '_pk_ses.1.d35a', '', 1, 0, '', 'cookie', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272568),
(38, '_pk_ses.1.d35a', '', 1, 0, '', '', 0, '', '', '', 'de', 37, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272568),
(39, '_pk_id_1_d35a', '', 1, 0, '', 'cookie', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272568),
(40, '_pk_id_1_d35a', '', 1, 0, '', '', 0, '', '', '', 'de', 39, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272568),
(41, '_pk_ses_1_d35a', '', 1, 0, '', 'cookie', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272568),
(42, '_pk_ses_1_d35a', '', 1, 0, '', '', 0, '', '', '', 'de', 41, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272568),
(43, 'rank-math-option-search-index', '', 1, 0, '', 'localstorage', 0, '', '', '', 'en', 0, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272579),
(44, 'rank-math-option-search-index', '', 1, 0, '', '', 0, '', '', '', 'de', 43, 0, 'self', 0, 0, 1, 0, 1732272579, 1732272579);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_cmplz_dnsmpd`
--

CREATE TABLE `mc_cmplz_dnsmpd` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `region` text NOT NULL,
  `global_optout` int(11) NOT NULL,
  `cross_context` int(11) NOT NULL,
  `limit_sensitive` int(11) NOT NULL,
  `request_for_access` int(11) NOT NULL,
  `right_to_be_forgotten` int(11) NOT NULL,
  `right_to_data_portability` int(11) NOT NULL,
  `request_date` int(11) NOT NULL,
  `resolved` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_cmplz_services`
--

CREATE TABLE `mc_cmplz_services` (
  `ID` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `serviceType` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `thirdParty` int(11) NOT NULL,
  `sharesData` int(11) NOT NULL,
  `secondParty` int(11) NOT NULL,
  `privacyStatementURL` varchar(250) NOT NULL,
  `language` varchar(6) NOT NULL,
  `isTranslationFrom` int(11) NOT NULL,
  `sync` int(11) NOT NULL,
  `lastUpdatedDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_cmplz_services`
--

INSERT INTO `mc_cmplz_services` (`ID`, `name`, `slug`, `serviceType`, `category`, `thirdParty`, `sharesData`, `secondParty`, `privacyStatementURL`, `language`, `isTranslationFrom`, `sync`, `lastUpdatedDate`) VALUES
(1, 'WordPress', 'wordpress', 'website development', '', 0, 0, 0, '', 'en', 0, 1, 1721820189),
(2, 'WordPress', 'wordpress', 'Website-Entwicklung', '', 0, 0, 0, '', 'de', 1, 1, 1721820189),
(3, 'Complianz', 'complianz', 'cookie consent management', '', 0, 0, 0, 'https://complianz.io/legal/privacy-statement/', 'en', 0, 1, 1721820189),
(4, 'Complianz', 'complianz', 'Verwaltung der Cookie-Einwilligung', '', 0, 0, 0, 'https://complianz.io/legal/privacy-statement/', 'de', 3, 1, 1721820189);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_commentmeta`
--

CREATE TABLE `mc_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_comments`
--

CREATE TABLE `mc_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_links`
--

CREATE TABLE `mc_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_options`
--

CREATE TABLE `mc_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_options`
--

INSERT INTO `mc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://studiomoco.de', 'yes'),
(2, 'home', 'https://studiomoco.de', 'yes'),
(3, 'blogname', 'Studio Moco', 'yes'),
(4, 'blogdescription', 'Crafting Magical User Experiences', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dev@mocodev.de', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j. F Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. F Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:149:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"case-study/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"case-study/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"case-study/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"case-study/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"case-study/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"case-study/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"case-study/([^/]+)/embed/?$\";s:43:\"index.php?case-study=$matches[1]&embed=true\";s:31:\"case-study/([^/]+)/trackback/?$\";s:37:\"index.php?case-study=$matches[1]&tb=1\";s:39:\"case-study/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?case-study=$matches[1]&paged=$matches[2]\";s:46:\"case-study/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?case-study=$matches[1]&cpage=$matches[2]\";s:35:\"case-study/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?case-study=$matches[1]&page=$matches[2]\";s:27:\"case-study/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"case-study/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"case-study/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"case-study/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"case-study/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"case-study/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"customer-logo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"customer-logo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"customer-logo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"customer-logo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"customer-logo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"customer-logo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"customer-logo/([^/]+)/embed/?$\";s:46:\"index.php?customer-logo=$matches[1]&embed=true\";s:34:\"customer-logo/([^/]+)/trackback/?$\";s:40:\"index.php?customer-logo=$matches[1]&tb=1\";s:42:\"customer-logo/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?customer-logo=$matches[1]&paged=$matches[2]\";s:49:\"customer-logo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?customer-logo=$matches[1]&cpage=$matches[2]\";s:38:\"customer-logo/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?customer-logo=$matches[1]&page=$matches[2]\";s:30:\"customer-logo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"customer-logo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"customer-logo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"customer-logo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"customer-logo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"customer-logo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:15:\"worker/init.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:33:\"complianz-gdpr/complianz-gpdr.php\";i:3;s:30:\"seo-by-rank-math/rank-math.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:81:\"/usr/www/users/mocode/moco-web/wp-content/themes/moco_theme/page-case-studies.php\";i:2;s:69:\"/usr/www/users/mocode/moco-web/wp-content/themes/moco_theme/style.css\";i:3;s:73:\"/usr/www/users/mocode/moco-web/wp-content/themes/moco_theme/page-home.php\";i:4;s:70:\"/usr/www/users/mocode/moco-web/wp-content/themes/moco_theme/footer.php\";i:5;s:103:\"/usr/www/users/mocode/moco-web/wp-content/themes/moco_theme/template-parts/content-block-case-study.php\";}', 'no'),
(40, 'template', 'moco_theme', 'yes'),
(41, 'stylesheet', 'moco_theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '58975', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:20:\"worker/functions.php\";s:13:\"mwp_uninstall\";}', 'no'),
(80, 'timezone_string', 'Europe/Berlin', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '223', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '24', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1757187930', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'off'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'mc_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:80:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"rank_math_edit_htaccess\";b:1;s:16:\"rank_math_titles\";b:1;s:17:\"rank_math_general\";b:1;s:17:\"rank_math_sitemap\";b:1;s:21:\"rank_math_404_monitor\";b:1;s:22:\"rank_math_link_builder\";b:1;s:22:\"rank_math_redirections\";b:1;s:22:\"rank_math_role_manager\";b:1;s:19:\"rank_math_analytics\";b:1;s:23:\"rank_math_site_analysis\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:25:\"rank_math_onpage_advanced\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;s:20:\"rank_math_content_ai\";b:1;s:19:\"rank_math_admin_bar\";b:1;s:14:\"manage_privacy\";b:1;s:19:\"wp-piwik_read_stats\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:23:\"rank_math_site_analysis\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:14:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'off'),
(102, 'WPLANG', 'de_DE', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Neueste Beiträge</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:230:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Neueste Kommentare</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archive</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategorien</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:17:{i:1743598617;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1743599475;a:1:{s:22:\"mwp_update_public_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743599785;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1743619319;a:1:{s:35:\"rank_math/content-ai/update_prompts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743628585;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743628598;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743638400;a:2:{s:35:\"rank_math/redirection/clean_trashed\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"rank_math/links/internal_links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743671785;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743671798;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743671799;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743684370;a:2:{s:20:\"cmplz_every_day_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"cmplz_daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:29:\"cmplz_every_five_minutes_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:18:\"cmplz_five_minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1744029970;a:1:{s:21:\"cmplz_every_week_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"cmplz_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1744031104;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1744104111;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1744190185;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1744980370;a:1:{s:22:\"cmplz_every_month_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:13:\"cmplz_monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}', 'on'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'off'),
(123, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:37:\"SSL-Überprüfung ist fehlgeschlagen.\";}s:19:\"bad_response_source\";a:1:{i:0;s:68:\"Es sieht so aus, als ob die Antwort nicht von dieser Website stammt.\";}}', 'off'),
(129, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1721122024;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(139, 'wp_attachment_pages_enabled', '1', 'yes'),
(140, 'db_upgraded', '', 'on'),
(147, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"dev@mocodev.de\";s:7:\"version\";s:5:\"6.7.2\";s:9:\"timestamp\";i:1739310923;}', 'off'),
(168, 'finished_updating_comment_type', '1', 'yes'),
(174, 'current_theme', 'Moco Theme', 'yes'),
(175, 'theme_mods_moco_theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-1\";i:2;s:6:\"menu-2\";i:3;s:6:\"menu-3\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(176, 'theme_switched', '', 'yes'),
(178, 'recently_activated', 'a:0:{}', 'off'),
(190, 'acf_first_activated_version', '6.2.9', 'yes'),
(191, 'acf_version', '6.3.12', 'yes'),
(192, 'category_children', 'a:0:{}', 'yes'),
(216, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(248, 'new_admin_email', 'dev@mocodev.de', 'auto'),
(258, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRRd05ESTJmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE9DMHdPUzB5TVNBeE5UbzFOam8xTWc9PSI7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc3R1ZGlvbW9jby5kZSI7fQ==', 'off'),
(305, 'contact_settings_options', 'a:3:{s:16:\"contact_adress_1\";s:42:\"Großweidenmühlstraße 21 90419 Nürnberg\";s:15:\"contact_phone_1\";s:17:\"+49 171 102 33 33\";s:14:\"contact_mail_1\";s:17:\"hey@studiomoco.de\";}', 'auto'),
(582, 'action_scheduler_hybrid_store_demarkation', '220', 'auto'),
(583, 'schema-ActionScheduler_StoreSchema', '7.0.1721645464', 'auto'),
(584, 'schema-ActionScheduler_LoggerSchema', '3.0.1721645464', 'auto'),
(585, 'rank_math_known_post_types', 'a:6:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";s:10:\"case-study\";s:10:\"case-study\";s:13:\"customer-logo\";s:13:\"customer-logo\";s:12:\"testimonials\";s:12:\"testimonials\";}', 'auto'),
(586, 'rank_math_modules', 'a:15:{i:0;s:12:\"link-counter\";i:1;s:9:\"analytics\";i:2;s:12:\"seo-analysis\";i:3;s:7:\"sitemap\";i:4;s:12:\"rich-snippet\";i:5;s:11:\"woocommerce\";i:6;s:10:\"buddypress\";i:7;s:7:\"bbpress\";i:8;s:3:\"acf\";i:9;s:11:\"web-stories\";i:10;s:10:\"content-ai\";i:11;s:16:\"instant-indexing\";i:12;s:9:\"local-seo\";i:13;s:11:\"404-monitor\";i:14;s:12:\"redirections\";}', 'auto'),
(587, 'rank-math-options-general', 'a:56:{s:19:\"strip_category_base\";s:3:\"off\";s:24:\"attachment_redirect_urls\";s:2:\"on\";s:27:\"attachment_redirect_default\";s:21:\"https://studiomoco.de\";s:23:\"nofollow_external_links\";s:3:\"off\";s:20:\"nofollow_image_links\";s:3:\"off\";s:25:\"new_window_external_links\";s:2:\"on\";s:11:\"add_img_alt\";s:3:\"off\";s:14:\"img_alt_format\";s:11:\" %filename%\";s:13:\"add_img_title\";s:3:\"off\";s:16:\"img_title_format\";s:22:\"%title% %count(title)%\";s:11:\"breadcrumbs\";s:3:\"off\";s:21:\"breadcrumbs_separator\";s:1:\"-\";s:16:\"breadcrumbs_home\";s:2:\"on\";s:22:\"breadcrumbs_home_label\";s:4:\"Home\";s:26:\"breadcrumbs_archive_format\";s:15:\"Archives for %s\";s:25:\"breadcrumbs_search_format\";s:14:\"Results for %s\";s:21:\"breadcrumbs_404_label\";s:25:\"404 Error: page not found\";s:31:\"breadcrumbs_ancestor_categories\";s:3:\"off\";s:21:\"breadcrumbs_blog_page\";s:3:\"off\";s:16:\"404_monitor_mode\";s:6:\"simple\";s:17:\"404_monitor_limit\";s:3:\"100\";s:35:\"404_monitor_ignore_query_parameters\";s:2:\"on\";s:24:\"redirections_header_code\";s:3:\"301\";s:18:\"redirections_debug\";s:3:\"off\";s:23:\"console_caching_control\";s:2:\"90\";s:21:\"console_email_reports\";b:0;s:23:\"console_email_frequency\";s:7:\"monthly\";s:27:\"link_builder_links_per_page\";s:1:\"7\";s:29:\"link_builder_links_per_target\";s:1:\"1\";s:22:\"wc_remove_product_base\";s:3:\"off\";s:23:\"wc_remove_category_base\";s:3:\"off\";s:31:\"wc_remove_category_parent_slugs\";s:3:\"off\";s:19:\"wc_remove_generator\";s:2:\"on\";s:24:\"remove_shop_snippet_data\";s:2:\"on\";s:18:\"frontend_seo_score\";s:3:\"off\";s:29:\"frontend_seo_score_post_types\";a:1:{i:0;s:4:\"post\";}s:27:\"frontend_seo_score_position\";s:3:\"top\";s:10:\"setup_mode\";s:8:\"advanced\";s:21:\"content_ai_post_types\";a:5:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"case-study\";i:3;s:13:\"customer-logo\";i:4;s:12:\"testimonials\";}s:18:\"content_ai_country\";s:3:\"all\";s:15:\"content_ai_tone\";s:6:\"Formal\";s:19:\"content_ai_audience\";s:16:\"General Audience\";s:19:\"content_ai_language\";s:10:\"US English\";s:15:\"analytics_stats\";s:2:\"on\";s:15:\"toc_block_title\";s:17:\"Table of Contents\";s:20:\"toc_block_list_style\";s:2:\"ul\";s:21:\"breadcrumbs_home_link\";s:21:\"https://studiomoco.de\";s:29:\"breadcrumbs_remove_post_title\";s:3:\"off\";s:30:\"breadcrumbs_hide_taxonomy_name\";s:3:\"off\";s:13:\"google_verify\";s:43:\"EmX-I3SM_ftK3Zb_YQAYDsnsC78NTEEFLNlRnTN2XPI\";s:16:\"headless_support\";s:3:\"off\";s:27:\"frontend_seo_score_template\";s:6:\"circle\";s:17:\"support_rank_math\";s:2:\"on\";s:19:\"404_monitor_exclude\";a:1:{i:0;a:1:{s:10:\"comparison\";s:5:\"exact\";}}s:21:\"redirections_fallback\";s:7:\"default\";s:26:\"redirections_post_redirect\";s:3:\"off\";}', 'on'),
(588, 'rank-math-options-titles', 'a:171:{s:24:\"noindex_empty_taxonomies\";s:2:\"on\";s:15:\"title_separator\";s:1:\"-\";s:17:\"capitalize_titles\";s:3:\"off\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:19:\"knowledgegraph_type\";s:7:\"company\";s:19:\"knowledgegraph_name\";s:11:\"Studio Moco\";s:12:\"website_name\";s:11:\"Studio Moco\";s:19:\"local_business_type\";s:19:\"ProfessionalService\";s:20:\"local_address_format\";s:43:\"{address} {locality}, {region} {postalcode}\";s:13:\"opening_hours\";a:7:{i:0;a:2:{s:3:\"day\";s:6:\"Monday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:1;a:2:{s:3:\"day\";s:7:\"Tuesday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:2;a:2:{s:3:\"day\";s:9:\"Wednesday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:3;a:2:{s:3:\"day\";s:8:\"Thursday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:4;a:2:{s:3:\"day\";s:6:\"Friday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:5;a:2:{s:3:\"day\";s:8:\"Saturday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:6;a:2:{s:3:\"day\";s:6:\"Sunday\";s:4:\"time\";s:11:\"09:00-17:00\";}}s:20:\"opening_hours_format\";s:3:\"off\";s:14:\"homepage_title\";s:34:\"%sitename% %page% %sep% %sitedesc%\";s:20:\"homepage_description\";s:0:\"\";s:22:\"homepage_custom_robots\";s:3:\"off\";s:23:\"disable_author_archives\";s:3:\"off\";s:15:\"url_author_base\";s:6:\"author\";s:20:\"author_custom_robots\";s:2:\"on\";s:13:\"author_robots\";a:1:{i:0;s:7:\"noindex\";}s:20:\"author_archive_title\";s:30:\"%name% %sep% %sitename% %page%\";s:19:\"author_add_meta_box\";s:2:\"on\";s:21:\"disable_date_archives\";s:2:\"on\";s:18:\"date_archive_title\";s:30:\"%date% %page% %sep% %sitename%\";s:12:\"search_title\";s:38:\"%search_query% %page% %sep% %sitename%\";s:9:\"404_title\";s:31:\"Page Not Found %sep% %sitename%\";s:19:\"date_archive_robots\";a:1:{i:0;s:7:\"noindex\";}s:14:\"noindex_search\";s:2:\"on\";s:24:\"noindex_archive_subpages\";s:3:\"off\";s:26:\"noindex_password_protected\";s:2:\"on\";s:32:\"pt_download_default_rich_snippet\";s:7:\"product\";s:29:\"author_slack_enhanced_sharing\";s:2:\"on\";s:13:\"pt_post_title\";s:24:\"%title% %sep% %sitename%\";s:19:\"pt_post_description\";s:9:\"%excerpt%\";s:14:\"pt_post_robots\";a:1:{i:0;s:5:\"index\";}s:21:\"pt_post_custom_robots\";s:3:\"off\";s:28:\"pt_post_default_rich_snippet\";s:7:\"article\";s:28:\"pt_post_default_article_type\";s:11:\"BlogPosting\";s:28:\"pt_post_default_snippet_name\";s:11:\"%seo_title%\";s:28:\"pt_post_default_snippet_desc\";s:17:\"%seo_description%\";s:30:\"pt_post_slack_enhanced_sharing\";s:2:\"on\";s:17:\"pt_post_ls_use_fk\";s:6:\"titles\";s:20:\"pt_post_add_meta_box\";s:2:\"on\";s:20:\"pt_post_bulk_editing\";s:7:\"editing\";s:24:\"pt_post_link_suggestions\";s:2:\"on\";s:24:\"pt_post_primary_taxonomy\";s:8:\"category\";s:13:\"pt_page_title\";s:24:\"%title% %sep% %sitename%\";s:19:\"pt_page_description\";s:9:\"%excerpt%\";s:14:\"pt_page_robots\";a:1:{i:0;s:5:\"index\";}s:21:\"pt_page_custom_robots\";s:3:\"off\";s:28:\"pt_page_default_rich_snippet\";s:7:\"article\";s:28:\"pt_page_default_article_type\";s:7:\"Article\";s:28:\"pt_page_default_snippet_name\";s:11:\"%seo_title%\";s:28:\"pt_page_default_snippet_desc\";s:17:\"%seo_description%\";s:30:\"pt_page_slack_enhanced_sharing\";s:2:\"on\";s:17:\"pt_page_ls_use_fk\";s:6:\"titles\";s:20:\"pt_page_add_meta_box\";s:2:\"on\";s:20:\"pt_page_bulk_editing\";s:7:\"editing\";s:24:\"pt_page_link_suggestions\";s:2:\"on\";s:19:\"pt_attachment_title\";s:24:\"%title% %sep% %sitename%\";s:25:\"pt_attachment_description\";s:9:\"%excerpt%\";s:20:\"pt_attachment_robots\";a:1:{i:0;s:7:\"noindex\";}s:27:\"pt_attachment_custom_robots\";s:2:\"on\";s:34:\"pt_attachment_default_rich_snippet\";s:3:\"off\";s:34:\"pt_attachment_default_article_type\";s:7:\"Article\";s:34:\"pt_attachment_default_snippet_name\";s:11:\"%seo_title%\";s:34:\"pt_attachment_default_snippet_desc\";s:17:\"%seo_description%\";s:36:\"pt_attachment_slack_enhanced_sharing\";s:3:\"off\";s:26:\"pt_attachment_add_meta_box\";s:3:\"off\";s:19:\"pt_case-study_title\";s:24:\"%title% %sep% %sitename%\";s:25:\"pt_case-study_description\";s:9:\"%excerpt%\";s:20:\"pt_case-study_robots\";a:1:{i:0;s:5:\"index\";}s:27:\"pt_case-study_custom_robots\";s:3:\"off\";s:34:\"pt_case-study_default_rich_snippet\";s:7:\"article\";s:34:\"pt_case-study_default_article_type\";s:7:\"Article\";s:34:\"pt_case-study_default_snippet_name\";s:11:\"%seo_title%\";s:34:\"pt_case-study_default_snippet_desc\";s:17:\"%seo_description%\";s:36:\"pt_case-study_slack_enhanced_sharing\";s:3:\"off\";s:23:\"pt_case-study_ls_use_fk\";s:6:\"titles\";s:26:\"pt_case-study_add_meta_box\";s:2:\"on\";s:26:\"pt_case-study_bulk_editing\";s:7:\"editing\";s:30:\"pt_case-study_link_suggestions\";s:2:\"on\";s:22:\"pt_customer-logo_title\";s:24:\"%title% %sep% %sitename%\";s:28:\"pt_customer-logo_description\";s:9:\"%excerpt%\";s:23:\"pt_customer-logo_robots\";a:1:{i:0;s:5:\"index\";}s:30:\"pt_customer-logo_custom_robots\";s:3:\"off\";s:37:\"pt_customer-logo_default_rich_snippet\";s:3:\"off\";s:37:\"pt_customer-logo_default_article_type\";s:7:\"Article\";s:37:\"pt_customer-logo_default_snippet_name\";s:11:\"%seo_title%\";s:37:\"pt_customer-logo_default_snippet_desc\";s:17:\"%seo_description%\";s:39:\"pt_customer-logo_slack_enhanced_sharing\";s:3:\"off\";s:26:\"pt_customer-logo_ls_use_fk\";s:6:\"titles\";s:29:\"pt_customer-logo_add_meta_box\";s:2:\"on\";s:29:\"pt_customer-logo_bulk_editing\";s:7:\"editing\";s:33:\"pt_customer-logo_link_suggestions\";s:2:\"on\";s:21:\"pt_testimonials_title\";s:24:\"%title% %sep% %sitename%\";s:27:\"pt_testimonials_description\";s:9:\"%excerpt%\";s:22:\"pt_testimonials_robots\";a:1:{i:0;s:5:\"index\";}s:29:\"pt_testimonials_custom_robots\";s:3:\"off\";s:36:\"pt_testimonials_default_rich_snippet\";s:3:\"off\";s:36:\"pt_testimonials_default_article_type\";s:7:\"Article\";s:36:\"pt_testimonials_default_snippet_name\";s:11:\"%seo_title%\";s:36:\"pt_testimonials_default_snippet_desc\";s:17:\"%seo_description%\";s:38:\"pt_testimonials_slack_enhanced_sharing\";s:3:\"off\";s:25:\"pt_testimonials_ls_use_fk\";s:6:\"titles\";s:28:\"pt_testimonials_add_meta_box\";s:2:\"on\";s:28:\"pt_testimonials_bulk_editing\";s:7:\"editing\";s:32:\"pt_testimonials_link_suggestions\";s:2:\"on\";s:16:\"pt_product_title\";s:24:\"%title% %sep% %sitename%\";s:22:\"pt_product_description\";s:9:\"%excerpt%\";s:17:\"pt_product_robots\";a:0:{}s:24:\"pt_product_custom_robots\";s:3:\"off\";s:31:\"pt_product_default_rich_snippet\";s:7:\"product\";s:31:\"pt_product_default_article_type\";s:7:\"Article\";s:31:\"pt_product_default_snippet_name\";s:11:\"%seo_title%\";s:31:\"pt_product_default_snippet_desc\";s:17:\"%seo_description%\";s:33:\"pt_product_slack_enhanced_sharing\";s:2:\"on\";s:20:\"pt_product_ls_use_fk\";s:6:\"titles\";s:23:\"pt_product_add_meta_box\";s:2:\"on\";s:23:\"pt_product_bulk_editing\";s:7:\"editing\";s:27:\"pt_product_link_suggestions\";s:2:\"on\";s:27:\"pt_product_primary_taxonomy\";s:11:\"product_cat\";s:18:\"pt_web-story_title\";s:24:\"%title% %sep% %sitename%\";s:24:\"pt_web-story_description\";s:9:\"%excerpt%\";s:19:\"pt_web-story_robots\";a:0:{}s:26:\"pt_web-story_custom_robots\";s:3:\"off\";s:33:\"pt_web-story_default_rich_snippet\";s:7:\"article\";s:33:\"pt_web-story_default_article_type\";s:7:\"Article\";s:33:\"pt_web-story_default_snippet_name\";s:11:\"%seo_title%\";s:33:\"pt_web-story_default_snippet_desc\";s:17:\"%seo_description%\";s:35:\"pt_web-story_slack_enhanced_sharing\";s:3:\"off\";s:25:\"pt_web-story_add_meta_box\";s:3:\"off\";s:18:\"tax_category_title\";s:23:\"%term% %sep% %sitename%\";s:19:\"tax_category_robots\";a:1:{i:0;s:5:\"index\";}s:25:\"tax_category_add_meta_box\";s:2:\"on\";s:26:\"tax_category_custom_robots\";s:3:\"off\";s:24:\"tax_category_description\";s:18:\"%term_description%\";s:35:\"tax_category_slack_enhanced_sharing\";s:2:\"on\";s:18:\"tax_post_tag_title\";s:23:\"%term% %sep% %sitename%\";s:19:\"tax_post_tag_robots\";a:1:{i:0;s:7:\"noindex\";}s:25:\"tax_post_tag_add_meta_box\";s:2:\"on\";s:26:\"tax_post_tag_custom_robots\";s:2:\"on\";s:24:\"tax_post_tag_description\";s:18:\"%term_description%\";s:35:\"tax_post_tag_slack_enhanced_sharing\";s:2:\"on\";s:31:\"remove_product_cat_snippet_data\";s:2:\"on\";s:31:\"remove_product_tag_snippet_data\";s:2:\"on\";s:19:\"knowledgegraph_logo\";s:66:\"https://studiomoco.de/wp-content/uploads/2024/07/Screenshot-14.png\";s:22:\"knowledgegraph_logo_id\";s:3:\"220\";s:16:\"open_graph_image\";s:78:\"https://studiomoco.de/wp-content/uploads/2024/07/project-meeting-1-scaled.jpeg\";s:19:\"open_graph_image_id\";s:3:\"221\";s:28:\"tax_post_format_add_meta_box\";s:2:\"on\";s:13:\"robots_global\";a:1:{i:0;s:5:\"index\";}s:22:\"advanced_robots_global\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:22:\"website_alternate_name\";s:11:\"Studio Moco\";s:24:\"organization_description\";s:250:\"Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale Innovatoren. Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit denen sie sich unsterblich machen. die Herzen der User im Sturm erobern.\";s:3:\"url\";s:21:\"https://studiomoco.de\";s:5:\"email\";s:17:\"hey@studiomoco.de\";s:13:\"phone_numbers\";a:1:{i:0;a:1:{s:4:\"type\";s:16:\"customer support\";}}s:15:\"additional_info\";a:1:{i:0;a:2:{s:4:\"type\";s:9:\"legalName\";s:5:\"value\";s:11:\"Studio Moco\";}}s:20:\"local_seo_about_page\";s:2:\"18\";s:22:\"author_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:20:\"date_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:23:\"noindex_paginated_pages\";s:3:\"off\";s:23:\"pt_post_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:23:\"pt_page_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:29:\"pt_case-study_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:30:\"pt_case-study_primary_taxonomy\";s:3:\"off\";s:32:\"pt_customer-logo_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:31:\"pt_testimonials_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:28:\"tax_category_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:28:\"remove_category_snippet_data\";s:3:\"off\";s:28:\"tax_post_tag_advanced_robots\";a:3:{s:11:\"max-snippet\";s:2:\"-1\";s:17:\"max-video-preview\";s:2:\"-1\";s:17:\"max-image-preview\";s:5:\"large\";}s:28:\"remove_post_tag_snippet_data\";s:3:\"off\";}', 'on'),
(589, 'rank-math-options-sitemap', 'a:19:{s:14:\"items_per_page\";i:200;s:14:\"include_images\";s:2:\"on\";s:22:\"include_featured_image\";s:3:\"off\";s:13:\"exclude_roles\";a:2:{i:0;s:11:\"contributor\";i:1;s:10:\"subscriber\";}s:12:\"html_sitemap\";s:2:\"on\";s:20:\"html_sitemap_display\";s:9:\"shortcode\";s:17:\"html_sitemap_sort\";s:9:\"published\";s:23:\"html_sitemap_seo_titles\";s:6:\"titles\";s:15:\"authors_sitemap\";s:2:\"on\";s:15:\"pt_post_sitemap\";s:2:\"on\";s:15:\"pt_page_sitemap\";s:2:\"on\";s:21:\"pt_attachment_sitemap\";s:3:\"off\";s:21:\"pt_case-study_sitemap\";s:2:\"on\";s:24:\"pt_customer-logo_sitemap\";s:2:\"on\";s:23:\"pt_testimonials_sitemap\";s:2:\"on\";s:18:\"pt_product_sitemap\";s:2:\"on\";s:20:\"pt_web-story_sitemap\";s:3:\"off\";s:20:\"tax_category_sitemap\";s:2:\"on\";s:20:\"tax_post_tag_sitemap\";s:3:\"off\";}', 'auto'),
(590, 'rank-math-options-instant-indexing', 'a:2:{s:15:\"bing_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:16:\"indexnow_api_key\";s:32:\"23b59fadb8d843df8fd4c7b2386bdb1d\";}', 'auto'),
(593, 'rank_math_version', '1.0.240', 'off'),
(594, 'rank_math_db_version', '1', 'auto'),
(595, 'rank_math_install_date', '1721652664', 'auto'),
(597, 'action_scheduler_lock_async-request-runner', '67ec4ded002a20.65683919|1743539753', 'no'),
(602, 'rank_math_registration_skip', '1', 'auto'),
(604, 'rank_math_pro_notice_date', '1722516670', 'off'),
(605, 'rank_math_review_posts_converted', '1', 'auto'),
(607, 'rank_math_wizard_completed', '1', 'auto'),
(610, 'rank_math_viewed_seo_analyer', '1', 'off'),
(613, 'rank_math_google_analytic_profile', 'a:3:{s:7:\"country\";b:0;s:7:\"profile\";b:0;s:19:\"enable_index_status\";b:0;}', 'auto'),
(614, 'rank_math_google_analytic_options', 'a:11:{s:10:\"adsense_id\";b:0;s:10:\"account_id\";b:0;s:11:\"property_id\";b:0;s:7:\"view_id\";b:0;s:14:\"measurement_id\";b:0;s:11:\"stream_name\";b:0;s:7:\"country\";b:0;s:12:\"install_code\";b:0;s:12:\"anonymize_ip\";b:0;s:11:\"local_ga_js\";b:0;s:16:\"exclude_loggedin\";b:0;}', 'auto'),
(615, 'rank_math_content_ai_viewed', '1', 'auto'),
(619, 'rank_math_is_configured', '1', 'off');
INSERT INTO `mc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(640, 'rank_math_indexnow_log', 'a:14:{i:0;a:5:{s:3:\"url\";s:22:\"https://studiomoco.de/\";s:6:\"status\";i:202;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1721645908;}i:1;a:5:{s:3:\"url\";s:31:\"https://studiomoco.de/about-us/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1721645931;}i:2;a:5:{s:3:\"url\";s:35:\"https://studiomoco.de/case-studies/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1721645944;}i:3;a:5:{s:3:\"url\";s:30:\"https://studiomoco.de/kontakt/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1721645949;}i:4;a:5:{s:3:\"url\";s:43:\"https://studiomoco.de/cookie-richtlinie-eu/\";s:6:\"status\";i:202;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1721821586;}i:5;a:5:{s:3:\"url\";s:22:\"https://studiomoco.de/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1723108671;}i:6;a:5:{s:3:\"url\";s:31:\"https://studiomoco.de/about-us/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1734308403;}i:7;a:5:{s:3:\"url\";s:31:\"https://studiomoco.de/about-us/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1734330150;}i:8;a:5:{s:3:\"url\";s:35:\"https://studiomoco.de/case-studies/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1734330213;}i:9;a:5:{s:3:\"url\";s:43:\"https://studiomoco.de/cookie-richtlinie-eu/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1734330229;}i:10;a:5:{s:3:\"url\";s:34:\"https://studiomoco.de/datenschutz/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1734330241;}i:11;a:5:{s:3:\"url\";s:32:\"https://studiomoco.de/impressum/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1734330253;}i:12;a:5:{s:3:\"url\";s:30:\"https://studiomoco.de/kontakt/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1734330265;}i:13;a:5:{s:3:\"url\";s:22:\"https://studiomoco.de/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1734330277;}}', 'off'),
(738, 'ai1wm_backups_labels', 'a:0:{}', 'auto'),
(739, 'ai1wm_sites_links', 'a:0:{}', 'auto'),
(744, 'ai1wmue_plugin_key', 'eb4879ef-ece2-48b9-b3db-5ae10d580cdb', 'auto'),
(746, 'swift_performance_plugin_organizer', 'a:0:{}', 'auto'),
(747, 'jetpack_active_modules', 'a:0:{}', 'auto'),
(753, '_transient_rank_math_first_submenu_id', 'rank-math', 'on'),
(761, '_transient_acf_pro_license_reactivated', '1', 'on'),
(762, 'acf_pro_license_status', 'a:11:{s:6:\"status\";s:6:\"active\";s:7:\"created\";i:0;s:6:\"expiry\";i:0;s:4:\"name\";s:9:\"Developer\";s:8:\"lifetime\";b:1;s:8:\"refunded\";b:0;s:17:\"view_licenses_url\";s:62:\"https://www.advancedcustomfields.com/my-account/view-licenses/\";s:23:\"manage_subscription_url\";s:0:\"\";s:9:\"error_msg\";s:0:\"\";s:10:\"next_check\";i:1743626092;s:16:\"legacy_multisite\";b:1;}', 'on'),
(790, '_site_transient_ai1wm_last_check_for_updates', '1721652336', 'off'),
(791, 'ai1wm_updater', 'a:1:{s:43:\"all-in-one-wp-migration-unlimited-extension\";a:13:{s:4:\"name\";s:19:\"Unlimited Extension\";s:4:\"slug\";s:19:\"unlimited-extension\";s:8:\"homepage\";s:51:\"https://servmask.com/extensions/unlimited-extension\";s:13:\"download_link\";s:29:\"https://servmask.com/purchase\";s:7:\"version\";s:4:\"2.59\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:266:\"<ul class=\"description\"><li>Remove upload limits</li><li>Use on any number of websites that you own</li><li>Restore backup from server</li><li>Reset Hub: Reset tools for efficient site management new</li><li>WP CLI commands included</li><li>Premium support</li></ul>\";}s:7:\"banners\";a:2:{s:3:\"low\";s:65:\"https://servmask.com/img/products/unlimited-extension-772x250.png\";s:4:\"high\";s:66:\"https://servmask.com/img/products/unlimited-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://servmask.com/img/products/unlimited-extension-128x128.png\";s:2:\"2x\";s:65:\"https://servmask.com/img/products/unlimited-extension-256x256.png\";s:7:\"default\";s:65:\"https://servmask.com/img/products/unlimited-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:509;s:10:\"downloaded\";i:50188;}}', 'auto'),
(792, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(796, 'cmplz_activation_time', '1721652370', 'off'),
(800, 'cmplz_active_integrations', '1', 'auto'),
(801, 'cmplz_integrations_changed', '', 'auto'),
(802, 'cmplz_cookietable_version', '7.3.1', 'auto'),
(803, 'cmplz_cbdb_version', '7.3.1', 'auto'),
(804, 'cmplz_dnsmpd_db_version', '7.3.1', 'off'),
(805, 'cmplz_preloaded_privacy_info', 'a:2:{i:0;a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:5345:\"<h2 class=\"wp-block-heading\">Wer wir sind</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Die Adresse unserer Website ist: https://studiomoco.de.</p><h2 class=\"wp-block-heading\">Kommentare</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn Besucher Kommentare auf der Website schreiben, sammeln wir die Daten, die im Kommentar-Formular angezeigt werden, außerdem die IP-Adresse des Besuchers und den User-Agent-String (damit wird der Browser identifiziert), um die Erkennung von Spam zu unterstützen.</p><p>Aus deiner E-Mail-Adresse kann eine anonymisierte Zeichenfolge erstellt (auch Hash genannt) und dem Gravatar-Dienst übergeben werden, um zu prüfen, ob du diesen benutzt. Die Datenschutzerklärung des Gravatar-Dienstes findest du hier: https://automattic.com/privacy/. Nachdem dein Kommentar freigegeben wurde, ist dein Profilbild öffentlich im Kontext deines Kommentars sichtbar.</p><h2 class=\"wp-block-heading\">Medien</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du ein registrierter Benutzer bist und Fotos auf diese Website lädst, solltest du vermeiden, Fotos mit einem EXIF-GPS-Standort hochzuladen. Besucher dieser Website könnten Fotos, die auf dieser Website gespeichert sind, herunterladen und deren Standort-Informationen extrahieren.</p><h2 class=\"wp-block-heading\">Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du einen Kommentar auf unserer Website schreibst, kann das eine Einwilligung sein, deinen Namen, E-Mail-Adresse und Website in Cookies zu speichern. Dies ist eine Komfortfunktion, damit du nicht, wenn du einen weiteren Kommentar schreibst, all diese Daten erneut eingeben musst. Diese Cookies werden ein Jahr lang gespeichert.</p><p>Falls du ein Konto hast und dich auf dieser Website anmeldest, werden wir ein temporäres Cookie setzen, um festzustellen, ob dein Browser Cookies akzeptiert. Dieses Cookie enthält keine personenbezogenen Daten und wird verworfen, wenn du deinen Browser schließt.</p><p>Wenn du dich anmeldest, werden wir einige Cookies einrichten, um deine Anmeldeinformationen und Anzeigeoptionen zu speichern. Anmelde-Cookies verfallen nach zwei Tagen und Cookies für die Anzeigeoptionen nach einem Jahr. Falls du bei der Anmeldung „Angemeldet bleiben“ auswählst, wird deine Anmeldung zwei Wochen lang aufrechterhalten. Mit der Abmeldung aus deinem Konto werden die Anmelde-Cookies gelöscht.</p><p>Wenn du einen Artikel bearbeitest oder veröffentlichst, wird ein zusätzlicher Cookie in deinem Browser gespeichert. Dieser Cookie enthält keine personenbezogenen Daten und verweist nur auf die Beitrags-ID des Artikels, den du gerade bearbeitet hast. Der Cookie verfällt nach einem Tag.</p><h2 class=\"wp-block-heading\">Eingebettete Inhalte von anderen Websites</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Beiträge auf dieser Website können eingebettete Inhalte beinhalten (z. B. Videos, Bilder, Beiträge etc.). Eingebettete Inhalte von anderen Websites verhalten sich exakt so, als ob der Besucher die andere Website besucht hätte.</p><p>Diese Websites können Daten über dich sammeln, Cookies benutzen, zusätzliche Tracking-Dienste von Dritten einbetten und deine Interaktion mit diesem eingebetteten Inhalt aufzeichnen, inklusive deiner Interaktion mit dem eingebetteten Inhalt, falls du ein Konto hast und auf dieser Website angemeldet bist.</p><h2 class=\"wp-block-heading\">Mit wem wir deine Daten teilen</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du eine Zurücksetzung des Passworts beantragst, wird deine IP-Adresse in der E-Mail zur Zurücksetzung enthalten sein.</p><h2 class=\"wp-block-heading\">Wie lange wir deine Daten speichern</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du einen Kommentar schreibst, wird dieser inklusive Metadaten zeitlich unbegrenzt gespeichert. Auf diese Art können wir Folgekommentare automatisch erkennen und freigeben, anstatt sie in einer Moderations-Warteschlange festzuhalten.</p><p>Für Benutzer, die sich auf unserer Website registrieren, speichern wir zusätzlich die persönlichen Informationen, die sie in ihren Benutzerprofilen angeben. Alle Benutzer können jederzeit ihre persönlichen Informationen einsehen, verändern oder löschen (der Benutzername kann nicht verändert werden). Administratoren der Website können diese Informationen ebenfalls einsehen und verändern.</p><h2 class=\"wp-block-heading\">Welche Rechte du an deinen Daten hast</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du ein Konto auf dieser Website besitzt oder Kommentare geschrieben hast, kannst du einen Export deiner personenbezogenen Daten bei uns anfordern, inklusive aller Daten, die du uns mitgeteilt hast. Darüber hinaus kannst du die Löschung aller personenbezogenen Daten, die wir von dir gespeichert haben, anfordern. Dies umfasst nicht die Daten, die wir aufgrund administrativer, rechtlicher oder sicherheitsrelevanter Notwendigkeiten aufbewahren müssen.</p><h2 class=\"wp-block-heading\">Wohin deine Daten gesendet werden</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Besucher-Kommentare könnten von einem automatisierten Dienst zur Spam-Erkennung untersucht werden.</p>\";s:5:\"added\";i:1742502758;}i:1;a:3:{s:11:\"plugin_name\";s:43:\"Complianz | The Privacy Suite for WordPress\";s:11:\"policy_text\";s:519:\"<p>Diese Website verwendet die Privacy Suite für WordPress von Complianz, um browser- und gerätebasierte Einwilligungen zu sammeln und aufzuzeichnen. Für diese Funktion wird deine IP-Adresse anonymisiert und in unserer Datenbank gespeichert.&nbsp;Dieser Dienst verarbeitet keine persönlich identifizierbaren Informationen und gibt keine Daten an den Dienstanbieter weiter.&nbsp;Weitere Informationen findest du in der Complianz <a href=\"https://complianz.io/legal/privacy-statement/\">Datenschutzerklärung</a>.</p>\n\";s:5:\"added\";i:1742502758;}}', 'off'),
(806, 'cmplz_first_version', '7.1.0', 'off'),
(807, 'cmplz_generate_new_cookiepolicy_snapshot', '', 'off'),
(808, 'cmplz-current-version', '7.3.1', 'auto'),
(813, 'cmplz_options', 'a:56:{s:11:\"use_cdb_api\";s:3:\"yes\";s:27:\"notifications_email_address\";s:14:\"dev@mocodev.de\";s:24:\"send_notifications_email\";i:1;s:7:\"regions\";s:2:\"eu\";s:22:\"other_region_behaviour\";s:4:\"none\";s:18:\"eu_consent_regions\";s:3:\"yes\";s:18:\"uk_consent_regions\";s:2:\"no\";s:17:\"ca_targets_quebec\";s:0:\"\";s:9:\"us_states\";a:0:{}s:21:\"wp_admin_access_users\";s:2:\"no\";s:16:\"cookie-statement\";s:9:\"generated\";s:17:\"privacy-statement\";s:6:\"custom\";s:9:\"impressum\";s:6:\"custom\";s:10:\"disclaimer\";s:4:\"none\";s:17:\"organisation_name\";s:11:\"Studio Moco\";s:15:\"address_company\";s:42:\"Großweidenmühlstraße 21\n90419 Nürnberg\";s:15:\"country_company\";s:2:\"DE\";s:13:\"email_company\";s:17:\"hey@studiomoco.de\";s:17:\"telephone_company\";s:17:\"+49 171 102 33 33\";s:26:\"ca_name_accountable_person\";s:0:\"\";s:29:\"ca_address_accountable_person\";s:0:\"\";s:18:\"records_of_consent\";s:2:\"no\";s:11:\"datarequest\";s:2:\"no\";s:11:\"respect_dnt\";s:2:\"no\";s:31:\"sensitive_information_processed\";s:0:\"\";s:11:\"cookie_scan\";s:0:\"\";s:13:\"install-burst\";s:0:\"\";s:18:\"compile_statistics\";s:2:\"no\";s:28:\"compile_statistics_more_info\";a:0:{}s:40:\"compile_statistics_more_info_tag_manager\";a:0:{}s:17:\"matomo_anonymized\";s:0:\"\";s:19:\"consent_per_service\";s:3:\"yes\";s:24:\"uses_thirdparty_services\";s:2:\"no\";s:27:\"thirdparty_services_on_site\";a:0:{}s:23:\"block_recaptcha_service\";s:2:\"no\";s:22:\"self_host_google_fonts\";s:2:\"no\";s:21:\"block_hubspot_service\";s:2:\"no\";s:22:\"hotjar_privacyfriendly\";s:0:\"\";s:17:\"uses_social_media\";s:2:\"no\";s:19:\"socialmedia_on_site\";a:0:{}s:33:\"uses_firstparty_marketing_cookies\";s:2:\"no\";s:15:\"uses_ad_cookies\";s:2:\"no\";s:28:\"uses_ad_cookies_personalized\";s:2:\"no\";s:23:\"uses_wordpress_comments\";s:2:\"no\";s:31:\"block_wordpress_comment_cookies\";s:3:\"yes\";s:17:\"plugins_overviews\";s:0:\"\";s:19:\"cookiedatabase_sync\";s:0:\"\";s:16:\"create-documents\";s:0:\"\";s:15:\"region_redirect\";s:2:\"no\";s:17:\"add_pages_to_menu\";s:0:\"\";s:35:\"add_pages_to_menu_region_redirected\";s:0:\"\";s:22:\"cookie_banner_required\";s:1:\"1\";s:18:\"last-step-feedback\";s:0:\"\";s:20:\"enable_cookie_banner\";s:3:\"yes\";s:21:\"enable_cookie_blocker\";s:3:\"yes\";s:9:\"safe_mode\";i:0;}', 'auto'),
(814, 'cmplz_onboarding_dismissed', '1', 'off'),
(817, '_transient_media_months', 'a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"year\";s:4:\"2024\";s:5:\"month\";s:1:\"7\";}}', 'on'),
(822, 'cmplz_cookie_data_verified_date', '1742502682', 'auto'),
(823, 'cmplz_last_cookie_scan', '1742506282', 'auto'),
(826, 'cmplz_first_sync_started', '1', 'off'),
(831, 'cmplz_detected_social_media', 'a:0:{}', 'auto'),
(832, 'cmplz_detected_thirdparty_services', 'a:0:{}', 'auto'),
(833, 'cmplz_detected_stats', 'a:1:{i:0;s:6:\"matomo\";}', 'auto'),
(834, 'cmplz_purposes_stored', '1', 'off'),
(835, 'cmplz_purposes_de', 'a:5:{i:0;a:2:{s:5:\"value\";s:3:\"718\";s:5:\"label\";s:10:\"Funktional\";}i:1;a:2:{s:5:\"value\";s:3:\"717\";s:5:\"label\";s:9:\"Marketing\";}i:2;a:2:{s:5:\"value\";s:4:\"1263\";s:5:\"label\";s:12:\"Präferenzen\";}i:3;a:2:{s:5:\"value\";s:3:\"716\";s:5:\"label\";s:9:\"Statistik\";}i:4;a:2:{s:5:\"value\";s:3:\"715\";s:5:\"label\";s:18:\"Statistik (anonym)\";}}', 'off'),
(836, 'cmplz_purposes_en', 'a:5:{i:0;a:2:{s:5:\"value\";s:2:\"61\";s:5:\"label\";s:10:\"Functional\";}i:1;a:2:{s:5:\"value\";s:2:\"64\";s:5:\"label\";s:9:\"Marketing\";}i:2;a:2:{s:5:\"value\";s:4:\"1257\";s:5:\"label\";s:11:\"Preferences\";}i:3;a:2:{s:5:\"value\";s:2:\"63\";s:5:\"label\";s:10:\"Statistics\";}i:4;a:2:{s:5:\"value\";s:2:\"62\";s:5:\"label\";s:22:\"Statistics (anonymous)\";}}', 'off'),
(839, 'cmplz_serviceTypes_stored', '1', 'off'),
(840, 'cmplz_serviceTypes_de', 'a:53:{i:0;a:2:{s:5:\"value\";s:3:\"825\";s:5:\"label\";s:29:\"Anzeige der letzten Einkäufe\";}i:1;a:2:{s:5:\"value\";s:3:\"824\";s:5:\"label\";s:62:\"Anzeige der letzten Social-Posts und/oder Social-Share-Buttons\";}i:2;a:2:{s:5:\"value\";s:3:\"808\";s:5:\"label\";s:20:\"Anzeige von Webfonts\";}i:3;a:2:{s:5:\"value\";s:3:\"712\";s:5:\"label\";s:15:\"Audio-Streaming\";}i:4;a:2:{s:5:\"value\";s:3:\"818\";s:5:\"label\";s:39:\"Bereitstellung von Social-Share-Buttons\";}i:5;a:2:{s:5:\"value\";s:3:\"801\";s:5:\"label\";s:18:\"Besucherverfolgung\";}i:6;a:2:{s:5:\"value\";s:3:\"709\";s:5:\"label\";s:12:\"Chat-Support\";}i:7;a:2:{s:5:\"value\";s:3:\"706\";s:5:\"label\";s:41:\"Content Distribution Network (CDN) Dienst\";}i:8;a:2:{s:5:\"value\";s:3:\"809\";s:5:\"label\";s:33:\"Diagramme und Bildschirmaufnahmen\";}i:9;a:2:{s:5:\"value\";s:3:\"811\";s:5:\"label\";s:17:\"E-Mail-Abonnenten\";}i:10;a:2:{s:5:\"value\";s:4:\"3936\";s:5:\"label\";s:28:\"Einrichtung von Online-Foren\";}i:11;a:2:{s:5:\"value\";s:3:\"711\";s:5:\"label\";s:22:\"Erstellung der Buttons\";}i:12;a:2:{s:5:\"value\";s:3:\"707\";s:5:\"label\";s:17:\"Inhaltserstellung\";}i:13;a:2:{s:5:\"value\";s:3:\"705\";s:5:\"label\";s:17:\"Inhaltsverwaltung\";}i:14;a:2:{s:5:\"value\";s:3:\"826\";s:5:\"label\";s:27:\"kanalübergreifende Werbung\";}i:15;a:2:{s:5:\"value\";s:3:\"812\";s:5:\"label\";s:13:\"Kartenanzeige\";}i:16;a:2:{s:5:\"value\";s:3:\"708\";s:5:\"label\";s:19:\"Kommentarverwaltung\";}i:17;a:2:{s:5:\"value\";s:4:\"3934\";s:5:\"label\";s:16:\"Kontaktformulare\";}i:18;a:2:{s:5:\"value\";s:3:\"828\";s:5:\"label\";s:25:\"Kunden-Support-Management\";}i:19;a:2:{s:5:\"value\";s:4:\"3937\";s:5:\"label\";s:33:\"Lernmanagement und Kurserstellung\";}i:20;a:2:{s:5:\"value\";s:4:\"3935\";s:5:\"label\";s:32:\"Management der Kundenbeziehungen\";}i:21;a:2:{s:5:\"value\";s:3:\"813\";s:5:\"label\";s:58:\"Marketing-Automatisierung (automatisches E-Mail-Marketing)\";}i:22;a:2:{s:5:\"value\";s:4:\"3938\";s:5:\"label\";s:27:\"Online-Terminvereinbarungen\";}i:23;a:2:{s:5:\"value\";s:3:\"820\";s:5:\"label\";s:28:\"Optimierung der Suchmaschine\";}i:24;a:2:{s:5:\"value\";s:3:\"814\";s:5:\"label\";s:12:\"Page-caching\";}i:25;a:2:{s:5:\"value\";s:3:\"713\";s:5:\"label\";s:17:\"Partner-Marketing\";}i:26;a:2:{s:5:\"value\";s:3:\"817\";s:5:\"label\";s:17:\"Pop-Up-Erstellung\";}i:27;a:2:{s:5:\"value\";s:4:\"3939\";s:5:\"label\";s:23:\"Push-Benachrichtigungen\";}i:28;a:2:{s:5:\"value\";s:3:\"819\";s:5:\"label\";s:11:\"Remarketing\";}i:29;a:2:{s:5:\"value\";s:3:\"710\";s:5:\"label\";s:13:\"Rufverfolgung\";}i:30;a:2:{s:5:\"value\";s:3:\"823\";s:5:\"label\";s:15:\"Spam-Vorbeugung\";}i:31;a:2:{s:5:\"value\";s:3:\"821\";s:5:\"label\";s:14:\"Suchfunktionen\";}i:32;a:2:{s:5:\"value\";s:3:\"704\";s:5:\"label\";s:18:\"Umfragen erstellen\";}i:33;a:2:{s:5:\"value\";s:3:\"815\";s:5:\"label\";s:54:\"Verbesserung der Geschwindigkeit beim Laden von Seiten\";}i:34;a:2:{s:5:\"value\";s:3:\"703\";s:5:\"label\";s:34:\"Verwaltung der Cookie-Einwilligung\";}i:35;a:2:{s:5:\"value\";s:3:\"810\";s:5:\"label\";s:29:\"Verwaltung der Gebietsschemen\";}i:36;a:2:{s:5:\"value\";s:3:\"827\";s:5:\"label\";s:31:\"Verwaltung der Kundenidentität\";}i:37;a:2:{s:5:\"value\";s:3:\"800\";s:5:\"label\";s:13:\"Video-Display\";}i:38;a:2:{s:5:\"value\";s:3:\"802\";s:5:\"label\";s:12:\"Webformulare\";}i:39;a:2:{s:5:\"value\";s:3:\"804\";s:5:\"label\";s:33:\"Webshop-Statistik und Optimierung\";}i:40;a:2:{s:5:\"value\";s:3:\"803\";s:5:\"label\";s:18:\"Webshop-Verwaltung\";}i:41;a:2:{s:5:\"value\";s:3:\"805\";s:5:\"label\";s:24:\"Website-Admin-Funktionen\";}i:42;a:2:{s:5:\"value\";s:3:\"806\";s:5:\"label\";s:14:\"Website-Design\";}i:43;a:2:{s:5:\"value\";s:3:\"807\";s:5:\"label\";s:19:\"Website-Entwicklung\";}i:44;a:2:{s:5:\"value\";s:3:\"833\";s:5:\"label\";s:15:\"Website-Hosting\";}i:45;a:2:{s:5:\"value\";s:3:\"832\";s:5:\"label\";s:28:\"Website-Leistungsoptimierung\";}i:46;a:2:{s:5:\"value\";s:3:\"831\";s:5:\"label\";s:14:\"Website-Menu\'s\";}i:47;a:2:{s:5:\"value\";s:3:\"830\";s:5:\"label\";s:18:\"Website-Sicherheit\";}i:48;a:2:{s:5:\"value\";s:3:\"829\";s:5:\"label\";s:17:\"Website-Statistik\";}i:49;a:2:{s:5:\"value\";s:3:\"714\";s:5:\"label\";s:7:\"Werbung\";}i:50;a:2:{s:5:\"value\";s:3:\"822\";s:5:\"label\";s:16:\"Werbung anzeigen\";}i:51;a:2:{s:5:\"value\";s:4:\"3940\";s:5:\"label\";s:16:\"Wettervorhersage\";}i:52;a:2:{s:5:\"value\";s:3:\"816\";s:5:\"label\";s:18:\"Zahlungsabwicklung\";}}', 'off'),
(841, 'cmplz_serviceTypes_en', 'a:53:{i:0;a:2:{s:5:\"value\";s:3:\"422\";s:5:\"label\";s:11:\"advertising\";}i:1;a:2:{s:5:\"value\";s:3:\"402\";s:5:\"label\";s:19:\"affiliate marketing\";}i:2;a:2:{s:5:\"value\";s:3:\"429\";s:5:\"label\";s:15:\"audio streaming\";}i:3;a:2:{s:5:\"value\";s:3:\"418\";s:5:\"label\";s:16:\"buttons creation\";}i:4;a:2:{s:5:\"value\";s:3:\"396\";s:5:\"label\";s:13:\"call tracking\";}i:5;a:2:{s:5:\"value\";s:3:\"180\";s:5:\"label\";s:12:\"chat support\";}i:6;a:2:{s:5:\"value\";s:3:\"425\";s:5:\"label\";s:19:\"comments management\";}i:7;a:2:{s:5:\"value\";s:4:\"2443\";s:5:\"label\";s:13:\"Contact Forms\";}i:8;a:2:{s:5:\"value\";s:3:\"400\";s:5:\"label\";s:16:\"content creation\";}i:9;a:2:{s:5:\"value\";s:3:\"409\";s:5:\"label\";s:43:\"content distribution network (CDN) services\";}i:10;a:2:{s:5:\"value\";s:3:\"408\";s:5:\"label\";s:18:\"content management\";}i:11;a:2:{s:5:\"value\";s:2:\"67\";s:5:\"label\";s:25:\"cookie consent management\";}i:12;a:2:{s:5:\"value\";s:4:\"1336\";s:5:\"label\";s:22:\"creating online forums\";}i:13;a:2:{s:5:\"value\";s:3:\"412\";s:5:\"label\";s:14:\"creating polls\";}i:14;a:2:{s:5:\"value\";s:3:\"399\";s:5:\"label\";s:25:\"cross-channel advertising\";}i:15;a:2:{s:5:\"value\";s:3:\"413\";s:5:\"label\";s:28:\"customer identity management\";}i:16;a:2:{s:5:\"value\";s:4:\"1157\";s:5:\"label\";s:29:\"Customer Relations Management\";}i:17;a:2:{s:5:\"value\";s:3:\"405\";s:5:\"label\";s:27:\"customer support management\";}i:18;a:2:{s:5:\"value\";s:3:\"426\";s:5:\"label\";s:27:\"display of recent purchases\";}i:19;a:2:{s:5:\"value\";s:3:\"384\";s:5:\"label\";s:58:\"display of recent social posts and/or social share buttons\";}i:20;a:2:{s:5:\"value\";s:3:\"415\";s:5:\"label\";s:19:\"display of webfonts\";}i:21;a:2:{s:5:\"value\";s:3:\"410\";s:5:\"label\";s:31:\"heat maps and screen recordings\";}i:22;a:2:{s:5:\"value\";s:4:\"3410\";s:5:\"label\";s:38:\"learning management and course builder\";}i:23;a:2:{s:5:\"value\";s:3:\"401\";s:5:\"label\";s:17:\"locale management\";}i:24;a:2:{s:5:\"value\";s:3:\"387\";s:5:\"label\";s:26:\"mailing list subscriptions\";}i:25;a:2:{s:5:\"value\";s:3:\"385\";s:5:\"label\";s:12:\"maps display\";}i:26;a:2:{s:5:\"value\";s:3:\"395\";s:5:\"label\";s:48:\"marketing automation (automated email marketing)\";}i:27;a:2:{s:5:\"value\";s:4:\"1335\";s:5:\"label\";s:19:\"online appointments\";}i:28;a:2:{s:5:\"value\";s:3:\"407\";s:5:\"label\";s:12:\"page caching\";}i:29;a:2:{s:5:\"value\";s:3:\"163\";s:5:\"label\";s:30:\"page loading speed improvement\";}i:30;a:2:{s:5:\"value\";s:3:\"161\";s:5:\"label\";s:18:\"payment processing\";}i:31;a:2:{s:5:\"value\";s:3:\"419\";s:5:\"label\";s:14:\"popup creation\";}i:32;a:2:{s:5:\"value\";s:3:\"397\";s:5:\"label\";s:30:\"providing social share buttons\";}i:33;a:2:{s:5:\"value\";s:4:\"2016\";s:5:\"label\";s:18:\"push notifications\";}i:34;a:2:{s:5:\"value\";s:3:\"411\";s:5:\"label\";s:11:\"remarketing\";}i:35;a:2:{s:5:\"value\";s:3:\"423\";s:5:\"label\";s:26:\"Search Engine Optimization\";}i:36;a:2:{s:5:\"value\";s:3:\"404\";s:5:\"label\";s:16:\"search functions\";}i:37;a:2:{s:5:\"value\";s:3:\"416\";s:5:\"label\";s:29:\"security and fraud prevention\";}i:38;a:2:{s:5:\"value\";s:3:\"398\";s:5:\"label\";s:22:\"showing advertisements\";}i:39;a:2:{s:5:\"value\";s:3:\"386\";s:5:\"label\";s:15:\"spam prevention\";}i:40;a:2:{s:5:\"value\";s:3:\"388\";s:5:\"label\";s:27:\"Statistics and optimization\";}i:41;a:2:{s:5:\"value\";s:3:\"178\";s:5:\"label\";s:13:\"video display\";}i:42;a:2:{s:5:\"value\";s:3:\"406\";s:5:\"label\";s:16:\"visitor tracking\";}i:43;a:2:{s:5:\"value\";s:4:\"1131\";s:5:\"label\";s:16:\"weather forecast\";}i:44;a:2:{s:5:\"value\";s:3:\"427\";s:5:\"label\";s:8:\"webforms\";}i:45;a:2:{s:5:\"value\";s:3:\"420\";s:5:\"label\";s:18:\"webshop management\";}i:46;a:2:{s:5:\"value\";s:3:\"421\";s:5:\"label\";s:23:\"website admin functions\";}i:47;a:2:{s:5:\"value\";s:3:\"403\";s:5:\"label\";s:14:\"website design\";}i:48;a:2:{s:5:\"value\";s:3:\"424\";s:5:\"label\";s:19:\"website development\";}i:49;a:2:{s:5:\"value\";s:3:\"414\";s:5:\"label\";s:15:\"website hosting\";}i:50;a:2:{s:5:\"value\";s:3:\"417\";s:5:\"label\";s:13:\"website menus\";}i:51;a:2:{s:5:\"value\";s:3:\"164\";s:5:\"label\";s:32:\"website performance optimization\";}i:52;a:2:{s:5:\"value\";s:3:\"162\";s:5:\"label\";s:18:\"website statistics\";}}', 'off'),
(856, 'cmplz_last_cookie_sync', '1729781733', 'auto'),
(857, 'cmplz_sync_cookies_complete', '1', 'off'),
(860, 'cmplz_documents_update_date', '1721820541', 'auto'),
(861, 'cmplz_publish_date', '1721820541', 'auto'),
(862, 'complianz_active_policy_id', '22', 'auto'),
(891, 'cmplz_wizard_completed_once', '1', 'auto'),
(932, 'acf_site_health', '{\"version\":\"6.3.12\",\"plugin_type\":\"PRO\",\"update_source\":\"ACF Direct\",\"activated\":true,\"activated_url\":\"https:\\/\\/studiomoco.de\",\"license_type\":\"Developer\",\"license_status\":\"active\",\"subscription_expires\":\"\",\"wp_version\":\"6.7.2\",\"mysql_version\":\"10.11.11-MariaDB-hetzner1\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Moco Theme\",\"version\":\"1.0.0\",\"theme_uri\":\"https:\\/\\/studiomoco.net\\/\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields-pro\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.3.12\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"complianz-gdpr\\/complianz-gpdr.php\":{\"name\":\"Complianz | GDPR\\/CCPA Cookie Consent\",\"version\":\"7.3.1\",\"plugin_uri\":\"https:\\/\\/www.wordpress.org\\/plugins\\/complianz-gdpr\"},\"worker\\/init.php\":{\"name\":\"ManageWP - Worker\",\"version\":\"4.9.20\",\"plugin_uri\":\"https:\\/\\/managewp.com\"},\"seo-by-rank-math\\/rank-math.php\":{\"name\":\"Rank Math SEO\",\"version\":\"1.0.240\",\"plugin_uri\":\"https:\\/\\/rankmath.com\\/\"}},\"ui_field_groups\":\"15\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"text\":40,\"image\":13,\"textarea\":13},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"7\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1743426307}', 'off'),
(948, 'mwp_service_key', 'd1a0cca7-e461-4297-a8e4-8ae7b73c865c', 'on'),
(951, 'mwp_openssl_parameters', 'a:2:{s:4:\"time\";i:1743520938;s:7:\"working\";b:1;}', 'on'),
(952, 'mwp_incremental_update_active', '', 'auto'),
(959, 'worker_migration_version', '2', 'yes'),
(965, 'mwp_public_keys_refresh_time', '1743513329', 'on'),
(966, 'mwp_public_keys', 'a:9:{i:0;a:6:{s:2:\"id\";s:19:\"managewp_1741053901\";s:7:\"service\";s:8:\"managewp\";s:9:\"validFrom\";s:19:\"2025-03-19 01:26:15\";s:7:\"validTo\";s:19:\"2025-04-20 01:26:15\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA47rcbf1bx0ebDpuQ5/Zq\nOqyvb9qOhMv4wtQ6Zp626c/H9as2N3n1ZaeEkzup0owAw1wbJQ0nUtyIyejsUny0\nS5Y6OcT6CJi0UfoluRaQfk3NMzqXnqjS/NpLa4dgBMyD3bQz6+kFEHQKWLzhWnLd\nchlHW1gXZeDbr0Kg/rsieWnanzpyTq9VaP0MBh61lc+we+ONSMO/D9ehF+xsCXGm\nHiIL51tyc++OG34FVDFnlhV9coCajeeVclDYiFfBqjPvuMJSE3gsiK1s90fuhdIa\nfDhVrHwukLFPl+7DulvrXYzq0SVqKF24S1XDoYIPoHC8JHImit8yCj8THQFhWgDO\npQIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:0;}i:1;a:6:{s:2:\"id\";s:23:\"managewp_dev_1741053902\";s:7:\"service\";s:12:\"managewp_dev\";s:9:\"validFrom\";s:19:\"2025-03-19 01:26:15\";s:7:\"validTo\";s:19:\"2025-04-20 01:26:15\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuSrVvPiZbFot3FyRx5K/\nRZIWxQX96pngTx3rdVQ3Jm+HyQ/Rsx7Cx+11uQY0fo4hE0Q7H+BitxJ/bl6YGFKt\ni0rPBha+o9rOYJ7Huj2tTP3sMIn+MX60UO+e+nPLtQpY3wSkA6sxRhe8tqfzQSjH\n7OaJO45mlQ+xszkbYbVizlrw8SrY+rQdUXcUZgydyNYsdEsePlVHZLbawSN3qs2d\nIykhcKYiK2EUf1BnrA1DKB2wnh1PW4ag22JC40k1s11zC+mBZocthu92U40lcf/6\nQSJVZtbu6xSeIurXrtgmJUaPW3G14PjBjkz6z0vdTNnhv/mZFP8lRrBzTAvaXUqX\n5QIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:0;}i:2;a:6:{s:2:\"id\";s:16:\"mwp20_1741053902\";s:7:\"service\";s:5:\"mwp20\";s:9:\"validFrom\";s:19:\"2025-03-19 01:26:15\";s:7:\"validTo\";s:19:\"2025-04-20 01:26:15\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwRxhVkF5qc6tQbomQgdg\nDBrbNMl38JAAHJGpeQkU1O6wT9lAjUlQw8KtWbOwmIokcnePefeYRZcqxmzqHoMC\nHA4y6zDvXrCKyCiRbRYwDxJvdNmakVDC4VFSYg8RzRQRsvuuKTqa4na2XeLgnCpe\nmS42lxP0cUPLCPW31pc8mHdcxN/dkSH/YjTVnXLT/aK3eYL+GeJ6MlS2ERYc5JhO\nAuevIDzZLojRFOUVlLpT0/2/rQV4MoOJWXakww8i0rUXM/iTt1uaXl5Bn1Ge8vC4\nJE2R2Bpcj7Dvztk+4kkVOBp9ojlpdytfE7lCqTyhpojv7hEDJc6gv8zpQMIp7pj/\nEQIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:3;a:6:{s:2:\"id\";s:15:\"wpps_1740661502\";s:7:\"service\";s:4:\"wpps\";s:9:\"validFrom\";s:19:\"2025-03-14 13:05:01\";s:7:\"validTo\";s:19:\"2025-04-15 13:05:01\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxWJQ830+1fNG/XLSj0l+\nq+Eb+Yseeesk7117UYc3sn+kckz+iKQ1f6HIyfQ6em52gJNO2IceM2sIMIMNz9sK\nx1nvL/k1Smja8AuoLJW7vgFttPr66ESGoSAwYY1+zuVXx9ySuXQTJrXbO46nuNqm\nc5N+SDT9rbO4+MuxEMetJP3gCgChJytxtC0W8jvcTqjANT2KVl7iFcwU/Yc3HS2I\nrWNbP+WVCu2qLXC/8vf77cJy2plKKJkOeTbQCOE+zC3y3RLw7VZp0sEYiGtSRWOJ\ngFaSlZQrYC7qPyoCKN2jnZ0PXguZBGvGRwQ5rpEDl5VwmSHrbzoM919koZV+4YYq\n4QIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:4;a:6:{s:2:\"id\";s:15:\"wpps_1743253502\";s:7:\"service\";s:4:\"wpps\";s:9:\"validFrom\";s:19:\"2025-04-13 13:05:01\";s:7:\"validTo\";s:19:\"2025-05-15 13:05:01\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtDnN94gU0458xbiFdmRL\nyXdK0elsQz0E3XWreJ3BF0d+61QWyQZg4LBXDnVLyt/x0+cx9tb7Ah8/NRCdd99t\nVJAfecdUTQS1pwRCbeUlMKmtcbFvVu2p2rbNR9HiKjkmbj2PKr6Orwa0sMKcYdIV\nWSb7juxfXllZVH96UOnVxB/IEb7BdLL8OIBjVzRJDSKBIKNiiossTS08LvOI5TQk\niVdH8X/RMwByij9CgSAe2OgOBClwqZvHj9wlzZQhvITTFkzZmpvN/uIMh4ZZWG+B\nZoxmFktAkcu2rH+qjNe/mqF7p3QJtPOZhpv7k2OTM4MaiYnv/KM38cLZyVN+I65c\nfQIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:5;a:6:{s:2:\"id\";s:25:\"cookie_service_1741885502\";s:7:\"service\";s:14:\"cookie_service\";s:9:\"validFrom\";s:19:\"2025-03-28 16:27:25\";s:7:\"validTo\";s:19:\"2025-04-29 16:27:25\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnms+IUAh9S3y2+0P25dF\n8MzUsUIm3LQje/U2slKWhqrUpTaHQq9s3ohroHI5+lM+yH94PIUnZdEHi9ROj0E6\nyd8uzcQwjcsrfZPXPMQ1FpTHFiSVMVSck4VPlo5inLQ/9DKMfl5bmauzZleXKvUN\nr6CBhKIs7+fFYpHkNTUe32VRFXk/2V5ZA9ZUOofzwzbOF8BRSn+SDop43740jJ4v\nTEWnSC5Ap7ga4uUFdBp13owNuQm4sG4jzUWYt++9qZhP71zd8IutWdVJsqJGjCJ0\nC4fiyYfCkZsBqrWjk7vBnhKhpkufdo/tg1/1LVt8juiJmG1ebA5b/TL6nC2Qp9PE\nBQIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:6;a:6:{s:2:\"id\";s:15:\"mwp1_1740751502\";s:7:\"service\";s:4:\"mwp1\";s:9:\"validFrom\";s:19:\"2025-03-15 14:05:01\";s:7:\"validTo\";s:19:\"2025-04-16 14:05:01\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAj8nyY8ewc2NrDHxcw3Mq\nun2nwXkRJ1pj4I4aOPRIV11Qt3UY0x+ZaOUEyXsP+jgF1IFniYzwjDVbKvn4qmq9\niHL52AL5HInx+V7Ay8vLWzG8Tm5kmbS9vYQ3q9bkFHINUgf52fJMkCx+YSgQ3c7X\nUaINoHY1dOwulx7O8Pyx9+2HxaCpavoYknf9VXD3OaRhr4xV5t3lj9k8JPgCqbdh\ngg4Yq7lvFmjfybadifxKhz7pT/XAOYAn/t1TEloyJ0ueVrJLdlTC3nWv0kmLiwew\nC7lE1qFQDa3875nCNTtraHwF9PnLnA6wZ3sJGcxiG3uiJA9pZGM6X0hF42XXsVDR\nTQIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:7;a:6:{s:2:\"id\";s:15:\"mwp1_1743343501\";s:7:\"service\";s:4:\"mwp1\";s:9:\"validFrom\";s:19:\"2025-04-14 14:05:01\";s:7:\"validTo\";s:19:\"2025-05-16 14:05:01\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0TZlVpQIYz9mrY5yazpQ\njIuhOjq1F0g0JAL5i0PJumw1TFEz1IaqnGItNM7DyWx9qmlHSVuw57pG2gyrMRlI\ngeuT+Xh4Zcs4posqvVzxza5Hf2qEvcHF1daWXGl2lZrfTHZIF5JcnoTV5VCsZFc/\nGPkH5rLKI67xf8oi6Ole4Zn/ATlFxwE3wlQfb/XxiH0GV5ugfz977lOKq/IOkjfq\nPg6hcmrsNS3CFB32W9t2BQxmUTGh6aUOLzV5QOT83kSUqvMPhngGPnu5x/gPOVQf\nR5lo932WSYGhFRdM8012S6MeA/cTBSm7OZ9dRrg/qcwZ+DvGiKSVUCk/GbHPVTa8\nxQIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:8;a:6:{s:2:\"id\";s:20:\"migration_1741010702\";s:7:\"service\";s:9:\"migration\";s:9:\"validFrom\";s:19:\"2025-03-18 13:05:02\";s:7:\"validTo\";s:19:\"2025-04-19 13:05:02\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkt0YQjQZRro0O7O/SdYW\n+qepad6A6/67a+9AEEjApyqN9QHLh5i7PlGcqB4JNK3H/cY8eROcIudE6qp8vx4g\nkVnzjgEsm7MCQxrFp/ngpgWT0mtyr0JvykmP3KB0yLIKu9LbxKgrAe+ihXlgGnmV\npA5A1WRTA0ro0VTKuqN3tCLGkrzds1LQdQ+2w7WstoKUt6O//MgZ7UEIxX979thS\nK5eD+K3Y15mZD6MUGlkGXJwtey7BAc+XlAwX4m9pDIeEdbiO0/XviPxPzprPtSpj\nwEE+geyN1ZLANHxlxfmfI2EUXAFzDDz1f6DkQp2op/zAuf7ysQdUhv84rjQFSOIc\n6QIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}}', 'on'),
(969, 'mwp_communication_keys', 'a:1:{i:15166169;a:2:{s:3:\"key\";s:36:\"2d6dde02-4db5-4dcd-b618-e27341b77597\";s:5:\"added\";i:1742502866;}}', 'on'),
(970, 'mwp_key_last_used_03f4f301-5a8a-4719-a816-2d2a63f674c3', '1739168459', 'on'),
(971, 'mmb_stats_filter', 'a:1:{s:7:\"plugins\";a:1:{s:7:\"cleanup\";a:1:{s:9:\"revisions\";a:1:{s:11:\"num_to_keep\";i:5;}}}}', 'auto'),
(974, 'mwp_key_last_used_15166169', '1743584825', 'on'),
(975, 'mwp_new_communication_established', '1', 'on'),
(1000, 'user_hit_count', 'a:60:{s:10:\"2025-02-02\";i:98;s:10:\"2025-02-03\";i:287;s:10:\"2025-02-04\";i:143;s:10:\"2025-02-05\";i:145;s:10:\"2025-02-06\";i:236;s:10:\"2025-02-07\";i:206;s:10:\"2025-02-08\";i:108;s:10:\"2025-02-09\";i:254;s:10:\"2025-02-10\";i:312;s:10:\"2025-02-11\";i:221;s:10:\"2025-02-12\";i:381;s:10:\"2025-02-13\";i:214;s:10:\"2025-02-14\";i:341;s:10:\"2025-02-15\";i:91;s:10:\"2025-02-16\";i:105;s:10:\"2025-02-17\";i:273;s:10:\"2025-02-18\";i:141;s:10:\"2025-02-19\";i:339;s:10:\"2025-02-20\";i:147;s:10:\"2025-02-21\";i:763;s:10:\"2025-02-22\";i:267;s:10:\"2025-02-23\";i:264;s:10:\"2025-02-24\";i:340;s:10:\"2025-02-25\";i:431;s:10:\"2025-02-26\";i:305;s:10:\"2025-02-27\";i:271;s:10:\"2025-02-28\";i:350;s:10:\"2025-03-01\";i:244;s:10:\"2025-03-02\";i:373;s:10:\"2025-03-03\";i:195;s:10:\"2025-03-04\";i:457;s:10:\"2025-03-05\";i:230;s:10:\"2025-03-06\";i:363;s:10:\"2025-03-07\";i:187;s:10:\"2025-03-08\";i:134;s:10:\"2025-03-09\";i:158;s:10:\"2025-03-10\";i:331;s:10:\"2025-03-11\";i:239;s:10:\"2025-03-12\";i:364;s:10:\"2025-03-13\";i:125;s:10:\"2025-03-14\";i:234;s:10:\"2025-03-15\";i:167;s:10:\"2025-03-16\";i:577;s:10:\"2025-03-17\";i:280;s:10:\"2025-03-18\";i:290;s:10:\"2025-03-19\";i:266;s:10:\"2025-03-20\";i:134;s:10:\"2025-03-21\";i:594;s:10:\"2025-03-22\";i:841;s:10:\"2025-03-23\";i:365;s:10:\"2025-03-24\";i:454;s:10:\"2025-03-25\";i:670;s:10:\"2025-03-26\";i:160;s:10:\"2025-03-27\";i:169;s:10:\"2025-03-28\";i:225;s:10:\"2025-03-29\";i:522;s:10:\"2025-03-30\";i:418;s:10:\"2025-03-31\";i:92;s:10:\"2025-04-01\";i:316;s:10:\"2025-04-02\";i:85;}', 'on'),
(1003, 'mwp_link_monitor_enabled', '1', 'auto'),
(1309, 'cmplz_sync_services_complete', '1', 'off'),
(1583, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":3,\"critical\":1}', 'on'),
(1651, 'cmplz_sync_cookies_after_services_complete', '1', 'off'),
(1656, 'cmplz_privacy-statement_custom_page_url', 'https://studiomoco.de/datenschutz/', 'auto'),
(1662, 'cmplz_impressum_custom_page_url', 'https://studiomoco.de/impressum/', 'auto'),
(1670, 'cmplz_privacy-statement_custom_page', '24', 'auto'),
(1671, 'cmplz_impressum_custom_page', '22', 'auto'),
(1783, 'complianz_options_custom-scripts', 'a:3:{s:12:\"block_script\";a:1:{i:0;a:10:{s:6:\"enable\";b:0;s:4:\"name\";s:8:\"Beispiel\";s:4:\"urls\";a:1:{i:0;s:25:\"https://block-example.com\";}s:8:\"category\";s:9:\"marketing\";s:18:\"enable_placeholder\";b:1;s:6:\"iframe\";b:1;s:17:\"placeholder_class\";s:14:\"your-css-class\";s:11:\"placeholder\";s:7:\"default\";s:17:\"enable_dependency\";b:1;s:10:\"dependency\";a:0:{}}}s:10:\"add_script\";a:1:{i:0;a:10:{s:6:\"enable\";b:0;s:4:\"name\";s:8:\"Beispiel\";s:4:\"urls\";a:0:{}s:8:\"category\";s:9:\"marketing\";s:18:\"enable_placeholder\";b:1;s:6:\"iframe\";b:0;s:17:\"placeholder_class\";s:14:\"your-css-class\";s:11:\"placeholder\";s:7:\"default\";s:6:\"editor\";s:36:\"console.log(\"fire marketing script\")\";s:5:\"async\";b:0;}}s:16:\"whitelist_script\";a:1:{i:0;a:3:{s:6:\"enable\";b:0;s:4:\"name\";s:8:\"Beispiel\";s:4:\"urls\";a:1:{i:0;s:25:\"https://block-example.com\";}}}}', 'auto'),
(2330, '_wp_suggested_policy_text_has_changed', 'not-changed', 'off'),
(15502, 'cmplz_excluded_posts_array', 'a:0:{}', 'auto'),
(40149, 'mwp_last_communication_error', 'Unexpected: service signature or key name are empty. Key name: , Signature: ', 'on'),
(62718, 'cmplz_synced_cookiedatabase_once', '1', 'auto'),
(69749, 'cmplz_transients', 'a:21:{s:36:\"cmplz_shortcode_privacy-statement-eu\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:35:\"cmplz_shortcode_cookie-statement-us\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:36:\"cmplz_shortcode_privacy-statement-us\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:35:\"cmplz_shortcode_cookie-statement-uk\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:36:\"cmplz_shortcode_privacy-statement-uk\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:35:\"cmplz_shortcode_cookie-statement-ca\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:36:\"cmplz_shortcode_privacy-statement-ca\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:35:\"cmplz_shortcode_cookie-statement-au\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:36:\"cmplz_shortcode_privacy-statement-au\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:35:\"cmplz_shortcode_cookie-statement-za\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:36:\"cmplz_shortcode_privacy-statement-za\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:35:\"cmplz_shortcode_cookie-statement-br\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:36:\"cmplz_shortcode_privacy-statement-br\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:29:\"cmplz_shortcode_impressum-all\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1742506281;}s:26:\"cmplz_cookie_shredder_list\";a:2:{s:5:\"value\";a:0:{}s:7:\"expires\";i:1743602186;}s:35:\"cmplz_shortcode_cookie-statement-eu\";a:2:{s:5:\"value\";s:3:\"228\";s:7:\"expires\";i:1743712688;}s:45:\"cmplz_shortcode_privacy-statement-children-eu\";a:2:{s:5:\"value\";s:4:\"none\";s:7:\"expires\";i:1743583051;}s:23:\"cmplz_default_banner_id\";a:2:{s:5:\"value\";s:1:\"1\";s:7:\"expires\";i:1743600700;}s:19:\"cmplz_min_banner_id\";a:2:{s:5:\"value\";s:1:\"1\";s:7:\"expires\";i:1743600700;}s:18:\"page_links_1_de_DE\";a:2:{s:5:\"value\";a:7:{s:2:\"eu\";a:3:{s:16:\"cookie-statement\";a:2:{s:5:\"title\";s:18:\"Cookie-Richtlinie \";s:3:\"url\";s:43:\"https://studiomoco.de/cookie-richtlinie-eu/\";}s:17:\"privacy-statement\";a:2:{s:5:\"title\";s:11:\"Datenschutz\";s:3:\"url\";s:34:\"https://studiomoco.de/datenschutz/\";}s:9:\"impressum\";a:2:{s:5:\"title\";s:9:\"Impressum\";s:3:\"url\";s:32:\"https://studiomoco.de/impressum/\";}}s:2:\"us\";a:1:{s:9:\"impressum\";a:2:{s:5:\"title\";s:9:\"Impressum\";s:3:\"url\";s:32:\"https://studiomoco.de/impressum/\";}}s:2:\"uk\";a:1:{s:9:\"impressum\";a:2:{s:5:\"title\";s:9:\"Impressum\";s:3:\"url\";s:32:\"https://studiomoco.de/impressum/\";}}s:2:\"ca\";a:1:{s:9:\"impressum\";a:2:{s:5:\"title\";s:9:\"Impressum\";s:3:\"url\";s:32:\"https://studiomoco.de/impressum/\";}}s:2:\"au\";a:1:{s:9:\"impressum\";a:2:{s:5:\"title\";s:9:\"Impressum\";s:3:\"url\";s:32:\"https://studiomoco.de/impressum/\";}}s:2:\"za\";a:1:{s:9:\"impressum\";a:2:{s:5:\"title\";s:9:\"Impressum\";s:3:\"url\";s:32:\"https://studiomoco.de/impressum/\";}}s:2:\"br\";a:1:{s:9:\"impressum\";a:2:{s:5:\"title\";s:9:\"Impressum\";s:3:\"url\";s:32:\"https://studiomoco.de/impressum/\";}}}s:7:\"expires\";i:1743597700;}s:21:\"cmplz_blocked_scripts\";a:2:{s:5:\"value\";a:2:{s:21:\"google.maps.MapTypeId\";a:9:{s:4:\"name\";s:15:\"acf-custom-maps\";s:18:\"enable_placeholder\";s:1:\"1\";s:11:\"placeholder\";s:11:\"google-maps\";s:8:\"category\";s:9:\"marketing\";s:4:\"urls\";a:2:{i:0;s:21:\"google.maps.MapTypeId\";i:1;s:31:\"maps.googleapis.com/maps/api/js\";}s:6:\"enable\";i:1;s:17:\"enable_dependency\";s:1:\"1\";s:10:\"dependency\";a:1:{s:31:\"maps.googleapis.com/maps/api/js\";s:21:\"google.maps.MapTypeId\";}s:17:\"placeholder_class\";s:7:\"acf-map\";}s:31:\"maps.googleapis.com/maps/api/js\";a:9:{s:4:\"name\";s:15:\"acf-custom-maps\";s:18:\"enable_placeholder\";s:1:\"1\";s:11:\"placeholder\";s:11:\"google-maps\";s:8:\"category\";s:9:\"marketing\";s:4:\"urls\";a:2:{i:0;s:21:\"google.maps.MapTypeId\";i:1;s:31:\"maps.googleapis.com/maps/api/js\";}s:6:\"enable\";i:1;s:17:\"enable_dependency\";s:1:\"1\";s:10:\"dependency\";a:1:{s:31:\"maps.googleapis.com/maps/api/js\";s:21:\"google.maps.MapTypeId\";}s:17:\"placeholder_class\";s:7:\"acf-map\";}}s:7:\"expires\";i:1743600056;}}', 'auto'),
(69836, 'wp-piwik_global-set_download_extensions', '', 'auto'),
(69837, 'wp-piwik_global-set_link_classes', '', 'auto'),
(69838, 'wp-piwik_global-set_download_classes', '', 'auto'),
(69839, 'wp-piwik_global-require_consent', 'disabled', 'auto'),
(69845, 'wp-piwik_global-track_heartbeat', '0', 'auto'),
(69846, 'wp-piwik_global-track_user_id', 'disabled', 'auto'),
(69848, 'wp-piwik_global-http_connection', 'curl', 'auto'),
(69849, 'wp-piwik_global-http_method', 'post', 'auto'),
(69850, 'wp-piwik_global-filter_limit', '', 'auto'),
(69857, 'wp-piwik_global-update_notice', 'enabled', 'auto'),
(69871, 'wp-piwik_global-stats_ecommerce', '0', 'auto'),
(69873, 'wp-piwik_global-dashboard_ecommerce', '0', 'auto'),
(69895, 'wp-piwik_global-dnsprefetch', '0', 'auto'),
(69897, 'wp-piwik_global-remove_type_attribute', '0', 'auto'),
(69901, 'cmplz_review_notice_shown', '1', 'off'),
(69904, 'rank_math_already_reviewed', '1730335474', 'auto'),
(69905, 'rank_math_review_notice_delayed', '1', 'off'),
(69907, 'rank_math_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:912:\"<p><strong>Ranke mit deinen Inhalten mit der Kraft von PRO und A.I.</strong></p><p><ul>\n								<li>Unbegrenzte Websites</li>\n								<li>Inhalt A.I. (Künstliche Intelligenz)</li>\n								<li>Schlüsselwort-Rank-Tracker</li>\n								<li>Leistungsstarker Schema-Generator</li>\n								<li>24x7 Premium Support</li>\n								<li>SEO-E-Mail-Berichte</li>\n								<li>und vieles mehr…</li>\n							</ul><p>\n						<a href=\"https://rankmath.com/pricing/?utm_source=Plugin&utm_medium=Upgrade%20Notice%201%20New%20Yes&utm_campaign=WP\" class=\"button rank-math-dismiss-pro-notice rank-math-upgrade-action\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Ja, ich will besseres SEO</strong></a><a href=\"#\" class=\"rank-math-dismiss-pro-notice rank-math-maybe-later-action\">Nein, vielleicht später</a><a href=\"#\" class=\"rank-math-dismiss-pro-notice rank-math-already-upgraded-action\">Ich habe bereits gekauft</a>\n					</p>\";s:7:\"options\";a:5:{s:2:\"id\";s:20:\"rank_math_pro_notice\";s:7:\"classes\";s:16:\"rank-math-notice\";s:4:\"type\";s:4:\"info\";s:6:\"screen\";s:3:\"any\";s:10:\"capability\";s:15:\"install_plugins\";}}}', 'auto'),
(69909, 'rank_math_pro_notice_added', '1', 'off'),
(71113, 'cmplz_dismissed_warnings', 'a:1:{i:0;s:13:\"upgraded_to_6\";}', 'auto'),
(81022, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"cf1b266f2aca120462999fb136200da0\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(86635, 'can_compress_scripts', '1', 'on'),
(112153, 'rank_math_sitemap_cache_files', 'a:7:{s:46:\"rank_math_715e49ca4ff88d37f995131f7e2498d9.xml\";s:1:\"1\";s:46:\"rank_math_71e1893823f2632644060a55acadfa76.xml\";s:10:\"case-study\";s:46:\"rank_math_656a3ea2960b8f045679e05264db015f.xml\";s:4:\"page\";s:46:\"rank_math_feee76c512f69a1fa217e652a7b6249f.xml\";s:4:\"post\";s:46:\"rank_math_d86451fff0d67d6f13f941c645fca247.xml\";s:13:\"customer-logo\";s:46:\"rank_math_37828976fe8ad97aa60fdaa55007d890.xml\";s:8:\"category\";s:46:\"rank_math_8e01b55230fd3741a5356a8297e7ce92.xml\";s:12:\"testimonials\";}', 'auto'),
(149123, 'cmplz_wsc_onboarding_status', 'a:3:{s:5:\"terms\";b:0;s:10:\"newsletter\";b:0;s:7:\"plugins\";b:0;}', 'off'),
(161039, '_transient_timeout_cmplz_processed_pages_list', '1745094672', 'off'),
(161040, '_transient_cmplz_processed_pages_list', 'a:9:{i:0;s:4:\"home\";i:1;s:6:\"remote\";i:2;i:22;i:3;i:159;i:4;i:157;i:5;i:20;i:6;s:2:\"20\";i:7;i:156;i:8;i:155;}', 'off'),
(191275, 'cmplz_wsc_onboarding_dismissed', '2', 'off'),
(191282, '_site_transient_timeout_link_monitor_posts', '1745745620', 'off'),
(191283, '_site_transient_link_monitor_posts', 'a:1:{i:0;s:3:\"244\";}', 'off'),
(191297, 'mwp_key_last_used_2c60b994-956d-46b4-8df8-742e68b93a71', '1741635961', 'on'),
(203358, '_transient_timeout_cmplz_pages_list', '1745094653', 'off'),
(203359, '_transient_cmplz_pages_list', 'a:5:{i:0;s:4:\"home\";i:1;s:6:\"remote\";i:2;i:20;i:3;i:156;i:4;i:155;}', 'off'),
(203363, 'cmplz_wsc_signup_status', 'disabled', 'auto'),
(203366, 'cmplz_wsc_checks_scan_createdAt', '1742502714792', 'off'),
(203371, '_transient_cmplz_wsc_checks_last_detections', 'a:1:{i:0;a:2:{s:5:\"block\";s:8:\"block_04\";s:4:\"args\";a:0:{}}}', 'on'),
(203372, 'cmplz_wsc_checks_last_mail_sent', '1742502741', 'off'),
(203401, 'mwp_recovering', '', 'auto'),
(203402, 'mwp_core_autoupdate', '', 'auto'),
(203403, 'mwp_container_parameters', 'a:0:{}', 'auto'),
(203404, 'mwp_container_site_parameters', 'a:0:{}', 'auto'),
(203405, 'mwp_maintenace_mode', 'a:0:{}', 'auto'),
(203406, '_worker_nossl_key', '', 'auto'),
(203407, '_worker_public_key', 'LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUE4YnA4bHcwbWdIV0M0aDQ3T0w5UApaeS9lY1psUkxqeHZML1RxK3RVb1kvRFNEY3lNVXdnT3V0K3BPRjQzZ3A2MGxxWldhdkhadWtkT0FhZnJ5NlJ5Cll5L1ZFT2VSWGJkYmc1b1pKeVNZRXZtQm1KVnVCcGpKN2p6dDBibzNtc1BIcDFqTXlFQXFwQm9lbXowMGpvNTUKOEdKNWx2RzdyQjVISEE3cC83ZVhBMlcvWExldUtmTUxpUFcwV2FpSkRiVkRBZU9QNURyOWFRbnlQKzgrSTdDTAp3NGFWc0p2RzN5eWQ4dFVIWmpONTdISm0zelJKdXJpU0o0S0swYXZwRzdHWHNhL1FxTHc0WDlsbXhEREFVaDRwClpCd0xwdUlFbmRqc01EVVNTNGVqYm8zNmZyVzlYM3FleUVlWE9IMUlUemRGMXNBYUhKeUdKbzV3b2dOUVNlZmMKd3dJREFRQUIKLS0tLS1FTkQgUFVCTElDIEtFWS0tLS0tCg==', 'on'),
(203408, 'mwp_worker_configuration', 'a:9:{s:10:\"master_url\";s:21:\"https://managewp.com/\";s:15:\"master_cron_url\";s:75:\"https://managewp.com/wp-content/plugins/master/mwp-notifications-handle.php\";s:20:\"noti_cache_life_time\";s:5:\"86400\";s:27:\"noti_treshold_spam_comments\";s:2:\"10\";s:30:\"noti_treshold_pending_comments\";s:1:\"0\";s:31:\"noti_treshold_approved_comments\";s:1:\"0\";s:19:\"noti_treshold_posts\";s:1:\"0\";s:20:\"noti_treshold_drafts\";s:1:\"0\";s:8:\"key_name\";s:8:\"managewp\";}', 'auto'),
(203411, 'mwp_key_last_used_2d6dde02-4db5-4dcd-b618-e27341b77597', '1742502866', 'on'),
(203412, 'mwp_potential_key', '7ceef682-8158-4771-9435-d7ebee52001d', 'on'),
(203413, 'mwp_potential_key_time', '1743544955', 'on'),
(203427, 'action_scheduler_migration_status', 'complete', 'auto'),
(203428, 'as_has_wp_comment_logs', 'no', 'on'),
(209051, '_site_transient_timeout_php_check_a0b03c46dbe37253c3391e32a7bb296f', '1743585455', 'off'),
(209052, '_site_transient_php_check_a0b03c46dbe37253c3391e32a7bb296f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(215345, '_transient_timeout_acf_plugin_updates', '1743585637', 'off'),
(215346, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:0:{}s:9:\"no_update\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20250121\";s:6:\"reason\";s:10:\"up_to_date\";}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"6.3.12\";}}', 'off'),
(217496, '_site_transient_timeout_n_179c65gb6gl2r8bayt0joi4zjte47anh9b7kbb', '1743654708', 'off'),
(217497, '_site_transient_n_179c65gb6gl2r8bayt0joi4zjte47anh9b7kbb', '1743568307', 'off'),
(217498, '_site_transient_timeout_n_et7wdjp9frbfcjxpeziyl82jz259966pzmsufo', '1743654708', 'off'),
(217499, '_site_transient_n_et7wdjp9frbfcjxpeziyl82jz259966pzmsufo', '1743568308', 'off'),
(218126, '_site_transient_timeout_n_603bac2295c7beb89ff4128a9cef4d1783e55c', '1743671225', 'off'),
(218127, '_site_transient_n_603bac2295c7beb89ff4128a9cef4d1783e55c', '1743584824', 'off'),
(218156, '_site_transient_timeout_theme_roots', '1743587208', 'off'),
(218157, '_site_transient_theme_roots', 'a:2:{s:10:\"moco_theme\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";}', 'off');
INSERT INTO `mc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(218160, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/de_DE/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"de_DE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/de_DE/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1743585412;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(218161, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743585413;s:7:\"checked\";a:2:{s:10:\"moco_theme\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.1.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}}', 'off'),
(218164, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743585413;s:8:\"response\";a:2:{s:33:\"complianz-gdpr/complianz-gpdr.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/complianz-gdpr\";s:4:\"slug\";s:14:\"complianz-gdpr\";s:6:\"plugin\";s:33:\"complianz-gdpr/complianz-gpdr.php\";s:11:\"new_version\";s:5:\"7.4.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/complianz-gdpr/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/complianz-gdpr.7.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/complianz-gdpr/assets/icon-256x256.png?rev=2881064\";s:2:\"1x\";s:67:\"https://ps.w.org/complianz-gdpr/assets/icon-128x128.png?rev=2881064\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/complianz-gdpr/assets/banner-1544x500.png?rev=2881064\";s:2:\"1x\";s:69:\"https://ps.w.org/complianz-gdpr/assets/banner-772x250.png?rev=2881064\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:30:\"seo-by-rank-math/rank-math.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:30:\"w.org/plugins/seo-by-rank-math\";s:4:\"slug\";s:16:\"seo-by-rank-math\";s:6:\"plugin\";s:30:\"seo-by-rank-math/rank-math.php\";s:11:\"new_version\";s:7:\"1.0.241\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/seo-by-rank-math/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/seo-by-rank-math.1.0.241.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=3218327\";s:3:\"svg\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=3218327\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/seo-by-rank-math/assets/banner-1544x500.png?rev=2639678\";s:2:\"1x\";s:71:\"https://ps.w.org/seo-by-rank-math/assets/banner-772x250.png?rev=2639678\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:15:\"worker/init.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:20:\"w.org/plugins/worker\";s:4:\"slug\";s:6:\"worker\";s:6:\"plugin\";s:15:\"worker/init.php\";s:11:\"new_version\";s:6:\"4.9.20\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/worker/\";s:7:\"package\";s:49:\"https://downloads.wordpress.org/plugin/worker.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:51:\"https://ps.w.org/worker/assets/icon.svg?rev=1015191\";s:3:\"svg\";s:51:\"https://ps.w.org/worker/assets/icon.svg?rev=1015191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/worker/assets/banner-1544x500.jpg?rev=2035974\";s:2:\"1x\";s:61:\"https://ps.w.org/worker/assets/banner-772x250.jpg?rev=2035974\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20250121\";s:6:\"reason\";s:10:\"up_to_date\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"6.3.12\";s:33:\"complianz-gdpr/complianz-gpdr.php\";s:5:\"7.3.1\";s:15:\"worker/init.php\";s:6:\"4.9.20\";s:30:\"seo-by-rank-math/rank-math.php\";s:7:\"1.0.240\";}}', 'off'),
(218308, '_site_transient_timeout_available_translations', '1743599207', 'off');
INSERT INTO `mc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(218309, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.9/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-11-01 09:05:28\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.5/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2024-12-26 00:37:42\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.26/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-01-12 07:32:34\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-20 08:42:35\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-29 14:26:16\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-11 08:34:45\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-04 15:09:31\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-28 14:09:21\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-11-05 18:11:40\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-04-02 01:49:04\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-04-02 01:47:32\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.7.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-11-05 18:08:14\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.7.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-03 07:45:57\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-22 11:02:17\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-11-08 19:43:34\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-11-14 20:17:10\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-25 15:37:15\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-12-15 22:47:35\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-11-12 00:03:39\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-18 15:16:11\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-12-09 22:28:42\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-10-16 21:04:12\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-04 14:46:26\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-22 16:30:18\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.8.10/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.16/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.21/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-05 15:56:22\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-02 23:11:20\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-01 20:26:01\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-26 16:06:47\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-01-30 10:07:14\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-14 17:29:08\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-21 11:24:25\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-12-12 22:29:22\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-25 21:16:32\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.6/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-01-29 23:44:41\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-27 06:35:56\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.33\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.33/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2025-02-06 05:17:11\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-01 09:14:16\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-13 12:24:50\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-01-31 11:29:26\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.26/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-20 11:01:52\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-07 13:30:47\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.26/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-01 06:53:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.21/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-11 19:32:39\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-27 00:11:53\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-22 19:22:33\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-25 04:09:28\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.7.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-13 13:11:03\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-13 10:34:12\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.9/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-20 16:41:38\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-15 06:59:18\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.15\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.38/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-01 17:56:33\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-30 11:32:23\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-20 09:36:13\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-25 20:59:35\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.7.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-30 20:03:24\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.25/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-15 16:20:12\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.34\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.34/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-11-22 09:42:36\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.7.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-25 12:07:35\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-06 01:20:04\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-04-01 10:29:34\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-24 17:37:53\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.16/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-10 11:39:57\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-21 09:44:08\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.6.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-08-30 07:14:35\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-01-30 10:26:38\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2024-09-20 22:15:56\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-03 17:00:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-02 07:29:05\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.38/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.10/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.25/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-14 00:21:51\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-03 01:12:45\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.16/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-23 02:18:04\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-02-12 08:54:01\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.7.2\";s:7:\"updated\";s:19:\"2025-03-26 06:53:42\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.7.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'off');
INSERT INTO `mc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(218489, '_site_transient_timeout_wp_theme_files_patterns-af36e2f842f3ff7edb2bd61c3e210137', '1743599806', 'off'),
(218490, '_site_transient_wp_theme_files_patterns-af36e2f842f3ff7edb2bd61c3e210137', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(218499, '_transient_timeout_cmplz_cookies', '1743598645', 'off'),
(218500, '_transient_cmplz_cookies', 'a:44:{i:0;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"1\";s:4:\"name\";s:23:\"wpEmojiSettingsSupports\";s:4:\"slug\";s:23:\"wpemojisettingssupports\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:7:\"session\";s:4:\"type\";s:12:\"localstorage\";s:9:\"serviceID\";s:1:\"1\";s:14:\"cookieFunction\";s:21:\"store browser details\";s:21:\"collectedPersonalData\";s:4:\"none\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:1;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"2\";s:4:\"name\";s:23:\"wpEmojiSettingsSupports\";s:4:\"slug\";s:23:\"wpemojisettingssupports\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:7:\"Sitzung\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"2\";s:14:\"cookieFunction\";s:25:\"speichere Browser-Angaben\";s:21:\"collectedPersonalData\";s:6:\"nichts\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:1:\"1\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:2;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"3\";s:4:\"name\";s:10:\"twk_uuid_*\";s:4:\"slug\";s:9:\"twk_uuid_\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1721820168\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:3;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"4\";s:4:\"name\";s:10:\"twk_uuid_*\";s:4:\"slug\";s:9:\"twk_uuid_\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:1:\"3\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1721820168\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:4;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"5\";s:4:\"name\";s:21:\"wordpress_test_cookie\";s:4:\"slug\";s:21:\"wordpress_test_cookie\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:7:\"session\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"1\";s:14:\"cookieFunction\";s:29:\"read if cookies can be placed\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:5;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"6\";s:4:\"name\";s:21:\"wordpress_test_cookie\";s:4:\"slug\";s:21:\"wordpress_test_cookie\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:7:\"Sitzung\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"2\";s:14:\"cookieFunction\";s:46:\"überprüft, ob Cookies gesetzt werden können\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:1:\"5\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:6;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"7\";s:4:\"name\";s:13:\"wp-settings-*\";s:4:\"slug\";s:11:\"wp-settings\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:10:\"persistent\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"1\";s:14:\"cookieFunction\";s:22:\"store user preferences\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:7;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"8\";s:4:\"name\";s:13:\"wp-settings-*\";s:4:\"slug\";s:11:\"wp-settings\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:10:\"beständig\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"2\";s:14:\"cookieFunction\";s:30:\"speicher die Benutzervorlieben\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:1:\"7\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:8;O:8:\"stdClass\":21:{s:2:\"ID\";s:1:\"9\";s:4:\"name\";s:18:\"wp-settings-time-*\";s:4:\"slug\";s:16:\"wp-settings-time\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:6:\"1 year\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"1\";s:14:\"cookieFunction\";s:22:\"store user preferences\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:9;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"10\";s:4:\"name\";s:18:\"wp-settings-time-*\";s:4:\"slug\";s:16:\"wp-settings-time\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:6:\"1 Jahr\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"2\";s:14:\"cookieFunction\";s:30:\"speicher die Benutzervorlieben\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:1:\"9\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:10;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"11\";s:4:\"name\";s:21:\"wordpress_logged_in_*\";s:4:\"slug\";s:20:\"wordpress_logged_in_\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:10:\"persistent\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"1\";s:14:\"cookieFunction\";s:21:\"Store logged in users\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:11;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"12\";s:4:\"name\";s:21:\"wordpress_logged_in_*\";s:4:\"slug\";s:20:\"wordpress_logged_in_\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:10:\"beständig\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"2\";s:14:\"cookieFunction\";s:26:\"Benutzer eingeloggt lassen\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"11\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721652871\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721652372\";}i:12;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"13\";s:4:\"name\";s:16:\"cmplz_functional\";s:4:\"slug\";s:16:\"cmplz_functional\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"3\";s:14:\"cookieFunction\";s:32:\"store cookie consent preferences\";s:21:\"collectedPersonalData\";s:4:\"none\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820165\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721653250\";}i:13;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"14\";s:4:\"name\";s:17:\"cmplz_preferences\";s:4:\"slug\";s:17:\"cmplz_preferences\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"3\";s:14:\"cookieFunction\";s:32:\"store cookie consent preferences\";s:21:\"collectedPersonalData\";s:4:\"none\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820165\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721653250\";}i:14;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"15\";s:4:\"name\";s:15:\"cmplz_marketing\";s:4:\"slug\";s:15:\"cmplz_marketing\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"3\";s:14:\"cookieFunction\";s:32:\"store cookie consent preferences\";s:21:\"collectedPersonalData\";s:4:\"none\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820165\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721653250\";}i:15;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"16\";s:4:\"name\";s:24:\"cmplz_consented_services\";s:4:\"slug\";s:24:\"cmplz_consented_services\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"3\";s:14:\"cookieFunction\";s:32:\"store cookie consent preferences\";s:21:\"collectedPersonalData\";s:4:\"none\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820165\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721653250\";}i:16;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"17\";s:4:\"name\";s:16:\"cmplz_functional\";s:4:\"slug\";s:16:\"cmplz_functional\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"4\";s:14:\"cookieFunction\";s:38:\"speichere Cookie-Einwilligungsvorgaben\";s:21:\"collectedPersonalData\";s:6:\"nichts\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"13\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820165\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721819442\";}i:17;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"18\";s:4:\"name\";s:17:\"cmplz_preferences\";s:4:\"slug\";s:17:\"cmplz_preferences\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"4\";s:14:\"cookieFunction\";s:38:\"speichere Cookie-Einwilligungsvorgaben\";s:21:\"collectedPersonalData\";s:6:\"nichts\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"14\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820165\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721819442\";}i:18;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"19\";s:4:\"name\";s:15:\"cmplz_marketing\";s:4:\"slug\";s:15:\"cmplz_marketing\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"4\";s:14:\"cookieFunction\";s:38:\"speichere Cookie-Einwilligungsvorgaben\";s:21:\"collectedPersonalData\";s:6:\"nichts\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"15\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820165\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721819442\";}i:19;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"20\";s:4:\"name\";s:24:\"cmplz_consented_services\";s:4:\"slug\";s:24:\"cmplz_consented_services\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"4\";s:14:\"cookieFunction\";s:38:\"speichere Cookie-Einwilligungsvorgaben\";s:21:\"collectedPersonalData\";s:6:\"nichts\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"16\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820165\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721819442\";}i:20;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"21\";s:4:\"name\";s:19:\"cmplz_banner-status\";s:4:\"slug\";s:19:\"cmplz_banner-status\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"3\";s:14:\"cookieFunction\";s:45:\"store if the cookie banner has been dismissed\";s:21:\"collectedPersonalData\";s:4:\"none\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820318\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721820166\";}i:21;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"22\";s:4:\"name\";s:19:\"cmplz_banner-status\";s:4:\"slug\";s:19:\"cmplz_banner-status\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"4\";s:14:\"cookieFunction\";s:45:\"store if the cookie banner has been dismissed\";s:21:\"collectedPersonalData\";s:6:\"nichts\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"21\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820318\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721820166\";}i:22;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"23\";s:4:\"name\";s:15:\"cmplz_policy_id\";s:4:\"slug\";s:15:\"cmplz_policy_id\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"3\";s:14:\"cookieFunction\";s:31:\"store accepted cookie policy ID\";s:21:\"collectedPersonalData\";s:4:\"none\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820318\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721820166\";}i:23;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"24\";s:4:\"name\";s:15:\"cmplz_policy_id\";s:4:\"slug\";s:15:\"cmplz_policy_id\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"4\";s:14:\"cookieFunction\";s:53:\"erfasse die ID für die angenommene Cookie-Richtlinie\";s:21:\"collectedPersonalData\";s:6:\"nichts\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"23\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820318\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721820166\";}i:24;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"25\";s:4:\"name\";s:16:\"cmplz_statistics\";s:4:\"slug\";s:16:\"cmplz_statistics\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"3\";s:14:\"cookieFunction\";s:32:\"store cookie consent preferences\";s:21:\"collectedPersonalData\";s:4:\"none\";s:7:\"purpose\";s:10:\"Functional\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820318\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721820166\";}i:25;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"26\";s:4:\"name\";s:16:\"cmplz_statistics\";s:4:\"slug\";s:16:\"cmplz_statistics\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"4\";s:14:\"cookieFunction\";s:38:\"speichere Cookie-Einwilligungsvorgaben\";s:21:\"collectedPersonalData\";s:6:\"nichts\";s:7:\"purpose\";s:10:\"Funktional\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"25\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:10:\"1721820318\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1721820166\";}i:26;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"27\";s:4:\"name\";s:8:\"loglevel\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:12:\"localstorage\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1729543938\";}i:27;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"28\";s:4:\"name\";s:8:\"loglevel\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"27\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1729543938\";}i:28;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"29\";s:4:\"name\";s:3:\"acf\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:12:\"localstorage\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1729543938\";}i:29;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"30\";s:4:\"name\";s:3:\"acf\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"29\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1729543938\";}i:30;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"31\";s:4:\"name\";s:17:\"cmplz_cookie_data\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:12:\"localstorage\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1729543942\";}i:31;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"32\";s:4:\"name\";s:17:\"cmplz_cookie_data\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:8:\"365 Tage\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"31\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1729543942\";}i:32;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"33\";s:4:\"name\";s:21:\"WP_PREFERENCES_USER_1\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:12:\"localstorage\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:33;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"34\";s:4:\"name\";s:21:\"WP_PREFERENCES_USER_1\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"33\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1742502666\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:34;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"35\";s:4:\"name\";s:13:\"_pk_id.1.d35a\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:35;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"36\";s:4:\"name\";s:13:\"_pk_id.1.d35a\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"35\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:36;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"37\";s:4:\"name\";s:14:\"_pk_ses.1.d35a\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:37;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"38\";s:4:\"name\";s:14:\"_pk_ses.1.d35a\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"37\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:38;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"39\";s:4:\"name\";s:13:\"_pk_id_1_d35a\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:39;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"40\";s:4:\"name\";s:13:\"_pk_id_1_d35a\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"39\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:40;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"41\";s:4:\"name\";s:14:\"_pk_ses_1_d35a\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:6:\"cookie\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:41;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"42\";s:4:\"name\";s:14:\"_pk_ses_1_d35a\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"41\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272568\";}i:42;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"43\";s:4:\"name\";s:29:\"rank-math-option-search-index\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:12:\"localstorage\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"en\";s:17:\"isTranslationFrom\";s:1:\"0\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272579\";}i:43;O:8:\"stdClass\":21:{s:2:\"ID\";s:2:\"44\";s:4:\"name\";s:29:\"rank-math-option-search-index\";s:4:\"slug\";s:0:\"\";s:4:\"sync\";s:1:\"1\";s:7:\"ignored\";s:1:\"0\";s:9:\"retention\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"serviceID\";s:1:\"0\";s:14:\"cookieFunction\";s:0:\"\";s:21:\"collectedPersonalData\";s:0:\"\";s:7:\"purpose\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:17:\"isTranslationFrom\";s:2:\"43\";s:17:\"isOwnDomainCookie\";s:1:\"0\";s:6:\"domain\";s:4:\"self\";s:7:\"deleted\";s:1:\"0\";s:13:\"isMembersOnly\";s:1:\"0\";s:12:\"showOnPolicy\";s:1:\"1\";s:15:\"lastUpdatedDate\";s:1:\"0\";s:11:\"lastAddDate\";s:10:\"1732272579\";s:12:\"firstAddDate\";s:10:\"1732272579\";}}', 'off');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_postmeta`
--

CREATE TABLE `mc_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_postmeta`
--

INSERT INTO `mc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(19, 13, '_edit_lock', '1734330277:1'),
(20, 13, '_wp_page_template', 'page-home.php'),
(21, 15, '_menu_item_type', 'post_type'),
(22, 15, '_menu_item_menu_item_parent', '0'),
(23, 15, '_menu_item_object_id', '13'),
(24, 15, '_menu_item_object', 'page'),
(25, 15, '_menu_item_target', ''),
(26, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 15, '_menu_item_xfn', ''),
(28, 15, '_menu_item_url', ''),
(29, 15, '_menu_item_orphaned', '1721131971'),
(30, 16, '_edit_lock', '1734330213:1'),
(31, 18, '_edit_lock', '1734330176:1'),
(32, 20, '_edit_lock', '1734330265:1'),
(33, 22, '_edit_lock', '1734330253:1'),
(34, 24, '_edit_lock', '1734330242:1'),
(35, 26, '_menu_item_type', 'post_type'),
(36, 26, '_menu_item_menu_item_parent', '0'),
(37, 26, '_menu_item_object_id', '13'),
(38, 26, '_menu_item_object', 'page'),
(39, 26, '_menu_item_target', ''),
(40, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 26, '_menu_item_xfn', ''),
(42, 26, '_menu_item_url', ''),
(43, 26, '_menu_item_orphaned', '1721132077'),
(44, 27, '_menu_item_type', 'post_type'),
(45, 27, '_menu_item_menu_item_parent', '0'),
(46, 27, '_menu_item_object_id', '18'),
(47, 27, '_menu_item_object', 'page'),
(48, 27, '_menu_item_target', ''),
(49, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 27, '_menu_item_xfn', ''),
(51, 27, '_menu_item_url', ''),
(53, 28, '_menu_item_type', 'post_type'),
(54, 28, '_menu_item_menu_item_parent', '0'),
(55, 28, '_menu_item_object_id', '16'),
(56, 28, '_menu_item_object', 'page'),
(57, 28, '_menu_item_target', ''),
(58, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 28, '_menu_item_xfn', ''),
(60, 28, '_menu_item_url', ''),
(62, 29, '_menu_item_type', 'post_type'),
(63, 29, '_menu_item_menu_item_parent', '0'),
(64, 29, '_menu_item_object_id', '24'),
(65, 29, '_menu_item_object', 'page'),
(66, 29, '_menu_item_target', ''),
(67, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 29, '_menu_item_xfn', ''),
(69, 29, '_menu_item_url', ''),
(70, 29, '_menu_item_orphaned', '1721132077'),
(71, 30, '_menu_item_type', 'post_type'),
(72, 30, '_menu_item_menu_item_parent', '0'),
(73, 30, '_menu_item_object_id', '22'),
(74, 30, '_menu_item_object', 'page'),
(75, 30, '_menu_item_target', ''),
(76, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 30, '_menu_item_xfn', ''),
(78, 30, '_menu_item_url', ''),
(79, 30, '_menu_item_orphaned', '1721132077'),
(80, 31, '_menu_item_type', 'post_type'),
(81, 31, '_menu_item_menu_item_parent', '0'),
(82, 31, '_menu_item_object_id', '20'),
(83, 31, '_menu_item_object', 'page'),
(84, 31, '_menu_item_target', ''),
(85, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 31, '_menu_item_xfn', ''),
(87, 31, '_menu_item_url', ''),
(88, 31, '_menu_item_orphaned', '1721132077'),
(89, 32, '_menu_item_type', 'post_type'),
(90, 32, '_menu_item_menu_item_parent', '0'),
(91, 32, '_menu_item_object_id', '20'),
(92, 32, '_menu_item_object', 'page'),
(93, 32, '_menu_item_target', ''),
(94, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 32, '_menu_item_xfn', ''),
(96, 32, '_menu_item_url', ''),
(98, 33, '_menu_item_type', 'post_type'),
(99, 33, '_menu_item_menu_item_parent', '0'),
(100, 33, '_menu_item_object_id', '24'),
(101, 33, '_menu_item_object', 'page'),
(102, 33, '_menu_item_target', ''),
(103, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 33, '_menu_item_xfn', ''),
(105, 33, '_menu_item_url', ''),
(107, 34, '_menu_item_type', 'post_type'),
(108, 34, '_menu_item_menu_item_parent', '0'),
(109, 34, '_menu_item_object_id', '22'),
(110, 34, '_menu_item_object', 'page'),
(111, 34, '_menu_item_target', ''),
(112, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 34, '_menu_item_xfn', ''),
(114, 34, '_menu_item_url', ''),
(116, 36, '_edit_last', '1'),
(117, 36, '_edit_lock', '1721289872:1'),
(118, 37, '_edit_lock', '1734330355:1'),
(119, 38, '_wp_attached_file', '2024/07/01-scaled.jpg'),
(120, 38, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"2024/07/01-scaled.jpg\";s:8:\"filesize\";i:192915;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"01-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7339;}s:5:\"large\";a:5:{s:4:\"file\";s:15:\"01-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47919;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5538;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"01-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30581;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:15:\"01-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:92070;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:16:\"01-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139878;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:6:\"01.jpg\";}'),
(121, 37, '_thumbnail_id', '219'),
(122, 39, '_edit_last', '1'),
(123, 39, '_edit_lock', '1721645209:1'),
(125, 52, '_wp_attached_file', '2024/07/02-scaled.jpg'),
(126, 52, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"2024/07/02-scaled.jpg\";s:8:\"filesize\";i:295290;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"02-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10199;}s:5:\"large\";a:5:{s:4:\"file\";s:15:\"02-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71251;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5684;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"02-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43494;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:15:\"02-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:130232;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:16:\"02-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:212740;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:6:\"02.jpg\";}'),
(127, 53, '_wp_attached_file', '2024/07/03-scaled.jpg'),
(128, 53, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"2024/07/03-scaled.jpg\";s:8:\"filesize\";i:176751;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"03-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6924;}s:5:\"large\";a:5:{s:4:\"file\";s:15:\"03-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45812;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5175;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"03-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28230;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:15:\"03-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84048;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:16:\"03-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128861;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:6:\"03.jpg\";}'),
(129, 37, '_acf_changed', '1'),
(130, 37, '_edit_last', '1'),
(131, 37, 'motto', 'Präzisionsarbeit. Sauber. Kraftvoll.'),
(132, 37, '_motto', 'field_6698cd98ec6c8'),
(133, 37, 'services', 'UX / UI Design<br>Webentwicklung'),
(134, 37, '_services', 'field_6698cdd0ec6c9'),
(135, 37, 'sector', 'Zahnmedizin'),
(136, 37, '_sector', 'field_6698cde2ec6ca'),
(137, 37, 'year', '2024'),
(138, 37, '_year', 'field_6698cde9ec6cb'),
(139, 37, 'timeline', '3 weeks'),
(140, 37, '_timeline', 'field_6698cdf1ec6cc'),
(141, 37, 'project_url', 'https://zahnaerzte-meisel.de/'),
(142, 37, '_project_url', 'field_6698cdf8ec6cd'),
(143, 37, 'customer_and_requirements', 'Meisel & Meisel Zahnärzte sind bekannt für ihre Spitzenklasse-Zahnmedizin und das Engagement für ihre Patienten. Da lag die Messlatte für eine Website, die dem Ruf des Teams gerecht wird, bereits zu Beginn hoch. Der Wunsch war glasklar: Eine moderne Website, die professionell wirkt und den digitalen Kontakt mit den Patienten einfach und angenehm gestaltet. Allem voran ein Design, das sofort anspricht und den Zugang zu erstklassiger zahnärztlicher Betreuung erleichtert. Eine Herausforderung ganz nach unserem Geschmack eben.\r\n\r\n'),
(144, 37, '_customer_and_requirements', 'field_6698ce19ec6ce'),
(145, 37, 'customer_and_requirements_image', '52'),
(146, 37, '_customer_and_requirements_image', 'field_6698ce7eec6d1'),
(147, 37, 'results_and_benefits_1', 'Die neue Website hat die Online-Präsenz von Meisel & Meisel Zahnärzte nicht nur umgehend massiv gestärkt, sondern auch an der Zufriedenheitsschraube der Patienten gedreht. Patienten finden jetzt schnell, wonach sie suchen, und können direkt auf hochwertige zahnärztliche Leistungen zugreifen. Praktisch ein fließender Übergang zwischen der Zufriedenheit, die aus den Behandlungen resultiert und der Zufriedenheit bei der Nutzung der Website. Win-win!'),
(148, 37, '_results_and_benefits_1', 'field_6698ce42ec6cf'),
(149, 37, 'results_and_benefits_2', 'Und das nicht ohne Grund: Unser neuer Design- und Entwicklungsansatz hat nämlich nicht nur die User Experience verbessert, sondern die Website auch zum echten Hingucker gemacht. Kurz: Die Seite ist jetzt nicht nur Aushängeschild, sondern nützliches Tool für Patienten.'),
(150, 37, '_results_and_benefits_2', 'field_6698ce4bec6d0'),
(151, 37, 'results_and_benefits_image', '53'),
(152, 37, '_results_and_benefits_image', 'field_6698cebdec6d2'),
(153, 54, '_edit_last', '1'),
(154, 54, '_edit_lock', '1721300309:1'),
(156, 58, '_edit_last', '1'),
(157, 58, '_edit_lock', '1721389309:1'),
(158, 60, '_edit_lock', '1721389492:1'),
(160, 60, '_edit_last', '1'),
(161, 60, 'customer_name', 'Oliver Winkler'),
(162, 60, '_customer_name', 'field_6698f5fae8432'),
(164, 63, '_edit_lock', '1721641726:1'),
(165, 63, '_edit_last', '1'),
(166, 63, 'customer_name', 'Jörg Sander'),
(167, 63, '_customer_name', 'field_6698f5fae8432'),
(168, 64, '_edit_lock', '1721641714:1'),
(169, 64, '_edit_last', '1'),
(170, 64, 'customer_name', 'Cumhur Coskun'),
(171, 64, '_customer_name', 'field_6698f5fae8432'),
(172, 65, '_edit_last', '1'),
(173, 65, '_edit_lock', '1721376578:1'),
(174, 69, '_wp_attached_file', '2024/07/ux-clock-scaled.jpeg'),
(175, 69, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1617;s:4:\"file\";s:28:\"2024/07/ux-clock-scaled.jpeg\";s:8:\"filesize\";i:197952;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"ux-clock-300x190.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5610;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"ux-clock-1024x647.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:647;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31822;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"ux-clock-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3475;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"ux-clock-768x485.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:485;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19942;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"ux-clock-1536x970.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:970;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68360;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"ux-clock-2048x1294.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1294;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122572;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"ux-clock.jpeg\";}'),
(179, 13, 'footnotes', ''),
(181, 71, 'footnotes', ''),
(183, 13, '_edit_last', '1'),
(184, 13, 'home_page_section_1_image', '69'),
(185, 13, '_home_page_section_1_image', 'field_669a1138682a1'),
(186, 13, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(187, 13, '_home_page_section_1_title', 'field_669a1160682a2'),
(188, 13, 'home_page_section_1_desc', 'Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(189, 13, '_home_page_section_1_desc', 'field_669a1179682a3'),
(190, 71, 'home_page_section_1_image', '69'),
(191, 71, '_home_page_section_1_image', 'field_669a1138682a1'),
(192, 71, 'home_page_section_1_title', ''),
(193, 71, '_home_page_section_1_title', 'field_669a1160682a2'),
(194, 71, 'home_page_section_1_desc', ''),
(195, 71, '_home_page_section_1_desc', 'field_669a1179682a3'),
(198, 72, 'footnotes', ''),
(200, 72, 'home_page_section_1_image', '69'),
(201, 72, '_home_page_section_1_image', 'field_669a1138682a1'),
(202, 72, 'home_page_section_1_title', '    <span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n                        <span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n                        <span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(203, 72, '_home_page_section_1_title', 'field_669a1160682a2'),
(204, 72, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(205, 72, '_home_page_section_1_desc', 'field_669a1179682a3'),
(208, 73, 'footnotes', ''),
(210, 73, 'home_page_section_1_image', '69'),
(211, 73, '_home_page_section_1_image', 'field_669a1138682a1'),
(212, 73, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(213, 73, '_home_page_section_1_title', 'field_669a1160682a2'),
(214, 73, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(215, 73, '_home_page_section_1_desc', 'field_669a1179682a3'),
(216, 74, '_edit_last', '1'),
(217, 74, '_edit_lock', '1723108762:1'),
(222, 87, 'footnotes', ''),
(224, 13, 'home_page_section_2_title', 'What we do?'),
(225, 13, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(226, 13, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(227, 13, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(228, 13, 'home_page_section_2_box_1_title', 'UX Beratung'),
(229, 13, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(230, 13, 'home_page_section_2_box_1_sub_title', 'Think It'),
(231, 13, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(232, 13, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die Komplexität der User Journeys.'),
(233, 13, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(234, 13, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(235, 13, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(236, 13, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(237, 13, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(238, 13, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die deine Kunden wirklich begeistern.'),
(239, 13, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(240, 13, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(241, 13, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(242, 13, 'home_page_section_2_box_3_sub_title', 'Build It'),
(243, 13, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(244, 13, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um deine Kunden zu beeindrucken.'),
(245, 13, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(246, 87, 'home_page_section_1_image', '69'),
(247, 87, '_home_page_section_1_image', 'field_669a1138682a1'),
(248, 87, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(249, 87, '_home_page_section_1_title', 'field_669a1160682a2'),
(250, 87, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(251, 87, '_home_page_section_1_desc', 'field_669a1179682a3'),
(252, 87, 'home_page_section_2_title', 'What we do?'),
(253, 87, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(254, 87, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(255, 87, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(256, 87, 'home_page_section_2_box_1_title', 'UX Beratung'),
(257, 87, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(258, 87, 'home_page_section_2_box_1_sub_title', 'Think It'),
(259, 87, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(260, 87, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(261, 87, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(262, 87, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(263, 87, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(264, 87, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(265, 87, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(266, 87, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(267, 87, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(268, 87, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(269, 87, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(270, 87, 'home_page_section_2_box_3_sub_title', 'Build It'),
(271, 87, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(272, 87, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(273, 87, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(274, 89, '_wp_attached_file', '2024/07/project-meeting-scaled.jpeg'),
(275, 89, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:35:\"2024/07/project-meeting-scaled.jpeg\";s:8:\"filesize\";i:314776;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"project-meeting-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11882;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"project-meeting-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70454;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"project-meeting-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5060;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"project-meeting-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45437;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"project-meeting-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132852;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:30:\"project-meeting-2048x1366.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:216860;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:20:\"project-meeting.jpeg\";}'),
(278, 90, 'footnotes', ''),
(280, 13, 'home_page_section_2_big_image', '89'),
(281, 13, '_home_page_section_2_big_image', 'field_669a23817da17'),
(282, 90, 'home_page_section_1_image', '69'),
(283, 90, '_home_page_section_1_image', 'field_669a1138682a1'),
(284, 90, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(285, 90, '_home_page_section_1_title', 'field_669a1160682a2'),
(286, 90, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(287, 90, '_home_page_section_1_desc', 'field_669a1179682a3'),
(288, 90, 'home_page_section_2_title', 'What we do?'),
(289, 90, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(290, 90, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(291, 90, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(292, 90, 'home_page_section_2_box_1_title', 'UX Beratung'),
(293, 90, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(294, 90, 'home_page_section_2_box_1_sub_title', 'Think It'),
(295, 90, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(296, 90, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(297, 90, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(298, 90, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(299, 90, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(300, 90, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(301, 90, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(302, 90, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(303, 90, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(304, 90, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(305, 90, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(306, 90, 'home_page_section_2_box_3_sub_title', 'Build It'),
(307, 90, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(308, 90, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(309, 90, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(310, 90, 'home_page_section_2_big_image', '89'),
(311, 90, '_home_page_section_2_big_image', 'field_669a23817da17'),
(312, 91, '_edit_last', '1'),
(313, 91, '_edit_lock', '1721384422:1'),
(316, 95, 'footnotes', ''),
(318, 13, 'home_page_section_3_title', 'Case Studies'),
(319, 13, '_home_page_section_3_title', 'field_669a249ab50b0'),
(320, 13, 'home_page_section_3_sub_title', 'Success in Action'),
(321, 13, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(322, 13, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am besten selbst ein Bild.'),
(323, 13, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(324, 95, 'home_page_section_1_image', '69'),
(325, 95, '_home_page_section_1_image', 'field_669a1138682a1'),
(326, 95, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(327, 95, '_home_page_section_1_title', 'field_669a1160682a2'),
(328, 95, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(329, 95, '_home_page_section_1_desc', 'field_669a1179682a3'),
(330, 95, 'home_page_section_2_title', 'What we do?'),
(331, 95, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(332, 95, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(333, 95, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(334, 95, 'home_page_section_2_box_1_title', 'UX Beratung'),
(335, 95, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(336, 95, 'home_page_section_2_box_1_sub_title', 'Think It'),
(337, 95, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(338, 95, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(339, 95, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(340, 95, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(341, 95, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(342, 95, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(343, 95, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(344, 95, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(345, 95, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(346, 95, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(347, 95, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(348, 95, 'home_page_section_2_box_3_sub_title', 'Build It'),
(349, 95, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(350, 95, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(351, 95, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(352, 95, 'home_page_section_2_big_image', '89'),
(353, 95, '_home_page_section_2_big_image', 'field_669a23817da17'),
(354, 95, 'home_page_section_3_title', 'Case Studies'),
(355, 95, '_home_page_section_3_title', 'field_669a249ab50b0'),
(356, 95, 'home_page_section_3_sub_title', 'Success in Action'),
(357, 95, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(358, 95, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation                         deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am                         besten                         selbst                         ein Bild.'),
(359, 95, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(360, 96, '_edit_lock', '1734330344:1'),
(361, 97, '_wp_attached_file', '2024/07/01-1-scaled.jpg'),
(362, 97, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/01-1-scaled.jpg\";s:8:\"filesize\";i:183367;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"01-1-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7612;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"01-1-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46417;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"01-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5407;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"01-1-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30009;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"01-1-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87428;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"01-1-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132533;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"01-1.jpg\";}'),
(363, 98, '_wp_attached_file', '2024/07/02-1-scaled.jpg'),
(364, 98, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/02-1-scaled.jpg\";s:8:\"filesize\";i:266928;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"02-1-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9848;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"02-1-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62229;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"02-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5965;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"02-1-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39779;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"02-1-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113993;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"02-1-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:189006;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"02-1.jpg\";}'),
(365, 99, '_wp_attached_file', '2024/07/03-1-scaled.jpg'),
(366, 99, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/03-1-scaled.jpg\";s:8:\"filesize\";i:230468;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"03-1-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8356;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"03-1-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57615;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"03-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5777;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"03-1-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35493;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"03-1-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105598;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"03-1-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166350;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"03-1.jpg\";}'),
(367, 96, '_thumbnail_id', '218'),
(368, 96, '_acf_changed', '1'),
(369, 96, '_edit_last', '1'),
(370, 96, 'motto', 'Scharf. Durchschlagend. Beeindruckend.'),
(371, 96, '_motto', 'field_6698cd98ec6c8'),
(372, 96, 'services', 'UX / UI Design<br>Webentwicklung'),
(373, 96, '_services', 'field_6698cdd0ec6c9'),
(374, 96, 'sector', 'Mini-PC'),
(375, 96, '_sector', 'field_6698cde2ec6ca'),
(376, 96, 'year', '2022'),
(377, 96, '_year', 'field_6698cde9ec6cb'),
(378, 96, 'timeline', '12 weeks'),
(379, 96, '_timeline', 'field_6698cdf1ec6cc'),
(380, 96, 'project_url', 'https://www.spo-comm.de/'),
(381, 96, '_project_url', 'field_6698cdf8ec6cd'),
(382, 96, 'customer_and_requirements', 'Die spo-comm GmbH, ein Pionier in der Mini-PC-Technologie, wollte ihren Online-Shop revolutionieren. Der Fokus lag auf Fahrzeugcomputing, Digital Signage und industrieller Steuerung. Eine Website sollte her, die nicht nur professionell wirkt, sondern den Produkten Raum zum Wirken bietet und Kunden durch ansprechendes Design und intuitive Navigation begeistert. Ein benutzerfreundlicher Zugang zu den vielfältigen Mini-PC-Produkten war das erklärte Ziel.\r\n\r\n'),
(383, 96, '_customer_and_requirements', 'field_6698ce19ec6ce'),
(384, 96, 'customer_and_requirements_image', '98'),
(385, 96, '_customer_and_requirements_image', 'field_6698ce7eec6d1'),
(386, 96, 'results_and_benefits_1', 'Das neue Design schlägt zwei Mini-PCs mit einer Klappe: Ästhetik meets Benutzerfreundlichkeit! Unsere strategischen Design- und Entwicklungsansätze haben die Website zu einem effektiven Verkaufsinstrument gemacht. Sie unterstützt den Vertrieb, erweitert die Reichweite und optimiert die Kundenbindung.'),
(387, 96, '_results_and_benefits_1', 'field_6698ce42ec6cf'),
(388, 96, 'results_and_benefits_2', 'Die Produkte der spo-comm GmbH werden nun optimal präsentiert, was die Kundenzufriedenheit und die Conversion-Raten deutlich verbessert hat. Und haben wir schon erwähnt, dass dies eine durch und durch positive Auswirkung auf die Kundenloyalität hat? Besser geht es nicht.'),
(389, 96, '_results_and_benefits_2', 'field_6698ce4bec6d0'),
(390, 96, 'results_and_benefits_image', '99'),
(391, 96, '_results_and_benefits_image', 'field_6698cebdec6d2'),
(392, 100, '_edit_lock', '1734330332:1'),
(393, 101, '_wp_attached_file', '2024/07/01-2-scaled.jpg'),
(394, 101, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/01-2-scaled.jpg\";s:8:\"filesize\";i:182048;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"01-2-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6640;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"01-2-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45617;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"01-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4989;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"01-2-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29394;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"01-2-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87505;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"01-2-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133089;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"01-2.jpg\";}'),
(395, 102, '_wp_attached_file', '2024/07/02-2-scaled.jpg'),
(396, 102, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/02-2-scaled.jpg\";s:8:\"filesize\";i:244932;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"02-2-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8721;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"02-2-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61473;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"02-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5472;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"02-2-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38150;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"02-2-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113331;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"02-2-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:178807;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"02-2.jpg\";}'),
(397, 103, '_wp_attached_file', '2024/07/03-2-scaled.jpg'),
(398, 103, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/03-2-scaled.jpg\";s:8:\"filesize\";i:227537;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"03-2-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7509;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"03-2-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57573;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"03-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5292;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"03-2-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35507;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"03-2-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:108968;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"03-2-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166061;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"03-2.jpg\";}'),
(399, 100, '_thumbnail_id', '216'),
(400, 100, '_acf_changed', '1'),
(401, 100, '_edit_last', '1'),
(402, 100, 'motto', 'Präzise. Kraftvoll. Überzeugend.'),
(403, 100, '_motto', 'field_6698cd98ec6c8'),
(404, 100, 'services', 'UX / UI Design<br>Webentwicklung'),
(405, 100, '_services', 'field_6698cdd0ec6c9'),
(406, 100, 'sector', 'Übersetzung'),
(407, 100, '_sector', 'field_6698cde2ec6ca'),
(408, 100, 'year', '2024'),
(409, 100, '_year', 'field_6698cde9ec6cb'),
(410, 100, 'timeline', '4 weeks'),
(411, 100, '_timeline', 'field_6698cdf1ec6cc'),
(412, 100, 'project_url', 'https://context-nbg.de/'),
(413, 100, '_project_url', 'field_6698cdf8ec6cd'),
(414, 100, 'customer_and_requirements', 'Context Translations ist, wenn man so möchte, Meister der mehrsprachigen Übersetzungsdienste. Ihr Ziel? Eine Website, die nicht nur gut aussieht, sondern auch die digitale Interaktion mit ihren Kunden auf ein neues Scroll- und Klick-Level hebt. Sie wollten ein Design, das Nutzer direkt begeistert und die Konversionsraten in die Höhe schnellen lässt. Eine Herausforderung, die wir mit Freude angenommen haben.'),
(415, 100, '_customer_and_requirements', 'field_6698ce19ec6ce'),
(416, 100, 'customer_and_requirements_image', '102'),
(417, 100, '_customer_and_requirements_image', 'field_6698ce7eec6d1'),
(418, 100, 'results_and_benefits_1', 'Die überarbeitete Website hat nicht nur die Online-Präsenz von Context Translations massiv gestärkt, sondern auch die Kundenzufriedenheit auf ein neues Hoch katapultiert. Besucher finden jetzt blitzschnell, was sie suchen, und können direkt auf die erstklassigen Dienstleistungen zugreifen (so das Feedback der Kunden).'),
(419, 100, '_results_and_benefits_1', 'field_6698ce42ec6cf'),
(420, 100, 'results_and_benefits_2', 'Unsere neuen Design- und Entwicklungsansätze haben nicht nur die Konversionsraten gesteigert, sondern sind jetzt das Herzstück der digitalen Strategie des Unternehmens. Anders gesagt: Die Website ist nicht nur ein Aushängeschild, sondern ein echter UX- / UI-Game-Changer.'),
(421, 100, '_results_and_benefits_2', 'field_6698ce4bec6d0'),
(422, 100, 'results_and_benefits_image', '103'),
(423, 100, '_results_and_benefits_image', 'field_6698cebdec6d2'),
(424, 104, '_edit_lock', '1734330320:1'),
(425, 105, '_wp_attached_file', '2024/07/01-3-scaled.jpg'),
(426, 105, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/01-3-scaled.jpg\";s:8:\"filesize\";i:144688;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"01-3-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5865;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"01-3-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35740;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"01-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3897;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"01-3-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23020;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"01-3-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66764;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"01-3-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105126;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"01-3.jpg\";}'),
(427, 106, '_wp_attached_file', '2024/07/02-3-scaled.jpg'),
(428, 106, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/02-3-scaled.jpg\";s:8:\"filesize\";i:254160;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"02-3-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9364;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"02-3-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63268;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"02-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5110;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"02-3-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38531;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"02-3-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113632;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"02-3-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:182456;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"02-3.jpg\";}'),
(429, 107, '_wp_attached_file', '2024/07/03-3-scaled.jpg'),
(430, 107, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:23:\"2024/07/03-3-scaled.jpg\";s:8:\"filesize\";i:185120;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"03-3-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6702;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"03-3-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47043;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"03-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4831;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"03-3-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29466;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"03-3-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87879;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"03-3-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132121;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"03-3.jpg\";}'),
(431, 104, '_thumbnail_id', '217'),
(432, 104, '_acf_changed', '1'),
(433, 104, '_edit_last', '1'),
(434, 104, 'motto', 'Prägnant. Stark. Authentisch.'),
(435, 104, '_motto', 'field_6698cd98ec6c8'),
(436, 104, 'services', 'UX / UI Design <br> Webentwicklung'),
(437, 104, '_services', 'field_6698cdd0ec6c9'),
(438, 104, 'sector', 'Consulting'),
(439, 104, '_sector', 'field_6698cde2ec6ca'),
(440, 104, 'year', '2023'),
(441, 104, '_year', 'field_6698cde9ec6cb'),
(442, 104, 'timeline', '20 weeks'),
(443, 104, '_timeline', 'field_6698cdf1ec6cc'),
(444, 104, 'project_url', 'https://www.soeldner-consult.de/'),
(445, 104, '_project_url', 'field_6698cdf8ec6cd'),
(446, 104, 'customer_and_requirements', 'Söldner Consult ist der Boss im IT-Consulting-Game, spezialisiert auf AWS und Google Cloud. Ihr Ziel mit Studio Moco? Eine Website, die nicht nur professionell rüberkommt und Interessenten überzeugt, sondern auch die digitale Interaktion mit den Kunden auf Turbo dreht. Ein Design, das sofort packt und die Konversionsraten in die Höhe schießt. Herausforderung? Angenommen und gemeistert!'),
(447, 104, '_customer_and_requirements', 'field_6698ce19ec6ce'),
(448, 104, 'customer_and_requirements_image', '106'),
(449, 104, '_customer_and_requirements_image', 'field_6698ce7eec6d1'),
(450, 104, 'results_and_benefits_1', 'Die neue Website von Söldner Consult ist ein echter Platzhirsch in der Welt des IT-Consultings. Die User finden sich (nicht zuletzt wegen des cleanen und schlanken Desings) blitzschnell zurecht und können kinderleicht auf die Top-IT-Consulting-Services zugreifen. Das Feedback? Durchweg positiv!'),
(451, 104, '_results_and_benefits_1', 'field_6698ce42ec6cf'),
(452, 104, 'results_and_benefits_2', 'Unsere Designs und Strategien haben die Konversionsraten gepusht und die Website zum Herzstück der digitalen Unternehmensstrategie gemacht. Kurz gesagt: Die Seite ist jetzt nicht nur eine Visitenkarte, sondern ein echter Hebel für User Experience und Interaktion.'),
(453, 104, '_results_and_benefits_2', 'field_6698ce4bec6d0'),
(454, 104, 'results_and_benefits_image', '107');
INSERT INTO `mc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(455, 104, '_results_and_benefits_image', 'field_6698cebdec6d2'),
(456, 109, '_edit_last', '1'),
(457, 109, '_edit_lock', '1721388266:1'),
(458, 117, '_wp_attached_file', '2024/07/buerostuehle.jpeg'),
(459, 117, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:533;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2024/07/buerostuehle.jpeg\";s:8:\"filesize\";i:45925;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"buerostuehle-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11340;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"buerostuehle-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5761;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(462, 119, '_wp_attached_file', '2024/07/copernico.jpeg'),
(463, 119, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:672;s:4:\"file\";s:22:\"2024/07/copernico.jpeg\";s:8:\"filesize\";i:76686;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"copernico-300x197.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13892;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"copernico-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6758;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"copernico-768x504.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51072;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(466, 120, 'footnotes', ''),
(468, 13, 'home_page_section_4_title', 'About Us'),
(469, 13, '_home_page_section_4_title', 'field_669a4accaeb06'),
(470, 13, 'home_page_section_4_sub_title', '  <span class=\"block fw-regular\">Meet</span>\r\n                                    <span class=\"block bold\">Studio</span>\r\n                                    <span class=\"block bold text-right\">Moco</span>'),
(471, 13, '_home_page_section_4_sub_title', 'field_669a4ae3aeb07'),
(472, 13, 'home_page_section_4_image_1', '117'),
(473, 13, '_home_page_section_4_image_1', 'field_669a4afbaeb08'),
(474, 13, 'home_page_section_4_image_2', '119'),
(475, 13, '_home_page_section_4_image_2', 'field_669a4b09aeb09'),
(476, 13, 'home_page_section_4_description', 'Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale Innovatoren. Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit denen sie sich unsterblich machen. die Herzen der User im Sturm erobern.'),
(477, 13, '_home_page_section_4_description', 'field_669a4b1baeb0a'),
(478, 13, 'home_page_section_4_button_text', 'Mehr zu Studio Moco'),
(479, 13, '_home_page_section_4_button_text', 'field_669a4b2faeb0b'),
(480, 13, 'home_page_section_4_button_url', '/about-us'),
(481, 13, '_home_page_section_4_button_url', 'field_669a4b3daeb0c'),
(482, 120, 'home_page_section_1_image', '69'),
(483, 120, '_home_page_section_1_image', 'field_669a1138682a1'),
(484, 120, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(485, 120, '_home_page_section_1_title', 'field_669a1160682a2'),
(486, 120, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(487, 120, '_home_page_section_1_desc', 'field_669a1179682a3'),
(488, 120, 'home_page_section_2_title', 'What we do?'),
(489, 120, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(490, 120, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(491, 120, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(492, 120, 'home_page_section_2_box_1_title', 'UX Beratung'),
(493, 120, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(494, 120, 'home_page_section_2_box_1_sub_title', 'Think It'),
(495, 120, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(496, 120, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(497, 120, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(498, 120, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(499, 120, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(500, 120, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(501, 120, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(502, 120, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(503, 120, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(504, 120, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(505, 120, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(506, 120, 'home_page_section_2_box_3_sub_title', 'Build It'),
(507, 120, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(508, 120, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(509, 120, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(510, 120, 'home_page_section_2_big_image', '89'),
(511, 120, '_home_page_section_2_big_image', 'field_669a23817da17'),
(512, 120, 'home_page_section_3_title', 'Case Studies'),
(513, 120, '_home_page_section_3_title', 'field_669a249ab50b0'),
(514, 120, 'home_page_section_3_sub_title', 'Success in Action'),
(515, 120, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(516, 120, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation                         deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am                         besten                         selbst                         ein Bild.'),
(517, 120, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(518, 120, 'home_page_section_4_title', 'About Us'),
(519, 120, '_home_page_section_4_title', 'field_669a4accaeb06'),
(520, 120, 'home_page_section_4_sub_title', '  <span class=\"block fw-regular\">Meet</span>\r\n                                    <span class=\"block bold\">Studio</span>\r\n                                    <span class=\"block bold text-right\">Moco</span>'),
(521, 120, '_home_page_section_4_sub_title', 'field_669a4ae3aeb07'),
(522, 120, 'home_page_section_4_image_1', '117'),
(523, 120, '_home_page_section_4_image_1', 'field_669a4afbaeb08'),
(524, 120, 'home_page_section_4_image_2', '119'),
(525, 120, '_home_page_section_4_image_2', 'field_669a4b09aeb09'),
(526, 120, 'home_page_section_4_description', 'Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale\r\n                                Innovatoren.\r\n                                Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit\r\n                                denen\r\n                                sie sich unsterblich machen. die Herzen der User im Sturm erobern.'),
(527, 120, '_home_page_section_4_description', 'field_669a4b1baeb0a'),
(528, 120, 'home_page_section_4_button_text', 'Mehr zu Studio Moco'),
(529, 120, '_home_page_section_4_button_text', 'field_669a4b2faeb0b'),
(530, 120, 'home_page_section_4_button_url', 'https://studiomoco.de/about-us'),
(531, 120, '_home_page_section_4_button_url', 'field_669a4b3daeb0c'),
(532, 122, '_wp_attached_file', '2024/07/teaser-web.jpg'),
(533, 122, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:938;s:4:\"file\";s:22:\"2024/07/teaser-web.jpg\";s:8:\"filesize\";i:342225;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"teaser-web-300x110.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12072;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"teaser-web-1024x375.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77509;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"teaser-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7503;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"teaser-web-768x281.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:281;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50602;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"teaser-web-1536x563.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:563;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140411;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"teaser-web-2048x750.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:214044;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(536, 123, 'footnotes', ''),
(538, 13, 'home_page_section_4_big_image', '122'),
(539, 13, '_home_page_section_4_big_image', 'field_669a4ca2e5c02'),
(540, 123, 'home_page_section_1_image', '69'),
(541, 123, '_home_page_section_1_image', 'field_669a1138682a1'),
(542, 123, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(543, 123, '_home_page_section_1_title', 'field_669a1160682a2'),
(544, 123, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(545, 123, '_home_page_section_1_desc', 'field_669a1179682a3'),
(546, 123, 'home_page_section_2_title', 'What we do?'),
(547, 123, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(548, 123, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(549, 123, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(550, 123, 'home_page_section_2_box_1_title', 'UX Beratung'),
(551, 123, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(552, 123, 'home_page_section_2_box_1_sub_title', 'Think It'),
(553, 123, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(554, 123, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(555, 123, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(556, 123, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(557, 123, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(558, 123, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(559, 123, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(560, 123, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(561, 123, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(562, 123, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(563, 123, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(564, 123, 'home_page_section_2_box_3_sub_title', 'Build It'),
(565, 123, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(566, 123, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(567, 123, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(568, 123, 'home_page_section_2_big_image', '89'),
(569, 123, '_home_page_section_2_big_image', 'field_669a23817da17'),
(570, 123, 'home_page_section_3_title', 'Case Studies'),
(571, 123, '_home_page_section_3_title', 'field_669a249ab50b0'),
(572, 123, 'home_page_section_3_sub_title', 'Success in Action'),
(573, 123, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(574, 123, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation                         deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am                         besten                         selbst                         ein Bild.'),
(575, 123, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(576, 123, 'home_page_section_4_title', 'About Us'),
(577, 123, '_home_page_section_4_title', 'field_669a4accaeb06'),
(578, 123, 'home_page_section_4_sub_title', '  <span class=\"block fw-regular\">Meet</span>\r\n                                    <span class=\"block bold\">Studio</span>\r\n                                    <span class=\"block bold text-right\">Moco</span>'),
(579, 123, '_home_page_section_4_sub_title', 'field_669a4ae3aeb07'),
(580, 123, 'home_page_section_4_image_1', '117'),
(581, 123, '_home_page_section_4_image_1', 'field_669a4afbaeb08'),
(582, 123, 'home_page_section_4_image_2', '119'),
(583, 123, '_home_page_section_4_image_2', 'field_669a4b09aeb09'),
(584, 123, 'home_page_section_4_description', 'Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale\r\n                                Innovatoren.\r\n                                Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit\r\n                                denen\r\n                                sie sich unsterblich machen. die Herzen der User im Sturm erobern.'),
(585, 123, '_home_page_section_4_description', 'field_669a4b1baeb0a'),
(586, 123, 'home_page_section_4_button_text', 'Mehr zu Studio Moco'),
(587, 123, '_home_page_section_4_button_text', 'field_669a4b2faeb0b'),
(588, 123, 'home_page_section_4_button_url', 'https://studiomoco.de/about-us'),
(589, 123, '_home_page_section_4_button_url', 'field_669a4b3daeb0c'),
(590, 123, 'home_page_section_4_big_image', '122'),
(591, 123, '_home_page_section_4_big_image', 'field_669a4ca2e5c02'),
(592, 124, '_edit_last', '1'),
(593, 124, '_edit_lock', '1721389880:1'),
(596, 127, 'footnotes', ''),
(598, 13, 'home_page_section_5_title', 'Testimonials'),
(599, 13, '_home_page_section_5_title', 'field_669a4d7ef6bed'),
(600, 13, 'home_page_section_5_sub_title', 'Our Customers Rock!'),
(601, 13, '_home_page_section_5_sub_title', 'field_669a4dbaf6bee'),
(602, 127, 'home_page_section_1_image', '69'),
(603, 127, '_home_page_section_1_image', 'field_669a1138682a1'),
(604, 127, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(605, 127, '_home_page_section_1_title', 'field_669a1160682a2'),
(606, 127, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(607, 127, '_home_page_section_1_desc', 'field_669a1179682a3'),
(608, 127, 'home_page_section_2_title', 'What we do?'),
(609, 127, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(610, 127, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(611, 127, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(612, 127, 'home_page_section_2_box_1_title', 'UX Beratung'),
(613, 127, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(614, 127, 'home_page_section_2_box_1_sub_title', 'Think It'),
(615, 127, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(616, 127, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(617, 127, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(618, 127, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(619, 127, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(620, 127, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(621, 127, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(622, 127, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(623, 127, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(624, 127, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(625, 127, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(626, 127, 'home_page_section_2_box_3_sub_title', 'Build It'),
(627, 127, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(628, 127, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(629, 127, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(630, 127, 'home_page_section_2_big_image', '89'),
(631, 127, '_home_page_section_2_big_image', 'field_669a23817da17'),
(632, 127, 'home_page_section_3_title', 'Case Studies'),
(633, 127, '_home_page_section_3_title', 'field_669a249ab50b0'),
(634, 127, 'home_page_section_3_sub_title', 'Success in Action'),
(635, 127, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(636, 127, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation                         deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am                         besten                         selbst                         ein Bild.'),
(637, 127, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(638, 127, 'home_page_section_4_title', 'About Us'),
(639, 127, '_home_page_section_4_title', 'field_669a4accaeb06'),
(640, 127, 'home_page_section_4_sub_title', '  <span class=\"block fw-regular\">Meet</span>\r\n                                    <span class=\"block bold\">Studio</span>\r\n                                    <span class=\"block bold text-right\">Moco</span>'),
(641, 127, '_home_page_section_4_sub_title', 'field_669a4ae3aeb07'),
(642, 127, 'home_page_section_4_image_1', '117'),
(643, 127, '_home_page_section_4_image_1', 'field_669a4afbaeb08'),
(644, 127, 'home_page_section_4_image_2', '119'),
(645, 127, '_home_page_section_4_image_2', 'field_669a4b09aeb09'),
(646, 127, 'home_page_section_4_description', 'Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale\r\n                                Innovatoren.\r\n                                Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit\r\n                                denen\r\n                                sie sich unsterblich machen. die Herzen der User im Sturm erobern.'),
(647, 127, '_home_page_section_4_description', 'field_669a4b1baeb0a'),
(648, 127, 'home_page_section_4_button_text', 'Mehr zu Studio Moco'),
(649, 127, '_home_page_section_4_button_text', 'field_669a4b2faeb0b'),
(650, 127, 'home_page_section_4_button_url', 'https://studiomoco.de/about-us'),
(651, 127, '_home_page_section_4_button_url', 'field_669a4b3daeb0c'),
(652, 127, 'home_page_section_4_big_image', '122'),
(653, 127, '_home_page_section_4_big_image', 'field_669a4ca2e5c02'),
(654, 127, 'home_page_section_5_title', 'Testimonials'),
(655, 127, '_home_page_section_5_title', 'field_669a4d7ef6bed'),
(656, 127, 'home_page_section_5_sub_title', 'Our Customers Rock!'),
(657, 127, '_home_page_section_5_sub_title', 'field_669a4dbaf6bee'),
(663, 134, '_wp_attached_file', '2024/07/Logo-DVAG.png'),
(664, 134, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1414;s:6:\"height\";i:376;s:4:\"file\";s:21:\"2024/07/Logo-DVAG.png\";s:8:\"filesize\";i:15819;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"Logo-DVAG-300x80.png\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8350;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"Logo-DVAG-1024x272.png\";s:5:\"width\";i:1024;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35940;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Logo-DVAG-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6447;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"Logo-DVAG-768x204.png\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25081;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 135, '_wp_attached_file', '2024/07/Logo-T-Mobile.png'),
(666, 135, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3099;s:6:\"height\";i:649;s:4:\"file\";s:25:\"2024/07/Logo-T-Mobile.png\";s:8:\"filesize\";i:42378;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Logo-T-Mobile-300x63.png\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5715;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"Logo-T-Mobile-1024x214.png\";s:5:\"width\";i:1024;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21909;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Logo-T-Mobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3774;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"Logo-T-Mobile-768x161.png\";s:5:\"width\";i:768;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15930;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"Logo-T-Mobile-1536x322.png\";s:5:\"width\";i:1536;s:6:\"height\";i:322;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36016;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"Logo-T-Mobile-2048x429.png\";s:5:\"width\";i:2048;s:6:\"height\";i:429;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51773;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(667, 136, '_wp_attached_file', '2024/07/Logo-Oechsler.png'),
(668, 136, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:404;s:4:\"file\";s:25:\"2024/07/Logo-Oechsler.png\";s:8:\"filesize\";i:35765;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Logo-Oechsler-300x61.png\";s:5:\"width\";i:300;s:6:\"height\";i:61;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10652;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"Logo-Oechsler-1024x207.png\";s:5:\"width\";i:1024;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50612;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Logo-Oechsler-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4322;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"Logo-Oechsler-768x155.png\";s:5:\"width\";i:768;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34835;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"Logo-Oechsler-1536x310.png\";s:5:\"width\";i:1536;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:86212;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(669, 137, '_wp_attached_file', '2024/07/Logo-Soeldner.png'),
(670, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4096;s:6:\"height\";i:827;s:4:\"file\";s:25:\"2024/07/Logo-Soeldner.png\";s:8:\"filesize\";i:61230;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Logo-Soeldner-300x61.png\";s:5:\"width\";i:300;s:6:\"height\";i:61;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5479;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"Logo-Soeldner-1024x207.png\";s:5:\"width\";i:1024;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22741;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Logo-Soeldner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4700;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"Logo-Soeldner-768x155.png\";s:5:\"width\";i:768;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15795;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"Logo-Soeldner-1536x310.png\";s:5:\"width\";i:1536;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38281;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"Logo-Soeldner-2048x414.png\";s:5:\"width\";i:2048;s:6:\"height\";i:414;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55807;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(671, 138, '_wp_attached_file', '2024/07/Logo-Sam.png'),
(672, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2253;s:6:\"height\";i:367;s:4:\"file\";s:20:\"2024/07/Logo-Sam.png\";s:8:\"filesize\";i:19331;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Logo-Sam-300x49.png\";s:5:\"width\";i:300;s:6:\"height\";i:49;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5398;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"Logo-Sam-1024x167.png\";s:5:\"width\";i:1024;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23048;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Logo-Sam-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1784;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"Logo-Sam-768x125.png\";s:5:\"width\";i:768;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16464;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"Logo-Sam-1536x250.png\";s:5:\"width\";i:1536;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37448;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"Logo-Sam-2048x334.png\";s:5:\"width\";i:2048;s:6:\"height\";i:334;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:53987;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 139, '_wp_attached_file', '2024/07/Logo-Vestel.png'),
(674, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3000;s:6:\"height\";i:648;s:4:\"file\";s:23:\"2024/07/Logo-Vestel.png\";s:8:\"filesize\";i:23430;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"Logo-Vestel-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4237;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"Logo-Vestel-1024x221.png\";s:5:\"width\";i:1024;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17754;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"Logo-Vestel-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3888;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"Logo-Vestel-768x166.png\";s:5:\"width\";i:768;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12315;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"Logo-Vestel-1536x332.png\";s:5:\"width\";i:1536;s:6:\"height\";i:332;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29712;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:24:\"Logo-Vestel-2048x442.png\";s:5:\"width\";i:2048;s:6:\"height\";i:442;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44204;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(675, 140, '_wp_attached_file', '2024/07/Logo-MGN.png'),
(676, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1750;s:6:\"height\";i:446;s:4:\"file\";s:20:\"2024/07/Logo-MGN.png\";s:8:\"filesize\";i:22762;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Logo-MGN-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7284;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"Logo-MGN-1024x261.png\";s:5:\"width\";i:1024;s:6:\"height\";i:261;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38946;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Logo-MGN-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5724;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"Logo-MGN-768x196.png\";s:5:\"width\";i:768;s:6:\"height\";i:196;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26697;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"Logo-MGN-1536x391.png\";s:5:\"width\";i:1536;s:6:\"height\";i:391;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:67077;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(677, 141, '_wp_attached_file', '2024/07/Logo-Hotel-Number-One.png'),
(678, 141, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2398;s:6:\"height\";i:1084;s:4:\"file\";s:33:\"2024/07/Logo-Hotel-Number-One.png\";s:8:\"filesize\";i:34077;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"Logo-Hotel-Number-One-300x136.png\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7020;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"Logo-Hotel-Number-One-1024x463.png\";s:5:\"width\";i:1024;s:6:\"height\";i:463;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33021;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"Logo-Hotel-Number-One-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4006;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"Logo-Hotel-Number-One-768x347.png\";s:5:\"width\";i:768;s:6:\"height\";i:347;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22699;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"Logo-Hotel-Number-One-1536x694.png\";s:5:\"width\";i:1536;s:6:\"height\";i:694;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:53945;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:34:\"Logo-Hotel-Number-One-2048x926.png\";s:5:\"width\";i:2048;s:6:\"height\";i:926;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71016;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(679, 142, '_wp_attached_file', '2024/07/Logo-Ketteler.png'),
(680, 142, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:888;s:6:\"height\";i:222;s:4:\"file\";s:25:\"2024/07/Logo-Ketteler.png\";s:8:\"filesize\";i:63743;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Logo-Ketteler-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26052;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Logo-Ketteler-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17796;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"Logo-Ketteler-768x192.png\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:91898;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(681, 143, '_wp_attached_file', '2024/07/Logo-SWS.png'),
(682, 143, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:902;s:6:\"height\";i:462;s:4:\"file\";s:20:\"2024/07/Logo-SWS.png\";s:8:\"filesize\";i:13392;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"Logo-SWS-300x154.png\";s:5:\"width\";i:300;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11004;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Logo-SWS-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7151;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"Logo-SWS-768x393.png\";s:5:\"width\";i:768;s:6:\"height\";i:393;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36755;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(685, 144, 'footnotes', ''),
(687, 13, 'home_page_section_6_customer_logos_0_logo', '134'),
(688, 13, '_home_page_section_6_customer_logos_0_logo', 'field_669a5221be075'),
(689, 13, 'home_page_section_6_customer_logos_1_logo', '135'),
(690, 13, '_home_page_section_6_customer_logos_1_logo', 'field_669a5221be075'),
(691, 13, 'home_page_section_6_customer_logos_2_logo', '136'),
(692, 13, '_home_page_section_6_customer_logos_2_logo', 'field_669a5221be075'),
(693, 13, 'home_page_section_6_customer_logos_3_logo', '137'),
(694, 13, '_home_page_section_6_customer_logos_3_logo', 'field_669a5221be075'),
(695, 13, 'home_page_section_6_customer_logos_4_logo', '138'),
(696, 13, '_home_page_section_6_customer_logos_4_logo', 'field_669a5221be075'),
(697, 13, 'home_page_section_6_customer_logos_5_logo', '139'),
(698, 13, '_home_page_section_6_customer_logos_5_logo', 'field_669a5221be075'),
(699, 13, 'home_page_section_6_customer_logos_6_logo', '140'),
(700, 13, '_home_page_section_6_customer_logos_6_logo', 'field_669a5221be075'),
(701, 13, 'home_page_section_6_customer_logos_7_logo', '141'),
(702, 13, '_home_page_section_6_customer_logos_7_logo', 'field_669a5221be075'),
(703, 13, 'home_page_section_6_customer_logos_8_logo', '142'),
(704, 13, '_home_page_section_6_customer_logos_8_logo', 'field_669a5221be075'),
(705, 13, 'home_page_section_6_customer_logos_9_logo', '143'),
(706, 13, '_home_page_section_6_customer_logos_9_logo', 'field_669a5221be075'),
(707, 13, 'home_page_section_6_customer_logos', '10'),
(708, 13, '_home_page_section_6_customer_logos', 'field_669a51e2be074'),
(709, 144, 'home_page_section_1_image', '69'),
(710, 144, '_home_page_section_1_image', 'field_669a1138682a1'),
(711, 144, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(712, 144, '_home_page_section_1_title', 'field_669a1160682a2'),
(713, 144, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(714, 144, '_home_page_section_1_desc', 'field_669a1179682a3'),
(715, 144, 'home_page_section_2_title', 'What we do?'),
(716, 144, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(717, 144, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(718, 144, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(719, 144, 'home_page_section_2_box_1_title', 'UX Beratung'),
(720, 144, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(721, 144, 'home_page_section_2_box_1_sub_title', 'Think It'),
(722, 144, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(723, 144, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(724, 144, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(725, 144, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(726, 144, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(727, 144, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(728, 144, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(729, 144, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(730, 144, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(731, 144, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(732, 144, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(733, 144, 'home_page_section_2_box_3_sub_title', 'Build It'),
(734, 144, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(735, 144, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(736, 144, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(737, 144, 'home_page_section_2_big_image', '89'),
(738, 144, '_home_page_section_2_big_image', 'field_669a23817da17'),
(739, 144, 'home_page_section_3_title', 'Case Studies'),
(740, 144, '_home_page_section_3_title', 'field_669a249ab50b0'),
(741, 144, 'home_page_section_3_sub_title', 'Success in Action'),
(742, 144, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(743, 144, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation                         deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am                         besten                         selbst                         ein Bild.'),
(744, 144, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(745, 144, 'home_page_section_4_title', 'About Us'),
(746, 144, '_home_page_section_4_title', 'field_669a4accaeb06'),
(747, 144, 'home_page_section_4_sub_title', '  <span class=\"block fw-regular\">Meet</span>\r\n                                    <span class=\"block bold\">Studio</span>\r\n                                    <span class=\"block bold text-right\">Moco</span>'),
(748, 144, '_home_page_section_4_sub_title', 'field_669a4ae3aeb07'),
(749, 144, 'home_page_section_4_image_1', '117'),
(750, 144, '_home_page_section_4_image_1', 'field_669a4afbaeb08'),
(751, 144, 'home_page_section_4_image_2', '119'),
(752, 144, '_home_page_section_4_image_2', 'field_669a4b09aeb09'),
(753, 144, 'home_page_section_4_description', 'Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale\r\n                                Innovatoren.\r\n                                Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit\r\n                                denen\r\n                                sie sich unsterblich machen. die Herzen der User im Sturm erobern.'),
(754, 144, '_home_page_section_4_description', 'field_669a4b1baeb0a'),
(755, 144, 'home_page_section_4_button_text', 'Mehr zu Studio Moco'),
(756, 144, '_home_page_section_4_button_text', 'field_669a4b2faeb0b'),
(757, 144, 'home_page_section_4_button_url', 'https://studiomoco.de/about-us'),
(758, 144, '_home_page_section_4_button_url', 'field_669a4b3daeb0c'),
(759, 144, 'home_page_section_4_big_image', '122'),
(760, 144, '_home_page_section_4_big_image', 'field_669a4ca2e5c02'),
(761, 144, 'home_page_section_5_title', 'Testimonials'),
(762, 144, '_home_page_section_5_title', 'field_669a4d7ef6bed'),
(763, 144, 'home_page_section_5_sub_title', 'Our Customers Rock!'),
(764, 144, '_home_page_section_5_sub_title', 'field_669a4dbaf6bee'),
(765, 144, 'home_page_section_6_customer_logos_0_logo', '134'),
(766, 144, '_home_page_section_6_customer_logos_0_logo', 'field_669a5221be075'),
(767, 144, 'home_page_section_6_customer_logos_1_logo', '135'),
(768, 144, '_home_page_section_6_customer_logos_1_logo', 'field_669a5221be075'),
(769, 144, 'home_page_section_6_customer_logos_2_logo', '136'),
(770, 144, '_home_page_section_6_customer_logos_2_logo', 'field_669a5221be075'),
(771, 144, 'home_page_section_6_customer_logos_3_logo', '137'),
(772, 144, '_home_page_section_6_customer_logos_3_logo', 'field_669a5221be075'),
(773, 144, 'home_page_section_6_customer_logos_4_logo', '138'),
(774, 144, '_home_page_section_6_customer_logos_4_logo', 'field_669a5221be075'),
(775, 144, 'home_page_section_6_customer_logos_5_logo', '139'),
(776, 144, '_home_page_section_6_customer_logos_5_logo', 'field_669a5221be075'),
(777, 144, 'home_page_section_6_customer_logos_6_logo', '140'),
(778, 144, '_home_page_section_6_customer_logos_6_logo', 'field_669a5221be075'),
(779, 144, 'home_page_section_6_customer_logos_7_logo', '141'),
(780, 144, '_home_page_section_6_customer_logos_7_logo', 'field_669a5221be075'),
(781, 144, 'home_page_section_6_customer_logos_8_logo', '142'),
(782, 144, '_home_page_section_6_customer_logos_8_logo', 'field_669a5221be075'),
(783, 144, 'home_page_section_6_customer_logos_9_logo', '143'),
(784, 144, '_home_page_section_6_customer_logos_9_logo', 'field_669a5221be075'),
(785, 144, 'home_page_section_6_customer_logos', '10'),
(786, 144, '_home_page_section_6_customer_logos', 'field_669a51e2be074'),
(787, 145, '_edit_last', '1'),
(788, 145, '_edit_lock', '1721631719:1'),
(791, 148, 'footnotes', ''),
(793, 13, 'home_page_section_7_title', 'Get in contact with Studio Moco'),
(794, 13, '_home_page_section_7_title', 'field_669a541ec763f'),
(795, 13, 'home_page_section_7_description', 'Glückliche User, mehr Expertise im Projekt und dann nehmen wir dir sogar noch die Arbeit ab - mit UX/UI Design, UX Beratung oder Webentwicklung. Geht\'s noch besser? Wohl kaum. Du siehst: Das nächste Level von dem alle immer reden ist praktisch nur eine Kontaktanfrage zu uns entfernt.'),
(796, 13, '_home_page_section_7_description', 'field_669a542cc7640'),
(797, 148, 'home_page_section_1_image', '69'),
(798, 148, '_home_page_section_1_image', 'field_669a1138682a1'),
(799, 148, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(800, 148, '_home_page_section_1_title', 'field_669a1160682a2'),
(801, 148, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(802, 148, '_home_page_section_1_desc', 'field_669a1179682a3'),
(803, 148, 'home_page_section_2_title', 'What we do?'),
(804, 148, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(805, 148, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(806, 148, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(807, 148, 'home_page_section_2_box_1_title', 'UX Beratung'),
(808, 148, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(809, 148, 'home_page_section_2_box_1_sub_title', 'Think It'),
(810, 148, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(811, 148, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(812, 148, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(813, 148, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(814, 148, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(815, 148, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(816, 148, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(817, 148, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(818, 148, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(819, 148, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(820, 148, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(821, 148, 'home_page_section_2_box_3_sub_title', 'Build It'),
(822, 148, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(823, 148, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(824, 148, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(825, 148, 'home_page_section_2_big_image', '89'),
(826, 148, '_home_page_section_2_big_image', 'field_669a23817da17'),
(827, 148, 'home_page_section_3_title', 'Case Studies'),
(828, 148, '_home_page_section_3_title', 'field_669a249ab50b0'),
(829, 148, 'home_page_section_3_sub_title', 'Success in Action'),
(830, 148, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(831, 148, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation                         deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am                         besten                         selbst                         ein Bild.'),
(832, 148, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(833, 148, 'home_page_section_4_title', 'About Us'),
(834, 148, '_home_page_section_4_title', 'field_669a4accaeb06'),
(835, 148, 'home_page_section_4_sub_title', '  <span class=\"block fw-regular\">Meet</span>\r\n                                    <span class=\"block bold\">Studio</span>\r\n                                    <span class=\"block bold text-right\">Moco</span>'),
(836, 148, '_home_page_section_4_sub_title', 'field_669a4ae3aeb07'),
(837, 148, 'home_page_section_4_image_1', '117'),
(838, 148, '_home_page_section_4_image_1', 'field_669a4afbaeb08'),
(839, 148, 'home_page_section_4_image_2', '119'),
(840, 148, '_home_page_section_4_image_2', 'field_669a4b09aeb09'),
(841, 148, 'home_page_section_4_description', 'Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale\r\n                                Innovatoren.\r\n                                Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit\r\n                                denen\r\n                                sie sich unsterblich machen. die Herzen der User im Sturm erobern.'),
(842, 148, '_home_page_section_4_description', 'field_669a4b1baeb0a'),
(843, 148, 'home_page_section_4_button_text', 'Mehr zu Studio Moco'),
(844, 148, '_home_page_section_4_button_text', 'field_669a4b2faeb0b'),
(845, 148, 'home_page_section_4_button_url', 'https://studiomoco.de/about-us'),
(846, 148, '_home_page_section_4_button_url', 'field_669a4b3daeb0c'),
(847, 148, 'home_page_section_4_big_image', '122'),
(848, 148, '_home_page_section_4_big_image', 'field_669a4ca2e5c02'),
(849, 148, 'home_page_section_5_title', 'Testimonials'),
(850, 148, '_home_page_section_5_title', 'field_669a4d7ef6bed'),
(851, 148, 'home_page_section_5_sub_title', 'Our Customers Rock!'),
(852, 148, '_home_page_section_5_sub_title', 'field_669a4dbaf6bee'),
(853, 148, 'home_page_section_6_customer_logos_0_logo', '134'),
(854, 148, '_home_page_section_6_customer_logos_0_logo', 'field_669a5221be075'),
(855, 148, 'home_page_section_6_customer_logos_1_logo', '135'),
(856, 148, '_home_page_section_6_customer_logos_1_logo', 'field_669a5221be075'),
(857, 148, 'home_page_section_6_customer_logos_2_logo', '136'),
(858, 148, '_home_page_section_6_customer_logos_2_logo', 'field_669a5221be075'),
(859, 148, 'home_page_section_6_customer_logos_3_logo', '137'),
(860, 148, '_home_page_section_6_customer_logos_3_logo', 'field_669a5221be075'),
(861, 148, 'home_page_section_6_customer_logos_4_logo', '138'),
(862, 148, '_home_page_section_6_customer_logos_4_logo', 'field_669a5221be075');
INSERT INTO `mc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(863, 148, 'home_page_section_6_customer_logos_5_logo', '139'),
(864, 148, '_home_page_section_6_customer_logos_5_logo', 'field_669a5221be075'),
(865, 148, 'home_page_section_6_customer_logos_6_logo', '140'),
(866, 148, '_home_page_section_6_customer_logos_6_logo', 'field_669a5221be075'),
(867, 148, 'home_page_section_6_customer_logos_7_logo', '141'),
(868, 148, '_home_page_section_6_customer_logos_7_logo', 'field_669a5221be075'),
(869, 148, 'home_page_section_6_customer_logos_8_logo', '142'),
(870, 148, '_home_page_section_6_customer_logos_8_logo', 'field_669a5221be075'),
(871, 148, 'home_page_section_6_customer_logos_9_logo', '143'),
(872, 148, '_home_page_section_6_customer_logos_9_logo', 'field_669a5221be075'),
(873, 148, 'home_page_section_6_customer_logos', '10'),
(874, 148, '_home_page_section_6_customer_logos', 'field_669a51e2be074'),
(875, 148, 'home_page_section_7_title', 'Get in contact with Studio Moco'),
(876, 148, '_home_page_section_7_title', 'field_669a541ec763f'),
(877, 148, 'home_page_section_7_description', '  Glückliche User, mehr Expertise im Projekt und dann nehmen wir dir sogar noch die Arbeit                             ab                             - mit UX/UI Design, UX Beratung oder Webentwicklung. Geht\'s noch besser? Wohl kaum. Du                             siehst: Das nächste Level von dem alle immer reden ist praktisch nur eine Kontaktanfrage                             zu                             uns entfernt.'),
(878, 148, '_home_page_section_7_description', 'field_669a542cc7640'),
(879, 149, '_edit_last', '1'),
(880, 149, '_edit_lock', '1721632679:1'),
(883, 151, 'footnotes', ''),
(885, 13, 'home_page_section_8_motto', 'Schreiben Sie uns'),
(886, 13, '_home_page_section_8_motto', 'field_669a54df72820'),
(887, 151, 'home_page_section_1_image', '69'),
(888, 151, '_home_page_section_1_image', 'field_669a1138682a1'),
(889, 151, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(890, 151, '_home_page_section_1_title', 'field_669a1160682a2'),
(891, 151, 'home_page_section_1_desc', '                        Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(892, 151, '_home_page_section_1_desc', 'field_669a1179682a3'),
(893, 151, 'home_page_section_2_title', 'What we do?'),
(894, 151, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(895, 151, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(896, 151, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(897, 151, 'home_page_section_2_box_1_title', 'UX Beratung'),
(898, 151, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(899, 151, 'home_page_section_2_box_1_sub_title', 'Think It'),
(900, 151, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(901, 151, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die                                 Komplexität der User Journeys.'),
(902, 151, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(903, 151, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(904, 151, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(905, 151, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(906, 151, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(907, 151, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die                                 deine                                 Kunden wirklich begeistern.'),
(908, 151, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(909, 151, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(910, 151, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(911, 151, 'home_page_section_2_box_3_sub_title', 'Build It'),
(912, 151, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(913, 151, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um                                 deine                                 Kunden zu beeindrucken.'),
(914, 151, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(915, 151, 'home_page_section_2_big_image', '89'),
(916, 151, '_home_page_section_2_big_image', 'field_669a23817da17'),
(917, 151, 'home_page_section_3_title', 'Case Studies'),
(918, 151, '_home_page_section_3_title', 'field_669a249ab50b0'),
(919, 151, 'home_page_section_3_sub_title', 'Success in Action'),
(920, 151, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(921, 151, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation                         deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am                         besten                         selbst                         ein Bild.'),
(922, 151, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(923, 151, 'home_page_section_4_title', 'About Us'),
(924, 151, '_home_page_section_4_title', 'field_669a4accaeb06'),
(925, 151, 'home_page_section_4_sub_title', '  <span class=\"block fw-regular\">Meet</span>\r\n                                    <span class=\"block bold\">Studio</span>\r\n                                    <span class=\"block bold text-right\">Moco</span>'),
(926, 151, '_home_page_section_4_sub_title', 'field_669a4ae3aeb07'),
(927, 151, 'home_page_section_4_image_1', '117'),
(928, 151, '_home_page_section_4_image_1', 'field_669a4afbaeb08'),
(929, 151, 'home_page_section_4_image_2', '119'),
(930, 151, '_home_page_section_4_image_2', 'field_669a4b09aeb09'),
(931, 151, 'home_page_section_4_description', 'Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale\r\n                                Innovatoren.\r\n                                Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit\r\n                                denen\r\n                                sie sich unsterblich machen. die Herzen der User im Sturm erobern.'),
(932, 151, '_home_page_section_4_description', 'field_669a4b1baeb0a'),
(933, 151, 'home_page_section_4_button_text', 'Mehr zu Studio Moco'),
(934, 151, '_home_page_section_4_button_text', 'field_669a4b2faeb0b'),
(935, 151, 'home_page_section_4_button_url', 'https://studiomoco.de/about-us'),
(936, 151, '_home_page_section_4_button_url', 'field_669a4b3daeb0c'),
(937, 151, 'home_page_section_4_big_image', '122'),
(938, 151, '_home_page_section_4_big_image', 'field_669a4ca2e5c02'),
(939, 151, 'home_page_section_5_title', 'Testimonials'),
(940, 151, '_home_page_section_5_title', 'field_669a4d7ef6bed'),
(941, 151, 'home_page_section_5_sub_title', 'Our Customers Rock!'),
(942, 151, '_home_page_section_5_sub_title', 'field_669a4dbaf6bee'),
(943, 151, 'home_page_section_6_customer_logos_0_logo', '134'),
(944, 151, '_home_page_section_6_customer_logos_0_logo', 'field_669a5221be075'),
(945, 151, 'home_page_section_6_customer_logos_1_logo', '135'),
(946, 151, '_home_page_section_6_customer_logos_1_logo', 'field_669a5221be075'),
(947, 151, 'home_page_section_6_customer_logos_2_logo', '136'),
(948, 151, '_home_page_section_6_customer_logos_2_logo', 'field_669a5221be075'),
(949, 151, 'home_page_section_6_customer_logos_3_logo', '137'),
(950, 151, '_home_page_section_6_customer_logos_3_logo', 'field_669a5221be075'),
(951, 151, 'home_page_section_6_customer_logos_4_logo', '138'),
(952, 151, '_home_page_section_6_customer_logos_4_logo', 'field_669a5221be075'),
(953, 151, 'home_page_section_6_customer_logos_5_logo', '139'),
(954, 151, '_home_page_section_6_customer_logos_5_logo', 'field_669a5221be075'),
(955, 151, 'home_page_section_6_customer_logos_6_logo', '140'),
(956, 151, '_home_page_section_6_customer_logos_6_logo', 'field_669a5221be075'),
(957, 151, 'home_page_section_6_customer_logos_7_logo', '141'),
(958, 151, '_home_page_section_6_customer_logos_7_logo', 'field_669a5221be075'),
(959, 151, 'home_page_section_6_customer_logos_8_logo', '142'),
(960, 151, '_home_page_section_6_customer_logos_8_logo', 'field_669a5221be075'),
(961, 151, 'home_page_section_6_customer_logos_9_logo', '143'),
(962, 151, '_home_page_section_6_customer_logos_9_logo', 'field_669a5221be075'),
(963, 151, 'home_page_section_6_customer_logos', '10'),
(964, 151, '_home_page_section_6_customer_logos', 'field_669a51e2be074'),
(965, 151, 'home_page_section_7_title', 'Get in contact with Studio Moco'),
(966, 151, '_home_page_section_7_title', 'field_669a541ec763f'),
(967, 151, 'home_page_section_7_description', '  Glückliche User, mehr Expertise im Projekt und dann nehmen wir dir sogar noch die Arbeit                             ab                             - mit UX/UI Design, UX Beratung oder Webentwicklung. Geht\'s noch besser? Wohl kaum. Du                             siehst: Das nächste Level von dem alle immer reden ist praktisch nur eine Kontaktanfrage                             zu                             uns entfernt.'),
(968, 151, '_home_page_section_7_description', 'field_669a542cc7640'),
(969, 151, 'home_page_section_8_motto', 'Schreiben Sie uns'),
(970, 151, '_home_page_section_8_motto', 'field_669a54df72820'),
(971, 16, '_wp_page_template', 'page-case-studies.php'),
(972, 152, '_edit_last', '1'),
(973, 152, '_edit_lock', '1721631198:1'),
(974, 153, '_edit_last', '1'),
(975, 153, '_thumbnail_id', '143'),
(976, 153, '_edit_lock', '1721631221:1'),
(977, 154, '_edit_last', '1'),
(978, 154, '_thumbnail_id', '142'),
(979, 154, '_edit_lock', '1721631238:1'),
(980, 155, '_edit_last', '1'),
(981, 155, '_thumbnail_id', '141'),
(982, 155, '_edit_lock', '1721631253:1'),
(983, 156, '_edit_last', '1'),
(984, 156, '_edit_lock', '1721631265:1'),
(985, 156, '_thumbnail_id', '140'),
(986, 157, '_edit_last', '1'),
(987, 157, '_thumbnail_id', '139'),
(988, 157, '_edit_lock', '1721631277:1'),
(989, 158, '_edit_last', '1'),
(990, 158, '_thumbnail_id', '138'),
(991, 158, '_edit_lock', '1721631285:1'),
(992, 159, '_edit_last', '1'),
(993, 159, '_thumbnail_id', '137'),
(994, 159, '_edit_lock', '1721631300:1'),
(995, 160, '_edit_last', '1'),
(996, 160, '_thumbnail_id', '136'),
(997, 160, '_edit_lock', '1721631314:1'),
(998, 161, '_edit_last', '1'),
(999, 161, '_thumbnail_id', '135'),
(1000, 161, '_edit_lock', '1721631326:1'),
(1001, 162, '_edit_last', '1'),
(1002, 162, '_thumbnail_id', '134'),
(1003, 162, '_edit_lock', '1721641705:1'),
(1010, 18, '_wp_page_template', 'page-about-us.php'),
(1011, 164, '_edit_last', '1'),
(1012, 164, '_edit_lock', '1721634446:1'),
(1013, 169, '_edit_last', '1'),
(1014, 169, '_edit_lock', '1721633607:1'),
(1015, 173, '_edit_last', '1'),
(1016, 173, '_edit_lock', '1721634506:1'),
(1035, 179, '_edit_last', '1'),
(1036, 179, '_edit_lock', '1724062210:1'),
(1037, 190, '_edit_last', '1'),
(1038, 190, '_edit_lock', '1721634832:1'),
(1041, 196, '_wp_attached_file', '2024/07/studio-moco-direction-scaled.jpeg'),
(1042, 196, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:41:\"2024/07/studio-moco-direction-scaled.jpeg\";s:8:\"filesize\";i:545291;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"studio-moco-direction-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7719;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"studio-moco-direction-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:98453;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"studio-moco-direction-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3592;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"studio-moco-direction-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52888;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"studio-moco-direction-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:217507;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:36:\"studio-moco-direction-2048x1366.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:368493;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:26:\"studio-moco-direction.jpeg\";}'),
(1043, 197, '_wp_attached_file', '2024/07/outside-office-scaled.jpeg'),
(1044, 197, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:34:\"2024/07/outside-office-scaled.jpeg\";s:8:\"filesize\";i:631292;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"outside-office-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17418;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"outside-office-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:141032;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"outside-office-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7838;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"outside-office-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:170017;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"outside-office-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:276699;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:29:\"outside-office-1366x2048.jpeg\";s:5:\"width\";i:1366;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:449929;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:19:\"outside-office.jpeg\";}'),
(1045, 198, '_wp_attached_file', '2024/07/ux-beratung.jpeg'),
(1046, 198, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:24:\"2024/07/ux-beratung.jpeg\";s:8:\"filesize\";i:240983;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"ux-beratung-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12033;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"ux-beratung-1024x682.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79886;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"ux-beratung-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6509;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"ux-beratung-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51167;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"ux-beratung-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145998;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1047, 199, '_wp_attached_file', '2024/07/mockup-soeldner.jpeg'),
(1048, 199, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1416;s:6:\"height\";i:2000;s:4:\"file\";s:28:\"2024/07/mockup-soeldner.jpeg\";s:8:\"filesize\";i:241457;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"mockup-soeldner-212x300.jpeg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12069;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"mockup-soeldner-725x1024.jpeg\";s:5:\"width\";i:725;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79665;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"mockup-soeldner-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5402;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"mockup-soeldner-768x1085.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1085;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87159;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"mockup-soeldner-1087x1536.jpeg\";s:5:\"width\";i:1087;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:150723;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1049, 200, '_wp_attached_file', '2024/07/webentwicklung.jpeg'),
(1050, 200, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1374;s:4:\"file\";s:27:\"2024/07/webentwicklung.jpeg\";s:8:\"filesize\";i:181739;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"webentwicklung-300x206.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7715;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"webentwicklung-1024x703.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:703;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59714;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"webentwicklung-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4499;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"webentwicklung-768x528.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36363;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"webentwicklung-1536x1055.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1055;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:115401;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1052, 18, 'footnotes', ''),
(1054, 201, 'footnotes', ''),
(1056, 18, '_edit_last', '1'),
(1057, 18, 'about_us_section_1_title', 'About us'),
(1058, 18, '_about_us_section_1_title', 'field_669e0ac7c567f'),
(1059, 18, 'about_us_section_1_sub_title', ' <span class=\"block fit-content mb-24 h1\">Meet</span>                             <span class=\"block fit-content bold italic h1\">Studio Moco</span>'),
(1060, 18, '_about_us_section_1_sub_title', 'field_669e0adcc5680'),
(1061, 18, 'about_us_section_1_image', '196'),
(1062, 18, '_about_us_section_1_image', 'field_669e0ae2c5681'),
(1063, 18, 'about_us_section_1_description', 'Hey, Studio Moco hier! Wer wir sind? Nun, wenn wir uns in einem Satz vorstellen müssten,\r\n                            würden\r\n                            wir sagen, dass wir dein kreativer Partner in der digitalen Welt sind. Und wenn wir noch\r\n                            einen\r\n                            Satz mehr zur Verfügung hätten, würden wir sagen, dass wir deine digitale Präsenz (egal ob\r\n                            Software oder Website) zum echten Kundenerlebnis machen.'),
(1064, 18, '_about_us_section_1_description', 'field_669e0af4c5682'),
(1065, 18, 'about_us_section_2_image', '197'),
(1066, 18, '_about_us_section_2_image', 'field_669e0b666f7a6'),
(1067, 18, 'about_us_section_2_title', 'Jedes Projekt steht für eine Geschichte.'),
(1068, 18, '_about_us_section_2_title', 'field_669e0b7c6f7a7'),
(1069, 18, 'about_us_section_2_description', 'Bei Studio Moco glauben wir daran, dass jedes Projekt eine eigene Story verdient. Unser Team (viele talentierte Designer und Entwickler) geht aus diesem Grund Hand in Hand mit dir. Einfach, um deine Wünsche und Ziele zu verstehen. Und die deiner Zielgruppe. Dieser enge Schulterschluss sorgt dafür, dass jedes Projekt nicht nur ein Hingucker, sondern funktional und easy zu bedienen ist.'),
(1070, 18, '_about_us_section_2_description', 'field_669e0b816f7a8'),
(1071, 18, 'about_us_section_3_title', 'Aus diesen drei Service-Bereichen kannst du wählen'),
(1072, 18, '_about_us_section_3_title', 'field_669e0bd8c4747'),
(1073, 18, 'about_us_section_3_image', '198'),
(1074, 18, '_about_us_section_3_image', 'field_669e0be8c4748'),
(1075, 18, 'about_us_section_3_right_title', 'UX BERATUNG'),
(1076, 18, '_about_us_section_3_right_title', 'field_669e0bf9c4749'),
(1077, 18, 'about_us_section_3_right_sub_title', 'Einfach optimale Benutzererlebnisse'),
(1078, 18, '_about_us_section_3_right_sub_title', 'field_669e0c01c474a'),
(1079, 18, 'about_us_section_3_righr_description', 'Von der ersten Analyse bis zur finalen Umsetzung: Unsere maßgeschneiderte UX-Beratung trifft genau ins Schwarze deiner Unternehmensbedürfnisse. Flexibel, agil und immer im Sinne deiner Nutzer - wir sorgen dafür, dass du Lösungen bekommst, die deine Erwartungen sprengen und mit deinem Business wachsen.\r\n\r\n'),
(1080, 18, '_about_us_section_3_righr_description', 'field_669e0c0bc474b'),
(1081, 18, 'about_ust_section_4_image', '199'),
(1082, 18, '_about_ust_section_4_image', 'field_669e0c418f8fa'),
(1083, 18, 'about_ust_section_4_title', 'UX / UI DESIGN'),
(1084, 18, '_about_ust_section_4_title', 'field_669e0c598f8fb'),
(1085, 18, 'about_ust_section_4_sub_title', 'Digitale Erlebnisse mit Begeisterungsfaktor'),
(1086, 18, '_about_ust_section_4_sub_title', 'field_669e0c5f8f8fc'),
(1087, 18, 'about_ust_section_4_description', 'Wir designen Benutzeroberflächen, die nicht nur hübsch aussehen, sondern auch richtig Spaß machen. Unser benutzerzentrierter Ansatz stellt sicher, dass jede Interaktion mit deinem Produkt intuitiv und angenehm ist.'),
(1088, 18, '_about_ust_section_4_description', 'field_669e0c648f8fd'),
(1089, 18, 'about_us_section_5_image', '200'),
(1090, 18, '_about_us_section_5_image', 'field_669e0cbacd4e8'),
(1091, 18, 'about_us_section_5_title', 'WEBENTWICKLUNG'),
(1092, 18, '_about_us_section_5_title', 'field_669e0cd6cd4e9'),
(1093, 18, 'about_us_section_5_sub_title', 'Agile Entwicklung. Skalierbare Lösung.'),
(1094, 18, '_about_us_section_5_sub_title', 'field_669e0cdacd4ea'),
(1095, 18, 'about_us_section_5_description', 'Vom ersten Konzept bis zum Livegang entwickeln wir robuste, skalierbare Websites, die deinen höchsten Performance- und Sicherheitsstandards gerecht werden. Und unser agiler Entwicklungsprozess sorgt ganz nebenbei dafür, dass du maßgeschneiderte Lösungen erhältst, die mit deinem Unternehmen mitwachsen. Win-win!\r\n\r\n'),
(1096, 18, '_about_us_section_5_description', 'field_669e0ce1cd4eb'),
(1097, 201, 'about_us_section_1_title', 'About us'),
(1098, 201, '_about_us_section_1_title', 'field_669e0ac7c567f'),
(1099, 201, 'about_us_section_1_sub_title', ' <span class=\"block fit-content mb-24 h1\">Meet</span>                             <span class=\"block fit-content bold italic h1\">Studio Moco</span>'),
(1100, 201, '_about_us_section_1_sub_title', 'field_669e0adcc5680'),
(1101, 201, 'about_us_section_1_image', '196'),
(1102, 201, '_about_us_section_1_image', 'field_669e0ae2c5681'),
(1103, 201, 'about_us_section_1_description', 'Hey, Studio Moco hier! Wer wir sind? Nun, wenn wir uns in einem Satz vorstellen müssten,\r\n                            würden\r\n                            wir sagen, dass wir dein kreativer Partner in der digitalen Welt sind. Und wenn wir noch\r\n                            einen\r\n                            Satz mehr zur Verfügung hätten, würden wir sagen, dass wir deine digitale Präsenz (egal ob\r\n                            Software oder Website) zum echten Kundenerlebnis machen.'),
(1104, 201, '_about_us_section_1_description', 'field_669e0af4c5682'),
(1105, 201, 'about_us_section_2_image', '197'),
(1106, 201, '_about_us_section_2_image', 'field_669e0b666f7a6'),
(1107, 201, 'about_us_section_2_title', 'Jedes Projekt steht für eine Geschichte.'),
(1108, 201, '_about_us_section_2_title', 'field_669e0b7c6f7a7'),
(1109, 201, 'about_us_section_2_description', 'Bei Studio Moco glauben wir daran, dass jedes Projekt eine eigene Story verdient. Unser Team (viele talentierte Designer und Entwickler) geht aus diesem Grund Hand in Hand mit dir. Einfach, um deine Wünsche und Ziele zu verstehen. Und die deiner Zielgruppe. Dieser enge Schulterschluss sorgt dafür, dass jedes Projekt nicht nur ein Hingucker, sondern funktional und easy zu bedienen ist.'),
(1110, 201, '_about_us_section_2_description', 'field_669e0b816f7a8'),
(1111, 201, 'about_us_section_3_title', 'Aus diesen drei Service-Bereichen kannst du wählen'),
(1112, 201, '_about_us_section_3_title', 'field_669e0bd8c4747'),
(1113, 201, 'about_us_section_3_image', '198'),
(1114, 201, '_about_us_section_3_image', 'field_669e0be8c4748'),
(1115, 201, 'about_us_section_3_right_title', 'UX BERATUNG'),
(1116, 201, '_about_us_section_3_right_title', 'field_669e0bf9c4749'),
(1117, 201, 'about_us_section_3_right_sub_title', 'Einfach optimale Benutzererlebnisse'),
(1118, 201, '_about_us_section_3_right_sub_title', 'field_669e0c01c474a'),
(1119, 201, 'about_us_section_3_righr_description', 'Von der ersten Analyse bis zur finalen Umsetzung: Unsere maßgeschneiderte UX-Beratung trifft genau ins Schwarze deiner Unternehmensbedürfnisse. Flexibel, agil und immer im Sinne deiner Nutzer - wir sorgen dafür, dass du Lösungen bekommst, die deine Erwartungen sprengen und mit deinem Business wachsen.\r\n\r\n'),
(1120, 201, '_about_us_section_3_righr_description', 'field_669e0c0bc474b'),
(1121, 201, 'about_ust_section_4_image', '199'),
(1122, 201, '_about_ust_section_4_image', 'field_669e0c418f8fa'),
(1123, 201, 'about_ust_section_4_title', 'UX / UI DESIGN'),
(1124, 201, '_about_ust_section_4_title', 'field_669e0c598f8fb'),
(1125, 201, 'about_ust_section_4_sub_title', 'Digitale Erlebnisse mit Begeisterungsfaktor'),
(1126, 201, '_about_ust_section_4_sub_title', 'field_669e0c5f8f8fc'),
(1127, 201, 'about_ust_section_4_description', 'Wir designen Benutzeroberflächen, die nicht nur hübsch aussehen, sondern auch richtig Spaß machen. Unser benutzerzentrierter Ansatz stellt sicher, dass jede Interaktion mit deinem Produkt intuitiv und angenehm ist.'),
(1128, 201, '_about_ust_section_4_description', 'field_669e0c648f8fd'),
(1129, 201, 'about_us_section_5_image', '200'),
(1130, 201, '_about_us_section_5_image', 'field_669e0cbacd4e8'),
(1131, 201, 'about_us_section_5_title', 'WEBENTWICKLUNG'),
(1132, 201, '_about_us_section_5_title', 'field_669e0cd6cd4e9'),
(1133, 201, 'about_us_section_5_sub_title', 'Agile Entwicklung. Skalierbare Lösung.'),
(1134, 201, '_about_us_section_5_sub_title', 'field_669e0cdacd4ea'),
(1135, 201, 'about_us_section_5_description', 'Vom ersten Konzept bis zum Livegang entwickeln wir robuste, skalierbare Websites, die deinen höchsten Performance- und Sicherheitsstandards gerecht werden. Und unser agiler Entwicklungsprozess sorgt ganz nebenbei dafür, dass du maßgeschneiderte Lösungen erhältst, die mit deinem Unternehmen mitwachsen. Win-win!\r\n\r\n'),
(1136, 201, '_about_us_section_5_description', 'field_669e0ce1cd4eb'),
(1137, 202, '_edit_last', '1'),
(1138, 202, '_edit_lock', '1721635796:1'),
(1141, 205, 'footnotes', ''),
(1143, 18, 'about_us_section_6_title', 'Get in contact with Studio Moco'),
(1144, 18, '_about_us_section_6_title', 'field_669e10a2cc1c8'),
(1145, 18, 'about_us_section_6_description', '  Glückliche User, mehr Expertise im Projekt und dann nehmen wir dir sogar noch die Arbeit\r\n                        ab\r\n                        - mit UX/UI Design, UX Beratung oder Webentwicklung. Geht\'s noch besser? Wohl kaum. Du\r\n                        siehst: Das nächste Level von dem alle immer reden ist praktisch nur eine Kontaktanfrage\r\n                        zu\r\n                        uns entfernt.'),
(1146, 18, '_about_us_section_6_description', 'field_669e10aecc1c9'),
(1147, 205, 'about_us_section_1_title', 'About us'),
(1148, 205, '_about_us_section_1_title', 'field_669e0ac7c567f'),
(1149, 205, 'about_us_section_1_sub_title', ' <span class=\"block fit-content mb-24 h1\">Meet</span>                             <span class=\"block fit-content bold italic h1\">Studio Moco</span>'),
(1150, 205, '_about_us_section_1_sub_title', 'field_669e0adcc5680'),
(1151, 205, 'about_us_section_1_image', '196'),
(1152, 205, '_about_us_section_1_image', 'field_669e0ae2c5681'),
(1153, 205, 'about_us_section_1_description', 'Hey, Studio Moco hier! Wer wir sind? Nun, wenn wir uns in einem Satz vorstellen müssten,\r\n                            würden\r\n                            wir sagen, dass wir dein kreativer Partner in der digitalen Welt sind. Und wenn wir noch\r\n                            einen\r\n                            Satz mehr zur Verfügung hätten, würden wir sagen, dass wir deine digitale Präsenz (egal ob\r\n                            Software oder Website) zum echten Kundenerlebnis machen.'),
(1154, 205, '_about_us_section_1_description', 'field_669e0af4c5682'),
(1155, 205, 'about_us_section_2_image', '197'),
(1156, 205, '_about_us_section_2_image', 'field_669e0b666f7a6'),
(1157, 205, 'about_us_section_2_title', 'Jedes Projekt steht für eine Geschichte.'),
(1158, 205, '_about_us_section_2_title', 'field_669e0b7c6f7a7'),
(1159, 205, 'about_us_section_2_description', 'Bei Studio Moco glauben wir daran, dass jedes Projekt eine eigene Story verdient. Unser Team (viele talentierte Designer und Entwickler) geht aus diesem Grund Hand in Hand mit dir. Einfach, um deine Wünsche und Ziele zu verstehen. Und die deiner Zielgruppe. Dieser enge Schulterschluss sorgt dafür, dass jedes Projekt nicht nur ein Hingucker, sondern funktional und easy zu bedienen ist.'),
(1160, 205, '_about_us_section_2_description', 'field_669e0b816f7a8'),
(1161, 205, 'about_us_section_3_title', 'Aus diesen drei Service-Bereichen kannst du wählen'),
(1162, 205, '_about_us_section_3_title', 'field_669e0bd8c4747'),
(1163, 205, 'about_us_section_3_image', '198'),
(1164, 205, '_about_us_section_3_image', 'field_669e0be8c4748'),
(1165, 205, 'about_us_section_3_right_title', 'UX BERATUNG'),
(1166, 205, '_about_us_section_3_right_title', 'field_669e0bf9c4749'),
(1167, 205, 'about_us_section_3_right_sub_title', 'Einfach optimale Benutzererlebnisse'),
(1168, 205, '_about_us_section_3_right_sub_title', 'field_669e0c01c474a'),
(1169, 205, 'about_us_section_3_righr_description', 'Von der ersten Analyse bis zur finalen Umsetzung: Unsere maßgeschneiderte UX-Beratung trifft genau ins Schwarze deiner Unternehmensbedürfnisse. Flexibel, agil und immer im Sinne deiner Nutzer - wir sorgen dafür, dass du Lösungen bekommst, die deine Erwartungen sprengen und mit deinem Business wachsen.\r\n\r\n'),
(1170, 205, '_about_us_section_3_righr_description', 'field_669e0c0bc474b'),
(1171, 205, 'about_ust_section_4_image', '199'),
(1172, 205, '_about_ust_section_4_image', 'field_669e0c418f8fa'),
(1173, 205, 'about_ust_section_4_title', 'UX / UI DESIGN'),
(1174, 205, '_about_ust_section_4_title', 'field_669e0c598f8fb'),
(1175, 205, 'about_ust_section_4_sub_title', 'Digitale Erlebnisse mit Begeisterungsfaktor'),
(1176, 205, '_about_ust_section_4_sub_title', 'field_669e0c5f8f8fc'),
(1177, 205, 'about_ust_section_4_description', 'Wir designen Benutzeroberflächen, die nicht nur hübsch aussehen, sondern auch richtig Spaß machen. Unser benutzerzentrierter Ansatz stellt sicher, dass jede Interaktion mit deinem Produkt intuitiv und angenehm ist.'),
(1178, 205, '_about_ust_section_4_description', 'field_669e0c648f8fd'),
(1179, 205, 'about_us_section_5_image', '200'),
(1180, 205, '_about_us_section_5_image', 'field_669e0cbacd4e8'),
(1181, 205, 'about_us_section_5_title', 'WEBENTWICKLUNG'),
(1182, 205, '_about_us_section_5_title', 'field_669e0cd6cd4e9'),
(1183, 205, 'about_us_section_5_sub_title', 'Agile Entwicklung. Skalierbare Lösung.'),
(1184, 205, '_about_us_section_5_sub_title', 'field_669e0cdacd4ea'),
(1185, 205, 'about_us_section_5_description', 'Vom ersten Konzept bis zum Livegang entwickeln wir robuste, skalierbare Websites, die deinen höchsten Performance- und Sicherheitsstandards gerecht werden. Und unser agiler Entwicklungsprozess sorgt ganz nebenbei dafür, dass du maßgeschneiderte Lösungen erhältst, die mit deinem Unternehmen mitwachsen. Win-win!\r\n\r\n'),
(1186, 205, '_about_us_section_5_description', 'field_669e0ce1cd4eb'),
(1187, 205, 'about_us_section_6_title', 'Get in contact with Studio Moco'),
(1188, 205, '_about_us_section_6_title', 'field_669e10a2cc1c8'),
(1189, 205, 'about_us_section_6_description', '  Glückliche User, mehr Expertise im Projekt und dann nehmen wir dir sogar noch die Arbeit\r\n                        ab\r\n                        - mit UX/UI Design, UX Beratung oder Webentwicklung. Geht\'s noch besser? Wohl kaum. Du\r\n                        siehst: Das nächste Level von dem alle immer reden ist praktisch nur eine Kontaktanfrage\r\n                        zu\r\n                        uns entfernt.'),
(1190, 205, '_about_us_section_6_description', 'field_669e10aecc1c9'),
(1197, 214, 'footnotes', ''),
(1199, 214, 'home_page_section_1_image', '69'),
(1200, 214, '_home_page_section_1_image', 'field_669a1138682a1'),
(1201, 214, 'home_page_section_1_title', '<span class=\"block fit-content mb-24 h1\">Crafting</span>\r\n<span class=\"block fit-content mb-24 h1 second-headline\">Magical</span>\r\n<span class=\"block fit-content bold italic h1\">User Experiences.</span>'),
(1202, 214, '_home_page_section_1_title', 'field_669a1160682a2'),
(1203, 214, 'home_page_section_1_desc', 'Deine Reise zu faszinierenden User Experiences, sie beginnt genau hier.'),
(1204, 214, '_home_page_section_1_desc', 'field_669a1179682a3'),
(1205, 214, 'home_page_section_2_title', 'What we do?'),
(1206, 214, '_home_page_section_2_title', 'field_669a1fd6f56ff'),
(1207, 214, 'home_page_section_2_sub_title', 'Making our customers feel awesome.'),
(1208, 214, '_home_page_section_2_sub_title', 'field_669a1fecf5700'),
(1209, 214, 'home_page_section_2_box_1_title', 'UX Beratung'),
(1210, 214, '_home_page_section_2_box_1_title', 'field_669a200cf5702'),
(1211, 214, 'home_page_section_2_box_1_sub_title', 'Think It'),
(1212, 214, '_home_page_section_2_box_1_sub_title', 'field_669a2018f5703'),
(1213, 214, 'home_page_section_2_box_1_description', 'Intuitive Lösungen durch strategisches Denken. Wir navigieren deine Kunden durch die Komplexität der User Journeys.'),
(1214, 214, '_home_page_section_2_box_1_description', 'field_669a201ef5704'),
(1215, 214, 'home_page_section_2_box_2_title', 'UX &amp; UI Design'),
(1216, 214, '_home_page_section_2_box_2_title', 'field_669a206af5705'),
(1217, 214, 'home_page_section_2_box_2_sub_title', 'Visualize It'),
(1218, 214, '_home_page_section_2_box_2_sub_title', 'field_669a2073f5706'),
(1219, 214, 'home_page_section_2_box_2_de', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die deine Kunden wirklich begeistern.'),
(1220, 214, '_home_page_section_2_box_2_de', 'field_669a207cf5707'),
(1221, 214, 'home_page_section_2_box_3_title', 'Webentwicklung'),
(1222, 214, '_home_page_section_2_box_3_title', 'field_669a208cf5708'),
(1223, 214, 'home_page_section_2_box_3_sub_title', 'Build It'),
(1224, 214, '_home_page_section_2_box_3_sub_title', 'field_669a209bf5709'),
(1225, 214, 'home_page_section_2_box_3_description', 'Cleane Codes, dynamische Websites. Entwickelt, um zu performen. Aber vor allem, um deine Kunden zu beeindrucken.'),
(1226, 214, '_home_page_section_2_box_3_description', 'field_669a20a3f570a'),
(1227, 214, 'home_page_section_2_big_image', '89'),
(1228, 214, '_home_page_section_2_big_image', 'field_669a23817da17'),
(1229, 214, 'home_page_section_3_title', 'Case Studies'),
(1230, 214, '_home_page_section_3_title', 'field_669a249ab50b0'),
(1231, 214, 'home_page_section_3_sub_title', 'Success in Action'),
(1232, 214, '_home_page_section_3_sub_title', 'field_669a24b1b50b1'),
(1233, 214, 'home_page_section_3_description', 'Die Experience Deiner User darf ruhig erstklassig sein. Genau wie die digitale Transformation deiner Marke, die wir praktisch ”ganz nebenbei” aufpolieren. Was das bedeutet? Mach dir am besten selbst ein Bild.'),
(1234, 214, '_home_page_section_3_description', 'field_669a24b6b50b2'),
(1235, 214, 'home_page_section_4_title', 'About Us'),
(1236, 214, '_home_page_section_4_title', 'field_669a4accaeb06'),
(1237, 214, 'home_page_section_4_sub_title', '  <span class=\"block fw-regular\">Meet</span>\r\n                                    <span class=\"block bold\">Studio</span>\r\n                                    <span class=\"block bold text-right\">Moco</span>'),
(1238, 214, '_home_page_section_4_sub_title', 'field_669a4ae3aeb07'),
(1239, 214, 'home_page_section_4_image_1', '117'),
(1240, 214, '_home_page_section_4_image_1', 'field_669a4afbaeb08'),
(1241, 214, 'home_page_section_4_image_2', '119'),
(1242, 214, '_home_page_section_4_image_2', 'field_669a4b09aeb09'),
(1243, 214, 'home_page_section_4_description', 'Bei Studio Moco vereinen wir kreative Köpfe, strategische Denker und digitale Innovatoren. Gemeinsam haben wir ein Ziel: Für unsere Kunden digitale Landschaft zu kreieren, mit denen sie sich unsterblich machen. die Herzen der User im Sturm erobern.'),
(1244, 214, '_home_page_section_4_description', 'field_669a4b1baeb0a'),
(1245, 214, 'home_page_section_4_button_text', 'Mehr zu Studio Moco'),
(1246, 214, '_home_page_section_4_button_text', 'field_669a4b2faeb0b'),
(1247, 214, 'home_page_section_4_button_url', '/about-us'),
(1248, 214, '_home_page_section_4_button_url', 'field_669a4b3daeb0c'),
(1249, 214, 'home_page_section_4_big_image', '122'),
(1250, 214, '_home_page_section_4_big_image', 'field_669a4ca2e5c02'),
(1251, 214, 'home_page_section_5_title', 'Testimonials'),
(1252, 214, '_home_page_section_5_title', 'field_669a4d7ef6bed'),
(1253, 214, 'home_page_section_5_sub_title', 'Our Customers Rock!'),
(1254, 214, '_home_page_section_5_sub_title', 'field_669a4dbaf6bee'),
(1255, 214, 'home_page_section_6_customer_logos_0_logo', '134'),
(1256, 214, '_home_page_section_6_customer_logos_0_logo', 'field_669a5221be075'),
(1257, 214, 'home_page_section_6_customer_logos_1_logo', '135'),
(1258, 214, '_home_page_section_6_customer_logos_1_logo', 'field_669a5221be075'),
(1259, 214, 'home_page_section_6_customer_logos_2_logo', '136'),
(1260, 214, '_home_page_section_6_customer_logos_2_logo', 'field_669a5221be075'),
(1261, 214, 'home_page_section_6_customer_logos_3_logo', '137'),
(1262, 214, '_home_page_section_6_customer_logos_3_logo', 'field_669a5221be075'),
(1263, 214, 'home_page_section_6_customer_logos_4_logo', '138'),
(1264, 214, '_home_page_section_6_customer_logos_4_logo', 'field_669a5221be075'),
(1265, 214, 'home_page_section_6_customer_logos_5_logo', '139'),
(1266, 214, '_home_page_section_6_customer_logos_5_logo', 'field_669a5221be075'),
(1267, 214, 'home_page_section_6_customer_logos_6_logo', '140'),
(1268, 214, '_home_page_section_6_customer_logos_6_logo', 'field_669a5221be075'),
(1269, 214, 'home_page_section_6_customer_logos_7_logo', '141'),
(1270, 214, '_home_page_section_6_customer_logos_7_logo', 'field_669a5221be075'),
(1271, 214, 'home_page_section_6_customer_logos_8_logo', '142'),
(1272, 214, '_home_page_section_6_customer_logos_8_logo', 'field_669a5221be075'),
(1273, 214, 'home_page_section_6_customer_logos_9_logo', '143'),
(1274, 214, '_home_page_section_6_customer_logos_9_logo', 'field_669a5221be075'),
(1275, 214, 'home_page_section_6_customer_logos', '10'),
(1276, 214, '_home_page_section_6_customer_logos', 'field_669a51e2be074'),
(1277, 214, 'home_page_section_7_title', 'Get in contact with Studio Moco'),
(1278, 214, '_home_page_section_7_title', 'field_669a541ec763f'),
(1279, 214, 'home_page_section_7_description', 'Glückliche User, mehr Expertise im Projekt und dann nehmen wir dir sogar noch die Arbeit ab - mit UX/UI Design, UX Beratung oder Webentwicklung. Geht\'s noch besser? Wohl kaum. Du siehst: Das nächste Level von dem alle immer reden ist praktisch nur eine Kontaktanfrage zu uns entfernt.'),
(1280, 214, '_home_page_section_7_description', 'field_669a542cc7640'),
(1281, 214, 'home_page_section_8_motto', 'Schreiben Sie uns'),
(1282, 214, '_home_page_section_8_motto', 'field_669a54df72820'),
(1283, 104, 'case_studio_image_1', '105'),
(1284, 104, '_case_studio_image_1', 'field_669e382b24729'),
(1285, 100, 'case_studio_image_1', '101'),
(1286, 100, '_case_studio_image_1', 'field_669e382b24729'),
(1287, 96, 'case_studio_image_1', '97'),
(1288, 96, '_case_studio_image_1', 'field_669e382b24729'),
(1289, 37, 'case_studio_image_1', '38'),
(1290, 37, '_case_studio_image_1', 'field_669e382b24729'),
(1291, 216, '_wp_attached_file', '2024/07/main-page-scaled.jpg'),
(1292, 216, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2327;s:6:\"height\";i:2560;s:4:\"file\";s:28:\"2024/07/main-page-scaled.jpg\";s:8:\"filesize\";i:298681;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"main-page-273x300.jpg\";s:5:\"width\";i:273;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11965;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"main-page-931x1024.jpg\";s:5:\"width\";i:931;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81482;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"main-page-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5041;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"main-page-768x845.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:845;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58485;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"main-page-1396x1536.jpg\";s:5:\"width\";i:1396;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:144838;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"main-page-1862x2048.jpg\";s:5:\"width\";i:1862;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:218006;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"main-page.jpg\";}'),
(1293, 217, '_wp_attached_file', '2024/07/main-page-1-scaled.jpg'),
(1294, 217, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2327;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2024/07/main-page-1-scaled.jpg\";s:8:\"filesize\";i:246224;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"main-page-1-273x300.jpg\";s:5:\"width\";i:273;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10174;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"main-page-1-931x1024.jpg\";s:5:\"width\";i:931;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63172;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"main-page-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4518;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"main-page-1-768x845.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:845;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46800;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"main-page-1-1396x1536.jpg\";s:5:\"width\";i:1396;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:115145;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"main-page-1-1862x2048.jpg\";s:5:\"width\";i:1862;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:176580;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"main-page-1.jpg\";}'),
(1295, 218, '_wp_attached_file', '2024/07/main-scaled.jpg'),
(1296, 218, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2327;s:6:\"height\";i:2560;s:4:\"file\";s:23:\"2024/07/main-scaled.jpg\";s:8:\"filesize\";i:267931;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"main-273x300.jpg\";s:5:\"width\";i:273;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11599;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"main-931x1024.jpg\";s:5:\"width\";i:931;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69336;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"main-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5009;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"main-768x845.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:845;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50744;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:18:\"main-1396x1536.jpg\";s:5:\"width\";i:1396;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125744;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:18:\"main-1862x2048.jpg\";s:5:\"width\";i:1862;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:192043;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"main.jpg\";}'),
(1297, 219, '_wp_attached_file', '2024/07/main-1-scaled.jpg'),
(1298, 219, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2327;s:6:\"height\";i:2560;s:4:\"file\";s:25:\"2024/07/main-1-scaled.jpg\";s:8:\"filesize\";i:303394;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"main-1-273x300.jpg\";s:5:\"width\";i:273;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12416;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"main-1-931x1024.jpg\";s:5:\"width\";i:931;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79945;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"main-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5238;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"main-1-768x845.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:845;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59651;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"main-1-1396x1536.jpg\";s:5:\"width\";i:1396;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145602;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"main-1-1862x2048.jpg\";s:5:\"width\";i:1862;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:223804;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"main-1.jpg\";}'),
(1299, 220, '_wp_attached_file', '2024/07/Screenshot-14.png'),
(1300, 220, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:293;s:6:\"height\";i:60;s:4:\"file\";s:25:\"2024/07/Screenshot-14.png\";s:8:\"filesize\";i:10222;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot-14-150x60.png\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3977;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1301, 221, '_wp_attached_file', '2024/07/project-meeting-1-scaled.jpeg');
INSERT INTO `mc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1302, 221, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:37:\"2024/07/project-meeting-1-scaled.jpeg\";s:8:\"filesize\";i:314776;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"project-meeting-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11882;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"project-meeting-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70454;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"project-meeting-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5060;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"project-meeting-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45437;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"project-meeting-1-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132852;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:32:\"project-meeting-1-2048x1366.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:216860;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"project-meeting-1.jpeg\";}'),
(1303, 222, '_wp_attached_file', '2024/07/WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800.jpg'),
(1304, 222, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:96;s:6:\"height\";i:96;s:4:\"file\";s:62:\"2024/07/WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800.jpg\";s:8:\"filesize\";i:3126;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1305, 223, '_wp_attached_file', '2024/07/cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800.jpg'),
(1306, 223, '_wp_attachment_context', 'site-icon'),
(1307, 223, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:70:\"2024/07/cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800.jpg\";s:8:\"filesize\";i:26374;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:70:\"cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12679;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:70:\"cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4608;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:70:\"cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11046;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:70:\"cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6217;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:70:\"cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6329;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:68:\"cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1023;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1308, 13, 'rank_math_seo_score', '16'),
(1309, 13, 'rank_math_title', '%sitename% - Crafting Magical User Experiences'),
(1310, 13, 'rank_math_internal_links_processed', '1'),
(1311, 18, 'rank_math_seo_score', '12'),
(1312, 18, 'rank_math_internal_links_processed', '1'),
(1313, 224, 'footnotes', ''),
(1314, 224, 'about_us_section_1_title', 'About us'),
(1315, 224, '_about_us_section_1_title', 'field_669e0ac7c567f'),
(1316, 224, 'about_us_section_1_sub_title', ' <span class=\"block fit-content mb-24 h1\">Meet</span>                             <span class=\"block fit-content bold italic h1\">Studio Moco</span>'),
(1317, 224, '_about_us_section_1_sub_title', 'field_669e0adcc5680'),
(1318, 224, 'about_us_section_1_image', '196'),
(1319, 224, '_about_us_section_1_image', 'field_669e0ae2c5681'),
(1320, 224, 'about_us_section_1_description', 'Hey, Studio Moco hier! Wer wir sind? Nun, wenn wir uns in einem Satz vorstellen müssten,\r\n                            würden\r\n                            wir sagen, dass wir dein kreativer Partner in der digitalen Welt sind. Und wenn wir noch\r\n                            einen\r\n                            Satz mehr zur Verfügung hätten, würden wir sagen, dass wir deine digitale Präsenz (egal ob\r\n                            Software oder Website) zum echten Kundenerlebnis machen.'),
(1321, 224, '_about_us_section_1_description', 'field_669e0af4c5682'),
(1322, 224, 'about_us_section_2_image', '197'),
(1323, 224, '_about_us_section_2_image', 'field_669e0b666f7a6'),
(1324, 224, 'about_us_section_2_title', 'Jedes Projekt steht für eine Geschichte.'),
(1325, 224, '_about_us_section_2_title', 'field_669e0b7c6f7a7'),
(1326, 224, 'about_us_section_2_description', 'Bei Studio Moco glauben wir daran, dass jedes Projekt eine eigene Story verdient. Unser Team (viele talentierte Designer und Entwickler) geht aus diesem Grund Hand in Hand mit dir. Einfach, um deine Wünsche und Ziele zu verstehen. Und die deiner Zielgruppe. Dieser enge Schulterschluss sorgt dafür, dass jedes Projekt nicht nur ein Hingucker, sondern funktional und easy zu bedienen ist.'),
(1327, 224, '_about_us_section_2_description', 'field_669e0b816f7a8'),
(1328, 224, 'about_us_section_3_title', 'Aus diesen drei Service-Bereichen kannst du wählen'),
(1329, 224, '_about_us_section_3_title', 'field_669e0bd8c4747'),
(1330, 224, 'about_us_section_3_image', '198'),
(1331, 224, '_about_us_section_3_image', 'field_669e0be8c4748'),
(1332, 224, 'about_us_section_3_right_title', 'UX BERATUNG'),
(1333, 224, '_about_us_section_3_right_title', 'field_669e0bf9c4749'),
(1334, 224, 'about_us_section_3_right_sub_title', 'Einfach optimale Benutzererlebnisse'),
(1335, 224, '_about_us_section_3_right_sub_title', 'field_669e0c01c474a'),
(1336, 224, 'about_us_section_3_righr_description', 'Von der ersten Analyse bis zur finalen Umsetzung: Unsere maßgeschneiderte UX-Beratung trifft genau ins Schwarze deiner Unternehmensbedürfnisse. Flexibel, agil und immer im Sinne deiner Nutzer - wir sorgen dafür, dass du Lösungen bekommst, die deine Erwartungen sprengen und mit deinem Business wachsen.\r\n\r\n'),
(1337, 224, '_about_us_section_3_righr_description', 'field_669e0c0bc474b'),
(1338, 224, 'about_ust_section_4_image', '199'),
(1339, 224, '_about_ust_section_4_image', 'field_669e0c418f8fa'),
(1340, 224, 'about_ust_section_4_title', 'UX / UI DESIGN'),
(1341, 224, '_about_ust_section_4_title', 'field_669e0c598f8fb'),
(1342, 224, 'about_ust_section_4_sub_title', 'Digitale Erlebnisse mit Begeisterungsfaktor'),
(1343, 224, '_about_ust_section_4_sub_title', 'field_669e0c5f8f8fc'),
(1344, 224, 'about_ust_section_4_description', 'Wir designen Benutzeroberflächen, die nicht nur hübsch aussehen, sondern auch richtig Spaß machen. Unser benutzerzentrierter Ansatz stellt sicher, dass jede Interaktion mit deinem Produkt intuitiv und angenehm ist.'),
(1345, 224, '_about_ust_section_4_description', 'field_669e0c648f8fd'),
(1346, 224, 'about_us_section_5_image', '200'),
(1347, 224, '_about_us_section_5_image', 'field_669e0cbacd4e8'),
(1348, 224, 'about_us_section_5_title', 'WEBENTWICKLUNG'),
(1349, 224, '_about_us_section_5_title', 'field_669e0cd6cd4e9'),
(1350, 224, 'about_us_section_5_sub_title', 'Agile Entwicklung. Skalierbare Lösung.'),
(1351, 224, '_about_us_section_5_sub_title', 'field_669e0cdacd4ea'),
(1352, 224, 'about_us_section_5_description', 'Vom ersten Konzept bis zum Livegang entwickeln wir robuste, skalierbare Websites, die deinen höchsten Performance- und Sicherheitsstandards gerecht werden. Und unser agiler Entwicklungsprozess sorgt ganz nebenbei dafür, dass du maßgeschneiderte Lösungen erhältst, die mit deinem Unternehmen mitwachsen. Win-win!\r\n\r\n'),
(1353, 224, '_about_us_section_5_description', 'field_669e0ce1cd4eb'),
(1354, 224, 'about_us_section_6_title', 'Get in contact with Studio Moco'),
(1355, 224, '_about_us_section_6_title', 'field_669e10a2cc1c8'),
(1356, 224, 'about_us_section_6_description', '  Glückliche User, mehr Expertise im Projekt und dann nehmen wir dir sogar noch die Arbeit\r\n                        ab\r\n                        - mit UX/UI Design, UX Beratung oder Webentwicklung. Geht\'s noch besser? Wohl kaum. Du\r\n                        siehst: Das nächste Level von dem alle immer reden ist praktisch nur eine Kontaktanfrage\r\n                        zu\r\n                        uns entfernt.'),
(1357, 224, '_about_us_section_6_description', 'field_669e10aecc1c9'),
(1358, 16, '_edit_last', '1'),
(1359, 16, 'rank_math_internal_links_processed', '1'),
(1360, 20, '_edit_last', '1'),
(1361, 20, '_wp_page_template', 'default'),
(1362, 20, 'rank_math_internal_links_processed', '1'),
(1367, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:5345:\"<h2 class=\"wp-block-heading\">Wer wir sind</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Die Adresse unserer Website ist: https://studiomoco.de.</p><h2 class=\"wp-block-heading\">Kommentare</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn Besucher Kommentare auf der Website schreiben, sammeln wir die Daten, die im Kommentar-Formular angezeigt werden, außerdem die IP-Adresse des Besuchers und den User-Agent-String (damit wird der Browser identifiziert), um die Erkennung von Spam zu unterstützen.</p><p>Aus deiner E-Mail-Adresse kann eine anonymisierte Zeichenfolge erstellt (auch Hash genannt) und dem Gravatar-Dienst übergeben werden, um zu prüfen, ob du diesen benutzt. Die Datenschutzerklärung des Gravatar-Dienstes findest du hier: https://automattic.com/privacy/. Nachdem dein Kommentar freigegeben wurde, ist dein Profilbild öffentlich im Kontext deines Kommentars sichtbar.</p><h2 class=\"wp-block-heading\">Medien</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du ein registrierter Benutzer bist und Fotos auf diese Website lädst, solltest du vermeiden, Fotos mit einem EXIF-GPS-Standort hochzuladen. Besucher dieser Website könnten Fotos, die auf dieser Website gespeichert sind, herunterladen und deren Standort-Informationen extrahieren.</p><h2 class=\"wp-block-heading\">Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du einen Kommentar auf unserer Website schreibst, kann das eine Einwilligung sein, deinen Namen, E-Mail-Adresse und Website in Cookies zu speichern. Dies ist eine Komfortfunktion, damit du nicht, wenn du einen weiteren Kommentar schreibst, all diese Daten erneut eingeben musst. Diese Cookies werden ein Jahr lang gespeichert.</p><p>Falls du ein Konto hast und dich auf dieser Website anmeldest, werden wir ein temporäres Cookie setzen, um festzustellen, ob dein Browser Cookies akzeptiert. Dieses Cookie enthält keine personenbezogenen Daten und wird verworfen, wenn du deinen Browser schließt.</p><p>Wenn du dich anmeldest, werden wir einige Cookies einrichten, um deine Anmeldeinformationen und Anzeigeoptionen zu speichern. Anmelde-Cookies verfallen nach zwei Tagen und Cookies für die Anzeigeoptionen nach einem Jahr. Falls du bei der Anmeldung „Angemeldet bleiben“ auswählst, wird deine Anmeldung zwei Wochen lang aufrechterhalten. Mit der Abmeldung aus deinem Konto werden die Anmelde-Cookies gelöscht.</p><p>Wenn du einen Artikel bearbeitest oder veröffentlichst, wird ein zusätzlicher Cookie in deinem Browser gespeichert. Dieser Cookie enthält keine personenbezogenen Daten und verweist nur auf die Beitrags-ID des Artikels, den du gerade bearbeitet hast. Der Cookie verfällt nach einem Tag.</p><h2 class=\"wp-block-heading\">Eingebettete Inhalte von anderen Websites</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Beiträge auf dieser Website können eingebettete Inhalte beinhalten (z. B. Videos, Bilder, Beiträge etc.). Eingebettete Inhalte von anderen Websites verhalten sich exakt so, als ob der Besucher die andere Website besucht hätte.</p><p>Diese Websites können Daten über dich sammeln, Cookies benutzen, zusätzliche Tracking-Dienste von Dritten einbetten und deine Interaktion mit diesem eingebetteten Inhalt aufzeichnen, inklusive deiner Interaktion mit dem eingebetteten Inhalt, falls du ein Konto hast und auf dieser Website angemeldet bist.</p><h2 class=\"wp-block-heading\">Mit wem wir deine Daten teilen</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du eine Zurücksetzung des Passworts beantragst, wird deine IP-Adresse in der E-Mail zur Zurücksetzung enthalten sein.</p><h2 class=\"wp-block-heading\">Wie lange wir deine Daten speichern</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du einen Kommentar schreibst, wird dieser inklusive Metadaten zeitlich unbegrenzt gespeichert. Auf diese Art können wir Folgekommentare automatisch erkennen und freigeben, anstatt sie in einer Moderations-Warteschlange festzuhalten.</p><p>Für Benutzer, die sich auf unserer Website registrieren, speichern wir zusätzlich die persönlichen Informationen, die sie in ihren Benutzerprofilen angeben. Alle Benutzer können jederzeit ihre persönlichen Informationen einsehen, verändern oder löschen (der Benutzername kann nicht verändert werden). Administratoren der Website können diese Informationen ebenfalls einsehen und verändern.</p><h2 class=\"wp-block-heading\">Welche Rechte du an deinen Daten hast</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du ein Konto auf dieser Website besitzt oder Kommentare geschrieben hast, kannst du einen Export deiner personenbezogenen Daten bei uns anfordern, inklusive aller Daten, die du uns mitgeteilt hast. Darüber hinaus kannst du die Löschung aller personenbezogenen Daten, die wir von dir gespeichert haben, anfordern. Dies umfasst nicht die Daten, die wir aufgrund administrativer, rechtlicher oder sicherheitsrelevanter Notwendigkeiten aufbewahren müssen.</p><h2 class=\"wp-block-heading\">Wohin deine Daten gesendet werden</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Besucher-Kommentare könnten von einem automatisierten Dienst zur Spam-Erkennung untersucht werden.</p>\";s:5:\"added\";i:1721652370;}'),
(1368, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:43:\"Complianz | The Privacy Suite for WordPress\";s:11:\"policy_text\";s:519:\"<p>Diese Website verwendet die Privacy Suite für WordPress von Complianz, um browser- und gerätebasierte Einwilligungen zu sammeln und aufzuzeichnen. Für diese Funktion wird deine IP-Adresse anonymisiert und in unserer Datenbank gespeichert.&nbsp;Dieser Dienst verarbeitet keine persönlich identifizierbaren Informationen und gibt keine Daten an den Dienstanbieter weiter.&nbsp;Weitere Informationen findest du in der Complianz <a href=\"https://complianz.io/legal/privacy-statement/\">Datenschutzerklärung</a>.</p>\n\";s:5:\"added\";i:1721653477;}'),
(1369, 162, 'rank_math_internal_links_processed', '1'),
(1370, 161, 'rank_math_internal_links_processed', '1'),
(1371, 160, 'rank_math_internal_links_processed', '1'),
(1372, 159, 'rank_math_internal_links_processed', '1'),
(1373, 158, 'rank_math_internal_links_processed', '1'),
(1374, 157, 'rank_math_internal_links_processed', '1'),
(1375, 156, 'rank_math_internal_links_processed', '1'),
(1376, 155, 'rank_math_internal_links_processed', '1'),
(1377, 154, 'rank_math_internal_links_processed', '1'),
(1378, 153, 'rank_math_internal_links_processed', '1'),
(1379, 1, '_cmplz_scanned_post', '1'),
(1380, 18, '_cmplz_scanned_post', '1'),
(1381, 16, '_cmplz_scanned_post', '1'),
(1382, 228, 'rank_math_internal_links_processed', '1'),
(1383, 229, '_menu_item_type', 'post_type'),
(1384, 229, '_menu_item_menu_item_parent', '0'),
(1385, 229, '_menu_item_object_id', '228'),
(1386, 229, '_menu_item_object', 'page'),
(1387, 229, '_menu_item_target', ''),
(1388, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1389, 229, '_menu_item_xfn', ''),
(1390, 229, '_menu_item_url', ''),
(1391, 104, 'rank_math_internal_links_processed', '1'),
(1392, 100, 'rank_math_internal_links_processed', '1'),
(1393, 96, 'rank_math_internal_links_processed', '1'),
(1394, 64, 'rank_math_internal_links_processed', '1'),
(1395, 63, 'rank_math_internal_links_processed', '1'),
(1398, 60, 'rank_math_internal_links_processed', '1'),
(1399, 37, 'rank_math_internal_links_processed', '1'),
(1400, 24, 'rank_math_internal_links_processed', '1'),
(1401, 22, 'rank_math_internal_links_processed', '1'),
(1402, 1, 'rank_math_internal_links_processed', '1'),
(1403, 13, 'home_page_section_2_box_2_description', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die deine Kunden wirklich begeistern.'),
(1404, 13, '_home_page_section_2_box_2_description', 'field_669a207cf5707'),
(1405, 13, 'cmplz_hide_cookiebanner', ''),
(1406, 214, 'home_page_section_2_box_2_description', 'Von Wireframes bis zum finalen Design, wir bringen genau die Ideen zum Leben, die deine Kunden wirklich begeistern.'),
(1407, 214, '_home_page_section_2_box_2_description', 'field_669a207cf5707'),
(1408, 228, '_cmplz_scanned_post', '1'),
(1409, 13, '_cmplz_scanned_post', '1'),
(1410, 158, '_cmplz_scanned_post', '1'),
(1411, 233, '_edit_lock', '1734330303:1'),
(1412, 233, 'rank_math_internal_links_processed', '1'),
(1413, 234, '_wp_attached_file', '2024/10/M5-scaled.jpg'),
(1414, 234, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2327;s:6:\"height\";i:2560;s:4:\"file\";s:21:\"2024/10/M5-scaled.jpg\";s:8:\"filesize\";i:309665;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"M5-273x300.jpg\";s:5:\"width\";i:273;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11085;}s:5:\"large\";a:5:{s:4:\"file\";s:15:\"M5-931x1024.jpg\";s:5:\"width\";i:931;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80971;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"M5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4743;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"M5-768x845.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:845;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58333;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:16:\"M5-1396x1536.jpg\";s:5:\"width\";i:1396;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:151029;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:16:\"M5-1862x2048.jpg\";s:5:\"width\";i:1862;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:226312;}s:18:\"cmplz_banner_image\";a:5:{s:4:\"file\";s:14:\"M5-350x100.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5525;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:6:\"M5.jpg\";}'),
(1415, 235, '_wp_attached_file', '2024/10/M3-scaled.jpg'),
(1416, 235, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"2024/10/M3-scaled.jpg\";s:8:\"filesize\";i:287464;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"M3-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9027;}s:5:\"large\";a:5:{s:4:\"file\";s:15:\"M3-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66017;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"M3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5101;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"M3-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40333;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:15:\"M3-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124920;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:16:\"M3-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:203539;}s:18:\"cmplz_banner_image\";a:5:{s:4:\"file\";s:14:\"M3-350x100.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8190;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:6:\"M3.jpg\";}'),
(1417, 236, '_wp_attached_file', '2024/10/M55-scaled.jpg'),
(1418, 236, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:22:\"2024/10/M55-scaled.jpg\";s:8:\"filesize\";i:212672;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"M55-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7036;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"M55-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51990;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"M55-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4819;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"M55-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32452;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:16:\"M55-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:99011;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:17:\"M55-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:153321;}s:18:\"cmplz_banner_image\";a:5:{s:4:\"file\";s:15:\"M55-350x100.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7205;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:7:\"M55.jpg\";}'),
(1419, 233, 'rank_math_seo_score', '12'),
(1420, 233, '_thumbnail_id', '234'),
(1421, 233, '_acf_changed', '1'),
(1422, 233, 'rank_math_lock_modified_date', ''),
(1423, 233, '_edit_last', '1'),
(1424, 233, 'motto', 'SWS-Packaging: Nachhaltige Verpackungslösungen, perfekt inszeniert'),
(1425, 233, '_motto', 'field_6698cd98ec6c8'),
(1426, 233, 'services', 'UX / UI Design <br> Webentwicklung'),
(1427, 233, '_services', 'field_6698cdd0ec6c9'),
(1428, 233, 'case_studio_image_1', '237'),
(1429, 233, '_case_studio_image_1', 'field_669e382b24729'),
(1430, 233, 'sector', 'Packaging'),
(1431, 233, '_sector', 'field_6698cde2ec6ca'),
(1432, 233, 'year', '2024'),
(1433, 233, '_year', 'field_6698cde9ec6cb'),
(1434, 233, 'timeline', '12 weeks'),
(1435, 233, '_timeline', 'field_6698cdf1ec6cc'),
(1436, 233, 'project_url', 'https://sws-packaging.de/'),
(1437, 233, '_project_url', 'field_6698cdf8ec6cd'),
(1438, 233, 'customer_and_requirements', 'SWS-Packaging brauchte mehr als nur eine neue Webseite. Sie brauchten eine digitale Visitenkarte, die zeigt, wer sie wirklich sind: Innovativ, nachhaltig und immer am Puls der Zeit.\r\n<br><br>\r\nNachhaltigkeit und Innovation stehen bei SWS-Packaging ganz oben auf der Agenda. Klar, dass da auch die Online-Präsenz mithalten muss. Unsere Mission? Die Entwicklung einer modernen, benutzerfreundlichen Webseite, die die Marke perfekt inszeniert und den Besuchern das Leben leichter macht.\r\n<br><br>\r\nGemeinsam mit dem Team von SWS-Packaging haben wir eine Webseite geschaffen, die nicht nur gut aussieht, sondern auch clever funktioniert. Mit einem klaren und frischen Design rücken die Produkte und Dienstleistungen in den Fokus. Egal ob vom Smartphone oder Desktop – alles läuft reibungslos und sieht dabei noch verdammt gut aus.\r\n<br><br>\r\nDabei war uns eines besonders wichtig: die Inhalte so aufzubereiten, dass Besucher schnell und einfach finden, was sie suchen. Und das Ganze natürlich technisch topmodern, mit einer Performance, die keine Wünsche offenlässt.'),
(1439, 233, '_customer_and_requirements', 'field_6698ce19ec6ce'),
(1440, 233, 'customer_and_requirements_image', '235'),
(1441, 233, '_customer_and_requirements_image', 'field_6698ce7eec6d1'),
(1442, 233, 'results_and_benefits_1', 'Seit dem Launch vor drei Monaten hat die neue Webseite nicht nur optisch, sondern auch inhaltlich überzeugt. Das Team von SWS-Packaging berichtet von durchweg positivem Feedback – sowohl intern als auch von Kunden. Die klare Struktur und die einfache Navigation machen es für Besucher kinderleicht, die gewünschten Informationen zu finden, egal ob es um Produkte, Dienstleistungen oder Kontaktaufnahmen geht.'),
(1443, 233, '_results_and_benefits_1', 'field_6698ce42ec6cf'),
(1444, 233, 'results_and_benefits_2', 'Die moderne Gestaltung unterstreicht die Innovationskraft von SWS-Packaging und stärkt das Vertrauen der Kunden in die Marke. Die Webseite fungiert jetzt als digitale Visitenkarte, die nicht nur Eindruck macht, sondern auch funktional überzeugt. Kunden fühlen sich besser abgeholt, und das Unternehmen spart durch die optimierte Nutzerführung Zeit bei Anfragen. So wird nicht nur der erste Eindruck zum Volltreffer, sondern auch die tägliche Nutzung ein echter Mehrwert – für alle Seiten.'),
(1445, 233, '_results_and_benefits_2', 'field_6698ce4bec6d0'),
(1446, 233, 'results_and_benefits_image', '236'),
(1447, 233, '_results_and_benefits_image', 'field_6698cebdec6d2'),
(1448, 233, 'cmplz_hide_cookiebanner', ''),
(1449, 237, '_wp_attached_file', '2024/10/M54-scaled.jpg'),
(1450, 237, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1333;s:4:\"file\";s:22:\"2024/10/M54-scaled.jpg\";s:8:\"filesize\";i:190306;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"M54-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6117;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"M54-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42812;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"M54-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4711;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"M54-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27113;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:16:\"M54-1536x800.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84298;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:17:\"M54-2048x1067.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1067;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:135597;}s:18:\"cmplz_banner_image\";a:5:{s:4:\"file\";s:15:\"M54-350x100.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5679;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:7:\"M54.jpg\";}'),
(1459, 104, 'rank_math_seo_score', '12'),
(1460, 104, 'rank_math_lock_modified_date', ''),
(1461, 104, 'cmplz_hide_cookiebanner', ''),
(1462, 96, 'rank_math_seo_score', '12'),
(1463, 96, 'cmplz_hide_cookiebanner', ''),
(1464, 24, '_cmplz_scanned_post', '1'),
(1465, 96, '_cmplz_scanned_post', '1'),
(1466, 37, '_cmplz_scanned_post', '1'),
(1467, 18, 'rank_math_title', 'About Us - Meet Studio Moco'),
(1468, 18, 'cmplz_hide_cookiebanner', ''),
(1469, 18, 'rank_math_contentai_score', 'a:5:{s:8:\"keywords\";s:5:\"74.51\";s:9:\"wordCount\";s:1:\"0\";s:9:\"linkCount\";s:1:\"0\";s:12:\"headingCount\";s:1:\"0\";s:10:\"mediaCount\";s:1:\"0\";}'),
(1470, 18, 'rank_math_canonical_url', 'https://studiomoco.de/about-us/'),
(1471, 228, '_edit_lock', '1734330230:1'),
(1472, 16, 'rank_math_seo_score', '4'),
(1473, 16, 'rank_math_canonical_url', 'https://studiomoco.de/case-studies/'),
(1474, 16, 'cmplz_hide_cookiebanner', ''),
(1475, 228, 'rank_math_seo_score', '4'),
(1476, 228, 'rank_math_canonical_url', 'https://studiomoco.de/cookie-richtlinie-eu/'),
(1477, 228, '_edit_last', '1'),
(1478, 228, 'cmplz_hide_cookiebanner', ''),
(1479, 24, 'rank_math_seo_score', '14'),
(1480, 24, 'rank_math_canonical_url', 'https://studiomoco.de/datenschutz/'),
(1481, 24, '_edit_last', '1'),
(1482, 24, 'cmplz_hide_cookiebanner', ''),
(1483, 22, 'rank_math_seo_score', '7'),
(1484, 22, 'rank_math_canonical_url', 'https://studiomoco.de/impressum/'),
(1485, 22, '_edit_last', '1'),
(1486, 22, 'cmplz_hide_cookiebanner', ''),
(1487, 20, 'rank_math_seo_score', '4'),
(1488, 20, 'rank_math_canonical_url', 'https://studiomoco.de/kontakt/'),
(1489, 20, 'cmplz_hide_cookiebanner', ''),
(1490, 13, 'rank_math_canonical_url', 'https://studiomoco.de/'),
(1491, 233, 'rank_math_canonical_url', 'https://studiomoco.de/case-study/sws-packaging/'),
(1492, 104, 'rank_math_canonical_url', 'https://studiomoco.de/case-study/soeldner-consult/'),
(1493, 100, 'rank_math_seo_score', '12'),
(1494, 100, 'rank_math_canonical_url', 'https://studiomoco.de/case-study/context-translations/'),
(1495, 100, 'cmplz_hide_cookiebanner', ''),
(1496, 96, 'rank_math_canonical_url', 'https://studiomoco.de/case-study/spo-comm/'),
(1497, 37, 'rank_math_seo_score', '12'),
(1498, 37, 'rank_math_canonical_url', 'https://studiomoco.de/case-study/meisel-meisel-zahnarzte/'),
(1499, 37, 'cmplz_hide_cookiebanner', ''),
(1504, 22, '_cmplz_scanned_post', '1'),
(1505, 159, '_cmplz_scanned_post', '1'),
(1506, 157, '_cmplz_scanned_post', '1'),
(1511, 20, '_cmplz_scanned_post', '1'),
(1512, 156, '_cmplz_scanned_post', '1'),
(1513, 155, '_cmplz_scanned_post', '1'),
(1516, 24, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:5345:\"<h2 class=\"wp-block-heading\">Wer wir sind</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Die Adresse unserer Website ist: https://studiomoco.de.</p><h2 class=\"wp-block-heading\">Kommentare</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn Besucher Kommentare auf der Website schreiben, sammeln wir die Daten, die im Kommentar-Formular angezeigt werden, außerdem die IP-Adresse des Besuchers und den User-Agent-String (damit wird der Browser identifiziert), um die Erkennung von Spam zu unterstützen.</p><p>Aus deiner E-Mail-Adresse kann eine anonymisierte Zeichenfolge erstellt (auch Hash genannt) und dem Gravatar-Dienst übergeben werden, um zu prüfen, ob du diesen benutzt. Die Datenschutzerklärung des Gravatar-Dienstes findest du hier: https://automattic.com/privacy/. Nachdem dein Kommentar freigegeben wurde, ist dein Profilbild öffentlich im Kontext deines Kommentars sichtbar.</p><h2 class=\"wp-block-heading\">Medien</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du ein registrierter Benutzer bist und Fotos auf diese Website lädst, solltest du vermeiden, Fotos mit einem EXIF-GPS-Standort hochzuladen. Besucher dieser Website könnten Fotos, die auf dieser Website gespeichert sind, herunterladen und deren Standort-Informationen extrahieren.</p><h2 class=\"wp-block-heading\">Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du einen Kommentar auf unserer Website schreibst, kann das eine Einwilligung sein, deinen Namen, E-Mail-Adresse und Website in Cookies zu speichern. Dies ist eine Komfortfunktion, damit du nicht, wenn du einen weiteren Kommentar schreibst, all diese Daten erneut eingeben musst. Diese Cookies werden ein Jahr lang gespeichert.</p><p>Falls du ein Konto hast und dich auf dieser Website anmeldest, werden wir ein temporäres Cookie setzen, um festzustellen, ob dein Browser Cookies akzeptiert. Dieses Cookie enthält keine personenbezogenen Daten und wird verworfen, wenn du deinen Browser schließt.</p><p>Wenn du dich anmeldest, werden wir einige Cookies einrichten, um deine Anmeldeinformationen und Anzeigeoptionen zu speichern. Anmelde-Cookies verfallen nach zwei Tagen und Cookies für die Anzeigeoptionen nach einem Jahr. Falls du bei der Anmeldung „Angemeldet bleiben“ auswählst, wird deine Anmeldung zwei Wochen lang aufrechterhalten. Mit der Abmeldung aus deinem Konto werden die Anmelde-Cookies gelöscht.</p><p>Wenn du einen Artikel bearbeitest oder veröffentlichst, wird ein zusätzlicher Cookie in deinem Browser gespeichert. Dieser Cookie enthält keine personenbezogenen Daten und verweist nur auf die Beitrags-ID des Artikels, den du gerade bearbeitet hast. Der Cookie verfällt nach einem Tag.</p><h2 class=\"wp-block-heading\">Eingebettete Inhalte von anderen Websites</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Beiträge auf dieser Website können eingebettete Inhalte beinhalten (z. B. Videos, Bilder, Beiträge etc.). Eingebettete Inhalte von anderen Websites verhalten sich exakt so, als ob der Besucher die andere Website besucht hätte.</p><p>Diese Websites können Daten über dich sammeln, Cookies benutzen, zusätzliche Tracking-Dienste von Dritten einbetten und deine Interaktion mit diesem eingebetteten Inhalt aufzeichnen, inklusive deiner Interaktion mit dem eingebetteten Inhalt, falls du ein Konto hast und auf dieser Website angemeldet bist.</p><h2 class=\"wp-block-heading\">Mit wem wir deine Daten teilen</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du eine Zurücksetzung des Passworts beantragst, wird deine IP-Adresse in der E-Mail zur Zurücksetzung enthalten sein.</p><h2 class=\"wp-block-heading\">Wie lange wir deine Daten speichern</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du einen Kommentar schreibst, wird dieser inklusive Metadaten zeitlich unbegrenzt gespeichert. Auf diese Art können wir Folgekommentare automatisch erkennen und freigeben, anstatt sie in einer Moderations-Warteschlange festzuhalten.</p><p>Für Benutzer, die sich auf unserer Website registrieren, speichern wir zusätzlich die persönlichen Informationen, die sie in ihren Benutzerprofilen angeben. Alle Benutzer können jederzeit ihre persönlichen Informationen einsehen, verändern oder löschen (der Benutzername kann nicht verändert werden). Administratoren der Website können diese Informationen ebenfalls einsehen und verändern.</p><h2 class=\"wp-block-heading\">Welche Rechte du an deinen Daten hast</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Wenn du ein Konto auf dieser Website besitzt oder Kommentare geschrieben hast, kannst du einen Export deiner personenbezogenen Daten bei uns anfordern, inklusive aller Daten, die du uns mitgeteilt hast. Darüber hinaus kannst du die Löschung aller personenbezogenen Daten, die wir von dir gespeichert haben, anfordern. Dies umfasst nicht die Daten, die wir aufgrund administrativer, rechtlicher oder sicherheitsrelevanter Notwendigkeiten aufbewahren müssen.</p><h2 class=\"wp-block-heading\">Wohin deine Daten gesendet werden</h2><p><strong class=\"privacy-policy-tutorial\">Textvorschlag: </strong>Besucher-Kommentare könnten von einem automatisierten Dienst zur Spam-Erkennung untersucht werden.</p>\";s:5:\"added\";i:1742502758;}'),
(1517, 24, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:43:\"Complianz | The Privacy Suite for WordPress\";s:11:\"policy_text\";s:519:\"<p>Diese Website verwendet die Privacy Suite für WordPress von Complianz, um browser- und gerätebasierte Einwilligungen zu sammeln und aufzuzeichnen. Für diese Funktion wird deine IP-Adresse anonymisiert und in unserer Datenbank gespeichert.&nbsp;Dieser Dienst verarbeitet keine persönlich identifizierbaren Informationen und gibt keine Daten an den Dienstanbieter weiter.&nbsp;Weitere Informationen findest du in der Complianz <a href=\"https://complianz.io/legal/privacy-statement/\">Datenschutzerklärung</a>.</p>\n\";s:5:\"added\";i:1742502758;}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_posts`
--

CREATE TABLE `mc_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_posts`
--

INSERT INTO `mc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-07-16 11:16:24', '2024-07-16 09:16:24', '<!-- wp:paragraph -->\n<p>Willkommen bei WordPress. Dies ist dein erster Beitrag. Bearbeite oder lösche ihn und beginne mit dem Schreiben!</p>\n<!-- /wp:paragraph -->', 'Hallo Welt!', '', 'publish', 'open', 'open', '', 'hallo-welt', '', '', '2024-07-16 11:16:24', '2024-07-16 09:16:24', '', 0, 'https://studiomoco.de/?p=1', 0, 'post', '', 0),
(13, 1, '2024-07-16 14:03:04', '2024-07-16 12:03:04', '', 'StartSeite', '', 'publish', 'closed', 'closed', '', 'startseite', '', '', '2024-12-16 07:24:37', '2024-12-16 06:24:37', '', 0, 'https://studiomoco.de/?page_id=13', 0, 'page', '', 0),
(15, 1, '2024-07-16 14:12:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-07-16 14:12:51', '0000-00-00 00:00:00', '', 0, 'https://studiomoco.de/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2024-07-16 14:13:21', '2024-07-16 12:13:21', '', 'Case Studies', '', 'publish', 'closed', 'closed', '', 'case-studies', '', '', '2024-12-16 07:23:33', '2024-12-16 06:23:33', '', 0, 'https://studiomoco.de/?page_id=16', 0, 'page', '', 0),
(17, 1, '2024-07-16 14:13:21', '2024-07-16 12:13:21', '', 'CASE STUDIES', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2024-07-16 14:13:21', '2024-07-16 12:13:21', '', 16, 'https://studiomoco.de/?p=17', 0, 'revision', '', 0),
(18, 1, '2024-07-16 14:13:39', '2024-07-16 12:13:39', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2024-12-16 07:22:30', '2024-12-16 06:22:30', '', 0, 'https://studiomoco.de/?page_id=18', 0, 'page', '', 0),
(19, 1, '2024-07-16 14:13:39', '2024-07-16 12:13:39', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2024-07-16 14:13:39', '2024-07-16 12:13:39', '', 18, 'https://studiomoco.de/?p=19', 0, 'revision', '', 0),
(20, 1, '2024-07-16 14:13:56', '2024-07-16 12:13:56', '', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2024-12-16 07:24:25', '2024-12-16 06:24:25', '', 0, 'https://studiomoco.de/?page_id=20', 0, 'page', '', 0),
(21, 1, '2024-07-16 14:13:56', '2024-07-16 12:13:56', '', 'KONTAKT', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2024-07-16 14:13:56', '2024-07-16 12:13:56', '', 20, 'https://studiomoco.de/?p=21', 0, 'revision', '', 0),
(22, 1, '2024-07-16 14:14:11', '2024-07-16 12:14:11', '<!-- wp:paragraph -->\n<p>Atilla Ocak<br>Studio Moco<br>Crafting Magical User Experiences<br>Hufelandstr. 107<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Büro:<br>Großweidenmühlstraße 21<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: 0171 102 33 33<br>Mail: hey@studiomoco.de</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>UST-ID: DE357733502</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Impressum', '', 'publish', 'closed', 'closed', '', 'impressum', '', '', '2024-12-16 07:24:13', '2024-12-16 06:24:13', '', 0, 'https://studiomoco.de/?page_id=22', 0, 'page', '', 0),
(24, 1, '2024-07-16 14:14:26', '2024-07-16 12:14:26', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Informationen über die Verarbeitung Ihrer Daten gemäß Art. 13 der Datenschutz-Grundverordnung (DS-GVO)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">1. Verantwortlicher und Datenschutzbeauftragter</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Verantwortlich für diese Website ist</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Atilla Ocak, Hufelandstr. 107, 90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">2. Daten, die für die Bereitstellung der Website und die Erstellung der Protokolldateien verarbeitet werden</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">a. Welche Daten werden für welchen Zweck verarbeitet?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Bei jedem Zugriff auf Inhalte der Website werden vorübergehend Daten gespeichert, die möglicherweise eine Identifizierung zulassen. Die folgenden Daten werden hierbei erhoben:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>Datum und Uhrzeit des Zugriffs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>IP-Adresse</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Hostname des zugreifenden Rechners</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Website, von der aus die Website aufgerufen wurde</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Websites, die über die Website aufgerufen werden</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Besuchte Seite auf unserer Website</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Meldung, ob der Abruf erfolgreich war</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Übertragene Datenmenge</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Informationen über den Browsertyp und die verwendete Version</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Betriebssystem</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Die vorübergehende Speicherung der Daten ist für den Ablauf eines Websitebesuchs erforderlich, um eine Auslieferung der Website zu ermöglichen. Eine weitere Speicherung in Protokolldateien erfolgt, um die Funktionsfähigkeit der Website und die Sicherheit der informationstechnischen Systeme sicherzustellen. In diesen Zwecken liegt auch unser berechtigtes Interesse an der Datenverarbeitung.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">b. Auf welcher Rechtsgrundlage werden diese Daten verarbeitet?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Die Daten werden auf der Grundlage des Art. 6 Abs. 1 Buchstabe f DS-GVO verarbeitet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">c. Wie lange werden die Daten gespeichert?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Die Daten werden gelöscht, sobald sie für die Erreichung des Zwecks ihrer Erhebung nicht mehr erforderlich sind. Bei der Bereitstellung der Website ist dies der Fall, wenn die jeweilige Sitzung beendet ist. Die Protokolldateien werden […, maximal bis zu 24 Stunden] direkt und ausschließlich für Administratoren zugänglich aufbewahrt. Danach sind sie nur noch indirekt über die Rekonstruktion von Sicherungsbändern verfügbar und werden nach […, maximal vier Wochen] endgültig gelöscht.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">3. Betroffenenrechte</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">a. Recht auf Auskunft</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie können Auskunft nach Art. 15 DS-GVO über Ihre personenbezogenen Daten verlangen, die wir verarbeiten.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">b. Recht auf Widerspruch</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie haben ein Recht auf Widerspruch aus besonderen Gründen (siehe unter Punkt II).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">c. Recht auf Berichtigung</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sollten die Sie betreffenden Angaben nicht (mehr) zutreffend sein, können Sie nach Art. 16 DS-GVO eine Berichtigung verlangen. Sollten Ihre Daten unvollständig sein, können Sie eine Vervollständigung verlangen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">d. Recht auf Löschung</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie können nach Art. 17 DS-GVO die Löschung Ihrer personenbezogenen Daten verlangen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">e. Recht auf Einschränkung der Verarbeitung</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie haben nach Art. 18 DS-GVO das Recht, eine Einschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">f. Recht auf Beschwerde</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Wenn Sie der Ansicht sind, dass die Verarbeitung Ihrer personenbezogenen Daten gegen Datenschutzrecht verstößt, haben Sie nach Ar. 77 Abs. 1 DS-GVO das Recht, sich bei einer Datenschutzaufsichtsbehörde eigener Wahl zu beschweren. Hierzu gehört auch die für den Verantwortlichen zuständige Datenschutzaufsichtsbehörde: Landesbeauftragte für Datenschutz und Informationsfreiheit Nordrhein-Westfalen,&nbsp;<a href=\"https://www.ldi.nrw.de/kontakt/ihre-beschwerde\">https://www.ldi.nrw.de/kontakt/ihre-beschwerde</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">g. Recht auf Datenübertragbarkeit</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Für den Fall, dass die Voraussetzungen des Art. 20 Abs. 1 DS-GVO vorliegen, steht Ihnen das Recht zu, sich Daten, die wir auf Grundlage Ihrer Einwilligung oder in Erfüllung eines Vertrags automatisiert verarbeiten, an sich oder an Dritte aushändigen zu lassen. Die Erfassung der Daten zur Bereitstellung der Website und die Speicherung der Protokolldateien sind für den Betrieb der Internetseite zwingend erforderlich. Sie beruhen daher nicht auf einer Einwilligung nach Art. 6 Abs. 1 Buchstabe a DS-GVO oder auf einem Vertrag nach Art. 6 Abs. 1 Buchstabe b DS-GVO, sondern sind nach Art. 6 Abs. 1 Buchstabe f DS-GVO gerechtfertigt. Die Voraussetzungen des Art. 20 Abs. 1 DS-GVO sind demnach insoweit nicht erfüllt.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">II. Recht auf Widerspruch gemäß Art. 21 Abs. 1 DS-GVO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie haben das Recht, aus Gründen, die sich aus Ihrer besonderen Situation ergeben, jederzeit gegen die Verarbeitung Ihrer personenbezogenen Daten, die aufgrund von Artikel 6 Abs. 1 Buchstabe f DS-GVO erfolgt, Widerspruch einzulegen. Der Verantwortliche verarbeitet die personenbezogenen Daten dann nicht mehr, es sei denn, er kann zwingende schutzwürdige Gründe für die Verarbeitung nachweisen, die die Interessen, Rechte und Freiheiten der betroffenen Person überwiegen, oder die Verarbeitung dient der Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen. Die Erfassung der Daten zur Bereitstellung der Website und die Speicherung der Protokolldateien sind für den Betrieb der Internetseite zwingend erforderlich.</p>\n<!-- /wp:paragraph -->', 'Datenschutz', '', 'publish', 'closed', 'closed', '', 'datenschutz', '', '', '2024-12-16 07:24:02', '2024-12-16 06:24:02', '', 0, 'https://studiomoco.de/?page_id=24', 0, 'page', '', 0),
(25, 1, '2024-07-16 14:14:26', '2024-07-16 12:14:26', '', 'Datenschutz', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2024-07-16 14:14:26', '2024-07-16 12:14:26', '', 24, 'https://studiomoco.de/?p=25', 0, 'revision', '', 0),
(26, 1, '2024-07-16 14:14:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-07-16 14:14:37', '0000-00-00 00:00:00', '', 0, 'https://studiomoco.de/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2024-07-16 14:15:27', '2024-07-16 12:15:22', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2024-07-16 14:15:27', '2024-07-16 12:15:27', '', 0, 'https://studiomoco.de/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2024-07-16 14:15:27', '2024-07-16 12:15:22', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2024-07-16 14:15:27', '2024-07-16 12:15:27', '', 0, 'https://studiomoco.de/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2024-07-16 14:14:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-07-16 14:14:37', '0000-00-00 00:00:00', '', 0, 'https://studiomoco.de/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2024-07-16 14:14:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-07-16 14:14:37', '0000-00-00 00:00:00', '', 0, 'https://studiomoco.de/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2024-07-16 14:14:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-07-16 14:14:37', '0000-00-00 00:00:00', '', 0, 'https://studiomoco.de/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2024-07-18 09:43:25', '2024-07-18 07:43:25', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2024-07-18 09:43:25', '2024-07-18 07:43:25', '', 0, 'https://studiomoco.de/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2024-07-18 09:43:42', '2024-07-18 07:43:42', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2024-07-18 09:43:42', '2024-07-18 07:43:42', '', 0, 'https://studiomoco.de/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2024-07-18 09:43:42', '2024-07-18 07:43:42', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2024-07-18 09:43:42', '2024-07-18 07:43:42', '', 0, 'https://studiomoco.de/?p=34', 2, 'nav_menu_item', '', 0),
(36, 1, '2024-07-18 10:06:54', '2024-07-18 08:06:54', 'a:35:{s:9:\"post_type\";s:10:\"case-study\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:12:\"Case Studies\";s:13:\"singular_name\";s:10:\"Case Study\";s:9:\"menu_name\";s:12:\"Case Studies\";s:9:\"all_items\";s:16:\"All Case Studies\";s:9:\"edit_item\";s:15:\"Edit Case Study\";s:9:\"view_item\";s:15:\"View Case Study\";s:10:\"view_items\";s:17:\"View Case Studies\";s:12:\"add_new_item\";s:18:\"Add New Case Study\";s:7:\"add_new\";s:18:\"Add New Case Study\";s:8:\"new_item\";s:14:\"New Case Study\";s:17:\"parent_item_colon\";s:18:\"Parent Case Study:\";s:12:\"search_items\";s:19:\"Search Case Studies\";s:9:\"not_found\";s:21:\"No case studies found\";s:18:\"not_found_in_trash\";s:30:\"No case studies found in Trash\";s:8:\"archives\";s:19:\"Case Study Archives\";s:10:\"attributes\";s:21:\"Case Study Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:22:\"Insert into case study\";s:21:\"uploaded_to_this_item\";s:27:\"Uploaded to this case study\";s:17:\"filter_items_list\";s:24:\"Filter case studies list\";s:14:\"filter_by_date\";s:27:\"Filter case studies by date\";s:21:\"items_list_navigation\";s:28:\"Case Studies list navigation\";s:10:\"items_list\";s:17:\"Case Studies list\";s:14:\"item_published\";s:21:\"Case Study published.\";s:24:\"item_published_privately\";s:31:\"Case Study published privately.\";s:22:\"item_reverted_to_draft\";s:29:\"Case Study reverted to draft.\";s:14:\"item_scheduled\";s:21:\"Case Study scheduled.\";s:12:\"item_updated\";s:19:\"Case Study updated.\";s:9:\"item_link\";s:15:\"Case Study Link\";s:21:\"item_link_description\";s:23:\"A link to a case study.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:7:\"excerpt\";i:3;s:9:\"thumbnail\";i:4;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:3:{i:0;s:8:\"post_tag\";i:1;s:11:\"post_format\";i:2;s:8:\"category\";}s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Case Studies', 'case-studies', 'publish', 'closed', 'closed', '', 'post_type_6698cc519f1b0', '', '', '2024-07-18 10:06:54', '2024-07-18 08:06:54', '', 0, 'https://studiomoco.de/?post_type=acf-post-type&#038;p=36', 0, 'acf-post-type', '', 0),
(37, 1, '2024-07-18 10:08:41', '2024-07-18 08:08:41', '', 'Meisel &amp; Meisel Zahnärzte', '', 'publish', 'closed', 'closed', '', 'meisel-meisel-zahnarzte', '', '', '2024-12-16 07:25:54', '2024-12-16 06:25:54', '', 0, 'https://studiomoco.de/?post_type=case-study&#038;p=37', 0, 'case-study', '', 0),
(38, 1, '2024-07-18 10:08:05', '2024-07-18 08:08:05', '', '01', '', 'inherit', 'open', 'closed', '', '01', '', '', '2024-07-18 10:08:05', '2024-07-18 08:08:05', '', 37, 'https://studiomoco.de/wp-content/uploads/2024/07/01.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"case-study\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Case Study', 'case-study', 'publish', 'closed', 'closed', '', 'group_6698cd98992f2', '', '', '2024-07-22 12:45:55', '2024-07-22 10:45:55', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Motto', 'motto', 'publish', 'closed', 'closed', '', 'field_6698cd98ec6c8', '', '', '2024-07-18 10:14:27', '2024-07-18 08:14:27', '', 39, 'https://studiomoco.de/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_6698cdd0ec6c9', '', '', '2024-07-18 10:17:14', '2024-07-18 08:17:14', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=41', 1, 'acf-field', '', 0),
(42, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sector', 'sector', 'publish', 'closed', 'closed', '', 'field_6698cde2ec6ca', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=42', 3, 'acf-field', '', 0),
(43, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Year', 'year', 'publish', 'closed', 'closed', '', 'field_6698cde9ec6cb', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=43', 4, 'acf-field', '', 0),
(44, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Timeline', 'timeline', 'publish', 'closed', 'closed', '', 'field_6698cdf1ec6cc', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=44', 5, 'acf-field', '', 0),
(45, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project URL', 'project_url', 'publish', 'closed', 'closed', '', 'field_6698cdf8ec6cd', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=45', 6, 'acf-field', '', 0),
(46, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Customer and Requirements', 'customer_and_requirements', 'publish', 'closed', 'closed', '', 'field_6698ce19ec6ce', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=46', 7, 'acf-field', '', 0),
(47, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Customer and Requirements Image', 'customer_and_requirements_image', 'publish', 'closed', 'closed', '', 'field_6698ce7eec6d1', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=47', 8, 'acf-field', '', 0),
(48, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Results and Benefits 1', 'results_and_benefits_1', 'publish', 'closed', 'closed', '', 'field_6698ce42ec6cf', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=48', 9, 'acf-field', '', 0),
(49, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Results and Benefits 2', 'results_and_benefits_2', 'publish', 'closed', 'closed', '', 'field_6698ce4bec6d0', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=49', 10, 'acf-field', '', 0),
(50, 1, '2024-07-18 10:14:27', '2024-07-18 08:14:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Results and Benefits Image', 'results_and_benefits_image', 'publish', 'closed', 'closed', '', 'field_6698cebdec6d2', '', '', '2024-07-22 12:45:28', '2024-07-22 10:45:28', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=50', 11, 'acf-field', '', 0),
(52, 1, '2024-07-18 10:15:59', '2024-07-18 08:15:59', '', '02', '', 'inherit', 'open', 'closed', '', '02', '', '', '2024-07-18 10:15:59', '2024-07-18 08:15:59', '', 37, 'https://studiomoco.de/wp-content/uploads/2024/07/02.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2024-07-18 10:16:29', '2024-07-18 08:16:29', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2024-07-18 10:16:29', '2024-07-18 08:16:29', '', 37, 'https://studiomoco.de/wp-content/uploads/2024/07/03.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2024-07-18 12:58:36', '2024-07-18 10:58:36', 'a:35:{s:9:\"post_type\";s:12:\"testimonials\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:12:\"Testimonials\";s:13:\"singular_name\";s:11:\"Testimonial\";s:9:\"menu_name\";s:12:\"Testimonials\";s:9:\"all_items\";s:16:\"All Testimonials\";s:9:\"edit_item\";s:17:\"Edit Testimonials\";s:9:\"view_item\";s:17:\"View Testimonials\";s:10:\"view_items\";s:17:\"View Testimonials\";s:12:\"add_new_item\";s:20:\"Add New Testimonials\";s:7:\"add_new\";s:20:\"Add New Testimonials\";s:8:\"new_item\";s:16:\"New Testimonials\";s:17:\"parent_item_colon\";s:20:\"Parent Testimonials:\";s:12:\"search_items\";s:19:\"Search Testimonials\";s:9:\"not_found\";s:21:\"No testimonials found\";s:18:\"not_found_in_trash\";s:30:\"No testimonials found in Trash\";s:8:\"archives\";s:21:\"Testimonials Archives\";s:10:\"attributes\";s:23:\"Testimonials Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:24:\"Insert into testimonials\";s:21:\"uploaded_to_this_item\";s:29:\"Uploaded to this testimonials\";s:17:\"filter_items_list\";s:24:\"Filter testimonials list\";s:14:\"filter_by_date\";s:27:\"Filter testimonials by date\";s:21:\"items_list_navigation\";s:28:\"Testimonials list navigation\";s:10:\"items_list\";s:17:\"Testimonials list\";s:14:\"item_published\";s:23:\"Testimonials published.\";s:24:\"item_published_privately\";s:33:\"Testimonials published privately.\";s:22:\"item_reverted_to_draft\";s:31:\"Testimonials reverted to draft.\";s:14:\"item_scheduled\";s:23:\"Testimonials scheduled.\";s:12:\"item_updated\";s:21:\"Testimonials updated.\";s:9:\"item_link\";s:17:\"Testimonials Link\";s:21:\"item_link_description\";s:25:\"A link to a testimonials.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Testimonials', 'testimonials', 'publish', 'closed', 'closed', '', 'post_type_6698d2ec8f09c', '', '', '2024-07-18 13:00:30', '2024-07-18 11:00:30', '', 0, 'https://studiomoco.de/?post_type=acf-post-type&#038;p=54', 0, 'acf-post-type', '', 0),
(58, 1, '2024-07-18 13:01:49', '2024-07-18 11:01:49', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"testimonials\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Testimonials', 'testimonials', 'publish', 'closed', 'closed', '', 'group_6698f5fa673fd', '', '', '2024-07-18 13:01:49', '2024-07-18 11:01:49', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2024-07-18 13:01:49', '2024-07-18 11:01:49', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Customer Name', 'customer_name', 'publish', 'closed', 'closed', '', 'field_6698f5fae8432', '', '', '2024-07-18 13:01:49', '2024-07-18 11:01:49', '', 58, 'https://studiomoco.de/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2024-07-18 13:32:06', '2024-07-18 11:32:06', '<!-- wp:paragraph -->\n<p>\"Mit Studio Moco wussten wir sofort, dass wir die richtige Wahl getroffen hatten. Ihr Team nahm sich die Zeit, unsere Vision zu verstehen, und beeindruckte uns mit Talent und technischer Expertise. Ihre Herzlichkeit und ihr Engagement schufen Vertrauen und gegenseitigen Respekt. Dank Studio Moco fühlen wir uns als Partner, nicht nur als Kunde.\"</p>\n<!-- /wp:paragraph -->', 'Geschäftsführer der Mediengruppe Nürnberg GmbH', '', 'publish', 'closed', 'closed', '', 'geschaftsfuhrer-der-mediengruppenurnberggmbh', '', '', '2024-07-19 13:44:52', '2024-07-19 11:44:52', '', 0, 'https://studiomoco.de/?post_type=testimonials&#038;p=60', 0, 'testimonials', '', 0),
(63, 1, '2024-07-18 13:32:51', '2024-07-18 11:32:51', '<!-- wp:paragraph -->\n<p>\"Studio Moco hat ein Herz für Code und Design. Es zählt nicht nur jede Idee, sie feiern und lieben vor allem die Kreativität. Das macht bereits die Zusammenarbeit zu einer unvergesslichen Journey.\"</p>\n<!-- /wp:paragraph -->', 'Geschäftsführer, Sander Applied Marketing GmbH', '', 'publish', 'closed', 'closed', '', 'geschaftsfuhrer-sander-applied-marketing-gmbh', '', '', '2024-07-19 13:44:30', '2024-07-19 11:44:30', '', 0, 'https://studiomoco.de/?post_type=testimonials&#038;p=63', 0, 'testimonials', '', 0),
(64, 1, '2024-07-18 13:33:35', '2024-07-18 11:33:35', '<!-- wp:paragraph -->\n<p>\"Die Zusammenarbeit mit Studio Moco war großartig. Ihr kreatives und technisch versiertes Team hat unsere IT-Dienstleistungen klar und ansprechend präsentiert. Besonders beeindruckte uns, wie sie auf unsere Wünsche eingingen und jede Herausforderung mit einem Lächeln meisterten. Dank ihrer freundlichen und professionellen Art fühlten wir uns immer super aufgehoben. Unsere neue Webseite ist ein voller Erfolg\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Business Development Manager Söldner Consult GmbH', '', 'publish', 'closed', 'closed', '', 'business-development-manager-soldner-consult-gmbh', '', '', '2024-07-19 13:43:54', '2024-07-19 11:43:54', '', 0, 'https://studiomoco.de/?post_type=testimonials&#038;p=64', 0, 'testimonials', '', 0),
(65, 1, '2024-07-19 09:11:20', '2024-07-19 07:11:20', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page - Section 1', 'home-page-section-1', 'publish', 'closed', 'closed', '', 'group_669a11382809e', '', '', '2024-07-19 09:17:59', '2024-07-19 07:17:59', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=65', 1, 'acf-field-group', '', 0),
(66, 1, '2024-07-19 09:11:20', '2024-07-19 07:11:20', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'İmage', 'home_page_section_1_image', 'publish', 'closed', 'closed', '', 'field_669a1138682a1', '', '', '2024-07-19 09:17:29', '2024-07-19 07:17:29', '', 65, 'https://studiomoco.de/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(67, 1, '2024-07-19 09:11:20', '2024-07-19 07:11:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Title', 'home_page_section_1_title', 'publish', 'closed', 'closed', '', 'field_669a1160682a2', '', '', '2024-07-19 09:17:59', '2024-07-19 07:17:59', '', 65, 'https://studiomoco.de/?post_type=acf-field&#038;p=67', 1, 'acf-field', '', 0),
(68, 1, '2024-07-19 09:11:20', '2024-07-19 07:11:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Description', 'home_page_section_1_desc', 'publish', 'closed', 'closed', '', 'field_669a1179682a3', '', '', '2024-07-19 09:17:29', '2024-07-19 07:17:29', '', 65, 'https://studiomoco.de/?post_type=acf-field&#038;p=68', 2, 'acf-field', '', 0),
(69, 1, '2024-07-19 09:16:27', '2024-07-19 07:16:27', '', 'ux-clock', '', 'inherit', 'open', 'closed', '', 'ux-clock', '', '', '2024-07-19 09:16:27', '2024-07-19 07:16:27', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/ux-clock.jpeg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page - Section 2', 'home-page-section-2', 'publish', 'closed', 'closed', '', 'group_669a1fd612dac', '', '', '2024-08-08 11:17:31', '2024-08-08 09:17:31', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=74', 2, 'acf-field-group', '', 0),
(75, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'home_page_section_2_title', 'publish', 'closed', 'closed', '', 'field_669a1fd6f56ff', '', '', '2024-07-19 10:28:43', '2024-07-19 08:28:43', '', 74, 'https://studiomoco.de/?post_type=acf-field&#038;p=75', 0, 'acf-field', '', 0),
(76, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'home_page_section_2_sub_title', 'publish', 'closed', 'closed', '', 'field_669a1fecf5700', '', '', '2024-07-19 10:28:43', '2024-07-19 08:28:43', '', 74, 'https://studiomoco.de/?post_type=acf-field&#038;p=76', 1, 'acf-field', '', 0),
(77, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 1 Title', 'home_page_section_2_box_1_title', 'publish', 'closed', 'closed', '', 'field_669a200cf5702', '', '', '2024-07-19 10:28:43', '2024-07-19 08:28:43', '', 74, 'https://studiomoco.de/?post_type=acf-field&#038;p=77', 2, 'acf-field', '', 0),
(78, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 1 Sub Title', 'home_page_section_2_box_1_sub_title', 'publish', 'closed', 'closed', '', 'field_669a2018f5703', '', '', '2024-07-19 10:28:43', '2024-07-19 08:28:43', '', 74, 'https://studiomoco.de/?post_type=acf-field&#038;p=78', 3, 'acf-field', '', 0),
(79, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 1 Description', 'home_page_section_2_box_1_description', 'publish', 'closed', 'closed', '', 'field_669a201ef5704', '', '', '2024-07-19 10:28:43', '2024-07-19 08:28:43', '', 74, 'https://studiomoco.de/?post_type=acf-field&#038;p=79', 4, 'acf-field', '', 0),
(80, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 2 Title', 'home_page_section_2_box_2_title', 'publish', 'closed', 'closed', '', 'field_669a206af5705', '', '', '2024-07-19 10:16:58', '2024-07-19 08:16:58', '', 74, 'https://studiomoco.de/?post_type=acf-field&p=80', 5, 'acf-field', '', 0),
(81, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 2 Sub Title', 'home_page_section_2_box_2_sub_title', 'publish', 'closed', 'closed', '', 'field_669a2073f5706', '', '', '2024-07-19 10:16:58', '2024-07-19 08:16:58', '', 74, 'https://studiomoco.de/?post_type=acf-field&p=81', 6, 'acf-field', '', 0),
(82, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 2 Description', 'home_page_section_2_box_2_description', 'publish', 'closed', 'closed', '', 'field_669a207cf5707', '', '', '2024-08-08 11:17:31', '2024-08-08 09:17:31', '', 74, 'https://studiomoco.de/?post_type=acf-field&#038;p=82', 7, 'acf-field', '', 0),
(83, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 3 Title', 'home_page_section_2_box_3_title', 'publish', 'closed', 'closed', '', 'field_669a208cf5708', '', '', '2024-07-19 10:16:58', '2024-07-19 08:16:58', '', 74, 'https://studiomoco.de/?post_type=acf-field&p=83', 8, 'acf-field', '', 0),
(84, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 3 Sub Title', 'home_page_section_2_box_3_sub_title', 'publish', 'closed', 'closed', '', 'field_669a209bf5709', '', '', '2024-07-19 10:28:43', '2024-07-19 08:28:43', '', 74, 'https://studiomoco.de/?post_type=acf-field&#038;p=84', 9, 'acf-field', '', 0),
(85, 1, '2024-07-19 10:16:58', '2024-07-19 08:16:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Box 3 Description', 'home_page_section_2_box_3_description', 'publish', 'closed', 'closed', '', 'field_669a20a3f570a', '', '', '2024-07-19 10:16:58', '2024-07-19 08:16:58', '', 74, 'https://studiomoco.de/?post_type=acf-field&p=85', 10, 'acf-field', '', 0),
(88, 1, '2024-07-19 10:28:43', '2024-07-19 08:28:43', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Big İmage', 'home_page_section_2_big_image', 'publish', 'closed', 'closed', '', 'field_669a23817da17', '', '', '2024-07-19 10:28:43', '2024-07-19 08:28:43', '', 74, 'https://studiomoco.de/?post_type=acf-field&p=88', 11, 'acf-field', '', 0),
(89, 1, '2024-07-19 10:28:57', '2024-07-19 08:28:57', '', 'project-meeting', '', 'inherit', 'open', 'closed', '', 'project-meeting', '', '', '2024-07-19 10:28:57', '2024-07-19 08:28:57', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/project-meeting.jpeg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2024-07-19 10:33:40', '2024-07-19 08:33:40', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page - Section 3', 'home-page-section-3', 'publish', 'closed', 'closed', '', 'group_669a2499b7cf9', '', '', '2024-07-19 10:34:35', '2024-07-19 08:34:35', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=91', 3, 'acf-field-group', '', 0),
(92, 1, '2024-07-19 10:33:40', '2024-07-19 08:33:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'home_page_section_3_title', 'publish', 'closed', 'closed', '', 'field_669a249ab50b0', '', '', '2024-07-19 10:33:40', '2024-07-19 08:33:40', '', 91, 'https://studiomoco.de/?post_type=acf-field&p=92', 0, 'acf-field', '', 0),
(93, 1, '2024-07-19 10:33:40', '2024-07-19 08:33:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'home_page_section_3_sub_title', 'publish', 'closed', 'closed', '', 'field_669a24b1b50b1', '', '', '2024-07-19 10:33:40', '2024-07-19 08:33:40', '', 91, 'https://studiomoco.de/?post_type=acf-field&p=93', 1, 'acf-field', '', 0),
(94, 1, '2024-07-19 10:33:40', '2024-07-19 08:33:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'home_page_section_3_description', 'publish', 'closed', 'closed', '', 'field_669a24b6b50b2', '', '', '2024-07-19 10:34:35', '2024-07-19 08:34:35', '', 91, 'https://studiomoco.de/?post_type=acf-field&#038;p=94', 2, 'acf-field', '', 0),
(96, 1, '2024-07-19 12:24:51', '2024-07-19 10:24:51', '', 'spo-comm', '', 'publish', 'closed', 'closed', '', 'spo-comm', '', '', '2024-12-16 07:25:44', '2024-12-16 06:25:44', '', 0, 'https://studiomoco.de/?post_type=case-study&#038;p=96', 0, 'case-study', '', 0),
(97, 1, '2024-07-19 12:23:16', '2024-07-19 10:23:16', '', '01 (1)', '', 'inherit', 'open', 'closed', '', '01-1', '', '', '2024-07-19 12:23:16', '2024-07-19 10:23:16', '', 96, 'https://studiomoco.de/wp-content/uploads/2024/07/01-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2024-07-19 12:24:19', '2024-07-19 10:24:19', '', '02 (1)', '', 'inherit', 'open', 'closed', '', '02-1', '', '', '2024-07-19 12:24:19', '2024-07-19 10:24:19', '', 96, 'https://studiomoco.de/wp-content/uploads/2024/07/02-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2024-07-19 12:24:46', '2024-07-19 10:24:46', '', '03 (1)', '', 'inherit', 'open', 'closed', '', '03-1', '', '', '2024-07-19 12:24:46', '2024-07-19 10:24:46', '', 96, 'https://studiomoco.de/wp-content/uploads/2024/07/03-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2024-07-19 12:27:00', '2024-07-19 10:27:00', '', 'Context Translations', '', 'publish', 'closed', 'closed', '', 'context-translations', '', '', '2024-12-16 07:25:31', '2024-12-16 06:25:31', '', 0, 'https://studiomoco.de/?post_type=case-study&#038;p=100', 0, 'case-study', '', 0);
INSERT INTO `mc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2024-07-19 12:25:38', '2024-07-19 10:25:38', '', '01 (2)', '', 'inherit', 'open', 'closed', '', '01-2', '', '', '2024-07-19 12:25:38', '2024-07-19 10:25:38', '', 100, 'https://studiomoco.de/wp-content/uploads/2024/07/01-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2024-07-19 12:26:33', '2024-07-19 10:26:33', '', '02 (2)', '', 'inherit', 'open', 'closed', '', '02-2', '', '', '2024-07-19 12:26:33', '2024-07-19 10:26:33', '', 100, 'https://studiomoco.de/wp-content/uploads/2024/07/02-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2024-07-19 12:26:56', '2024-07-19 10:26:56', '', '03 (2)', '', 'inherit', 'open', 'closed', '', '03-2', '', '', '2024-07-19 12:26:56', '2024-07-19 10:26:56', '', 100, 'https://studiomoco.de/wp-content/uploads/2024/07/03-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2024-07-19 12:29:21', '2024-07-19 10:29:21', '', 'Soeldner Consult', '', 'publish', 'closed', 'closed', '', 'soeldner-consult', '', '', '2024-12-16 07:25:20', '2024-12-16 06:25:20', '', 0, 'https://studiomoco.de/?post_type=case-study&#038;p=104', 0, 'case-study', '', 0),
(105, 1, '2024-07-19 12:27:37', '2024-07-19 10:27:37', '', '01 (3)', '', 'inherit', 'open', 'closed', '', '01-3', '', '', '2024-07-19 12:27:37', '2024-07-19 10:27:37', '', 104, 'https://studiomoco.de/wp-content/uploads/2024/07/01-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2024-07-19 12:28:49', '2024-07-19 10:28:49', '', '02 (3)', '', 'inherit', 'open', 'closed', '', '02-3', '', '', '2024-07-19 12:28:49', '2024-07-19 10:28:49', '', 104, 'https://studiomoco.de/wp-content/uploads/2024/07/02-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2024-07-19 12:29:14', '2024-07-19 10:29:14', '', '03 (3)', '', 'inherit', 'open', 'closed', '', '03-3', '', '', '2024-07-19 12:29:14', '2024-07-19 10:29:14', '', 104, 'https://studiomoco.de/wp-content/uploads/2024/07/03-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2024-07-19 13:18:16', '2024-07-19 11:18:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page - Section 4', 'home-page-section-4', 'publish', 'closed', 'closed', '', 'group_669a4acc2bc8b', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=109', 4, 'acf-field-group', '', 0),
(110, 1, '2024-07-19 13:18:16', '2024-07-19 11:18:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'home_page_section_4_title', 'publish', 'closed', 'closed', '', 'field_669a4accaeb06', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 109, 'https://studiomoco.de/?post_type=acf-field&#038;p=110', 0, 'acf-field', '', 0),
(111, 1, '2024-07-19 13:18:16', '2024-07-19 11:18:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Sub Title', 'home_page_section_4_sub_title', 'publish', 'closed', 'closed', '', 'field_669a4ae3aeb07', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 109, 'https://studiomoco.de/?post_type=acf-field&#038;p=111', 1, 'acf-field', '', 0),
(112, 1, '2024-07-19 13:18:16', '2024-07-19 11:18:16', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image 1', 'home_page_section_4_image_1', 'publish', 'closed', 'closed', '', 'field_669a4afbaeb08', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 109, 'https://studiomoco.de/?post_type=acf-field&#038;p=112', 2, 'acf-field', '', 0),
(113, 1, '2024-07-19 13:18:16', '2024-07-19 11:18:16', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image 2', 'home_page_section_4_image_2', 'publish', 'closed', 'closed', '', 'field_669a4b09aeb09', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 109, 'https://studiomoco.de/?post_type=acf-field&#038;p=113', 3, 'acf-field', '', 0),
(114, 1, '2024-07-19 13:18:16', '2024-07-19 11:18:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'home_page_section_4_description', 'publish', 'closed', 'closed', '', 'field_669a4b1baeb0a', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 109, 'https://studiomoco.de/?post_type=acf-field&#038;p=114', 4, 'acf-field', '', 0),
(115, 1, '2024-07-19 13:18:16', '2024-07-19 11:18:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Button Text', 'home_page_section_4_button_text', 'publish', 'closed', 'closed', '', 'field_669a4b2faeb0b', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 109, 'https://studiomoco.de/?post_type=acf-field&#038;p=115', 5, 'acf-field', '', 0),
(116, 1, '2024-07-19 13:18:16', '2024-07-19 11:18:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Button URL', 'home_page_section_4_button_url', 'publish', 'closed', 'closed', '', 'field_669a4b3daeb0c', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 109, 'https://studiomoco.de/?post_type=acf-field&#038;p=116', 6, 'acf-field', '', 0),
(117, 1, '2024-07-19 13:19:09', '2024-07-19 11:19:09', '', 'buerostuehle', '', 'inherit', 'open', 'closed', '', 'buerostuehle', '', '', '2024-07-19 13:19:09', '2024-07-19 11:19:09', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/buerostuehle.jpeg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2024-07-19 13:19:26', '2024-07-19 11:19:26', '', 'copernico', '', 'inherit', 'open', 'closed', '', 'copernico', '', '', '2024-07-19 13:19:26', '2024-07-19 11:19:26', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/copernico.jpeg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2024-07-19 13:23:35', '2024-07-19 11:23:35', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Big Image', 'home_page_section_4_big_image', 'publish', 'closed', 'closed', '', 'field_669a4ca2e5c02', '', '', '2024-07-19 13:23:35', '2024-07-19 11:23:35', '', 109, 'https://studiomoco.de/?post_type=acf-field&p=121', 7, 'acf-field', '', 0),
(122, 1, '2024-07-19 13:23:52', '2024-07-19 11:23:52', '', 'teaser-web', '', 'inherit', 'open', 'closed', '', 'teaser-web', '', '', '2024-07-19 13:23:52', '2024-07-19 11:23:52', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/teaser-web.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2024-07-19 13:28:29', '2024-07-19 11:28:29', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page - Section 5', 'home-page-section-5', 'publish', 'closed', 'closed', '', 'group_669a4d7db89f9', '', '', '2024-07-19 13:28:29', '2024-07-19 11:28:29', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=124', 5, 'acf-field-group', '', 0),
(125, 1, '2024-07-19 13:28:29', '2024-07-19 11:28:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'home_page_section_5_title', 'publish', 'closed', 'closed', '', 'field_669a4d7ef6bed', '', '', '2024-07-19 13:28:29', '2024-07-19 11:28:29', '', 124, 'https://studiomoco.de/?post_type=acf-field&p=125', 0, 'acf-field', '', 0),
(126, 1, '2024-07-19 13:28:29', '2024-07-19 11:28:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'home_page_section_5_sub_title', 'publish', 'closed', 'closed', '', 'field_669a4dbaf6bee', '', '', '2024-07-19 13:28:29', '2024-07-19 11:28:29', '', 124, 'https://studiomoco.de/?post_type=acf-field&p=126', 1, 'acf-field', '', 0),
(127, 1, '2024-07-19 13:28:53', '2024-07-19 11:28:53', '', 'StartSeite', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-07-19 13:28:53', '2024-07-19 11:28:53', '', 13, 'https://studiomoco.de/?p=127', 0, 'revision', '', 0),
(132, 1, '2024-07-19 13:47:29', '2024-07-19 11:47:29', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_669a5221be075', '', '', '2024-07-19 13:47:29', '2024-07-19 11:47:29', '', 130, 'https://studiomoco.de/?post_type=acf-field&p=132', 0, 'acf-field', '', 0),
(134, 1, '2024-07-19 13:48:51', '2024-07-19 11:48:51', '', 'Logo-DVAG', '', 'inherit', 'open', 'closed', '', 'logo-dvag', '', '', '2024-07-19 13:48:51', '2024-07-19 11:48:51', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-DVAG.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2024-07-19 13:49:31', '2024-07-19 11:49:31', '', 'Logo-T-Mobile', '', 'inherit', 'open', 'closed', '', 'logo-t-mobile', '', '', '2024-07-19 13:49:31', '2024-07-19 11:49:31', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-T-Mobile.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2024-07-19 13:49:55', '2024-07-19 11:49:55', '', 'Logo-Oechsler', '', 'inherit', 'open', 'closed', '', 'logo-oechsler', '', '', '2024-07-19 13:49:55', '2024-07-19 11:49:55', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-Oechsler.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2024-07-19 13:50:20', '2024-07-19 11:50:20', '', 'Logo-Soeldner', '', 'inherit', 'open', 'closed', '', 'logo-soeldner', '', '', '2024-07-19 13:50:20', '2024-07-19 11:50:20', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-Soeldner.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2024-07-19 13:50:42', '2024-07-19 11:50:42', '', 'Logo-Sam', '', 'inherit', 'open', 'closed', '', 'logo-sam', '', '', '2024-07-19 13:50:42', '2024-07-19 11:50:42', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-Sam.png', 0, 'attachment', 'image/png', 0),
(139, 1, '2024-07-19 13:51:12', '2024-07-19 11:51:12', '', 'Logo-Vestel', '', 'inherit', 'open', 'closed', '', 'logo-vestel', '', '', '2024-07-19 13:51:12', '2024-07-19 11:51:12', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-Vestel.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2024-07-19 13:51:34', '2024-07-19 11:51:34', '', 'Logo-MGN', '', 'inherit', 'open', 'closed', '', 'logo-mgn', '', '', '2024-07-19 13:51:34', '2024-07-19 11:51:34', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-MGN.png', 0, 'attachment', 'image/png', 0),
(141, 1, '2024-07-19 13:52:01', '2024-07-19 11:52:01', '', 'Logo-Hotel-Number-One', '', 'inherit', 'open', 'closed', '', 'logo-hotel-number-one', '', '', '2024-07-19 13:52:01', '2024-07-19 11:52:01', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-Hotel-Number-One.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2024-07-19 13:52:30', '2024-07-19 11:52:30', '', 'Logo-Ketteler', '', 'inherit', 'open', 'closed', '', 'logo-ketteler', '', '', '2024-07-19 13:52:30', '2024-07-19 11:52:30', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-Ketteler.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2024-07-19 13:52:56', '2024-07-19 11:52:56', '', 'Logo-SWS', '', 'inherit', 'open', 'closed', '', 'logo-sws', '', '', '2024-07-19 13:52:56', '2024-07-19 11:52:56', '', 13, 'https://studiomoco.de/wp-content/uploads/2024/07/Logo-SWS.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2024-07-19 13:53:00', '2024-07-19 11:53:00', '', 'StartSeite', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-07-19 13:53:00', '2024-07-19 11:53:00', '', 13, 'https://studiomoco.de/?p=144', 0, 'revision', '', 0),
(145, 1, '2024-07-19 13:55:52', '2024-07-19 11:55:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page - Section 6', 'home-page-section-6', 'publish', 'closed', 'closed', '', 'group_669a541e0c04e', '', '', '2024-07-22 09:04:22', '2024-07-22 07:04:22', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=145', 7, 'acf-field-group', '', 0),
(146, 1, '2024-07-19 13:55:52', '2024-07-19 11:55:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'home_page_section_7_title', 'publish', 'closed', 'closed', '', 'field_669a541ec763f', '', '', '2024-07-19 13:55:52', '2024-07-19 11:55:52', '', 145, 'https://studiomoco.de/?post_type=acf-field&p=146', 0, 'acf-field', '', 0),
(147, 1, '2024-07-19 13:55:52', '2024-07-19 11:55:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'home_page_section_7_description', 'publish', 'closed', 'closed', '', 'field_669a542cc7640', '', '', '2024-07-19 13:56:39', '2024-07-19 11:56:39', '', 145, 'https://studiomoco.de/?post_type=acf-field&#038;p=147', 1, 'acf-field', '', 0),
(148, 1, '2024-07-19 13:56:31', '2024-07-19 11:56:31', '', 'StartSeite', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-07-19 13:56:31', '2024-07-19 11:56:31', '', 13, 'https://studiomoco.de/?p=148', 0, 'revision', '', 0),
(149, 1, '2024-07-19 13:58:59', '2024-07-19 11:58:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page - Section 7', 'home-page-section-7', 'publish', 'closed', 'closed', '', 'group_669a54deae465', '', '', '2024-07-22 09:04:29', '2024-07-22 07:04:29', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=149', 8, 'acf-field-group', '', 0),
(150, 1, '2024-07-19 13:58:59', '2024-07-19 11:58:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Motto', 'home_page_section_8_motto', 'publish', 'closed', 'closed', '', 'field_669a54df72820', '', '', '2024-07-19 13:58:59', '2024-07-19 11:58:59', '', 149, 'https://studiomoco.de/?post_type=acf-field&p=150', 0, 'acf-field', '', 0),
(151, 1, '2024-07-19 14:21:02', '2024-07-19 12:21:02', '', 'StartSeite', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-07-19 14:21:02', '2024-07-19 12:21:02', '', 13, 'https://studiomoco.de/?p=151', 0, 'revision', '', 0),
(152, 1, '2024-07-22 08:55:41', '2024-07-22 06:55:41', 'a:35:{s:9:\"post_type\";s:13:\"customer-logo\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:14:\"Customer Logos\";s:13:\"singular_name\";s:13:\"Customer Logo\";s:9:\"menu_name\";s:14:\"Customer Logos\";s:9:\"all_items\";s:18:\"All Customer Logos\";s:9:\"edit_item\";s:18:\"Edit Customer Logo\";s:9:\"view_item\";s:18:\"View Customer Logo\";s:10:\"view_items\";s:19:\"View Customer Logos\";s:12:\"add_new_item\";s:21:\"Add New Customer Logo\";s:7:\"add_new\";s:21:\"Add New Customer Logo\";s:8:\"new_item\";s:17:\"New Customer Logo\";s:17:\"parent_item_colon\";s:21:\"Parent Customer Logo:\";s:12:\"search_items\";s:21:\"Search Customer Logos\";s:9:\"not_found\";s:23:\"No customer logos found\";s:18:\"not_found_in_trash\";s:32:\"No customer logos found in Trash\";s:8:\"archives\";s:22:\"Customer Logo Archives\";s:10:\"attributes\";s:24:\"Customer Logo Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:25:\"Insert into customer logo\";s:21:\"uploaded_to_this_item\";s:30:\"Uploaded to this customer logo\";s:17:\"filter_items_list\";s:26:\"Filter customer logos list\";s:14:\"filter_by_date\";s:29:\"Filter customer logos by date\";s:21:\"items_list_navigation\";s:30:\"Customer Logos list navigation\";s:10:\"items_list\";s:19:\"Customer Logos list\";s:14:\"item_published\";s:24:\"Customer Logo published.\";s:24:\"item_published_privately\";s:34:\"Customer Logo published privately.\";s:22:\"item_reverted_to_draft\";s:32:\"Customer Logo reverted to draft.\";s:14:\"item_scheduled\";s:24:\"Customer Logo scheduled.\";s:12:\"item_updated\";s:22:\"Customer Logo updated.\";s:9:\"item_link\";s:18:\"Customer Logo Link\";s:21:\"item_link_description\";s:26:\"A link to a customer logo.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Customer Logos', 'customer-logos', 'publish', 'closed', 'closed', '', 'post_type_669e021a7f1e4', '', '', '2024-07-22 08:55:41', '2024-07-22 06:55:41', '', 0, 'https://studiomoco.de/?post_type=acf-post-type&#038;p=152', 0, 'acf-post-type', '', 0),
(153, 1, '2024-07-22 08:56:03', '2024-07-22 06:56:03', '', 'SWS', '', 'publish', 'closed', 'closed', '', 'sws', '', '', '2024-07-22 08:56:03', '2024-07-22 06:56:03', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=153', 0, 'customer-logo', '', 0),
(154, 1, '2024-07-22 08:56:21', '2024-07-22 06:56:21', '', 'Ketteler', '', 'publish', 'closed', 'closed', '', 'ketteler', '', '', '2024-07-22 08:56:21', '2024-07-22 06:56:21', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=154', 0, 'customer-logo', '', 0),
(155, 1, '2024-07-22 08:56:35', '2024-07-22 06:56:35', '', 'Number One Hotel', '', 'publish', 'closed', 'closed', '', 'number-one-hotel', '', '', '2024-07-22 08:56:35', '2024-07-22 06:56:35', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=155', 0, 'customer-logo', '', 0),
(156, 1, '2024-07-22 08:56:49', '2024-07-22 06:56:49', '', 'MNG', '', 'publish', 'closed', 'closed', '', 'mng', '', '', '2024-07-22 08:56:49', '2024-07-22 06:56:49', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=156', 0, 'customer-logo', '', 0),
(157, 1, '2024-07-22 08:56:59', '2024-07-22 06:56:59', '', 'Vestel', '', 'publish', 'closed', 'closed', '', 'vestel', '', '', '2024-07-22 08:56:59', '2024-07-22 06:56:59', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=157', 0, 'customer-logo', '', 0),
(158, 1, '2024-07-22 08:57:09', '2024-07-22 06:57:09', '', 'Sam', '', 'publish', 'closed', 'closed', '', 'sam', '', '', '2024-07-22 08:57:09', '2024-07-22 06:57:09', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=158', 0, 'customer-logo', '', 0),
(159, 1, '2024-07-22 08:57:24', '2024-07-22 06:57:24', '', 'Soeldner Consult', '', 'publish', 'closed', 'closed', '', 'soeldner-consult', '', '', '2024-07-22 08:57:24', '2024-07-22 06:57:24', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=159', 0, 'customer-logo', '', 0),
(160, 1, '2024-07-22 08:57:38', '2024-07-22 06:57:38', '', 'Oechsler', '', 'publish', 'closed', 'closed', '', 'oechsler', '', '', '2024-07-22 08:57:38', '2024-07-22 06:57:38', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=160', 0, 'customer-logo', '', 0),
(161, 1, '2024-07-22 08:57:49', '2024-07-22 06:57:49', '', 'T Mobile', '', 'publish', 'closed', 'closed', '', 't-mobile', '', '', '2024-07-22 08:57:49', '2024-07-22 06:57:49', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=161', 0, 'customer-logo', '', 0),
(162, 1, '2024-07-22 08:58:14', '2024-07-22 06:58:14', '', 'Deutsche Vermögensberatung', '', 'publish', 'closed', 'closed', '', 'deutsche-vermogensberatung', '', '', '2024-07-22 08:58:14', '2024-07-22 06:58:14', '', 0, 'https://studiomoco.de/?post_type=customer-logo&#038;p=162', 0, 'customer-logo', '', 0),
(164, 1, '2024-07-22 09:32:57', '2024-07-22 07:32:57', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-about-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us - Section 1', 'about-us-section-1', 'publish', 'closed', 'closed', '', 'group_669e0ac805a5d', '', '', '2024-07-22 09:32:57', '2024-07-22 07:32:57', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=164', 0, 'acf-field-group', '', 0),
(165, 1, '2024-07-22 09:32:57', '2024-07-22 07:32:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'about_us_section_1_title', 'publish', 'closed', 'closed', '', 'field_669e0ac7c567f', '', '', '2024-07-22 09:32:57', '2024-07-22 07:32:57', '', 164, 'https://studiomoco.de/?post_type=acf-field&p=165', 0, 'acf-field', '', 0),
(166, 1, '2024-07-22 09:32:57', '2024-07-22 07:32:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'about_us_section_1_sub_title', 'publish', 'closed', 'closed', '', 'field_669e0adcc5680', '', '', '2024-07-22 09:32:57', '2024-07-22 07:32:57', '', 164, 'https://studiomoco.de/?post_type=acf-field&p=166', 1, 'acf-field', '', 0),
(167, 1, '2024-07-22 09:32:57', '2024-07-22 07:32:57', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image', 'about_us_section_1_image', 'publish', 'closed', 'closed', '', 'field_669e0ae2c5681', '', '', '2024-07-22 09:32:57', '2024-07-22 07:32:57', '', 164, 'https://studiomoco.de/?post_type=acf-field&p=167', 2, 'acf-field', '', 0),
(168, 1, '2024-07-22 09:32:57', '2024-07-22 07:32:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'about_us_section_1_description', 'publish', 'closed', 'closed', '', 'field_669e0af4c5682', '', '', '2024-07-22 09:32:57', '2024-07-22 07:32:57', '', 164, 'https://studiomoco.de/?post_type=acf-field&p=168', 3, 'acf-field', '', 0),
(169, 1, '2024-07-22 09:35:21', '2024-07-22 07:35:21', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-about-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us - Section 2', 'about-us-section-2', 'publish', 'closed', 'closed', '', 'group_669e0b67edc15', '', '', '2024-07-22 09:35:21', '2024-07-22 07:35:21', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=169', 0, 'acf-field-group', '', 0),
(170, 1, '2024-07-22 09:35:21', '2024-07-22 07:35:21', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image', 'about_us_section_2_image', 'publish', 'closed', 'closed', '', 'field_669e0b666f7a6', '', '', '2024-07-22 09:35:21', '2024-07-22 07:35:21', '', 169, 'https://studiomoco.de/?post_type=acf-field&p=170', 0, 'acf-field', '', 0),
(171, 1, '2024-07-22 09:35:21', '2024-07-22 07:35:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'about_us_section_2_title', 'publish', 'closed', 'closed', '', 'field_669e0b7c6f7a7', '', '', '2024-07-22 09:35:21', '2024-07-22 07:35:21', '', 169, 'https://studiomoco.de/?post_type=acf-field&p=171', 1, 'acf-field', '', 0),
(172, 1, '2024-07-22 09:35:21', '2024-07-22 07:35:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'about_us_section_2_description', 'publish', 'closed', 'closed', '', 'field_669e0b816f7a8', '', '', '2024-07-22 09:35:21', '2024-07-22 07:35:21', '', 169, 'https://studiomoco.de/?post_type=acf-field&p=172', 2, 'acf-field', '', 0),
(173, 1, '2024-07-22 09:37:34', '2024-07-22 07:37:34', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-about-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us - Section 3', 'about-us-section-3', 'publish', 'closed', 'closed', '', 'group_669e0bd99ccac', '', '', '2024-07-22 09:39:15', '2024-07-22 07:39:15', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=173', 0, 'acf-field-group', '', 0),
(174, 1, '2024-07-22 09:37:34', '2024-07-22 07:37:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'about_us_section_3_title', 'publish', 'closed', 'closed', '', 'field_669e0bd8c4747', '', '', '2024-07-22 09:37:34', '2024-07-22 07:37:34', '', 173, 'https://studiomoco.de/?post_type=acf-field&p=174', 0, 'acf-field', '', 0),
(175, 1, '2024-07-22 09:37:34', '2024-07-22 07:37:34', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image', 'about_us_section_3_image', 'publish', 'closed', 'closed', '', 'field_669e0be8c4748', '', '', '2024-07-22 09:37:34', '2024-07-22 07:37:34', '', 173, 'https://studiomoco.de/?post_type=acf-field&p=175', 1, 'acf-field', '', 0),
(176, 1, '2024-07-22 09:37:34', '2024-07-22 07:37:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Right Title', 'about_us_section_3_right_title', 'publish', 'closed', 'closed', '', 'field_669e0bf9c4749', '', '', '2024-07-22 09:37:34', '2024-07-22 07:37:34', '', 173, 'https://studiomoco.de/?post_type=acf-field&p=176', 2, 'acf-field', '', 0),
(177, 1, '2024-07-22 09:37:34', '2024-07-22 07:37:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Right Sub Title', 'about_us_section_3_right_sub_title', 'publish', 'closed', 'closed', '', 'field_669e0c01c474a', '', '', '2024-07-22 09:37:34', '2024-07-22 07:37:34', '', 173, 'https://studiomoco.de/?post_type=acf-field&p=177', 3, 'acf-field', '', 0),
(178, 1, '2024-07-22 09:37:34', '2024-07-22 07:37:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Righr Description', 'about_us_section_3_righr_description', 'publish', 'closed', 'closed', '', 'field_669e0c0bc474b', '', '', '2024-07-22 09:37:34', '2024-07-22 07:37:34', '', 173, 'https://studiomoco.de/?post_type=acf-field&p=178', 4, 'acf-field', '', 0),
(179, 1, '2024-07-22 09:39:34', '2024-07-22 07:39:34', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-about-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us - Section 4', 'about-us-section-4', 'publish', 'closed', 'closed', '', 'group_669e0c4235916', '', '', '2024-08-19 11:10:34', '2024-08-19 09:10:34', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=179', 0, 'acf-field-group', '', 0),
(186, 1, '2024-07-22 09:39:34', '2024-07-22 07:39:34', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image', 'about_ust_section_4_image', 'publish', 'closed', 'closed', '', 'field_669e0c418f8fa', '', '', '2024-07-22 09:39:34', '2024-07-22 07:39:34', '', 179, 'https://studiomoco.de/?post_type=acf-field&p=186', 0, 'acf-field', '', 0),
(187, 1, '2024-07-22 09:39:34', '2024-07-22 07:39:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'about_ust_section_4_title', 'publish', 'closed', 'closed', '', 'field_669e0c598f8fb', '', '', '2024-08-19 11:10:34', '2024-08-19 09:10:34', '', 179, 'https://studiomoco.de/?post_type=acf-field&#038;p=187', 1, 'acf-field', '', 0),
(188, 1, '2024-07-22 09:39:34', '2024-07-22 07:39:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'about_ust_section_4_sub_title', 'publish', 'closed', 'closed', '', 'field_669e0c5f8f8fc', '', '', '2024-07-22 09:39:34', '2024-07-22 07:39:34', '', 179, 'https://studiomoco.de/?post_type=acf-field&p=188', 2, 'acf-field', '', 0),
(189, 1, '2024-07-22 09:39:34', '2024-07-22 07:39:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Description', 'about_ust_section_4_description', 'publish', 'closed', 'closed', '', 'field_669e0c648f8fd', '', '', '2024-07-22 09:39:34', '2024-07-22 07:39:34', '', 179, 'https://studiomoco.de/?post_type=acf-field&p=189', 3, 'acf-field', '', 0),
(190, 1, '2024-07-22 09:41:06', '2024-07-22 07:41:06', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-about-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us - Section 5', 'about-us-section-5', 'publish', 'closed', 'closed', '', 'group_669e0cbbaa134', '', '', '2024-07-22 09:41:06', '2024-07-22 07:41:06', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=190', 0, 'acf-field-group', '', 0),
(191, 1, '2024-07-22 09:41:06', '2024-07-22 07:41:06', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image', 'about_us_section_5_image', 'publish', 'closed', 'closed', '', 'field_669e0cbacd4e8', '', '', '2024-07-22 09:41:06', '2024-07-22 07:41:06', '', 190, 'https://studiomoco.de/?post_type=acf-field&p=191', 0, 'acf-field', '', 0),
(192, 1, '2024-07-22 09:41:06', '2024-07-22 07:41:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'about_us_section_5_title', 'publish', 'closed', 'closed', '', 'field_669e0cd6cd4e9', '', '', '2024-07-22 09:41:06', '2024-07-22 07:41:06', '', 190, 'https://studiomoco.de/?post_type=acf-field&p=192', 1, 'acf-field', '', 0),
(193, 1, '2024-07-22 09:41:06', '2024-07-22 07:41:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'about_us_section_5_sub_title', 'publish', 'closed', 'closed', '', 'field_669e0cdacd4ea', '', '', '2024-07-22 09:41:06', '2024-07-22 07:41:06', '', 190, 'https://studiomoco.de/?post_type=acf-field&p=193', 2, 'acf-field', '', 0),
(194, 1, '2024-07-22 09:41:06', '2024-07-22 07:41:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'about_us_section_5_description', 'publish', 'closed', 'closed', '', 'field_669e0ce1cd4eb', '', '', '2024-07-22 09:41:06', '2024-07-22 07:41:06', '', 190, 'https://studiomoco.de/?post_type=acf-field&p=194', 3, 'acf-field', '', 0),
(196, 1, '2024-07-22 09:43:08', '2024-07-22 07:43:08', '', 'studio-moco-direction', '', 'inherit', 'open', 'closed', '', 'studio-moco-direction', '', '', '2024-07-22 09:43:08', '2024-07-22 07:43:08', '', 18, 'https://studiomoco.de/wp-content/uploads/2024/07/studio-moco-direction.jpeg', 0, 'attachment', 'image/jpeg', 0),
(197, 1, '2024-07-22 09:43:36', '2024-07-22 07:43:36', '', 'outside-office', '', 'inherit', 'open', 'closed', '', 'outside-office', '', '', '2024-07-22 09:43:36', '2024-07-22 07:43:36', '', 18, 'https://studiomoco.de/wp-content/uploads/2024/07/outside-office.jpeg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2024-07-22 09:44:05', '2024-07-22 07:44:05', '', 'ux-beratung', '', 'inherit', 'open', 'closed', '', 'ux-beratung', '', '', '2024-07-22 09:44:05', '2024-07-22 07:44:05', '', 18, 'https://studiomoco.de/wp-content/uploads/2024/07/ux-beratung.jpeg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2024-07-22 09:44:32', '2024-07-22 07:44:32', '', 'mockup-soeldner', '', 'inherit', 'open', 'closed', '', 'mockup-soeldner', '', '', '2024-07-22 09:44:32', '2024-07-22 07:44:32', '', 18, 'https://studiomoco.de/wp-content/uploads/2024/07/mockup-soeldner.jpeg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2024-07-22 09:45:01', '2024-07-22 07:45:01', '', 'webentwicklung', '', 'inherit', 'open', 'closed', '', 'webentwicklung', '', '', '2024-07-22 09:45:01', '2024-07-22 07:45:01', '', 18, 'https://studiomoco.de/wp-content/uploads/2024/07/webentwicklung.jpeg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2024-07-22 09:45:20', '2024-07-22 07:45:20', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2024-07-22 09:45:20', '2024-07-22 07:45:20', '', 18, 'https://studiomoco.de/?p=201', 0, 'revision', '', 0),
(202, 1, '2024-07-22 09:57:13', '2024-07-22 07:57:13', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-about-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us - Section 6', 'about-us-section-6', 'publish', 'closed', 'closed', '', 'group_669e10a2d51d1', '', '', '2024-07-22 09:57:13', '2024-07-22 07:57:13', '', 0, 'https://studiomoco.de/?post_type=acf-field-group&#038;p=202', 0, 'acf-field-group', '', 0),
(203, 1, '2024-07-22 09:57:13', '2024-07-22 07:57:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'about_us_section_6_title', 'publish', 'closed', 'closed', '', 'field_669e10a2cc1c8', '', '', '2024-07-22 09:57:13', '2024-07-22 07:57:13', '', 202, 'https://studiomoco.de/?post_type=acf-field&p=203', 0, 'acf-field', '', 0),
(204, 1, '2024-07-22 09:57:13', '2024-07-22 07:57:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'about_us_section_6_description', 'publish', 'closed', 'closed', '', 'field_669e10aecc1c9', '', '', '2024-07-22 09:57:13', '2024-07-22 07:57:13', '', 202, 'https://studiomoco.de/?post_type=acf-field&p=204', 1, 'acf-field', '', 0),
(205, 1, '2024-07-22 09:58:10', '2024-07-22 07:58:10', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2024-07-22 09:58:10', '2024-07-22 07:58:10', '', 18, 'https://studiomoco.de/?p=205', 0, 'revision', '', 0),
(207, 1, '2024-07-22 10:13:12', '2024-07-22 08:13:12', '<!-- wp:paragraph -->\n<p>Atilla Ocak<br>Studio Moco<br>Crafting Magical User Experiences<br>Hufelandstr. 107<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Büro:<br>Großweidenmühlstraße 21<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: 0171 102 33 33<br>Mail: hey@studiomoco.de</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>UST-ID: DE357733502</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>VIEW CASESAG HEY!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>© Studio Moco 2024</p>\n<!-- /wp:paragraph -->', 'Impressum', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-07-22 10:13:12', '2024-07-22 08:13:12', '', 22, 'https://studiomoco.de/?p=207', 0, 'revision', '', 0),
(209, 1, '2024-07-22 10:13:59', '2024-07-22 08:13:59', '<!-- wp:paragraph -->\n<p>Atilla Ocak<br>Studio Moco<br>Crafting Magical User Experiences<br>Hufelandstr. 107<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Impressum', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-07-22 10:13:59', '2024-07-22 08:13:59', '', 22, 'https://studiomoco.de/?p=209', 0, 'revision', '', 0),
(210, 1, '2024-07-22 10:14:20', '2024-07-22 08:14:20', '<!-- wp:paragraph -->\n<p>Atilla Ocak<br>Studio Moco<br>Crafting Magical User Experiences<br>Hufelandstr. 107<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Büro:<br>Großweidenmühlstraße 21<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Impressum', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-07-22 10:14:20', '2024-07-22 08:14:20', '', 22, 'https://studiomoco.de/?p=210', 0, 'revision', '', 0);
INSERT INTO `mc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(211, 1, '2024-07-22 10:16:11', '2024-07-22 08:16:11', '<!-- wp:paragraph -->\n<p>Atilla Ocak<br>Studio Moco<br>Crafting Magical User Experiences<br>Hufelandstr. 107<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Büro:<br>Großweidenmühlstraße 21<br>90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: 0171 102 33 33<br>Mail: hey@studiomoco.de</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>UST-ID: DE357733502</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Impressum', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2024-07-22 10:16:11', '2024-07-22 08:16:11', '', 22, 'https://studiomoco.de/?p=211', 0, 'revision', '', 0),
(212, 1, '2024-07-22 10:16:46', '2024-07-22 08:16:46', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Informationen über die Verarbeitung Ihrer Daten gemäß Art. 13 der Datenschutz-Grundverordnung (DS-GVO)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">1. Verantwortlicher und Datenschutzbeauftragter</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Verantwortlich für diese Website ist</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Atilla Ocak, Hufelandstr. 107, 90419 Nürnberg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">2. Daten, die für die Bereitstellung der Website und die Erstellung der Protokolldateien verarbeitet werden</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">a. Welche Daten werden für welchen Zweck verarbeitet?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Bei jedem Zugriff auf Inhalte der Website werden vorübergehend Daten gespeichert, die möglicherweise eine Identifizierung zulassen. Die folgenden Daten werden hierbei erhoben:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>Datum und Uhrzeit des Zugriffs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>IP-Adresse</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Hostname des zugreifenden Rechners</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Website, von der aus die Website aufgerufen wurde</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Websites, die über die Website aufgerufen werden</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Besuchte Seite auf unserer Website</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Meldung, ob der Abruf erfolgreich war</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Übertragene Datenmenge</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Informationen über den Browsertyp und die verwendete Version</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Betriebssystem</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Die vorübergehende Speicherung der Daten ist für den Ablauf eines Websitebesuchs erforderlich, um eine Auslieferung der Website zu ermöglichen. Eine weitere Speicherung in Protokolldateien erfolgt, um die Funktionsfähigkeit der Website und die Sicherheit der informationstechnischen Systeme sicherzustellen. In diesen Zwecken liegt auch unser berechtigtes Interesse an der Datenverarbeitung.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">b. Auf welcher Rechtsgrundlage werden diese Daten verarbeitet?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Die Daten werden auf der Grundlage des Art. 6 Abs. 1 Buchstabe f DS-GVO verarbeitet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">c. Wie lange werden die Daten gespeichert?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Die Daten werden gelöscht, sobald sie für die Erreichung des Zwecks ihrer Erhebung nicht mehr erforderlich sind. Bei der Bereitstellung der Website ist dies der Fall, wenn die jeweilige Sitzung beendet ist. Die Protokolldateien werden […, maximal bis zu 24 Stunden] direkt und ausschließlich für Administratoren zugänglich aufbewahrt. Danach sind sie nur noch indirekt über die Rekonstruktion von Sicherungsbändern verfügbar und werden nach […, maximal vier Wochen] endgültig gelöscht.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">3. Betroffenenrechte</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">a. Recht auf Auskunft</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie können Auskunft nach Art. 15 DS-GVO über Ihre personenbezogenen Daten verlangen, die wir verarbeiten.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">b. Recht auf Widerspruch</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie haben ein Recht auf Widerspruch aus besonderen Gründen (siehe unter Punkt II).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">c. Recht auf Berichtigung</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sollten die Sie betreffenden Angaben nicht (mehr) zutreffend sein, können Sie nach Art. 16 DS-GVO eine Berichtigung verlangen. Sollten Ihre Daten unvollständig sein, können Sie eine Vervollständigung verlangen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">d. Recht auf Löschung</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie können nach Art. 17 DS-GVO die Löschung Ihrer personenbezogenen Daten verlangen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">e. Recht auf Einschränkung der Verarbeitung</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie haben nach Art. 18 DS-GVO das Recht, eine Einschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">f. Recht auf Beschwerde</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Wenn Sie der Ansicht sind, dass die Verarbeitung Ihrer personenbezogenen Daten gegen Datenschutzrecht verstößt, haben Sie nach Ar. 77 Abs. 1 DS-GVO das Recht, sich bei einer Datenschutzaufsichtsbehörde eigener Wahl zu beschweren. Hierzu gehört auch die für den Verantwortlichen zuständige Datenschutzaufsichtsbehörde: Landesbeauftragte für Datenschutz und Informationsfreiheit Nordrhein-Westfalen,&nbsp;<a href=\"https://www.ldi.nrw.de/kontakt/ihre-beschwerde\">https://www.ldi.nrw.de/kontakt/ihre-beschwerde</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">g. Recht auf Datenübertragbarkeit</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Für den Fall, dass die Voraussetzungen des Art. 20 Abs. 1 DS-GVO vorliegen, steht Ihnen das Recht zu, sich Daten, die wir auf Grundlage Ihrer Einwilligung oder in Erfüllung eines Vertrags automatisiert verarbeiten, an sich oder an Dritte aushändigen zu lassen. Die Erfassung der Daten zur Bereitstellung der Website und die Speicherung der Protokolldateien sind für den Betrieb der Internetseite zwingend erforderlich. Sie beruhen daher nicht auf einer Einwilligung nach Art. 6 Abs. 1 Buchstabe a DS-GVO oder auf einem Vertrag nach Art. 6 Abs. 1 Buchstabe b DS-GVO, sondern sind nach Art. 6 Abs. 1 Buchstabe f DS-GVO gerechtfertigt. Die Voraussetzungen des Art. 20 Abs. 1 DS-GVO sind demnach insoweit nicht erfüllt.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">II. Recht auf Widerspruch gemäß Art. 21 Abs. 1 DS-GVO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sie haben das Recht, aus Gründen, die sich aus Ihrer besonderen Situation ergeben, jederzeit gegen die Verarbeitung Ihrer personenbezogenen Daten, die aufgrund von Artikel 6 Abs. 1 Buchstabe f DS-GVO erfolgt, Widerspruch einzulegen. Der Verantwortliche verarbeitet die personenbezogenen Daten dann nicht mehr, es sei denn, er kann zwingende schutzwürdige Gründe für die Verarbeitung nachweisen, die die Interessen, Rechte und Freiheiten der betroffenen Person überwiegen, oder die Verarbeitung dient der Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen. Die Erfassung der Daten zur Bereitstellung der Website und die Speicherung der Protokolldateien sind für den Betrieb der Internetseite zwingend erforderlich.</p>\n<!-- /wp:paragraph -->', 'Datenschutz', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2024-07-22 10:16:46', '2024-07-22 08:16:46', '', 24, 'https://studiomoco.de/?p=212', 0, 'revision', '', 0),
(214, 1, '2024-07-22 11:47:15', '2024-07-22 09:47:15', '', 'StartSeite', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-07-22 11:47:15', '2024-07-22 09:47:15', '', 13, 'https://studiomoco.de/?p=214', 0, 'revision', '', 0),
(215, 1, '2024-07-22 12:45:19', '2024-07-22 10:45:19', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image 1', 'case_studio_image_1', 'publish', 'closed', 'closed', '', 'field_669e382b24729', '', '', '2024-07-22 12:45:55', '2024-07-22 10:45:55', '', 39, 'https://studiomoco.de/?post_type=acf-field&#038;p=215', 2, 'acf-field', '', 0),
(216, 1, '2024-07-22 12:47:55', '2024-07-22 10:47:55', '', 'main page', '', 'inherit', 'open', 'closed', '', 'main-page', '', '', '2024-07-22 12:47:55', '2024-07-22 10:47:55', '', 100, 'https://studiomoco.de/wp-content/uploads/2024/07/main-page.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2024-07-22 12:48:19', '2024-07-22 10:48:19', '', 'main page (1)', '', 'inherit', 'open', 'closed', '', 'main-page-1', '', '', '2024-07-22 12:48:19', '2024-07-22 10:48:19', '', 104, 'https://studiomoco.de/wp-content/uploads/2024/07/main-page-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2024-07-22 12:48:42', '2024-07-22 10:48:42', '', 'main', '', 'inherit', 'open', 'closed', '', 'main', '', '', '2024-07-22 12:48:42', '2024-07-22 10:48:42', '', 96, 'https://studiomoco.de/wp-content/uploads/2024/07/main.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2024-07-22 12:49:03', '2024-07-22 10:49:03', '', 'main (1)', '', 'inherit', 'open', 'closed', '', 'main-1', '', '', '2024-07-22 12:49:03', '2024-07-22 10:49:03', '', 37, 'https://studiomoco.de/wp-content/uploads/2024/07/main-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2024-07-22 12:52:59', '2024-07-22 10:52:59', '', 'Screenshot (14)', '', 'inherit', 'open', 'closed', '', 'screenshot-14', '', '', '2024-07-22 12:52:59', '2024-07-22 10:52:59', '', 0, 'https://studiomoco.de/wp-content/uploads/2024/07/Screenshot-14.png', 0, 'attachment', 'image/png', 0),
(221, 1, '2024-07-22 12:53:35', '2024-07-22 10:53:35', '', 'project-meeting (1)', '', 'inherit', 'open', 'closed', '', 'project-meeting-1', '', '', '2024-07-22 12:53:35', '2024-07-22 10:53:35', '', 0, 'https://studiomoco.de/wp-content/uploads/2024/07/project-meeting-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2024-07-22 12:55:54', '2024-07-22 10:55:54', '', 'WhatsApp Görsel 2024-07-22 saat 13.55.25_a90da800', '', 'inherit', 'open', 'closed', '', 'whatsapp-goersel-2024-07-22-saat-13-55-25_a90da800', '', '', '2024-07-22 12:55:54', '2024-07-22 10:55:54', '', 0, 'https://studiomoco.de/wp-content/uploads/2024/07/WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2024-07-22 12:56:02', '2024-07-22 10:56:02', 'https://studiomoco.de/wp-content/uploads/2024/07/cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800.jpg', 'cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-whatsapp-goersel-2024-07-22-saat-13-55-25_a90da800-jpg', '', '', '2024-07-22 12:56:02', '2024-07-22 10:56:02', '', 222, 'https://studiomoco.de/wp-content/uploads/2024/07/cropped-WhatsApp-Goersel-2024-07-22-saat-13.55.25_a90da800.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2024-07-22 12:58:51', '2024-07-22 10:58:51', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2024-07-22 12:58:51', '2024-07-22 10:58:51', '', 18, 'https://studiomoco.de/?p=224', 0, 'revision', '', 0),
(225, 1, '2024-07-22 12:59:03', '2024-07-22 10:59:03', '', 'Case Studies', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2024-07-22 12:59:03', '2024-07-22 10:59:03', '', 16, 'https://studiomoco.de/?p=225', 0, 'revision', '', 0),
(226, 1, '2024-07-22 12:59:09', '2024-07-22 10:59:09', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2024-07-22 12:59:09', '2024-07-22 10:59:09', '', 20, 'https://studiomoco.de/?p=226', 0, 'revision', '', 0),
(228, 1, '2024-07-24 13:46:26', '2024-07-24 11:46:26', '<!-- wp:complianz/document {\"title\":\"Cookie-Richtlinie (EU)\",\"selectedDocument\":\"cookie-statement\"} /-->', 'Cookie-Richtlinie (EU)', '', 'publish', 'closed', 'closed', '', 'cookie-richtlinie-eu', '', '', '2024-12-16 07:23:50', '2024-12-16 06:23:50', '', 0, 'https://studiomoco.de/cookie-richtlinie-eu/', 0, 'page', '', 0),
(229, 1, '2024-07-24 13:48:04', '2024-07-24 11:48:04', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2024-07-24 13:48:04', '2024-07-24 11:48:04', '', 0, 'https://studiomoco.de/229/', 3, 'nav_menu_item', '', 0),
(233, 1, '2024-11-18 23:05:26', '2024-11-18 22:05:26', '', 'SWS Packaging', '', 'publish', 'closed', 'closed', '', 'sws-packaging', '', '', '2024-12-16 07:25:03', '2024-12-16 06:25:03', '', 0, 'https://studiomoco.de/?post_type=case-study&#038;p=233', 0, 'case-study', '', 0),
(234, 1, '2024-10-21 22:54:37', '2024-10-21 20:54:37', '', 'M5', '', 'inherit', 'open', 'closed', '', 'm5', '', '', '2024-10-21 22:54:37', '2024-10-21 20:54:37', '', 233, 'https://studiomoco.de/wp-content/uploads/2024/10/M5.jpg', 0, 'attachment', 'image/jpeg', 0),
(235, 1, '2024-10-21 22:55:43', '2024-10-21 20:55:43', '', 'M3', '', 'inherit', 'open', 'closed', '', 'm3', '', '', '2024-10-21 22:55:43', '2024-10-21 20:55:43', '', 233, 'https://studiomoco.de/wp-content/uploads/2024/10/M3.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2024-10-21 22:55:44', '2024-10-21 20:55:44', '', 'M55', '', 'inherit', 'open', 'closed', '', 'm55', '', '', '2024-10-21 22:55:44', '2024-10-21 20:55:44', '', 233, 'https://studiomoco.de/wp-content/uploads/2024/10/M55.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2024-10-21 23:02:18', '2024-10-21 21:02:18', '', 'M54', '', 'inherit', 'open', 'closed', '', 'm54', '', '', '2024-10-21 23:02:18', '2024-10-21 21:02:18', '', 233, 'https://studiomoco.de/wp-content/uploads/2024/10/M54.jpg', 0, 'attachment', 'image/jpeg', 0),
(242, 1, '2024-12-16 07:23:49', '2024-12-16 06:23:49', '<!-- wp:complianz/document {\"title\":\"Cookie-Richtlinie (EU)\",\"selectedDocument\":\"cookie-statement\"} /-->', 'Cookie-Richtlinie (EU)', '', 'inherit', 'closed', 'closed', '', '228-revision-v1', '', '', '2024-12-16 07:23:49', '2024-12-16 06:23:49', '', 228, 'https://studiomoco.de/?p=242', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_rank_math_404_logs`
--

CREATE TABLE `mc_rank_math_404_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) NOT NULL,
  `accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `times_accessed` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `referer` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_rank_math_404_logs`
--

INSERT INTO `mc_rank_math_404_logs` (`id`, `uri`, `accessed`, `times_accessed`, `referer`, `user_agent`) VALUES
(1, 'mailer/.env', '2025-04-01 08:28:10', 1, '', ''),
(2, 'mailgun/.env', '2025-04-01 08:28:10', 1, '', ''),
(3, 'mailjet/.env', '2025-04-01 08:28:10', 1, '', ''),
(4, 'new/.env', '2025-04-01 08:28:11', 1, '', ''),
(5, 'new/.env.production', '2025-04-01 08:28:11', 1, '', ''),
(6, 'phpinfo.php', '2025-04-01 08:28:11', 1, '', ''),
(7, 'portal/.env', '2025-04-01 08:28:11', 1, '', ''),
(8, 'production/.env', '2025-04-01 08:28:11', 1, '', ''),
(9, 'sendgrid/.env', '2025-04-01 08:28:11', 1, '', ''),
(10, 'services/mailgun/config.json', '2025-04-01 08:28:11', 1, '', ''),
(11, 'services/mailjet/config.json', '2025-04-01 08:28:11', 1, '', ''),
(12, 'services/sendgrid/config.json', '2025-04-01 08:28:12', 1, '', ''),
(13, 'settings/mailgun.json', '2025-04-01 08:28:12', 1, '', ''),
(14, 'settings/mailjet.json', '2025-04-01 08:28:12', 1, '', ''),
(15, 'settings/sendgrid.json', '2025-04-01 08:28:12', 1, '', ''),
(16, 'src/.env', '2025-04-01 08:28:12', 1, '', ''),
(17, 'staging/.env', '2025-04-01 08:28:12', 1, '', ''),
(18, 'storage/logs/mail.log', '2025-04-01 08:28:12', 1, '', ''),
(19, 'symfony/.env', '2025-04-01 08:28:13', 1, '', ''),
(20, 'system/config/email.php', '2025-04-01 08:28:13', 1, '', ''),
(21, 'vendor/.env', '2025-04-01 08:28:13', 1, '', ''),
(22, 'vendor/mailgun/config.php', '2025-04-01 08:28:13', 1, '', ''),
(23, 'vendor/mailjet/config.php', '2025-04-01 08:28:13', 1, '', ''),
(24, 'vendor/sendgrid/config.php', '2025-04-01 08:28:13', 1, '', ''),
(25, 'admin/.env', '2025-04-01 08:28:29', 1, '', ''),
(26, 'config.yaml', '2025-04-01 08:28:29', 1, '', ''),
(27, 'core/config/mail.php', '2025-04-01 08:28:29', 1, '', ''),
(28, 'cron/.env', '2025-04-01 08:28:29', 1, '', ''),
(29, 'email/settings.php', '2025-04-01 08:28:29', 1, '', ''),
(30, 'frontend/.env', '2025-04-01 08:28:30', 1, '', ''),
(31, 'includes/config.php', '2025-04-01 08:28:30', 1, '', ''),
(32, 'includes/mail.config.php', '2025-04-01 08:28:30', 1, '', ''),
(33, 'logs/mail.log', '2025-04-01 08:28:30', 1, '', ''),
(34, 'node_modules/.env', '2025-04-01 08:28:30', 1, '', ''),
(35, 'notification/.env', '2025-04-01 08:28:30', 1, '', ''),
(36, 'phpinfo', '2025-04-01 08:28:30', 1, '', ''),
(37, 'private/.env', '2025-04-01 08:28:30', 1, '', ''),
(38, 'public/.env', '2025-04-01 08:28:30', 1, '', ''),
(39, 'temp/.env', '2025-04-01 08:28:31', 1, '', ''),
(40, 'tmp/.env', '2025-04-01 08:28:31', 1, '', ''),
(41, 'wp-content/plugins/WordPressCore/include.php', '2025-04-01 08:45:59', 1, '', ''),
(42, 'https://studiomoco.net/wp-content/plugins/WordPressCore/include.php', '2025-04-01 08:45:59', 1, '', ''),
(43, 'https://studiomoco.net/.env', '2025-04-02 07:47:24', 2, '', ''),
(44, '.well-known/traffic-advice', '2025-04-01 11:01:14', 1, '', ''),
(45, 'https://studiomoco.net/about-us.html', '2025-04-01 11:56:34', 1, '', ''),
(46, 'https://studiomoco.net/plugins/html5-file-upload/html5fileupload.php', '2025-04-01 13:23:37', 1, '', ''),
(47, 'wp-content/plugins/definite-unique/license.txt', '2025-04-01 15:44:43', 1, '', ''),
(48, 'https://studiomoco.net/wp-content/plugins/definite-unique/license.txt', '2025-04-01 15:44:43', 1, '', ''),
(49, 'https://studiomoco.net/sitemap.xml', '2025-04-01 19:44:31', 2, '', ''),
(50, 'https://www.studiomoco.net/sitemap.xml', '2025-04-01 22:41:09', 2, '', ''),
(51, 'apple-touch-icon-precomposed.png', '2025-04-01 22:46:47', 1, '', ''),
(52, 'apple-touch-icon.png', '2025-04-01 22:46:47', 1, '', ''),
(53, '.env', '2025-04-02 07:47:23', 1, '', ''),
(54, 'https://studiomoco.de', '2025-04-02 10:52:33', 1, '', ''),
(55, 'case-study/sws-packaging/assets/images/mockup-soeldner.jpeg', '2025-04-02 13:16:29', 1, '', ''),
(56, 'https://studiomoco.net/assets/admin/plugins/jquery-file-upload/server/php', '2025-04-02 14:31:40', 1, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_rank_math_internal_links`
--

CREATE TABLE `mc_rank_math_internal_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_rank_math_internal_links`
--

INSERT INTO `mc_rank_math_internal_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(40, 'https://studiomoco.de', 228, 13, 'internal'),
(41, 'https://cookiedatabase.org/service/wordpress/', 228, 0, 'external'),
(42, 'https://cookiedatabase.org/cookie/wordpress/wpemojisettingssupports/', 228, 0, 'external'),
(43, 'https://cookiedatabase.org/cookie/wordpress/wordpress_test_cookie/', 228, 0, 'external'),
(44, 'https://cookiedatabase.org/cookie/wordpress/wp-settings/', 228, 0, 'external'),
(45, 'https://cookiedatabase.org/cookie/wordpress/wp-settings-time/', 228, 0, 'external'),
(46, 'https://cookiedatabase.org/cookie/wordpress/wordpress_logged_in_/', 228, 0, 'external'),
(47, 'https://cookiedatabase.org/service/complianz/', 228, 0, 'external'),
(48, 'https://complianz.io/legal/privacy-statement/', 228, 0, 'external'),
(49, 'https://cookiedatabase.org/cookie/complianz/cmplz_functional/', 228, 0, 'external'),
(50, 'https://cookiedatabase.org/cookie/complianz/cmplz_preferences/', 228, 0, 'external'),
(51, 'https://cookiedatabase.org/cookie/complianz/cmplz_marketing/', 228, 0, 'external'),
(52, 'https://cookiedatabase.org/cookie/complianz/cmplz_consented_services/', 228, 0, 'external'),
(53, 'https://cookiedatabase.org/cookie/complianz/cmplz_banner-status/', 228, 0, 'external'),
(54, 'https://cookiedatabase.org/cookie/complianz/cmplz_policy_id/', 228, 0, 'external'),
(55, 'https://cookiedatabase.org/cookie/complianz/cmplz_statistics/', 228, 0, 'external'),
(56, 'https://cookiedatabase.org/cookie/unknown-service/twk_uuid_/', 228, 0, 'external'),
(57, 'https://studiomoco.de', 228, 13, 'internal'),
(58, 'https://cookiedatabase.org/', 228, 0, 'external'),
(60, 'https://www.ldi.nrw.de/kontakt/ihre-beschwerde', 24, 0, 'external');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_rank_math_internal_meta`
--

CREATE TABLE `mc_rank_math_internal_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT 0,
  `external_link_count` int(10) UNSIGNED DEFAULT 0,
  `incoming_link_count` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_rank_math_internal_meta`
--

INSERT INTO `mc_rank_math_internal_meta` (`object_id`, `internal_link_count`, `external_link_count`, `incoming_link_count`) VALUES
(1, 0, 0, 0),
(13, 0, 0, 2),
(16, 0, 0, 0),
(18, 0, 0, 0),
(20, 0, 0, 0),
(22, 0, 0, 0),
(24, 0, 1, 0),
(37, 0, 0, 0),
(60, 0, 0, 0),
(63, 0, 0, 0),
(64, 0, 0, 0),
(96, 0, 0, 0),
(100, 0, 0, 0),
(104, 0, 0, 0),
(153, 0, 0, 0),
(154, 0, 0, 0),
(155, 0, 0, 0),
(156, 0, 0, 0),
(157, 0, 0, 0),
(158, 0, 0, 0),
(159, 0, 0, 0),
(160, 0, 0, 0),
(161, 0, 0, 0),
(162, 0, 0, 0),
(228, 2, 17, 0),
(233, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_rank_math_redirections`
--

CREATE TABLE `mc_rank_math_redirections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sources` longtext NOT NULL,
  `url_to` text NOT NULL,
  `header_code` smallint(4) UNSIGNED NOT NULL,
  `hits` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_rank_math_redirections_cache`
--

CREATE TABLE `mc_rank_math_redirections_cache` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `redirection_id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `object_type` varchar(10) NOT NULL DEFAULT 'post',
  `is_redirected` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_termmeta`
--

CREATE TABLE `mc_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_terms`
--

CREATE TABLE `mc_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_terms`
--

INSERT INTO `mc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Allgemein', 'allgemein', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Primary Right', 'primary-right', 0),
(4, 'Footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_term_relationships`
--

CREATE TABLE `mc_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_term_relationships`
--

INSERT INTO `mc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(28, 2, 0),
(32, 3, 0),
(33, 4, 0),
(34, 4, 0),
(180, 1, 0),
(229, 4, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_term_taxonomy`
--

CREATE TABLE `mc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_term_taxonomy`
--

INSERT INTO `mc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_usermeta`
--

CREATE TABLE `mc_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_usermeta`
--

INSERT INTO `mc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'moco_dev'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'mc_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'mc_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"aa8f0b091c228a82a6149e593f8c168fb345b2369129729c4e8a2aabc12a654d\";a:4:{s:10:\"expiration\";i:1742675452;s:2:\"ip\";s:13:\"88.231.60.246\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36\";s:5:\"login\";i:1742502652;}s:64:\"a9426695a1bd5857e236255ff26d1aaad3b9381cc14037be55d29eb085290da5\";a:4:{s:10:\"expiration\";i:1742675660;s:2:\"ip\";s:13:\"54.191.137.17\";s:2:\"ua\";s:18:\"Symfony BrowserKit\";s:5:\"login\";i:1742502860;}}'),
(17, 1, 'mc_dashboard_quick_press_last_post_id', '244'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"54.191.137.0\";}'),
(19, 1, 'mc_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-12-16T06:21:56.806Z\";s:4:\"core\";a:2:{s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:16:\"discussion-panel\";i:3;s:14:\"featured-image\";}s:26:\"isComplementaryAreaVisible\";b:1;}}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '4'),
(23, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(24, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}'),
(25, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-post-type', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(27, 1, 'mc_user-settings', 'libraryContent=browse'),
(28, 1, 'mc_user-settings-time', '1721290122'),
(29, 1, 'closedpostboxes_page', 'a:6:{i:0;s:23:\"acf-group_669a11382809e\";i:1;s:23:\"acf-group_669a2499b7cf9\";i:2;s:23:\"acf-group_669a4acc2bc8b\";i:3;s:23:\"acf-group_669a4d7db89f9\";i:4;s:23:\"acf-group_669a541e0c04e\";i:5;s:23:\"acf-group_669a54deae465\";}'),
(30, 1, 'metaboxhidden_page', 'a:1:{i:0;s:28:\"rank_math_metabox_content_ai\";}'),
(31, 1, 'manageedit-postcolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(32, 1, 'manageedit-postcolumnshidden_default', '1'),
(33, 1, 'manageedit-pagecolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(34, 1, 'manageedit-pagecolumnshidden_default', '1'),
(35, 1, 'manageedit-case-studycolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(36, 1, 'manageedit-case-studycolumnshidden_default', '1'),
(37, 1, 'manageedit-customer-logocolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(38, 1, 'manageedit-customer-logocolumnshidden_default', '1'),
(39, 1, 'manageedit-testimonialscolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(40, 1, 'manageedit-testimonialscolumnshidden_default', '1'),
(41, 1, 'meta-box-order_page', 'a:2:{i:0;b:0;s:4:\"side\";s:38:\"submitdiv,rank_math_metabox_content_ai\";}'),
(42, 1, 'last_update', '1734333954'),
(43, 1, 'meta-box-order_case-study', 'a:2:{i:0;b:0;s:4:\"side\";s:38:\"submitdiv,rank_math_metabox_content_ai\";}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mc_users`
--

CREATE TABLE `mc_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `mc_users`
--

INSERT INTO `mc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'moco_dev', '$P$BRV/d2xD9DSG4xn0bNLwD.JCMinfyv0', 'moco_dev', 'dev@mocodev.de', 'https://studiomoco.de', '2024-07-16 09:16:24', '', 0, 'moco_dev');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `mc_actionscheduler_actions`
--
ALTER TABLE `mc_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Tablo için indeksler `mc_actionscheduler_claims`
--
ALTER TABLE `mc_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Tablo için indeksler `mc_actionscheduler_groups`
--
ALTER TABLE `mc_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Tablo için indeksler `mc_actionscheduler_logs`
--
ALTER TABLE `mc_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Tablo için indeksler `mc_cmplz_cookiebanners`
--
ALTER TABLE `mc_cmplz_cookiebanners`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `mc_cmplz_cookies`
--
ALTER TABLE `mc_cmplz_cookies`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `mc_cmplz_dnsmpd`
--
ALTER TABLE `mc_cmplz_dnsmpd`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `mc_cmplz_services`
--
ALTER TABLE `mc_cmplz_services`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `mc_commentmeta`
--
ALTER TABLE `mc_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Tablo için indeksler `mc_comments`
--
ALTER TABLE `mc_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Tablo için indeksler `mc_links`
--
ALTER TABLE `mc_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Tablo için indeksler `mc_options`
--
ALTER TABLE `mc_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Tablo için indeksler `mc_postmeta`
--
ALTER TABLE `mc_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Tablo için indeksler `mc_posts`
--
ALTER TABLE `mc_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Tablo için indeksler `mc_rank_math_404_logs`
--
ALTER TABLE `mc_rank_math_404_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uri` (`uri`(191));

--
-- Tablo için indeksler `mc_rank_math_internal_links`
--
ALTER TABLE `mc_rank_math_internal_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `target_post_id` (`target_post_id`);

--
-- Tablo için indeksler `mc_rank_math_internal_meta`
--
ALTER TABLE `mc_rank_math_internal_meta`
  ADD PRIMARY KEY (`object_id`);

--
-- Tablo için indeksler `mc_rank_math_redirections`
--
ALTER TABLE `mc_rank_math_redirections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Tablo için indeksler `mc_rank_math_redirections_cache`
--
ALTER TABLE `mc_rank_math_redirections_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `redirection_id` (`redirection_id`);

--
-- Tablo için indeksler `mc_termmeta`
--
ALTER TABLE `mc_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Tablo için indeksler `mc_terms`
--
ALTER TABLE `mc_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Tablo için indeksler `mc_term_relationships`
--
ALTER TABLE `mc_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Tablo için indeksler `mc_term_taxonomy`
--
ALTER TABLE `mc_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Tablo için indeksler `mc_usermeta`
--
ALTER TABLE `mc_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Tablo için indeksler `mc_users`
--
ALTER TABLE `mc_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `mc_actionscheduler_actions`
--
ALTER TABLE `mc_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- Tablo için AUTO_INCREMENT değeri `mc_actionscheduler_claims`
--
ALTER TABLE `mc_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67675;

--
-- Tablo için AUTO_INCREMENT değeri `mc_actionscheduler_groups`
--
ALTER TABLE `mc_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `mc_actionscheduler_logs`
--
ALTER TABLE `mc_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `mc_cmplz_cookiebanners`
--
ALTER TABLE `mc_cmplz_cookiebanners`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `mc_cmplz_cookies`
--
ALTER TABLE `mc_cmplz_cookies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `mc_cmplz_dnsmpd`
--
ALTER TABLE `mc_cmplz_dnsmpd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mc_cmplz_services`
--
ALTER TABLE `mc_cmplz_services`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `mc_commentmeta`
--
ALTER TABLE `mc_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `mc_comments`
--
ALTER TABLE `mc_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `mc_links`
--
ALTER TABLE `mc_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mc_options`
--
ALTER TABLE `mc_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218502;

--
-- Tablo için AUTO_INCREMENT değeri `mc_postmeta`
--
ALTER TABLE `mc_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1518;

--
-- Tablo için AUTO_INCREMENT değeri `mc_posts`
--
ALTER TABLE `mc_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- Tablo için AUTO_INCREMENT değeri `mc_rank_math_404_logs`
--
ALTER TABLE `mc_rank_math_404_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Tablo için AUTO_INCREMENT değeri `mc_rank_math_internal_links`
--
ALTER TABLE `mc_rank_math_internal_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Tablo için AUTO_INCREMENT değeri `mc_rank_math_redirections`
--
ALTER TABLE `mc_rank_math_redirections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mc_rank_math_redirections_cache`
--
ALTER TABLE `mc_rank_math_redirections_cache`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mc_termmeta`
--
ALTER TABLE `mc_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mc_terms`
--
ALTER TABLE `mc_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `mc_term_taxonomy`
--
ALTER TABLE `mc_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `mc_usermeta`
--
ALTER TABLE `mc_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Tablo için AUTO_INCREMENT değeri `mc_users`
--
ALTER TABLE `mc_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
