<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'loveyour_lyc',
	"password" => '',
	"database" => 'loveyour_ss',
	"path" => '',
);

// Set the site locale
i18n::set_locale('en_US');
