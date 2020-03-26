<!DOCTYPE html>
<html lang="<?php echo get_html_lang(); ?>">
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <?php if ( $description = option('description')): ?>
	    	<meta name="description" content="<?php echo $description; ?>" />
	    <?php endif; ?>
	    <?php
		    if (isset($title)) {
		        $titleParts[] = strip_formatting($title);
		    }
		    $titleParts[] = option('site_title');
	    ?>
	    <title>
	    	<?php echo implode(' &middot; ', $titleParts); ?>
	    </title>
	    <?php echo auto_discovery_link_tags(); ?>
	
	    <!-- Plugin Stuff -->
	    <?php fire_plugin_hook('public_head', array('view'=>$this)); ?>
	
	    <!-- Stylesheets -->
	    <?php
		    queue_css_file(array('bootstrap', 'style'));
		    queue_css_file(array('iconfonts', 'style'));
		    queue_css_url('//fonts.googleapis.com/css?family=Montserrat:400,600&display=swap');
		    
		    echo head_css();
	    ?>
	
		<!-- JavaScripts -->
	    <?php
		    queue_js_file('vendor/modernizr');
		    queue_js_file('globals');
		    queue_js_file('main');
		    queue_js_file('vendor/bootstrap');
		    echo head_js();
	    ?>
	</head>
	<?php echo body_tag(array('id' => @$bodyid, 'class' => @$bodyclass)); ?>
	    <?php fire_plugin_hook('public_body', array('view'=>$this)); ?>
	        <header id="header" role="banner">
		        <nav class="navbar navbar-expand-lg navbar-dark">
					<a class="navbar-brand">Auseinanderbrechen</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						<?php echo public_nav_main()->setUlClass("navbar-nav ml-auto"); ?>
						
						<form id="neatline-filter" class="form-inline my-2 my-lg-0">
							<label class="switch">
								<input type="checkbox" id="toggle-waypoints" checked="checked">
								<span class="slider round"></span>
							</label>
							<span class="label">Waypoints</span>
						</form>
					</div>
				</nav>
	            <?php fire_plugin_hook('public_header', array('view'=>$this)); ?>
	        </header>
	        <main class="main">
	            <div id="content" role="main" tabindex="-1">
	                <?php fire_plugin_hook('public_content_top', array('view'=>$this)); ?>