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

{if !$isCustomerFavoriteProduct AND $is_logged}
<li id="favoriteproducts_block_extra_add" class="add">
	<span class="fa fa-heart-o color-danger pull-right fa-2x" aria-hidden="true" title="{l s='Add this product to my list of favorites.' mod='favoriteproducts'}"></span>
</li>
{/if}
{if $isCustomerFavoriteProduct AND $is_logged}
<li id="favoriteproducts_block_extra_remove">
	<span class="fa fa-heart color-danger pull-right fa-2x" aria-hidden="true" title="{l s='Remove this product from my favorite\'s list. ' mod='favoriteproducts'}"></span>
</li>
{/if}

<li id="favoriteproducts_block_extra_added">
	<span class="fa fa-heart color-danger pull-right fa-2x" aria-hidden="true" title="{l s='Remove this product from my favorite\'s list. ' mod='favoriteproducts'}"></span>
</li>
<li id="favoriteproducts_block_extra_removed">
	<span class="fa fa-heart-o color-danger pull-right fa-2x" aria-hidden="true" title="{l s='Add this product to my list of favorites.' mod='favoriteproducts'}"></span>
</li>
