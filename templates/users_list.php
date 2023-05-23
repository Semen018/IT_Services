<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Пользователи</h1>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="table-area" class="uk-overflow-auto">
                    <table id="users_list" class="uk-table uk-table-striped uk-table-hover" style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Почта</th>
                                <th>Логин</th>
                                <th>ФИО</th>
                                <th>Телефон</th>
                                <th>Уровень доступа</th>
                                <th>Статус</th>
                                <th>Дата регистрации</th>
                                <th>Дата обновления</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php for ($i = 0; $i < count($context['data']); $i++) : ?>
                                <tr>
                                    <td><?= $i + 1 ?></td>
                                    <td><?= urldecode($context['data'][$i]['mail']) ?></td>
                                    <td><?= $context['data'][$i]['login'] ?></td>
                                    <td><?= $context['data'][$i]['fio'] ?></td>
                                    <td><?= $context['data'][$i]['tel'] ?></td>
                                    <td><?= $context['data'][$i]['level'] ?></td>
                                    <td><?= $context['data'][$i]['status'] ?></td>
                                    <td><?= $context['data'][$i]['date_reg'] ?></td>
                                    <td><?= $context['data'][$i]['update_date'] ?></td>
                                    <td>
                                        <a href="http://localhost/it_services/index.php/edit_user/<?= $context['data'][$i]['id'] ?>" uk-icon="icon: pencil"></a>
                                    </td>
                                    <td>
                                        <a href="http://localhost/it_services/index.php/delete_user/<?= $context['data'][$i]['id'] ?>" uk-icon="icon: trash"></a>
                                    </td>
                                </tr>
                            <?php endfor; ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>#</th>
                                <th>Почта</th>
                                <th>Логин</th>
                                <th>ФИО</th>
                                <th>Телефон</th>
                                <th>Уровень доступа</th>
                                <th>Статус</th>
                                <th>Дата регистрации</th>
                                <th>Дата обновления</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </tfoot>
                    </table>

                    <p uk-margin>
                        <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/lk">Назад</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>