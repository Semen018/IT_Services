<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Редактировать пользователя</h1>
            </div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <form role="form" id="update_user">
                    <fieldset class="uk-fieldset">

                        <legend class="uk-legend">Редактировать пользователя</legend>

                        <input type="hidden" value="<?= $context['data'][0]['id'] ?>" name="id">
                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="login" placeholder="Логин" value="<?= $context['data'][0]['login'] ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="mail" name="mail" placeholder="Почта" value="<?= urldecode($context['data'][0]['mail']) ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="tel" placeholder="Телефон" value="<?= $context['data'][0]['tel'] ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="fio" placeholder="ФИО" value="<?= $context['data'][0]['fio'] ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="level" placeholder="Уровень доступа" value="<?= $context['data'][0]['level'] ?>">
                        </div>

                        <div class="uk-margin">
                            <select class="uk-select" name="status">
                                <?php if ($context['data'][0]['status'] == 1) : ?>
                                    <option value="1" selected>Вкл.</option>
                                    <option value="0">Выкл.</option>
                                <?php else : ?>
                                    <option value="1">Вкл.</option>
                                    <option value="0" selected>Выкл.</option>
                                <?php endif; ?>
                            </select>
                        </div>


                        <div class="uk-margin">
                            <button type="submit" class="uk-button uk-button-primary">Обновить</button>
                            <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/edit_users">Назад</a>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>