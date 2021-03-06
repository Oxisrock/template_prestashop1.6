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
*  @version  Release: $Revision$
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if $page_name =='index'}
<!-- Module HomeSlider -->
    {if isset($homeslider_slides)}
    <div id="carousel-example-generic" class="ms-carousel carousel slide hidden-xs" data-ride="carousel" style="margin-top: -55px">
      <img src="{$img_dir}home_movil.jpg" class="visible-xs img-responsive" style="margin-top: -55px" alt="..." >
      <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
			<div class="carousel-inner" role="listbox" id="homeslider"{if isset($smarty.capture.height) && $smarty.capture.height} style="max-height:{$smarty.capture.height}px;"{/if}>
        <div class="item active">
              <img src="{$img_dir}carusel01.jpg" alt="...">
              <div class="banner_der color-white">
                {if $lang_iso == en}
                <h1 class="animated fadeInLeft animation-delay-15 font-smoothing superh1">{l s= 'Discover our'}<br>
                <span class="color-warning-light">{l s= 'News'}</span> {l s= 'Products'}</h1>
                <p class="lead animated zoomInUp animation-delay-10 hidden-xs hidden-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ducimus rem vel, atque incidunt. Voluptate repellendus iste illo tempora, alias accusamus odit qui quibusdam ratione impedit esse repellat reprehenderit molestias!</p>
                <div class="hidden-xs">
                  <a class="btn btn-success btn-lg btn-raised animated zoomInUp animation-delay-10">Register now</a>
                  <a class="btn btn-success btn-lg btn-raised animated zoomInUp animation-delay-10">Shopping now</a>
                </div>
                {/if}
                {if $lang_iso == es}
                <h1 class="animated fadeInLeft animation-delay-15 font-smoothing superh1">{l s= 'Descubre nuestros'}<br>
                <span class="color-warning-light">{l s= 'Nuevos'}</span> {l s= 'Productos'}</h1>
                <p class="lead animated zoomInUp animation-delay-10 hidden-xs hidden-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ducimus rem vel, atque incidunt. Voluptate repellendus iste illo tempora, alias accusamus odit qui quibusdam ratione impedit esse repellat reprehenderit molestias!</p>
                <div class="hidden-xs">
                  <a class="btn btn-success btn-lg btn-raised animated zoomInUp animation-delay-10">Registrar Ahora</a>
                  <a class="btn btn-success btn-lg btn-raised animated zoomInUp animation-delay-10">Comprar Ahora</a>
                </div>
                {/if}
              </div>
              <div class="carousel-caption">
                  <h3 class="color-warning-light">Lorem ipsum dolor</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              </div>
          </div>
          <div class="item">
              <img src="{$img_dir}carusel02.jpg" alt="...">
              <div class="banner_izq color-white">
                {if $lang_iso == en}
                <h1 class="animated fadeInRight animation-delay-15 font-smoothing superh1">{l s= 'Great Filters'}<br>
                <span class="color-danger-light">{l s= 'Purifiers'}</span> {l s= 'of water'}</h1>
                <p class="lead animated zoomInUp animation-delay-10 hidden-xs hidden-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ducimus rem vel, atque incidunt. Voluptate repellendus iste illo tempora, alias accusamus odit qui quibusdam ratione impedit esse repellat reprehenderit molestias!</p>
                <div class="hidden-xs">
                  <a class="btn btn-primary btn-lg btn-raised animated zoomInUp animation-delay-10">About us</a>
                  <a class="btn btn-primary btn-lg btn-raised animated zoomInUp animation-delay-10">FAQS</a>
                </div>
                {/if}
                {if $lang_iso == es}
                <h1 class="animated fadeInRight animation-delay-15 font-smoothing superh1">{l s= 'Magníficos filtros'}<br>
                <span class="color-danger-light">{l s= 'Purificadores'}</span> {l s= 'de agua'}</h1>
                <p class="lead animated zoomInUp animation-delay-10 hidden-xs hidden-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ducimus rem vel, atque incidunt. Voluptate repellendus iste illo tempora, alias accusamus odit qui quibusdam ratione impedit esse repellat reprehenderit molestias!</p>
                <div class="hidden-xs">
                  <a class="btn btn-primary btn-lg btn-raised animated zoomInUp animation-delay-10">Quienes Somos ?</a>
                  <a class="btn btn-primary btn-lg btn-raised animated zoomInUp animation-delay-10">Preguntas Frecuentes</a>
                </div>
                {/if}
              </div>
              <div class="carousel-caption">
                  <h3 class="color-warning-light">Lorem ipsum dolor</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              </div>
          </div>
          <div class="item">
              <img src="{$img_dir}carusel03.jpg" alt="...">
              <div class="banner_der color-white">
                {if $lang_iso == en}
                <h1 class="animated fadeInLeft animation-delay-15 font-smoothing superh1">{l s= 'All you'} <span class="color-warning-light">{l s= 'Need'}</span><br>
                {l s= 'For your Home'}</h1>
                <p class="lead animated zoomInUp animation-delay-10 hidden-xs hidden-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ducimus rem vel, atque incidunt. Voluptate repellendus iste illo tempora, alias accusamus odit qui quibusdam ratione impedit esse repellat reprehenderit molestias!</p>
                <div class="hidden-xs">
                  <a class="btn btn-success btn-lg btn-raised animated zoomInUp animation-delay-10">Registrar Ahora</a>
                  <a class="btn btn-success btn-lg btn-raised animated zoomInUp animation-delay-10">Comprar Ahora</a>
                </div>
                {/if}
                {if $lang_iso == es}
                <h1 class="animated fadeInLeft animation-delay-15 font-smoothing superh1">{l s= 'Todo lo que'} <span class="color-warning-light">{l s= 'Necesitas'}</span><br>
                {l s= 'Para tu hogar'}</h1>
                <p class="lead animated zoomInUp animation-delay-10 hidden-xs hidden-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ducimus rem vel, atque incidunt. Voluptate repellendus iste illo tempora, alias accusamus odit qui quibusdam ratione impedit esse repellat reprehenderit molestias!</p>
                <div class="hidden-xs">
                  <a class="btn btn-success btn-lg btn-raised animated zoomInUp animation-delay-10">Registrar Ahora</a>
                  <a class="btn btn-success btn-lg btn-raised animated zoomInUp animation-delay-10">Comprar Ahora</a>
                </div>
                {/if}
              </div>
              <div class="carousel-caption">
                  <h3 class="color-warning-light">Lorem ipsum dolor</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              </div>
          </div>
     </div>
     <a href="#carousel-example-generic" class="btn-circle btn-circle-xs btn-circle-raised btn-circle-primary left carousel-control" role="button" data-slide="prev"><i class="zmdi zmdi-chevron-left"></i></a>
        <a href="#carousel-example-generic" class="btn-circle btn-circle-xs btn-circle-raised btn-circle-primary right carousel-control" role="button" data-slide="next"><i class="zmdi zmdi-chevron-right"></i></a>
  </div>
	{/if}
<!-- /Module HomeSlider -->
{/if}
