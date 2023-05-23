<!-- Page Title -->
<div class="section section-breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h1>Панель администратора</h1>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<ul class="uk-list uk-list-striped">
					<?php if ($_SESSION['sid'][0][0]['level'] == 4) : ?>
						<li><a href="http://localhost/it_services/index.php/edit_articles" class="uk-link-muted">Редактировать статьи</a></li>
						<li><a href="http://localhost/it_services/index.php/edit_users" class="uk-link-muted">Редактировать пользователей</a></li>
						<li><a href="http://localhost/it_services/index.php/edit_services" class="uk-link-muted">Список услуг</a></li>
						<li><a href="http://localhost/it_services/index.php/edit_contacts" class="uk-link-muted">Редактировать контактную информацию</a></li>
					<?php endif; ?>
					<?php if ($_SESSION['sid'][0][0]['level'] == 2) : ?>
						<li><a href="http://localhost/it_services/index.php/requests" class="uk-link-muted">Заявки</a></li>
						<li><a href="http://localhost/it_services/index.php/messages" class="uk-link-muted">Обратная связь</a></li>
						<li><a href="http://localhost/it_services/index.php/profile_edit" class="uk-link-muted">Управление профилем</a></li>
					<?php endif; ?>
					<?php if ($_SESSION['sid'][0][0]['level'] == 1) : ?>
						<li><a href="http://localhost/it_services/index.php/requests" class="uk-link-muted">Мои заявки</a></li>
						<li><a href="http://localhost/it_services/index.php/profile_edit" class="uk-link-muted">Управление профилем</a></li>
					<?php endif; ?>
				</ul>
			</div>
		</div>
	</div>
</div>