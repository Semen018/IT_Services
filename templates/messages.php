<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Сообщения пользователей</h1>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="table-area" class="uk-overflow-auto">
                    <table id="messages_table" class="uk-table uk-table-striped uk-table-hover" style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Логин пользователя</th>
                                <th>Почта пользователя</th>
                                <th>Телефон</th>
                                <th>ФИО</th>
                                <th>Текст</th>
                                <th>Дата</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php for ($i = 0; $i < count($context['data']); $i++) : ?>
                                <tr>
                                    <td><?= $i + 1 ?></td>
                                    <td><?= $context['data'][$i]['login'] ?></td>
                                    <td><?= $context['data'][$i]['mail'] ?></td>
                                    <td><?= $context['data'][$i]['tel'] ?></td>
                                    <td><?= $context['data'][$i]['fio'] ?></td>
                                    <td><?= strip_tags($context['data'][$i]['feedback_text']) ?></td>
                                    <td><?= $context['data'][$i]['create_date'] ?></td>
                                </tr>
                            <?php endfor; ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>#</th>
                                <th>Логин пользователя</th>
                                <th>Почта пользователя</th>
                                <th>Телефон</th>
                                <th>ФИО</th>
                                <th>Текст</th>
                                <th>Дата</th>
                            </tr>
                        </tfoot>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>