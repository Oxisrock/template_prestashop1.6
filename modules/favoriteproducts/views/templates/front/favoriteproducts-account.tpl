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
<div class="container container-full">
{capture name=path}
	<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}">
		{l s='My account' mod='favoriteproducts'}
	</a>
	<span class="navigation-pipe">{$navigationPipe}</span>
	<span class="navigation_page">{l s='My favorite products' mod='favoriteproducts'}</span>
{/capture}

<div id="favoriteproducts_block_account">
	<h1 class="page-heading">{l s='My favorite products' mod='favoriteproducts'}</h1>
	{if $favoriteProducts}
    	<ul class="row card card-success animated fadeInUp animation-delay-10">
			{foreach from=$favoriteProducts item=favoriteProduct}
			<li class="col-xs-12">
            	<div class="favoriteproduct clearfix inner-content">
                    <a
                    class="product_img_link"
                    href="{$link->getProductLink($favoriteProduct.id_product, null, null, null, null, $favoriteProduct.id_shop)|escape:'html':'UTF-8'}">
                        <img
                        src="{$link->getImageLink($favoriteProduct.link_rewrite, $favoriteProduct.image, 'medium_default')|escape:'html':'UTF-8'}"
                        alt=""/>
                    </a>
                    <p class="s_title_block">
                    	<a href="{$link->getProductLink($favoriteProduct.id_product, null, null, null, null, $favoriteProduct.id_shop)|escape:'html':'UTF-8'}">
                    		{$favoriteProduct.name|escape:'html':'UTF-8'}
                    	</a>
                    </p>
                    <div class="product_desc">{$favoriteProduct.description_short|strip_tags|escape:'html':'UTF-8'}</div>
										<div class=""></div>
										<div class="remove">
                    	<a href="#" rel="ajax_id_favoriteproduct_{$favoriteProduct.id_product}" {if $lang_iso == es}title="{l s='Eliminar de mi lista de favoritos. ' mod='favoriteproducts'}"{/if} {if $lang_iso == en}title="{l s='Remove this product from my favorite\'s list. ' mod='favoriteproducts'}"{/if}>
                    		<i class="fa fa-remove"></i>
                    	</a>
                    </div>
                </div>
			</li>
			{/foreach}
        </ul>
	{else}
		<p class="alert alert-primary">{l s='No favorite products have been determined just yet. ' mod='favoriteproducts'}</p>
		<div class="" style="background: #000; margin-bottom: 20%;">
		</div>
	{/if}

	<ul class="footer_links clearfix">
		<li>
			<a
			class="btn btn-raised btn-primary"
			href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}">
				<span class="">
					<i class="fa fa-chevron-left"></i> {l s='Back to your account' mod='favoriteproducts'}
				</span>
			</a>
		</li>
	</ul>
</div>
</div>
