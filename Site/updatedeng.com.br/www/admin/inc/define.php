<?php
/*
	Sistema Gerenciador de Conteúdo
*/
if (file_exists('../../development.env')) {
	define('URL', 'http://localhost/clientes/update/admin/');
	define('URL2', 'http://localhost/clientes/update/');
}else{
	define('URL', 'http://www.updatedeng.com.br/admin/');
	define('URL2', 'http://www.updatedeng.com.br/');
}
define('TITLE', "Painel de Controle - UPDATE ENG");
define('SS_NAME', 'mgaupd');
define('DASH', 'Painel de Controle');
define('COPYRIGHT', 'Copyright &copy; 2015. Painel de Controle');
define('AUTHOR', 'Agência de Publicidade Trespix');
define('AUTHORSITE', 'http://www.trespix.com/');

define('DB_HOST', 'mysql.updatedeng.com.br');
define('DB_USER', 'updatedeng');
define('DB_PASS', 'uPdT1357'); #uPdT1357
define('DB_NAME', 'updatedeng');

//Breadcrumbs
define('BREAD', "Administrador");

define('PREFIX', "up_");
?>