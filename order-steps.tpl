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
{* Assign a value to 'current_step' to display current style *}
{capture name="url_back"}
{if isset($back) && $back}back={$back}{/if}
{/capture}

{if !isset($multi_shipping)}
	{assign var='multi_shipping' value='0'}
{/if}

{if !$opc && ((!isset($back) || empty($back)) || (isset($back) && preg_match("/[&?]step=/", $back)))}
<!-- Steps -->
<div class="card card-primary animated zoomInDown animation-delay-5">
	<div class="card-block">
<ul class="nav nav-tabs nav-tabs-transparent indicator-success nav-tabs-full nav-tabs-5" id="order_step">
	<li role="presentation" class="{if $current_step=='summary'}step_current active {elseif $current_step=='login'}step_done_last step_done{else}{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address' || $current_step=='login'}step_done{else}step_todo{/if}{/if} ">
		{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address' || $current_step=='login'}
		<a class="withoutripple text-center" href="{$link->getPageLink('order', true)}">
			<em>01.</em><span class="hidden-xs">{l s='Summary'}</span>
		</a>
		{else}
			<div class="withoutripple text-center"><em>01.</em><span class="hidden-xs"> {l s='Summary'}</span></div>
		{/if}
	</li>
	<li role="presentation" class="{if $current_step=='login'}step_current active{elseif $current_step=='address'}step_done step_done_last{else}{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address'}step_done{else}step_todo{/if}{/if}">
		{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address'}
		<a class="withoutripple text-center" href="{$link->getPageLink('order', true, NULL, "{$smarty.capture.url_back}&step=1{if $multi_shipping}&multi-shipping={$multi_shipping}{/if}")|escape:'html':'UTF-8'}">
			<em>02.</em> <span class="hidden-xs">{l s='Sign in'}</span>
		</a>
		{else}
			<div class="withoutripple text-center"><em>02.</em> <span class="hidden-xs">{l s='Sign in'}</span></div>
		{/if}
	</li>
	<li role="presentation" class="{if $current_step=='address'}step_current active hover{elseif $current_step=='shipping'}step_done step_done_last{else}{if $current_step=='payment' || $current_step=='shipping'}step_done{else}step_todo{/if}{/if}">
		{if $current_step=='payment' || $current_step=='shipping'}
		<a class="withoutripple text-center" href="{$link->getPageLink('order', true, NULL, "{$smarty.capture.url_back}&step=1{if $multi_shipping}&multi-shipping={$multi_shipping}{/if}")|escape:'html':'UTF-8'}">
			<em>03.</em> <span class="hidden-xs">{l s='Address'}</span>
		</a>
		{else}
			<div class="withoutripple text-center"><em>03.</em><span class="hidden-xs"> {l s='Address'}</span></div>
		{/if}
	</li>
	<li role="presentation" class="{if $current_step=='shipping'}step_current active{else}{if $current_step=='payment'}step_done step_done_last{else}step_todo{/if}{/if}">
		{if $current_step=='payment'}
		<a class="withoutripple text-center"href="{$link->getPageLink('order', true, NULL, "{$smarty.capture.url_back}&step=2{if $multi_shipping}&multi-shipping={$multi_shipping}{/if}")|escape:'html':'UTF-8'}">
			<em>04.</em> <span class="hidden-xs">{l s='Shipping'}</span>
		</a>
		{else}
			<div class="withoutripple text-center"><em>04.</em> <span class="hidden-xs">{l s='Shipping'}</span></div>
		{/if}
	</li>
	<li  role="presentation" id="step_end" class=" withoutripple {if $current_step=='payment'}step_current active{else}step_todo{/if} ">
		<div class="withoutripple text-center"><em>05.</em><span class="hidden-xs"> {l s='Payment'}</span></div>
	</li>
</ul>
	</div>
</div>
<!-- /Steps -->
{/if}
</div>

</br>
