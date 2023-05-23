<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Статьи</h1>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <form id="confirmDelete">
                    <fieldset class="uk-fieldset">
                        <legend class="uk-legend">Подтвердите удаление</legend>
                        <p uk-margin>
                            <a href="http://localhost/it_services/index.php/confirm/<?=$context[0]?>/<?=$context[1]?>/<?=$context[2]?>/<?=$context[3]?>"  class="uk-button uk-button-danger">Подтвердить</a>
                            <a href="" id='cancel'  class="uk-button uk-button-primary">Отменить</a>
                        </p>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>