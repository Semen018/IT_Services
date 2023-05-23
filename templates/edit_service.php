<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Редактировать услугу</h1>
            </div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <form role="form" id="update_service">
                    <fieldset class="uk-fieldset">

                        <legend class="uk-legend">Редактировать услугу</legend>

                        <input type="hidden" value="<?= $context['main']['data'][0]['id'] ?>" name="id">
                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="name" placeholder="Название" value="<?= $context['main']['data'][0]['name'] ?>">
                        </div>
                        <div class="uk-margin">
                            <select class="uk-select" name="id_type">
                                <?php for ($i = 0; $i < count($context['types']['data']); $i++) : ?>
                                    <?php if ($context['types']['data'][$i]['name'] == $context['main']['data'][0]['s_type']) : ?>
                                        <option value="<?= $context['types']['data'][$i]['id'] ?>" selected><?= $context['types']['data'][$i]['name'] ?></option>
                                    <?php else : ?>
                                        <option value="<?= $context['types']['data'][$i]['id'] ?>"><?= $context['types']['data'][$i]['name'] ?></option>
                                    <?php endif; ?>
                                <?php endfor; ?>
                            </select>
                        </div>

                        <div class="uk-margin">
                            <textarea class="uk-textarea" rows="10" placeholder="Описание" name="description"><?= $context['main']['data'][0]['description'] ?></textarea>
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="price" placeholder="Цена" value="<?= $context['main']['data'][0]['price'] ?>">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="note" placeholder="Примечание" value="<?= $context['main']['data'][0]['note'] ?>">
                        </div>

                        <div class="uk-margin">
                            <button type="submit" class="uk-button uk-button-primary">Обновить</button>
                            <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/edit_services">Назад</a>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>