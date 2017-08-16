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
{* Listado de productos *}
<div class="wrap ms-bg-fixed">
<div class="container index-1">
	{*si hay productos almacenados*}
{if isset($products) && $products}
	{*define number of products per line in other page for desktop*}
	{if $page_name !='index' && $page_name !='product'}
		{assign var='nbItemsPerLine' value=3}
		{assign var='nbItemsPerLineTablet' value=2}
		{assign var='nbItemsPerLineMobile' value=3}
	{else}
		{assign var='nbItemsPerLine' value=4}
		{assign var='nbItemsPerLineTablet' value=3}
		{assign var='nbItemsPerLineMobile' value=2}
	{/if}
	{*define numbers of product per line in other page for tablet*}
	{assign var='nbLi' value=$products|@count}
	{math equation="nbLi/nbItemsPerLine" nbLi=$nbLi nbItemsPerLine=$nbItemsPerLine assign=nbLines}
	{math equation="nbLi/nbItemsPerLineTablet" nbLi=$nbLi nbItemsPerLineTablet=$nbItemsPerLineTablet assign=nbLinesTablet}
	<!-- Products list -->
	<div {if isset($id) && $id} id="{$id}"{else} id="product_list"{/if} class="product_list grid row{if isset($class) && $class} {$class}{/if} ">
	<div class="owl-dots"></div>
  <div class=""> {* owlCarousel *}
	<div class="">
			{foreach from=$products item=product name=products}
				{math equation="(total%perLine)" total=$smarty.foreach.products.total perLine=$nbItemsPerLine assign=totModulo}
				{math equation="(total%perLineT)" total=$smarty.foreach.products.total perLineT=$nbItemsPerLineTablet assign=totModuloTablet}
				{math equation="(total%perLineT)" total=$smarty.foreach.products.total perLineT=$nbItemsPerLineMobile assign=totModuloMobile}
				{if $totModulo == 0}{assign var='totModulo' value=$nbItemsPerLine}{/if}
				{if $totModuloTablet == 0}{assign var='totModuloTablet' value=$nbItemsPerLineTablet}{/if}
				{if $totModuloMobile == 0}{assign var='totModuloMobile' value=$nbItemsPerLineMobile}{/if}
				<div class="ajax_block_product{if $page_name == 'index' || $page_name == 'product'} col-xs-12 col-sm-4 col-md-3{else} col-xs-12 col-sm-6 col-md-4{/if}{if $smarty.foreach.products.iteration%$nbItemsPerLine == 0} last-in-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLine == 1} first-in-line{/if}{if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - $totModulo)} last-line{/if}{if $smarty.foreach.products.iteration%$nbItemsPerLineTablet == 0} last-item-of-tablet-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLineTablet == 1} first-item-of-tablet-line{/if}{if $smarty.foreach.products.iteration%$nbItemsPerLineMobile == 0} last-item-of-mobile-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLineMobile == 1} first-item-of-mobile-line{/if}{if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - $totModuloMobile)} last-mobile-line{/if} ">
					<div class="product-container" itemscope itemtype="https://schema.org/Product">
						<div class="left-block">
								<div class="card card-info animated fadeInLeft animation-delay-6">
									<div class="card-block text-center">
										<div class="img-responsive center-block">
								{if isset($product.new) && $product.new == 1}
									<a class="btn btn-primary btn-sm btn-block btn-raised mt-2 no-mb" href="{$product.link|escape:'html':'UTF-8'}">
										<span class="new-label">{l s='New'}</span>
									</a>
								{/if}
								{* Figure para la animacion al hacer hover en el *}
								<figure class="ms-thumbnail">
								{* Imagen de productos *}
								<a class="product_img_link" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url">
									<img class="img-responsive center-block" src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')|escape:'html':'UTF-8'}" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" {if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if} itemprop="image" />
								</a>
								<figcaption class="ms-thumbnail-caption">
									{* Nombre de productos *}
									<h5 class="text-normal text-center " itemprop="name">
										{if isset($product.pack_quantity) && $product.pack_quantity}{$product.pack_quantity|intval|cat:' x '}{/if}
										<a class="text-white" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url" >
											{$product.name|truncate:45:'...'|escape:'html':'UTF-8'}
										</a>
									</h5>
								{* vistazo rapido de los productos *}
								{if isset($quick_view) && $quick_view}
									<div class="quick-view-wrapper-mobile">
									<a class="quick-view-mobile" href="{$product.link|escape:'html':'UTF-8'}" rel="{$product.link|escape:'html':'UTF-8'}">
										<i class="icon-eye-open"></i>
									</a>
								</div>
								<a class="btn btn-primary btn-sm btn-block btn-raised mt-2 no-mb" href="{$product.link|escape:'html':'UTF-8'}" rel="{$product.link|escape:'html':'UTF-8'}">
									<span class="text-white">{l s='Quick view'}</span>
								</a>
								{/if}
								{* Nivel de popularidad *}
								<div class="mt-2">
									<span class="mr-2">
												<i class="zmdi zmdi-star color-warning"></i>
												<i class="zmdi zmdi-star color-warning"></i>
												<i class="zmdi zmdi-star color-warning"></i>
												<i class="zmdi zmdi-star color-warning"></i>
												<i class="zmdi zmdi-star"></i>
											</span>
								</div>
								{if (!$PS_CATALOG_MODE && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
									<div class="content_price" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
										{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
											<span itemprop="price" class="ms-tag ms-tag-success">
												{hook h="displayProductPriceBlock" product=$product type="before_price"}
												{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
											</span>
											<meta itemprop="priceCurrency" content="{$currency->iso_code}" />
											<div>
											{if $product.price_without_reduction > 0 && isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
												{hook h="displayProductPriceBlock" product=$product type="old_price"}
												<span class="old-price product-price">
													{displayWtPrice p=$product.price_without_reduction}
												</span>
												{if $product.specific_prices.reduction_type == 'percentage'}
													<span class="price-percent-reduction">-{$product.specific_prices.reduction * 100}%</span>
												{/if}
											{/if}
										</div>
											<div class="">
											{if $PS_STOCK_MANAGEMENT && isset($product.available_for_order) && $product.available_for_order && !isset($restricted_country_mode)}
												<span class="unvisible">
													{if ($product.allow_oosp || $product.quantity > 0)}
															<link itemprop="availability" href="https://schema.org/InStock" />{if $product.quantity <= 0}{if $product.allow_oosp}{if isset($product.available_later) && $product.available_later}{$product.available_later}{else}{l s='In Stock'}{/if}{/if}{else}{if isset($product.available_now) && $product.available_now}{$product.available_now}{else}{l s='In Stock'}{/if}{/if}
													{elseif (isset($product.quantity_all_versions) && $product.quantity_all_versions > 0)}
															<link itemprop="availability" href="https://schema.org/LimitedAvailability" />{l s='Product available with different options'}

													{else}
															<link itemprop="availability" href="https://schema.org/OutOfStock" /><span class="ms-tag ms-tag-danger">{l s='Out of stock'}</span>
													{/if}
												</span>
											{/if}
										</div>
											{hook h="displayProductPriceBlock" product=$product type="price"}
											{hook h="displayProductPriceBlock" product=$product type="unit_price"}
										{/if}
									</div>
								{/if}
							</figcaption>
						</figure>
								{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
									<a class="sale-box" href="{$product.link|escape:'html':'UTF-8'}">
										<span class="sale-label">{l s='Sale!'}</span>
									</a>
								{/if}
								<div class="button-container">
									{if ($product.id_product_attribute == 0 || (isset($add_prod_display) && ($add_prod_display == 1))) && $product.available_for_order && !isset($restricted_country_mode) && $product.customizable != 2 && !$PS_CATALOG_MODE}
										{if (!isset($product.customization_required) || !$product.customization_required) && ($product.allow_oosp || $product.quantity > 0)}
											{capture}add=1&amp;id_product={$product.id_product|intval}{if isset($product.id_product_attribute) && $product.id_product_attribute}&amp;ipa={$product.id_product_attribute|intval}{/if}{if isset($static_token)}&amp;token={$static_token}{/if}{/capture}
											<a class="button ajax_add_to_cart_button btn btn-raised btn-success" href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Add to cart'}" data-id-product-attribute="{$product.id_product_attribute|intval}" data-id-product="{$product.id_product|intval}" data-minimal_quantity="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity >= 1}{$product.product_attribute_minimal_quantity|intval}{else}{$product.minimal_quantity|intval}{/if}">
												<span>{l s='Add to cart'} </span>
											</a>
										{else}
											<span class="btn btn-raised btn-danger">
												<span>{l s='Out of stock'}</span>
											</span>
										{/if}
									{/if}
									<a class="btn btn-primary btn-sm btn-block btn-raised mt-2 no-mb" href="{$product.link|escape:'html':'UTF-8'}" title="{l s='View'}">
										<span>{if (isset($product.customization_required) && $product.customization_required)}{l s='Customize'}{else}{l s='More'}{/if}</span>
									</a>
								</div>
								{if isset($product.color_list)}
									<div class="color-list-container">{$product.color_list}</div>
								{/if}
								</div> {* Img responsive *}
							</div>{* Card Block Text-Center *}
						</div> {* Card Block info*}
							{if isset($product.is_virtual) && !$product.is_virtual}{hook h="displayProductDeliveryTime" product=$product}{/if}
							{hook h="displayProductPriceBlock" product=$product type="weight"}
						</div> {* left block  *}
						{if $page_name != 'index'}
							<div class="functional-buttons clearfix">
								{hook h='displayProductListFunctionalButtons' product=$product}
								{if isset($comparator_max_item) && $comparator_max_item}
									<div class="compare">
										<a class="add_to_compare" href="{$product.link|escape:'html':'UTF-8'}" data-id-product="{$product.id_product}">{l s='Add to Compare'}</a>
									</div>
								{/if}
							</div>
						{/if}
					</div><!-- .product-container> -->
				</div>
			{/foreach}
	</div>
</div> {* owlCarousel *}
	</div>
{addJsDefL name=min_item}{l s='Please select at least one product' js=1}{/addJsDefL}
{addJsDefL name=max_item}{l s='You cannot add more than %d product(s) to the product comparison' sprintf=$comparator_max_item js=1}{/addJsDefL}
{addJsDef comparator_max_item=$comparator_max_item}
{addJsDef comparedProductsIds=$compared_products}
</div>
</div>
{/if}
<script type="text/javascript" >
$(document).ready(function(){
  $(".owl-carousel").owlCarousel();
});
</script>
