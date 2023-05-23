<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Редактировать статью</h1>
            </div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <form role="form" id="update_article">
                    <fieldset class="uk-fieldset">

                        <legend class="uk-legend">Редактировать статью</legend>

                        <input type="hidden" value="<?=$context['data'][0]['id']?>" name="id">
                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="name" placeholder="Название" value="<?= $context['data'][0]['name'] ?>">
                        </div>

                        <div class="uk-margin">
                            <select class="uk-select" name="status">
                                <?php if ($context['data'][0]['status'] == 1) : ?>
                                    <option value="1" selected>Опубликовано</option>
                                    <option value="0">Черновик</option>
                                <?php else : ?>
                                    <option value="1">Опубликовано</option>
                                    <option value="0" selected>Черновик</option>
                                <?php endif; ?>
                            </select>
                        </div>

                        <div class="uk-margin">
                            <textarea class="uk-textarea" rows="10" placeholder="Текст статьи" name="article_text"><?=$context['data'][0]['article_text'] ?></textarea>
                        </div>

                        <div class="uk-margin">
                            <button type="submit" class="uk-button uk-button-primary">Обновить</button>
                            <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/edit_articles">Назад</a>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>