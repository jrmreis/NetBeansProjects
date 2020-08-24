<?php 
define('TITLE', 'Update Eng');
define('TITLE2', 'Update Eng');
if (file_exists('../development.env')) {
	define('BASE_URL', 'http://localhost/clientes/update/');
	define('URL', 'http://localhost/clientes/update/');
	define('URLAPP', 'http://localhost/clientes/update/');
	define('URLFILES', 'http://localhost/clientes/update/files/');
	define('URLSYSTEM', 'http://localhost/clientes/update/system/');
}else{
	define('BASE_URL', 'http://www.updatedeng.com.br/');
	define('URL', 'http://www.updatedeng.com.br/');
	define('URLAPP', 'http://www.updatedeng.com.br/');
	define('URLFILES', 'http://www.updatedeng.com.br/files/');
	define('URLSYSTEM', 'http://www.updatedeng.com.br/system/');
}
define('SS_NAME', 'updateeng');
define('AUTHOR', 'Criação de Sites - Sitevelox');
define('AUTHORSITE', 'http://www.sitevelox.com.br/');

define('DB_HOST', 'mysql.updatedeng.com.br');
define('DB_USER', 'updatedeng');
define('DB_PASS', 'uPdT1357'); #uPdT1357
define('DB_NAME', 'updatedeng');

define('EMAIL', 'contato@updatedeng.com.br');
define('EMAIL2', 'contato@updatedeng.com.br');
define('EMAILNAME', 'Update ENG');

define('PREFIX', 'up_');
?>