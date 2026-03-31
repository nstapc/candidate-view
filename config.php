<?php
/**
 * Database configuration
 * 
 * Credentials are loaded from environment variables.
 * Set these in your .env file or server configuration:
 *   DB_HOST, DB_USER, DB_PASS, DB_NAME
 */

$db_config = [
    'host' => getenv('DB_HOST') ?: 'localhost',
    'user' => getenv('DB_USER') ?: '',
    'pass' => getenv('DB_PASS') ?: '',
    'name' => getenv('DB_NAME') ?: '',
];