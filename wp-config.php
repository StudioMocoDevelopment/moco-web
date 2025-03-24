<?php
/**
 * Grundeinstellungen für WordPress
 *
 * Diese Datei wird zur Erstellung der wp-config.php verwendet.
 * Du musst aber dafür nicht das Installationsskript verwenden.
 * Stattdessen kannst du auch diese Datei als „wp-config.php“ mit
 * deinen Zugangsdaten für die Datenbank abspeichern.
 *
 * Diese Datei beinhaltet diese Einstellungen:
 *
 * * Datenbank-Zugangsdaten,
 * * Tabellenpräfix,
 * * Sicherheitsschlüssel
 * * und ABSPATH.
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Datenbank-Einstellungen - Diese Zugangsdaten bekommst du von deinem Webhoster. ** //
/**
 * Ersetze datenbankname_hier_einfuegen
 * mit dem Namen der Datenbank, die du verwenden möchtest.
 */
define( 'DB_NAME', 'mocode_wp' );

/**
 * Ersetze benutzername_hier_einfuegen
 * mit deinem Datenbank-Benutzernamen.
 */
define( 'DB_USER', 'mocode_wp' );

/**
 * Ersetze passwort_hier_einfuegen mit deinem Datenbank-Passwort.
 */
define( 'DB_PASSWORD', 'FkqKrv1iQiM3R45t' );

/**
 * Ersetze localhost mit der Datenbank-Serveradresse.
 */
define( 'DB_HOST', 'dedi7440.your-server.de' );

/**
 * Der Datenbankzeichensatz, der beim Erstellen der
 * Datenbanktabellen verwendet werden soll
 */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Der Collate-Type sollte nicht geändert werden.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Sicherheitsschlüssel
 *
 * Ändere jeden untenstehenden Platzhaltertext in eine beliebige,
 * möglichst einmalig genutzte Zeichenkette.
 * Auf der Seite {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * kannst du dir alle Schlüssel generieren lassen.
 *
 * Du kannst die Schlüssel jederzeit wieder ändern, alle angemeldeten
 * Benutzer müssen sich danach erneut anmelden.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'hDBh&>xN.Hz|H;@me&:Qn6wbh_beao,[<wEwm)n +Wf&[f-T*,4jgz`BA@A{#~xe' );
define( 'SECURE_AUTH_KEY',  '$+s7ncjM^G?*bkaZQDLab#Zsf^esQ)PM(Fz,p!B4` Flu]k0N@pYDUw{j2`g`@Xs' );
define( 'LOGGED_IN_KEY',    'R%Y1,.EDggea?!:LhaTVo5lRk;D.+5`N@hK4G9k0U~et4V{{>zauAmHDNmo~anw4' );
define( 'NONCE_KEY',        '#O[l`|H?Mca&:]TRbI@R^Yf9HQ++t[1gV7*fE1moISfqAydqJIkj6hAFbkY6<6F[' );
define( 'AUTH_SALT',        'aAHX6j@e?{:uI8s<HzDJ-U5N:;Ie2baq0=?G B+oO^c|@$t.)LK3]kj#=)sinAAX' );
define( 'SECURE_AUTH_SALT', ';9G.;SBU8Y+r`J}eEI^$x-PC-[D4E;D.u[j%gy^~-tT0t<N7a=WZ2I^ZG ]%]-F%' );
define( 'LOGGED_IN_SALT',   'D}(lfvu6sE-9F7K{ }lqoh v2+YPbZ1La&lZ+6]p@c$nKWvWvpwY1}RLa3Dl6hVY' );
define( 'NONCE_SALT',       'L?{+J/rZbz>?gN28rYDc)2,>}tkfC?9dr;,2`]RN$oMA%_)^R7u,Bcz}-S?nOD&p' );

/**#@-*/

/**
 * WordPress Datenbanktabellen-Präfix
 *
 * Wenn du verschiedene Präfixe benutzt, kannst du innerhalb einer Datenbank
 * verschiedene WordPress-Installationen betreiben.
 * Bitte verwende nur Zahlen, Buchstaben und Unterstriche!
 */
$table_prefix = 'mc_';

/**
 * Für Entwickler: Der WordPress-Debug-Modus.
 *
 * Setze den Wert auf „true“, um bei der Entwicklung Warnungen und Fehler-Meldungen angezeigt zu bekommen.
 * Plugin- und Theme-Entwicklern wird nachdrücklich empfohlen, WP_DEBUG
 * in ihrer Entwicklungsumgebung zu verwenden.
 *
 * Besuche den Codex, um mehr Informationen über andere Konstanten zu finden,
 * die zum Debuggen genutzt werden können.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Füge individuelle Werte zwischen dieser Zeile und der „Schluss mit dem Bearbeiten“ Zeile ein. */



/* Das war’s, Schluss mit dem Bearbeiten! Viel Spaß. */
/* That's all, stop editing! Happy publishing. */

/** Der absolute Pfad zum WordPress-Verzeichnis. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Definiert WordPress-Variablen und fügt Dateien ein.  */
require_once ABSPATH . 'wp-settings.php';
