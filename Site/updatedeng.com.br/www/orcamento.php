<?php
include("system/config.php"); 

$seo = $sistema->get_info(2);
$seo['titulo'] = '';
$seo['description'] = '';
$title = !empty($seo['titulo']) ? $seo['titulo'] : TITLE;
$url = URL;
$description = $seo['description'];

$menu = 5;

?>

<!-- HEADER -->
<? include("includes/header.php"); ?>

<!-- MENU INTERNAS -->
<? include("includes/menu.php"); ?>

	<main class="main" role="main">	
		<section class="contato-banner">
			<div class="wrap">
				<div class="contato-infos">
					<h1 class="contato-title">Update eng.</h1>
					<h3><i class="fa fa-phone-square"></i><?php $sistema->get_texto(8); ?></h3>
					<h3><i class="fa fa-envelope"></i><?php $sistema->get_texto(9); ?></h3>
				</div>		
			</div>	
		</section>

		<section class="mt-50 mb-50">
			<div class="wrap">
				<form action="<?=URL?>sis/" method="POST" enctype="multipart/form-data" class="form-orcamento">
					<fieldset>
						<legend>Faça um orçamento:</legend>
						<div class="row">
							<div class="col-desktop-12 mb-10">
								<input type="text" class="form-control" name="cnpj" placeholder="CNPJ" />
							</div>
							<div class="col-desktop-12 mb-10">
								<input type="text" class="form-control" name="nome" placeholder="Nome" />
							</div>
							<div class="col-desktop-12 mb-10">
								<input type="email" class="form-control" name="email" placeholder="Email" />
							</div>
							<div class="col-desktop-3 col-smart-8 mb-10">
								<input type="text" class="form-control" name="cep1" placeholder="CEP" />
							</div>
							<div class="col-desktop-2 col-smart-4 mb-10">
								<input type="text" name="cep2" class="form-control" />
							</div>
							<div class="col-desktop-12 mb-10">
								<label for="consultor" class="custom-select">
									<select name="cargo" id="consultor">
										<option value="Consultor TT">Consultor TT</option>
										<option value="Consultor AA">Consultor AA</option>
									</select>
								</label>
							</div>
							<div class="col-desktop-12">
								<textarea name="mensagem" class="form-control" rows="6" placeholder="Descrever necessidade"></textarea>
							</div>
							<div class="col-desktop-12 mt-30 mb-30 text-center">
								<input type="submit" class="btn red" value="Enviar" />
								<input type="hidden" name="acao" value="orcamento">
							</div>
						</div>
					</fieldset>
				</form>
				<p style="color: black;">
				<?php 
					if(isset($_GET['success']) && $_GET['success'] == 1){
						echo 'Mensagem enviada com sucesso!';
					}else if(isset($_GET['success'])){
						echo $msg;
					} 	
				?>	
				</p>				
			</div>
		</section>
	</main>
		
<!-- FOOTER -->
<? include("includes/footer.php"); ?>
