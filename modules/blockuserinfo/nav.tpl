<!-- Block user information module NAV  -->
{if $is_logged}
	<div class="user-block">
	<div class="current" ><i class="icon-user"></i></div>
		<ul class="user-block-s toogle_content">
		<li><a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
			{l s='My account' mod='blockuserinfo'}
		</a></li>
		<li><a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='blockuserinfo'}">
			{l s='Sign out' mod='blockuserinfo'}
		</a></li>
	</ul>
	</div>
{/if}
	{if !$is_logged}
		<div class="user-block">
		<div class="current" ><i class="icon-user"></i></div>
			<ul class="user-block-s toogle_content">
			<li><a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
				{l s='Sign in' mod='blockuserinfo'}</li>
		</ul>
		</div>
	{/if}
<!-- /Block usmodule NAV -->
