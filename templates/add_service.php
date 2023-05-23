<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Новая услуга</h1>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <form role="form" id="add_service">
                    <fieldset class="uk-fieldset">

                        <legend class="uk-legend">Добавить услугу</legend>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="name" placeholder="Название">
                        </div>

                        <div class="uk-margin">
                            <select class="uk-select" name="id_type">
                                <?php for ($i = 0; $i < count($context['data']); $i++) : ?>
                                    <option value="<?= $context['data'][$i]['id'] ?>"><?= $context['data'][$i]['name'] ?></option>
                                <?php endfor; ?>
                            </select>
                        </div>

                        <div class="uk-margin">
                            <textarea class="uk-textarea" rows="10" placeholder="Описание" name="description"></textarea>
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="price" placeholder="Цена">
                        </div>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="note" placeholder="Примечание">
                        </div>

                        <div class="uk-margin">
                            <button type="submit" class="uk-button uk-button-primary">Сохранить</button>
                            <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/edit_services">Назад</a>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>