<?php
/**
 * This software is governed by the CeCILL-B license. If a copy of this license
 * is not distributed with this file, you can obtain one at
 * http://www.cecill.info/licences/Licence_CeCILL-B_V1-en.txt
 *
 * Authors of STUdS (initial project): Guilhem BORGHESI (borghesi@unistra.fr) and Raphaël DROZ
 * Authors of Framadate/OpenSondage: Framasoft (https://github.com/framasoft)
 *
 * =============================
 *
 * Ce logiciel est régi par la licence CeCILL-B. Si une copie de cette licence
 * ne se trouve pas avec ce fichier vous pouvez l'obtenir sur
 * http://www.cecill.info/licences/Licence_CeCILL-B_V1-fr.txt
 *
 * Auteurs de STUdS (projet initial) : Guilhem BORGHESI (borghesi@unistra.fr) et Raphaël DROZ
 * Auteurs de Framadate/OpenSondage : Framasoft (https://github.com/framasoft)
 */

// Fully qualified domain name of your webserver.
// If this is unset or empty, the servername is determined automatically.
// You *have to set this* if you are running Framadate behind a reverse proxy.

const APP_URL = 'your.framadate.domain';

// const FORCE_HTTPS = false;

// Application name
const NOMAPPLICATION = 'Framadate';

// Database administrator email
const ADRESSEMAILADMIN = 'xxxxxxx';

// Email for automatic responses (you should set it to "no-reply")
const ADRESSEMAILREPONSEAUTO = 'no-reply';

// Database driver
const DB_DRIVER = 'pdo_mysql';

// Database name
const DB_NAME = 'your-db-name';

// Database host
const DB_HOST = 'your-db-host';

// Database port
const DB_PORT = '3306';

// Database user
const DB_USER = 'your-db-user';

// Database password
const DB_PASSWORD = 'your-db-password';

// Table name prefix
const TABLENAME_PREFIX = 'fd_';

// Name of the table that stores migration script already executed
const MIGRATION_TABLE = 'framadate_migration';

// Default Language
const DEFAULT_LANGUAGE = 'de';

// List of supported languages, fake constant as arrays can be used as constants only in PHP >=5.6
$ALLOWED_LANGUAGES = [
    'fr' => 'Français',
    'en' => 'English',
    'oc' => 'Occitan',
    'es' => 'Español',
    'de' => 'Deutsch',
    'nl' => 'Dutch',
    'it' => 'Italiano',
    'br' => 'Brezhoneg',
    'ca' => 'Catalan',
    'hu' => 'Magyar',
    'gl' => 'Galego',
];

// Path to image file with the title
const IMAGE_TITRE = 'images/logo-framadate.png';

// Clean URLs, boolean
const URL_PROPRE = true;

// Use REMOTE_USER data provided by web server
const USE_REMOTE_USER =  true;

// Path to the log file
const LOG_FILE = 'admin/stdout.log';

// Days (after expiration date) before purging a poll
const PURGE_DELAY = 60;

// Max slots per poll
const MAX_SLOTS_PER_POLL = 366;

// Number of seconds before we allow to resend an "Remember Edit Link" email.
const TIME_EDIT_LINK_EMAIL = 60;

// uncomment to display a link to the demo poll at the home page
//const DEMO_POLL_ID = "aqg259dth55iuhwm";

// number of recent votes that are not deleted
const DEMO_POLL_NUMBER_VOTES = 10;


// Config
$config = [
    /* general config */
    'use_smtp' => true,                     // use email for polls creation/modification/responses notification (uses smtp only if `use_sendmail` is disabled)
    'use_sendmail' => false,                // use sendmail instead of smtp
    'smtp_options' => [
        'host' => 'your.smtpserver.com',   // SMTP server (you could add many servers (main and backup for example) : use ";" like separator
        'auth' => true,                    // Enable SMTP authentication
        'username' => 'your-smtp-user',                   // SMTP username
        'password' => 'your-smtp-pass',                   // SMTP password
        'secure' => 'tls',                     // Enable encryption (false, tls or ssl)
        'port' => 587,                       // TCP port to connect to
    ],
    /* home */
    'show_what_is_that' => false,            // display "how to use" section
    'show_the_software' => false,            // display technical information about the software
    'show_cultivate_your_garden' => false,   // display "development and administration" information
    /* create_classic_poll.php / create_date_poll.php */
    'default_poll_duration' => 180,         // default values for the new poll duration (number of days).
    /* create_classic_poll.php */
    'user_can_add_img_or_link' => true,     // user can add link or URL when creating his poll.
    'markdown_editor_by_default' => true,   // The markdown editor for the description is enabled by default
    'provide_fork_awesome' => true,         // Whether the build-in fork-awesome should be provided
];
