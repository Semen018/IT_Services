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
                <div id="table-area" class="uk-overflow-auto">
                    <table id="articles_list" class="uk-table uk-table-striped uk-table-hover" style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Наименование</th>
                                <th>Дата публикации</th>
                                <th>Дата обновления</th>
                                <th>Статус</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php for ($i = 0; $i < count($context['data']); $i++) : ?>
                                <tr>
                                    <td><?= $i + 1 ?></td>
                                    <td><?= $context['data'][$i]['name'] ?></td>
                                    <td><?= $context['data'][$i]['publication_date'] ?></td>
                                    <td><?= $context['data'][$i]['update_date'] ?></td>
                                    <td><?= $context['data'][$i]['status'] ?></td>
                                    <td>
                                        <a href="http://localhost/it_services/index.php/edit_article/<?= $context['data'][$i]['id'] ?>" uk-icon="icon: pencil"></a>
                                    </td>
                                    <td>
                                        <a href="http://localhost/it_services/index.php/delete_article/<?= $context['data'][$i]['id'] ?>" uk-icon="icon: trash"></a>
                                    </td>
                                </tr>
                            <?php endfor; ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>#</th>
                                <th>Наименование</th>
                                <th>Дата публикации</th>
                                <th>Дата обновления</th>
                                <th>Статус</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </tfoot>
                    </table>

                    <p uk-margin>
                        <a class="uk-button uk-button-primary" href="http://localhost/it_services/index.php/add_article">Добавить новую</a>
                        <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/lk">Назад</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>