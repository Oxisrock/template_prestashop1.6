{if $MENU != ''}
	<!-- Menu -->
	<div class="medir" style="display: none;"></div>
	<div id="block_top_menu">
		<nav class="navbar navbar-static-top yamm ms-navbar ms-navbar-white">
					<div class="container">
						<div class="navbar-header">
							<a class="navbar-brand" href="index.php">
								<img class="animated fadeInUp animation-delay-6 img-responsive center-block" style="max-width: 200px;" src="{$img_dir}logo2.svg" alt="Logo Color">
							</a>
						</div>
						{if $lang_iso == en}
						<div id="navbar" class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="dropdown">
									<a href="" class="dropdown-toggle animated fadeIn animation-delay-4" data-toggle="dropdown" data-hover="dropdown" data-name="home"><i class="fa fa-tint fa-lg color-info-light" aria-hidden="true"></i>{l s='My store'}<i class="zmdi zmdi-chevron-down"></i>
									</a>
									<ul class="dropdown-menu">
										<li>
											<div class="ms-menu-double">
												<ul class="ms-menu-double-main-menu">
														{$MENU}
														{if $MENU_SEARCH}

														{/if}
												</ul>
											</div>
										</li>
									</ul>
								</li>
								<li class="ver animated fadeIn animation-delay-2">
									<a href="index.php?id_cms=4&controller=cms&id_lang=1"><i class="fa fa-users fa-lg color-danger-light" aria-hidden="true"></i> <span class="hidden-sm">{l s='About us'}</span></a>
								</li>
								<li class="ver animated fadeIn animation-delay-2">
									<a href="?controller=contact"><i class="fa fa-download fa-lg color-success-light" aria-hidden="true"></i> <span class="hidden-sm">{l s='FAQS'}</span></a>
								</li>
								<li class="ver animated fadeIn animation-delay-2">
									<a href="http://support.bluehorizon.us/" target="_blank"><i class="fa fa-superpowers fa-lg color-warning-light" aria-hidden="true"></i><span class="hidden-sm">{l s='Support'}</span></a>
								</li>
								<li class="buscar oculto animated fadeIn animation-delay-2">
									{* <form id="searchbox" class="form-group" method="get" action="{$link->getPageLink('search', null, null, null, false, null, true)|escape:'html':'UTF-8'}" >
										<input class="form-control" type="hidden" name="controller" value="search" />
										<input class="form-control" type="hidden" name="orderby" value="position" />
										<input class="form-control" type="hidden" name="orderway" value="desc" />
										<label class="col-md-1 text-right hidden-sm"><i class="fa fa-search fa-2x" aria-hidden="true" ></i>&nbsp;</label>
										<div class="col-md-10">
										<input class="search_query form-control" type="text" id="search_query_top " name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{$search_query|escape:'htmlall':'UTF-8'|stripslashes}" />
										</div>
									</form> *}
									<form id="buscador" class="form-group" method="get" action="{$link->getPageLink('search', null, null, null, false, null, true)|escape:'html':'UTF-8'}">
										<input class="form-control" type="hidden" name="controller" value="search" />
										<input class="form-control" type="hidden" name="orderby" value="position" />
										<input class="form-control" type="hidden" name="orderway" value="desc" />
									<label for="search-box-slidebar" class="col-md-1 text-right hidden-sm"><i class="fa fa-search fa-lg color-success"  aria-hidden="true"></i></label>
									<div class="col-md-10">
										<input id="search-box-slidebar" class="search_query" type="text" name="search_query" placeholder="{l s='Search' mod='blocksearch'}"/>
									</div>
								</form>
								</li>
							</ul>
							<ul class="nav navbar-nav navbar-right tablet">
								<li class="dropdown">
								{if !$is_logged}
									<a href="#" class="dropdown-toggle animated fadeIn animation-delay-2" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-name="blog"><i class="fa fa-user-circle-o color-royal-light" style="color:#154C9B;" aria-hidden="true"></i><span class="hidden-sm"> {l s='My account'}</span>
										<i class="zmdi zmdi-chevron-down"></i>
									</a>
									{else}
										<a href="#" class="dropdown-toggle animated fadeIn animation-delay-2" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-name="blog"><i class="fa fa-user-circle-o color-royal-light" style="color:#154C9B;" aria-hidden="true"></i><span class="hidden-sm"> {$cookie->customer_firstname} {$cookie->customer_lastname} </span>
											<i class="zmdi zmdi-chevron-down"></i>
										</a>
									{/if}
									<ul class="dropdown-menu">
										{if !$is_logged}
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}"  rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
												<i class="fa fa-user" aria-hidden="true"></i>{l s='Sign in' mod='blockuserinfo'}</a>
										</li>
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" data-toggle="modal" data-target="#ms-account-modal"><i class="fa fa-user-plus" aria-hidden="true"></i> {l s='Sign up' mod='blockuserinfo'}</a>
										</li>
											{/if}
										{if $is_logged}
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
	                    <i class="fa fa-pencil" aria-hidden="true"></i>{l s='Edit Profile' mod='blockuserinfo'}</a>
										</li>
										<li>
											<a href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" ><i class="fa fa-user-times" aria-hidden="true"></i>
												{l s='Sign out' mod='blockuserinfo'}</a>
										</li>
										{/if}
									</ul>
								</li>
								<li>
									<a href="" class="animated fadeIn animation-delay-2" title="Tus Favoritos"><i class="fa fa-heart-o fa-lg color-danger" aria-hidden="true"></i></a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle animated fadeIn animation-delay-2" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-name="blog"><i class="fa fa-shopping-cart fa-lg color-success" aria-hidden="true"></i><span class="hidden-sm"></span>
										<span class="ajax_cart_quantity{if $cart_qties >= 0} unvisible{/if} badge">{$cart_qties}</span><i class="zmdi zmdi-chevron-down"></i>
									</a>
									<ul class="dropdown-menu">
										<li>
											{if $cart_qties != 0 }<a href="index.php?controller=order" title="{l s='View my shopping cart' mod='blockcart'}" rel="nofollow">{/if}
												{if $cart_qties == 0 }<a href="javascript:void(0)" title="{l s='you shopping cart is empty' mod='blockcart'}" rel="nofollow">{/if}
												{if $cart_qties != 0 }
												{* <span class="ajax_cart_quantity{if $cart_qties == 0} unvisible{/if}">{$cart_qties}</span>
												<span class="ajax_cart_product_txt{if $cart_qties != 1} unvisible{/if}">{l s='Product' mod='blockcart'}</span>
												<span class="ajax_cart_product_txt_s{if $cart_qties < 2} unvisible{/if}">{l s='Products' mod='blockcart'}</span> *}
												{/if}
												{if $cart_qties > 0 }
												<span class="ajax_cart_no_product{if $cart_qties > 0} unvisible{/if}">{l s='Cart has products :' mod='blockcart'}</span>
												{else}
												<span class="ajax_cart_no_product{if $cart_qties > 0} unvisible{/if}">{l s='Cart is empty' mod='blockcart'}</span>
												{/if}
												<span class="ajax_cart_total{if $cart_qties == 0} unvisible{/if}">
													{if $cart_qties > 0}
														{if $priceDisplay == 1}
															{assign var='blockcart_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
															{convertPrice price=$cart->getOrderTotal(false, $blockcart_cart_flag)}
														{else}
															{assign var='blockcart_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
															{convertPrice price=$cart->getOrderTotal(true, $blockcart_cart_flag)}
														{/if}
													{/if}
												</span>
												{* {include file="$modules_dir./blockcart.tpl"} *}
												{* {if $ajax_allowed && isset($blockcart_top) && !$blockcart_top}
													<span class="block_cart_expand{if !isset($colapseExpandStatus) || (isset($colapseExpandStatus) && $colapseExpandStatus eq 'expanded')} unvisible{/if}">&nbsp;</span>
													<span class="block_cart_collapse{if isset($colapseExpandStatus) && $colapseExpandStatus eq 'collapsed'} unvisible{/if}">&nbsp;</span>
												{/if} *}
											</a>
										</li>
									</ul>
								</li>
								<!-- <li class="btn-navbar-menu"><a href="javascript:void(0)" class="sb-toggle-left"><i class="zmdi zmdi-menu"></i></a></li> -->
							</ul>
						</div>
						{/if}
						{if $lang_iso == es}
						<div id="navbar" class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="dropdown">
									<a href="" class="dropdown-toggle animated fadeIn animation-delay-4" title="Mi tienda" data-toggle="dropdown" data-hover="dropdown" data-name="home"><i class="fa fa-tint fa-lg color-info-light" aria-hidden="true"></i>{l s='Mi tienda'}<i class="zmdi zmdi-chevron-down"></i>
									</a>
									<ul class="dropdown-menu">
										<li>
											<div class="ms-menu-double">
												<ul class="ms-menu-double-main-menu">
														{$MENU}
														{if $MENU_SEARCH}

														{/if}
												</ul>
											</div>
										</li>
									</ul>
								</li>
								<li class="ver animated fadeIn animation-delay-2">
									<a href="index.php?id_cms=4&controller=cms&id_lang=1" title="Nosotros"><i class="fa fa-users fa-lg color-danger-light" aria-hidden="true"></i> <span class="hidden-sm">{l s='Nosotros'}</span></a>
								</li>
								<li class="ver animated fadeIn animation-delay-2">
									<a href="?controller=contact" title="Nosotros"><i class="fa fa-download fa-lg color-success-light" aria-hidden="true"></i> <span class="hidden-sm">{l s='Preguntas y Descargas'}</span></a>
								</li>
								<li class="ver animated fadeIn animation-delay-2">
									<a href="http://support.bluehorizon.us/" title="Soporte" target="_blank"><i class="fa fa-superpowers fa-lg color-warning-light" aria-hidden="true"></i><span class="hidden-sm">{l s='Soporte'}</span></a>
								</li>
								<li class="buscar oculto animated fadeIn animation-delay-2">
									{* <form id="searchbox" class="form-group" method="get" action="{$link->getPageLink('search', null, null, null, false, null, true)|escape:'html':'UTF-8'}" >
										<input class="form-control" type="hidden" name="controller" value="search" />
										<input class="form-control" type="hidden" name="orderby" value="position" />
										<input class="form-control" type="hidden" name="orderway" value="desc" />
										<label class="col-md-1 text-right hidden-sm"><i class="fa fa-search fa-2x" aria-hidden="true" ></i>&nbsp;</label>
										<div class="col-md-10">
										<input class="search_query form-control" type="text" id="search_query_top " name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{$search_query|escape:'htmlall':'UTF-8'|stripslashes}" />
										</div>
									</form> *}
									<form id="buscador" class="form-group" method="get" action="{$link->getPageLink('search', null, null, null, false, null, true)|escape:'html':'UTF-8'}">
										<input class="form-control" type="hidden" name="controller" value="search" />
										<input class="form-control" type="hidden" name="orderby" value="position" />
										<input class="form-control" type="hidden" name="orderway" value="desc" />
									<label for="search-box-slidebar" class="col-md-1 text-right hidden-sm"><i class="fa fa-search fa-lg color-success"  aria-hidden="true"></i></label>
									<div class="col-md-10">
										<input id="search-box-slidebar" class="search_query" type="text" name="search_query" placeholder="{l s='Search' mod='blocksearch'}"/>
									</div>
								</form>
								</li>
							</ul>
							<ul class="nav navbar-nav navbar-right tablet">
								<li class="dropdown">
								{if !$is_logged}
									<a href="#" class="dropdown-toggle animated fadeIn animation-delay-2" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-name="blog"><i class="fa fa-user-circle-o color-royal-light" style="color:#154C9B;" aria-hidden="true"></i><span class="hidden-sm"> {l s='Tu cuenta'}</span>
										<i class="zmdi zmdi-chevron-down"></i>
									</a>
									{else}
										<a href="#" class="dropdown-toggle animated fadeIn animation-delay-2" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-name="blog"><i class="fa fa-user-circle-o color-royal-light" style="color:#154C9B;" aria-hidden="true"></i><span class="hidden-sm"> {$cookie->customer_firstname} {$cookie->customer_lastname} </span>
											<i class="zmdi zmdi-chevron-down"></i>
										</a>
									{/if}
									<ul class="dropdown-menu">
										{if !$is_logged}
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}"  rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
												<i class="fa fa-user" aria-hidden="true"></i>{l s='Iniciar Sesion' mod='blockuserinfo'}</a>
										</li>
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" data-toggle="modal" data-target="#ms-account-modal"><i class="fa fa-user-plus" aria-hidden="true"></i> {l s='Registrar' mod='blockuserinfo'}</a>
										</li>
											{/if}
										{if $is_logged}
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
	                    <i class="fa fa-pencil" aria-hidden="true"></i>{l s='Editar Perfil' mod='blockuserinfo'}</a>
										</li>
										<li>
											<a href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" ><i class="fa fa-user-times" aria-hidden="true"></i>
												{l s='Deslogear' mod='blockuserinfo'}</a>
										</li>
										{/if}
									</ul>
								</li>
								<li>
									<a href="" class="animated fadeIn animation-delay-2" title="Tus Favoritos"><i class="fa fa-heart-o fa-lg color-danger" aria-hidden="true"></i></a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle animated fadeIn animation-delay-2" title="Tu carrito" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-name="blog"><i class="fa fa-shopping-cart fa-lg color-success" aria-hidden="true"></i><span class="hidden-sm"></span>
										<span class="ajax_cart_quantity{if $cart_qties >= 0} unvisible{/if} badge">{$cart_qties}</span><i class="zmdi zmdi-chevron-down"></i>
									</a>
									<ul class="dropdown-menu">
										<li>
											<a href="index.php?controller=order" title="{l s='View my shopping cart' mod='blockcart'}" rel="nofollow">
												{if $cart_qties != 0 }
												<span class="ajax_cart_quantity{if $cart_qties == 0} unvisible{/if}">{$cart_qties}</span>
												<span class="ajax_cart_product_txt{if $cart_qties != 1} unvisible{/if}">{l s='Producto' mod='blockcart'}</span>
												<span class="ajax_cart_product_txt_s{if $cart_qties < 2} unvisible{/if}">{l s='Productos' mod='blockcart'}</span>
												<span class="ajax_cart_total{if $cart_qties == 0} unvisible{/if}">
													{if $cart_qties > 0}
														{if $priceDisplay == 1}
															{assign var='blockcart_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
															{convertPrice price=$cart->getOrderTotal(false, $blockcart_cart_flag)}
														{else}
															{assign var='blockcart_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
															{convertPrice price=$cart->getOrderTotal(true, $blockcart_cart_flag)}
														{/if}
													{/if}
												</span>
												{/if}
												{if $cart_qties > 0 }
												<span class="ajax_cart_no_product{if $cart_qties > 0} unvisible{/if}">{l s='(carrito tiene :)' mod='blockcart'} {$cart_qties}</span>
												{else}
												<span class="ajax_cart_no_product{if $cart_qties > 0} unvisible{/if}">{l s='(Carrito Vacio)' mod='blockcart'}</span>
												{/if}
												{* {include file="$modules_dir./blockcart.tpl"} *}
												{* {if $ajax_allowed && isset($blockcart_top) && !$blockcart_top}
													<span class="block_cart_expand{if !isset($colapseExpandStatus) || (isset($colapseExpandStatus) && $colapseExpandStatus eq 'expanded')} unvisible{/if}">&nbsp;</span>
													<span class="block_cart_collapse{if isset($colapseExpandStatus) && $colapseExpandStatus eq 'collapsed'} unvisible{/if}">&nbsp;</span>
												{/if} *}
											</a>
										</li>
									</ul>
								</li>
								<!-- <li class="btn-navbar-menu"><a href="javascript:void(0)" class="sb-toggle-left"><i class="zmdi zmdi-menu"></i></a></li> -->
							</ul>
						</div>
						{/if}
						<!-- navbar-collapse collapse -->
						<a href="javascript:void(0)" onclick="openNav()" class="menur sb-toggle-left btn-navbar-menu visible-xs">
            <i class="zmdi zmdi-menu"></i>
          </a>
					</div>
					<!-- container -->
				</nav>
				<!-- ******************************
			    MENU PARA MOVILES
			    ******************************* -->
					<div id="mySidenav" class="sidenav">
						<header class="ms-slidebar-header">
						<div class="ms-slidebar-login text-center">
							{if $lang_iso == es}
							{if !$is_logged}
							<a href="index.php?controller=order" title="{l s='View my shopping cart' mod='blockcart'}" rel="nofollow" class="dropdown-toggle animated fadeIn animation-delay-2" ><i class="fa fa-shopping-cart fa-lg color-white" aria-hidden="true"></i><span class="hidden-sm"></span>
								<i class="ajax_cart_quantity{if $cart_qties >= 0} unvisible{/if} badge">{$cart_qties}</i></i>
							</a>
					<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}"  rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}" class="conripple">
            <i class="fa fa-user" aria-hidden="true"></i> Ingresar</a>
          <a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" class="conripple">
            <i class="fa fa-user-plus" aria-hidden="true"></i> Registrar</a>
						{/if}
						{if $is_logged}
						<a href="index.php?controller=order" title="{l s='View my shopping cart' mod='blockcart'}" rel="nofollow" class="dropdown-toggle animated fadeIn animation-delay-2" ><i class="fa fa-shopping-cart fa-lg color-white" aria-hidden="true"></i><span class="hidden-sm"></span>
							<i class="ajax_cart_quantity{if $cart_qties >= 0} unvisible{/if} badge">{$cart_qties}</i></i>
						</a>
						<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
						<i class="fa fa-user" aria-hidden="true"></i> <span class="">{$cookie->customer_firstname} {$cookie->customer_lastname}</span></a>
						<a href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" ><i class="fa fa-user-times" aria-hidden="true"></i>
							{l s='Deslogear' mod='blockuserinfo'}</a>
						{/if}
						{/if}
						{if $lang_iso == en}
						{if !$is_logged}
						<a href="index.php?controller=order" title="{l s='View my shopping cart' mod='blockcart'}" rel="nofollow" class="dropdown-toggle animated fadeIn animation-delay-2" ><i class="fa fa-shopping-cart fa-lg color-white" aria-hidden="true"></i><span class="hidden-sm"></span>
							<i class="ajax_cart_quantity{if $cart_qties >= 0} unvisible{/if} badge">{$cart_qties}</i></i>
						</a>
				<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}"  rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}" class="conripple">
					<i class="fa fa-user" aria-hidden="true"></i> Sign in</a>
				<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" class="conripple">
					<i class="fa fa-user-plus" aria-hidden="true"></i> Sign up</a>
					{/if}
					{if $is_logged}
					<a href="index.php?controller=order" title="{l s='View my shopping cart' mod='blockcart'}" rel="nofollow" class="dropdown-toggle animated fadeIn animation-delay-2" ><i class="fa fa-shopping-cart fa-lg color-white" aria-hidden="true"></i><span class="hidden-sm"></span>
						<i class="ajax_cart_quantity{if $cart_qties >= 0} unvisible{/if} badge">{$cart_qties}</i></i>
					</a>
					<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
					<i class="fa fa-user" aria-hidden="true"></i> <span class="">{$cookie->customer_firstname} {$cookie->customer_lastname}</span></a>
					<a href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" ><i class="fa fa-user-times" aria-hidden="true"></i>
						{l s='Sign out' mod='blockuserinfo'}</a>
					{/if}
					{/if}
						<div class="logo-sidenav">
						<img class="animated fadeInUp animation-delay-6 img-responsive center-block" src="{$img_dir}bg-slidebar.png" alt="Logo Blanco" width="300px" height="120px">
						{if $lang_iso == es}<a class="" href="javascript:void(0)" style=""><span class="text-primary">Es</span></a><span class="text-white">/</span><a class="text-white" href="?id_lang=2"><span class="">En</span></a>{/if}
						{if $lang_iso == en}<a class="" href="?id_lang=1"><span class="text-white">Es</span></a><span class="text-white">/</span><a class="" href="javascript:void(0)" style=""><span class="text-primary">En</span></a>{/if}
					</div>
						</div>
						<div class="ms-slidebar-title">
							<form class="search-form">
								<form id="searchbox" class="form-group" method="get" action="{$link->getPageLink('search', null, null, null, false, null, true)|escape:'html':'UTF-8'}" >
									<input class="form-control" type="hidden" name="controller" value="search" />
									<input class="form-control" type="hidden" name="orderby" value="position" />
									<input class="form-control" type="hidden" name="orderway" value="desc" />
									<div class="col-md-10 buscador3">
									<input class="search_query form-control" type="text" id="search_query_top id" name="search_query"/>
									<label for="search-box-slidebar" class="col-md-1 hidden-sm">
              <i class="fa fa-search fa-2x lupa"></i>
            </label>
									</div>
								</form>
							</form>
						</div>
			</header>
			{if $lang_iso == es}
			<div class="ms-slidebar-menu">
			<ul class="ms-slidebar-menu text-left" id="slidebar-menu" role="tablist" aria-multiselectable="true">
				<li>
					<a class="link" href="index.php">
						<i class="fa fa-tint fa-lg color-info-light" aria-hidden="true"></i> Tienda <i class="fa fa-chevron-right fle" aria-hidden="true"></i> </a>
				</li>
				<li>
					<a class="link" href="?id_cms=4&controller=cms&id_lang=1">
						<i class="fa fa-users fa-lg color-danger-light" aria-hidden="true"></i> Nosotros <i class="fa fa-chevron-right fle" aria-hidden="true"></i></a>
				</li>
				<li>
					<a class="link" href="index.php?controller=contact">
						<i class="fa fa-download fa-lg color-success-light" aria-hidden="true"></i> Preguntas y Descargas <i class="fa fa-chevron-right fle" aria-hidden="true"></i></a>
				</li>
				<li>
					<a class="link" href="http://support.bluehorizon.us/" target="_blank">
						<i class="fa fa-superpowers fa-lg color-warning-light" aria-hidden="true"></i> Soporte <i class="fa fa-chevron-right fle" aria-hidden="true"></i></a>
				</li>
			</ul>
		</div>
		{/if}
		{if $lang_iso == en}
		<div class="ms-slidebar-menu">
		<ul class="ms-slidebar-menu text-left" id="slidebar-menu" role="tablist" aria-multiselectable="true">
			<li>
				<a class="link" href="index.php">
					<i class="fa fa-tint fa-lg color-info-light" aria-hidden="true"></i> Store <i class="fa fa-chevron-right fle" aria-hidden="true"></i> </a>
			</li>
			<li>
				<a class="link" href="?id_cms=4&controller=cms&id_lang=1">
					<i class="fa fa-users fa-lg color-danger-light" aria-hidden="true"></i> About us <i class="fa fa-chevron-right fle" aria-hidden="true"></i></a>
			</li>
			<li>
				<a class="link" href="index.php?controller=contact">
					<i class="fa fa-download fa-lg color-success-light" aria-hidden="true"></i> FAQS <i class="fa fa-chevron-right fle" aria-hidden="true"></i></a>
			</li>
			<li>
				<a class="link" href="http://support.bluehorizon.us/" target="_blank">
					<i class="fa fa-superpowers fa-lg color-warning-light" aria-hidden="true"></i> Support <i class="fa fa-chevron-right fle" aria-hidden="true"></i></a>
			</li>
		</ul>
	</div>
	{/if}
		<div class="col-md-4 col-xs-6 ms-footer-col">
		<div class="ms-slidebar-block">
        <h4 class="ms-slidebar-block-title">Social Links</h4>
				<div class="ms-footbar-block center-block text-center">
        <div class="ms-slidebar-social">

					<a href="javascript:void(0)" class="btn-circle btn-circle-raised btn-twitter">
						<i class="zmdi zmdi-twitter fa-lg"></i>
					</a>

					<a href="javascript:void(0)" class="btn-circle btn-circle-raised btn-youtube">
						<i class="zmdi zmdi-youtube fa-lg"></i>
					</a>

					<a href="javascript:void(0)" class="btn-circle btn-circle-raised btn-instagram">
						<i class="zmdi zmdi-instagram fa-lg"></i>
					</a>

        </div>
      </div>
		</div>
	</div>
					  {* <a href="#">About</a>
					  <a href="#">Services</a>
					  <a href="#">Clients</a>
					  <a href="#">Contact</a> *}
					</div>
	{* <div class="sb-left sb-momentum-scrolling sb-style-overlay">
		<header class="ms-slidebar-header">
			<div class="ms-slidebar-login">
				<a href="" class="botons-login" data-toggle="modal" data-target="#ms-account-modal">
					<i class="fa fa-user" aria-hidden="true"></i> {l s='Ingresar'}</a>
				<a href="" class="botons-login" data-toggle="modal" data-target="#ms-account-modal">
					<i class="fa fa-user-plus" aria-hidden="true"></i> {l s='Registrar'}</a>
					<img class="animated fadeInUp animation-delay-6 img-responsive center-block" src="{$img_dir}logob.svg" alt="Logo Blanco">
			</div>
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><i class="fa fa-times"></i></a>
			<div class="ms-slidebar-title">
				<form class="search-form">
					<form id="searchbox" class="form-group" method="get" action="{$link->getPageLink('search', null, null, null, false, null, true)|escape:'html':'UTF-8'}" >
						<input class="form-control" type="hidden" name="controller" value="search" />
						<input class="form-control" type="hidden" name="orderby" value="position" />
						<input class="form-control" type="hidden" name="orderway" value="desc" />
						<label class="col-sm-1 text-right hidden-sm"><i class="fa fa-search fa-2x" aria-hidden="true" ></i>&nbsp;</label>
						<div class="col-md-10">
						<input class="search_query form-control" type="text" id="search_query_top id" name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="" />
						</div>
					</form>
				</form>
			</div>
		</header>
		<ul class="ms-slidebar-menu" id="slidebar-menu" role="tablist" aria-multiselectable="true">
			<li>
				<a class="link" href="catalogo.html">
					<i class="fa fa-tint fa-lg color-info-light" aria-hidden="true"></i> Tienda</a>
			</li>
			<li>
				<a class="link" href="">
					<i class="fa fa-users fa-lg color-danger-light" aria-hidden="true"></i> Nosotros</a>
			</li>
			<li>
				<a class="link" href="">
					<i class="fa fa-download fa-lg color-success-light" aria-hidden="true"></i> Preguntas y Descargas</a>
			</li>
			<li>
				<a class="link" href="">
					<i class="fa fa-superpowers fa-lg color-warning-light" aria-hidden="true"></i> Soporte</a>
			</li>
		</ul>
		<div class="ms-slidebar-social ms-slidebar-block">
			<h4 class="ms-slidebar-block-title">Social Links</h4>
			<div class="ms-slidebar-social">

				<a href="" class="btn-circle btn-circle-raised btn-twitter">
					<i class="zmdi zmdi-twitter"></i>
					<div class="ripple-container"></div>
				</a>

				<a href="" class="btn-circle btn-circle-raised btn-youtube">
					<i class="zmdi zmdi-youtube"></i>
					<div class="ripple-container"></div>
				</a>

				<a href="" class="btn-circle btn-circle-raised btn-instagram">
					<i class="zmdi zmdi-instagram"></i>
					<div class="ripple-container"></div>
				</a>

			</div>
		</div>
	</div> *}


			    <!-- /. Menu para moviles -->

{/if}
