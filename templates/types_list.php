<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Типы услуг</h1>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="table-area" class="uk-overflow-auto">
                    <table id="types_list" class="uk-table uk-table-striped uk-table-hover" style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Название</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php for ($i = 0; $i < count($context['data']); $i++) : ?>
                                <tr>
                                    <td><?= $i + 1 ?></td>
                                    <td><?= urldecode($context['data'][$i]['name']) ?></td>
                                    <td>
                                        <a href="http://localhost/it_services/index.php/edit_type/<?= $context['data'][$i]['id'] ?>" uk-icon="icon: pencil"></a>
                                    </td>
                                    <td>
                                        <a href="http://localhost/it_services/index.php/delete_type/<?= $context['data'][$i]['id'] ?>" uk-icon="icon: trash"></a>
                                    </td>
                                </tr>
                            <?php endfor; ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>#</th>
                                <th>Название</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </tfoot>
                    </table>

                    <p uk-margin>
                        <a class="uk-button uk-button-primary" href="http://localhost/it_services/index.php/add_type">Добавить новый</a>
                        <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/lk">Назад</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>