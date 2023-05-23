<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Редактировать контактную информацию</h1>
            </div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <form role="form" id="update_contacts">
                    <fieldset class="uk-fieldset">

                        <legend class="uk-legend">Редактировать контактную информацию</legend>
                        <?php $f = false; ?>
                        <?php if (count($context['data']) > 0) : ?>
                            <input type="hidden" value="<?= $context['data'][0]['id'] ?>" name="id">
                            <?php $f = true; ?>
                        <?php endif; ?>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="tel" placeholder="Телефон" value="<?php if ($f) echo $context['data'][0]['tel']; ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="mail" name="mail" placeholder="Почта" value="<?php if ($f) echo urldecode($context['data'][0]['mail']); ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="about" placeholder="Информация" value="<?php if ($f) echo urldecode($context['data'][0]['about']); ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="address" placeholder="Адрес" value="<?php if ($f) echo urldecode($context['data'][0]['address']); ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="skype" placeholder="Skype" value="<?php if ($f) echo $context['data'][0]['skype'] ?>">
                        </div>


                        <div class="uk-margin">
                            <button type="submit" class="uk-button uk-button-primary"><?php if (count($context['data']) == 0) echo 'Сохранить';
                                                                                        else echo 'Обновить'; ?></button>
                            <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/lk">Назад</a>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>