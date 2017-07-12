<!-- Block user information module NAV  -->
{if $is_logged}
	<div class="user-block">
	<div class="current" ><i class="icon-user"></i></div>
		<ul class="user-block toogle_content">
		<li><a href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}">
			{l s='Mi cuenta'}
		</a></li>
		<li><a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='blockuserinfo'}">
			{l s='Sign out' mod='blockuserinfo'}
		</a></li>
	</ul>
	</div>
{/if}
<div class="header_user_info">
	{if !$is_logged}
		<a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
			{l s='Sign in' mod='blockuserinfo'}
		</a>
	{/if}
</div>
<!-- /Block usmodule NAV -->
