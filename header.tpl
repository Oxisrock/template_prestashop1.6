{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<html{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}>
	<head>
		<meta charset="utf-8" />
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
		{if isset($meta_description) AND $meta_description}
			<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
		{/if}
		{if isset($meta_keywords) AND $meta_keywords}
			<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
		{/if}
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
		{if isset($css_files)}
			{foreach from=$css_files key=css_uri item=media}
				{if $css_uri == 'lteIE9'}
					<!--[if lte IE 9]>
					{foreach from=$css_files[$css_uri] key=css_uriie9 item=mediaie9}
					<link rel="stylesheet" href="{$css_uriie9|escape:'html':'UTF-8'}" type="text/css" media="{$mediaie9|escape:'html':'UTF-8'}" />
					{/foreach}
					<![endif]-->
				{else}
					{* <link rel="stylesheet" href="{$css_uri|escape:'html':'UTF-8'}" type="text/css" media="{$media|escape:'html':'UTF-8'}" /> *}
				{/if}
			{/foreach}
			 <link rel="stylesheet" href="{$css_dir}custom.css" type="text/css" media="{$media}" />
			 <link rel="stylesheet" href="{$css_dir}material_icons.css" type="text/css" media="{$media}" />
			 <link rel="stylesheet" href="{$css_dir}plugins.min.css" type="text/css" media="{$media}" />
			 <link rel="stylesheet" href="{$css_dir}preload.min.css" type="text/css" media="{$media}" />
			 <link rel="stylesheet" href="{$css_dir}style.light-blue-300.min.css" type="text/css" media="{$media}" />
			 <link rel="stylesheet" href="{$css_dir}my-account.css" type="text/css" media="{$media}" />
			 <link rel="stylesheet" href="{$css_dir}contact-form.css" type="text/css" media="{$media}" />
			 <link rel="stylesheet" href="{$css_dir}general.css" type="text/css" media="{$media}" />
			 <link rel="stylesheet" href="{$css_dir}order-opc.css" type="text/css" media="{$media}" />
		{/if}
		{if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
			{$js_def}
			{foreach from=$js_files item=js_uri}
			<script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
			{/foreach}
			<script src=”{$js_dir}plugins.min.js”></script>
			<script src=”{$js_dir}app.min.js”></script>
			<script src=”{$js_dir}portafolio.js”></script>
		{/if}
		{$HOOK_HEADER}
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
	</head>

	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{else} show-left-column{/if}{if $hide_right_column} hide-right-column{else} show-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso} sb-site-container">
	{if !isset($content_only) || !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<div id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'}{if isset($geolocation_country) && $geolocation_country} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span>{/if}</p>
			</div>
		{/if}
		<div id="page">
			<div class="header-container">
				<header id="header">
					{* Header de la pagina *}
					{* LLamado de modulo o hook displayNav *}
					{capture name='displayNav'}{hook h='displayNav'}{/capture}
					{if $smarty.capture.displayNav}
						<div class="ms-header ms-header-white" id="gotas">
							<div class="container container-full">
								<div class="row">
									{* Logo*}
									<div id="header_logo" class="ms-title trans">
										<a href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
											<div class="animated fadeInRight animation-delay-6">
												<img style="background: none;" class="logo img-responsive" src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
											</div>
										</a>
									</div>
									<div id="header_menu" class="ms-title">{$smarty.capture.displayNav}</div>
								</div>
								</div>
							</div>
					{/if}
					{*----Menu de Navegacion----*}
							<div class="row">
								{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
							</div>
				</header>
			</div>
				<div id="columns" class="container container-full">
					{* {if $page_name !='index' && $page_name !='pagenotfound'}
						<h1 class="right-line">{include file="$tpl_dir./breadcrumb.tpl"}</h1>
					{/if} *}
				</div>
					{* Slider Home  *}
					<div id="slider_row" class="">
						{capture name='displayTopColumn'}{hook h='displayTopColumn'}{/capture}
						{if $smarty.capture.displayTopColumn}
							<div id="top_column" class="ms-carousel carousel slide hidden-xs">{$smarty.capture.displayTopColumn}</div>
						{/if}
					</div>
						<div class="" style="background: #bedb02">
						{if isset($left_column_size) && !empty($left_column_size)}
						<div id="left_column" class="column col-xs-12 col-sm-{$left_column_size|intval}">{$HOOK_LEFT_COLUMN}</div>
						{/if}
						</div>
					<div class="" style="background: #bedb02">
						{if isset($left_column_size) && isset($right_column_size)}{assign var='cols' value=(12 - $left_column_size - $right_column_size)}{else}{assign var='cols' value=12}{/if}
						<div id="center_column" class="center_column col-xs-12 col-sm-{$cols|intval}"></div>
						{/if}
					</div>
					<!-- *******************************
      BOTON SUBIR
      ******************************* -->
      {* <div class="btn-back-top hidden-xs">
        <a href="#" data-scroll id="back-top" class="btn-circle btn-circle-primary btn-circle-sm btn-circle-raised ">
          <i class="zmdi zmdi-long-arrow-up"></i>
        </a>
      </div>
    </div> *}
    <!-- /.Botón Subir -->
					<script type="text/javascript">
      // Modifica el Navbar al hacer scroll //
      $(document).ready(function(){
          var altura = $('.medir').offset().top;

        $(window).on('scroll', function(){
          if ( $(window).scrollTop() > altura ){
            $('.ver').addClass('nover');
          } else {
            $('.ver').removeClass('nover');
          }
        });
      });

      // Modifica el Navbar en tablets //
      $(document).ready(function(){
          var altura = $('.medir').offset().top;

        $(window).on('scroll', function(){
          if ( $(window).scrollTop() > altura ){
            $('.tablet').addClass('ocultar');
          } else {
            $('.tablet').removeClass('ocultar');
          }
        });
      });

      // Muestra el buscador al hacer scroll //
      $(document).ready(function(){
          var altura = $('.medir').offset().top;

        $(window).on('scroll', function(){
          if ( $(window).scrollTop() > altura ){
            $('.buscar').addClass('mostrar');
          } else {
            $('.buscar').removeClass('mostrar');
          }
        });
      });
    </script>
