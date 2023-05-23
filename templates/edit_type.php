<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Редактировать тип услуги</h1>
            </div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <form role="form" id="update_type">
                    <fieldset class="uk-fieldset">

                        <legend class="uk-legend">Редактировать тип услуги</legend>

                        <input type="hidden" value="<?= $context['data'][0]['id'] ?>" name="id">
                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="name" placeholder="Название" value="<?= $context['data'][0]['name'] ?>">
                        </div>

                        <div class="uk-margin">
                            <button type="submit" class="uk-button uk-button-primary">Обновить</button>
                            <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/types">Назад</a>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>