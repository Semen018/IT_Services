<!-- Page Title -->
<div class="section section-breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>Статьи</h1>
			</div>
		</div>
	</div>
</div>

<!-- Posts List -->
<div class="section blog-posts-wrapper">
	<div class="container">
		<div class="row">
			<!-- Post -->

			<?php if (count($context['data']) > 0) : ?>
				<?php for ($i = 0; $i < count($context['data']); $i++) : ?>
					<div class="col-md-6 col-sm-6">
						<div class="blog-post">
							<!-- Post Info -->
							<div class="post-info">
								<div class="post-date">
									<div class="date"><?= $context['data'][$i]['publication_date'] ?></div>
								</div>
							</div><br>
							<!-- End Post Info -->
							<!-- Post Title & Summary -->
							<div class="post-title">
								<h3><a href="page-blog-post-right-sidebar.html"><?= $context['data'][$i]['name'] ?></a></h3>
							</div>
							<div class="post-summary">
								<p><?php echo mb_substr(strip_tags($context['data'][$i]['article_text']), 0, 199) . '...'; ?></p>
							</div>
							<!-- End Post Title & Summary -->
							<div class="post-more">
								<a href="http://localhost/it_services/index.php/read/<?= $context['data'][$i]['id'] ?>" class="btn btn-small">Читать далее</a>
							</div>
						</div>
					</div>
				<?php endfor; ?>
			<?php endif; ?>
		</div>
	</div>
</div>
<!-- End Posts List -->