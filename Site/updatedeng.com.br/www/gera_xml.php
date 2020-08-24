<?php
include_once("system/config.php");
$hoje = date('Y-m-d');
echo '<?xml version="1.0" encoding="UTF-8"?>';

$array = array('', 'sobre/', 'fornos/', 'contato/', 'orcamento/');
?>

<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"

      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9

      http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">

<?php foreach($array as $paginas){ ?>
<url>
<loc><?=URL.$paginas?></loc>
  <lastmod><?=$hoje?></lastmod>
  <priority>1.00</priority>
  <changefreq>daily</changefreq>
</url>
<?php } ?>

<?php
	$sql = $sistema->getRows('services', 'title, friend', '', array('active' => '1', 'deleted' => '0'));
	foreach($sql as $qry){
		$url = URL.'servico/'.$qry['friend'];
?>
<url>
<loc><?=$url?></loc>
  <lastmod><?=$hoje?></lastmod>
  <priority>1.00</priority>
  <changefreq>daily</changefreq>
</url>
<?php } ?>

</urlset>