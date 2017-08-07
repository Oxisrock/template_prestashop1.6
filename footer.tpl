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
{if !isset($content_only) || !$content_only}
					</div><!-- #center_column -->
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					</div><!-- .row -->
				</div><!-- #columns -->
			</div><!-- .columns-container -->
			{if isset($HOOK_FOOTER)}
			<div class="container-full">
						<aside class="ms-footbar" style="background-color: #2061A8;">
        <div class="container">
          <div class="row">

            <div class="col-md-4 col-sm-12 ms-footer-col" style="background-color: #2061A8;">
              <div class="ms-footbar-block">
                <h3 class="ms-footbar-title">Sitemap</h3>
                <ul class="list-unstyled ms-icon-list three_cols">
                  <li>
                    <a href="index.php">
                      <i class="fa fa-home" aria-hidden="true"></i> Inicio</a>
                  </li>
									{if !$is_logged}
                  <li>
                    <a href="index.php?controller=authentication&back=my-account">
                      <i class="fa fa-user-plus" aria-hidden="true"></i> Registro</a>
                  </li>
                  <li>
                    <a href="index.php?controller=authentication&back=my-account">
                      <i class="fa fa-user" aria-hidden="true"></i> Ingresar</a>
                  </li>
									{/if}
									{if $is_logged}
									<li>
										<a href="index.php?controller=authentication&back=my-account">
											<i class="fa fa-user" aria-hidden="true"></i>{$cookie->customer_firstname} {$cookie->customer_lastname}</a>
									</li>
									<li>
										<a href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}">
											<i class="fa fa-user-times" aria-hidden="true"></i> Salir</a>
									</li>
									{/if}
                  <li>
                    <a href="javascript:void(0)">
                      <i class="fa fa-tint" aria-hidden="true"></i> Tienda</a>
                  </li>
                  <li>
                    <a href="javascript:void(0)">
                      <i class="zmdi zmdi-favorite-outline"></i> Favoritos</a>
                  </li>
                  <li>
                    <a href="index.php?id_cms=4&controller=cms&id_lang=1">
                      <i class="fa fa-users" aria-hidden="true"></i> Somos</a>
                  </li>
                  <li>
                    <a href="javascript:void(0)">
                      <i class="fa fa-download" aria-hidden="true"></i> Descargas</a>
                  </li>
                  <li>
                    <a href="javascript:void(0)">
                      <i class="fa fa-question-circle" aria-hidden="true"></i> FAQ</a>
                  </li>
                  <li>
                    <a href="index.php?controller=contact">
                      <i class="fa fa-envelope" aria-hidden="true"></i> Contáctanos</a>
                  </li>
                  <!-- <li>
                    <a href="javascript:void(0)">
                      <i class="fa fa-file-text-o" aria-hidden="true"></i> Condiciones</a>
                  </li> -->
                </ul>
              </div>
            </div>

            <div class="col-md-4 col-xs-6 ms-footer-col" style="background-color: #538e1c;">
              <div class="ms-footbar-block center-block text-center">
                <img class="animated fadeInUp animation-delay-6 img-responsive center-block" src="{$img_dir}logob.svg" alt="Logo Blanco">
                <br>
                <h3 class="ms-footbar-title">Manténte en contacto</h3>
                <div class="ms-footbar-social">
                  <a href="javascript:void(0)" class="btn-circle btn-twitter">
                    <i class="zmdi zmdi-twitter"></i>
                  </a>
                  <a href="javascript:void(0)" class="btn-circle btn-youtube">
                    <i class="zmdi zmdi-youtube"></i>
                  </a>
                  <a href="javascript:void(0)" class="btn-circle btn-instagram">
                    <i class="zmdi zmdi-instagram"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="col-md-4 col-xs-6 ms-footer-col ms-footer-text-right" style="background-color: #2061A8;">
              <div class="ms-footbar-block">
                <h3 class="ms-footbar-title">Contáctanos</h3>
                <address class="no-mb">
                  <p>
                    <i class="color-danger-light zmdi zmdi-pin mr-1"></i>3874 SW 30th Avenue</p>
                  <p>
                    <i class="color-warning-light zmdi zmdi-map mr-1"></i>Fort Lauderdale, FL</p>
                  <p>
                    <i class="color-info-light zmdi zmdi-email mr-1"></i>
                    <a href="mailto:info@conectala.com">admin@bluehorizon.us</a>
                  </p>
                  <p>
                    <i class="color-royal-light zmdi zmdi-phone mr-1"></i>+34 123 456 7890 </p>
                  <p>
                    <i class="color-success-light fa fa-fax mr-1"></i>+34 123 456 7890 </p>
                </address>
              </div>

            </div>
          </div>
        </div>
      </aside>
      <!-- /. Footer -->
			{/if}
			<footer class="ms-footer" style="background-color: #333;">
        <div class="container">
          <p class="font"><a href="javascript:void(0)">Condiciones</a> <span class="hidden-xs">&nbsp; &#8226; &nbsp;</span> <br class="visible-xs"> Copyright &copy; Blue Horizon 2017 - Powered by <a href="">Slice Group</a></p>
        </div>
      </footer>
		</div><!-- #page -->
{/if}
{include file="$tpl_dir./global.tpl"}
	</body>
</html>
