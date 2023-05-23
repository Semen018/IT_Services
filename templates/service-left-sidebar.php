<!-- Page Title -->
<div class="section section-breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1><?= $context['main']['data'][0]['name'] ?></h1>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="container">
		<div class="row">
			<!-- Sidebar -->
			<div class="col-sm-4 blog-sidebar">
				<h4>Недавние статьи</h4>
				<ul class="recent-posts">
					<?php for ($i = 0; $i < count($context['recent_articles']['data']); $i++) : ?>
						<li><a href="http://localhost/it_services/index.php/read/<?= $context['recent_articles']['data'][$i]['id'] ?>"><?= $context['recent_articles']['data'][$i]['name'] ?></a></li>
					<?php endfor; ?>
				</ul>
			</div>
			<!-- End Sidebar -->
			<div class="col-sm-8">
				<div class="blog-post blog-single-post">
					<div class="single-post-title">
						<h3><?= $context['main']['data'][0]['name'] ?></h3>
					</div>
					<div class="single-post-info">
						₽ <?= number_format($context['main']['data'][0]['price'], 2, '.', '') ?>
					</div>
					<div class="single-post-content">
						<p><?= $context['main']['data'][0]['description'] ?></p>
					</div>
					<p uk-margin>
						<?php if (isset($_SESSION['sid'])) : ?>
							<button class="uk-button uk-button-primary" id="add_service" value="<?= $context['main']['data'][0]['id'] ?>">Добавить</button>
						<?php endif; ?>
					</p>
				</div>
			</div>
			<!-- End Blog Post -->
		</div>
	</div>
</div>