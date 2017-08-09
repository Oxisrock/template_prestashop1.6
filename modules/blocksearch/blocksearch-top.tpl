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
<!-- Block search module TOP -->
<div class="animated fadeInLeft animation-delay-6 ms-title">
<div id="buscador1" style="padding-bottom: 7px; margin-bottom: 20px">
	<form id="searchbox" class="form-group" method="get" action="{$link->getPageLink('search', null, null, null, false, null, true)|escape:'html':'UTF-8'}" >
		<input class="form-control" type="hidden" name="controller" value="search" />
		<input class="form-control" type="hidden" name="orderby" value="position" />
		<input class="form-control" type="hidden" name="orderway" value="desc" />
		<label class="col-md-1 text-right hidden-sm"><i class="fa fa-search fa-2x" aria-hidden="true" ></i>&nbsp;</label>
		<div class="col-md-10">
		<input class="search_query form-control" type="text" id="search_query_top" name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{$search_query|escape:'htmlall':'UTF-8'|stripslashes}" />
		</div>
	</form>
		</div>
	</div>
<!-- /Block search module TOP -->
