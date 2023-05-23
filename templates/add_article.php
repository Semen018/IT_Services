<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Новая статья</h1>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <form role="form" id="add_article">
                    <fieldset class="uk-fieldset">

                        <legend class="uk-legend">Создать статью</legend>

                        <div class="uk-margin">
                            <input class="uk-input" type="text" name="name" placeholder="Название">
                        </div>

                        <div class="uk-margin">
                            <select class="uk-select" name="status">
                                <option value="1">Опубликовано</option>
                                <option value="0">Черновик</option>
                            </select>
                        </div>

                        <div class="uk-margin">
                            <textarea class="uk-textarea" rows="10" placeholder="Текст статьи" name="article_text"></textarea>
                        </div>

                        <div class="uk-margin">
                            <button type="submit" class="uk-button uk-button-primary">Сохранить</button>
                            <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/edit_articles">Назад</a>
                        </div>

                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>