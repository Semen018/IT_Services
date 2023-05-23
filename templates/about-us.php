<!-- Page Title -->
<div class="section section-breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>О нас</h1>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<?php
				if (isset($_SESSION['sid'][0][0]['level'])) :
					if ($_SESSION['sid'][0][0]['level'] == 4) : ?>

						<form action="">
							<label for="about_article">Выбрать статью</label>
							<select name="about_article" id="about_article">
								<?php for ($i = 0; $i < count($context['articles']['data']); $i++) : ?>
									<option value="<?= $context['articles']['data'][$i]['id'] ?>"><?= $context['articles']['data'][$i]['name'] ?></option>
								<?php endfor; ?>
							</select>
							<button type="submit" id="save_article">Сохранить</button>
						</form>

				<?php
					endif;
				endif;
				?>
				<div id="about_result">
					<?php
					if (count($context['article']['data']) > 0) {
						echo $context['article']['data'][0]['article_text'];
					}
					?>
				</div>
			</div>
		</div>
	</div>
</div>