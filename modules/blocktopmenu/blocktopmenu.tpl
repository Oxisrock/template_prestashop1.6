{if $MENU != ''}
	<!-- Menu -->
	<div id="block_top_menu">
		<nav class="navbar navbar-static-top yamm ms-navbar ms-navbar-white">
					<div class="container container-full">
						<div class="navbar-header">
							<a class="navbar-brand" href="index.html">
								<img class="animated fadeInUp animation-delay-6 img-responsive center-block" style="max-width: 200px;" src="{$img_dir}logo2.svg" alt="Logo Color">
							</a>
						</div>
						<div id="navbar" class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="dropdown">
									<a href="javascript:void(0)" class="dropdown-toggle animated fadeIn animation-delay-4" data-toggle="dropdown" data-hover="dropdown" data-name="home"><i class="fa fa-tint fa-lg color-info-light" aria-hidden="true"></i> Tienda<i class="zmdi zmdi-chevron-down"></i>
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
									<a href="index.php?id_cms=4&controller=cms&id_lang=1"><i class="fa fa-users fa-lg color-danger-light" aria-hidden="true"></i> <span class="hidden-sm">Nosotros</span></a>
								</li>
								<li class="ver animated fadeIn animation-delay-2">
									<a href="javascript:void(0)"><i class="fa fa-download fa-lg color-success-light" aria-hidden="true"></i> <span class="hidden-sm">Preguntas y Descargas</span></a>
								</li>
								<li class="ver animated fadeIn animation-delay-2">
									<a href="index.php?controller=contact"><i class="fa fa-superpowers fa-lg color-warning-light" aria-hidden="true"></i><span class="hidden-sm"> Soporte</span></a>
								</li>
								<li class="buscar oculto">
										<form id="buscador">
											<label for="search-box-slidebar" class="col-md-1 text-right hidden-sm"><i class="fa fa-search fa-lg color-success"  aria-hidden="true"></i></label>
											<div class="col-md-10">
												<input id="search-box-slidebar" type="text" placeholder="Buscar..." name="q" />
											</div>
										</form>
								</li>
							</ul>
							<ul class="nav navbar-nav navbar-right tablet">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle animated fadeIn animation-delay-2" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false" data-name="blog"><i class="fa fa-user-circle-o color-royal-light" style="color:#154C9B;" aria-hidden="true"></i><span class="hidden-sm">Tu Cuenta</span>
										<i class="zmdi zmdi-chevron-down"></i>
									</a>
									<ul class="dropdown-menu">
										{if !$is_logged}
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}"  rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
												<i class="fa fa-user" aria-hidden="true"></i>{l s='Iniciar Sesion' mod='blockuserinfo'}</a>
										</li>
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" data-toggle="modal" data-target="#ms-account-modal"><i class="fa fa-user-plus" aria-hidden="true"></i> {l s='Registrate' mod='blockuserinfo'}</a>
										</li>
											{/if}
										{if $is_logged}
										<li>
											<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow">
	                    <i class="fa fa-pencil" aria-hidden="true"></i>{l s='My account' mod='blockuserinfo'} Editar Perfil</a>
										</li>
										<li>
											<a href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" ><i class="fa fa-user" aria-hidden="true"></i>
												{l s='Deslogear' mod='blockuserinfo'}</a>
										</li>
										{/if}
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)" class="animated fadeIn animation-delay-2" title="Tus Favoritos"><i class="fa fa-heart-o fa-lg color-danger" aria-hidden="true"></i></a>
								</li>
								<li>
									<a href="javascript:void(0)" class="animated fadeIn animation-delay-2" title="Tus Compras"><i class="fa fa-shopping-cart fa-lg color-success" aria-hidden="true"></i><span class="badge">7</span></a>

								</li>
								<!-- <li class="btn-navbar-menu"><a href="javascript:void(0)" class="sb-toggle-left"><i class="zmdi zmdi-menu"></i></a></li> -->
							</ul>
						</div>
						<!-- navbar-collapse collapse -->
						<a href="javascript:void(0)" class="sb-toggle-left btn-navbar-menu visible-xs">
							<i class="zmdi zmdi-menu"></i>
						</a>
					</div>
					<!-- container -->
				</nav>
				<!-- ******************************
			    MENU PARA MOVILES
			    ******************************* -->
			    <div class="ms-slidebar sb-slidebar sb-left sb-momentum-scrolling sb-style-overlay">
			      <header class="ms-slidebar-header">
			        <div class="ms-slidebar-login">
			          <a href="javascript:void(0)" class="conripple" data-toggle="modal" data-target="#ms-account-modal">
			            <i class="fa fa-user" aria-hidden="true"></i> Ingresar</a>
			          <a href="javascript:void(0)" class="conripple" data-toggle="modal" data-target="#ms-account-modal">
			            <i class="fa fa-user-plus" aria-hidden="true"></i> Registrar</a>
			        </div>
			        <div class="ms-slidebar-title">
			          <form class="search-form">
			            <input id="search-box-slidebar" type="text" class="search-input" placeholder="Buscar..." name="q" />
			            <label for="search-box-slidebar">
			              <i class="zmdi zmdi-search"></i>
			            </label>
			          </form>
			        </div>
			      </header>
			      <ul class="ms-slidebar-menu" id="slidebar-menu" role="tablist" aria-multiselectable="true">
			        <li>
			          <a class="link" href="catalogo.html">
			            <i class="fa fa-tint fa-lg color-info-light" aria-hidden="true"></i> Tienda</a>
			        </li>
			        <li>
			          <a class="link" href="javascript:void(0)">
			            <i class="fa fa-users fa-lg color-danger-light" aria-hidden="true"></i> Nosotros</a>
			        </li>
			        <li>
			          <a class="link" href="javascript:void(0)">
			            <i class="fa fa-download fa-lg color-success-light" aria-hidden="true"></i> Preguntas y Descargas</a>
			        </li>
			        <li>
			          <a class="link" href="javascript:void(0)">
			            <i class="fa fa-superpowers fa-lg color-warning-light" aria-hidden="true"></i> Soporte</a>
			        </li>
			      </ul>
			      <div class="ms-slidebar-social ms-slidebar-block">
			        <h4 class="ms-slidebar-block-title">Social Links</h4>
			        <div class="ms-slidebar-social">

			          <a href="javascript:void(0)" class="btn-circle btn-circle-raised btn-twitter">
			            <i class="zmdi zmdi-twitter"></i>
			            <div class="ripple-container"></div>
			          </a>

			          <a href="javascript:void(0)" class="btn-circle btn-circle-raised btn-youtube">
			            <i class="zmdi zmdi-youtube"></i>
			            <div class="ripple-container"></div>
			          </a>

			          <a href="javascript:void(0)" class="btn-circle btn-circle-raised btn-instagram">
			            <i class="zmdi zmdi-instagram"></i>
			            <div class="ripple-container"></div>
			          </a>

			        </div>
			      </div>
			    </div>
			    <!-- /. Menu para moviles -->
	<!--/ Menu -->

{/if}
