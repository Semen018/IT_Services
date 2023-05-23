<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Мои заявки</h1>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- форма создания новой заявки -->

                <?php if (isset($context['services'])) : ?>
                    <fieldset>
                        <legend>Форма создания новой заявки</legend>
                        <?php $approximate_price = 0; ?>
                        <table class="uk-table uk-table-striped">
                            <thead>
                                <tr>
                                    <th>Название</th>
                                    <th>Тип</th>
                                    <th>Цена</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php for ($i = 0; $i < count($context['services']); $i++) : ?>
                                    <tr>
                                        <?php for ($j = 0; $j < count($context['services'][$i]['data']); $j++) : ?>
                                            <td> <?= $context['services'][$i]['data'][$j]['name'] ?></td>
                                            <td><?= $context['services'][$i]['data'][$j]['s_type'] ?></td>
                                            <td><?= number_format($context['services'][$i]['data'][$j]['price'], 2, '.', '') ?></td>
                                            <td> <a href="http://localhost/it_services/index.php/delete_service_from_request/<?= $context['services'][$i]['data'][$j]['id'] ?>" uk-icon="icon: trash"></a></td>
                                            <?php $approximate_price += $context['services'][$i]['data'][$j]['price']; ?>
                                        <?php endfor; ?>
                                    </tr>
                                <?php endfor; ?>
                            </tbody>
                        </table>
                        <dt>Приблизительная цена: <?= number_format($approximate_price, 2, '.', '') ?>₽</dt>
                        </dl>
                        <form method="POST" role="form">
                            <input type="hidden" name="method" value="create_new_request">
                            <input type="hidden" name="approximate_price" value="<?= $approximate_price ?>">
                            <div class="uk-margin">
                                <input class="uk-input" type="text" name="comment" id="comment" style="width: 40%;" placeholder="Комментарий">
                            </div>
                            <div class="uk-margin">
                                <button type="submit" class="uk-button uk-button-primary">Создать заявку</button>
                            </div>
                        </form>
                    </fieldset>
                <?php endif; ?>

                <br><br>

                <fieldset>
                    <legend>Предыдущие заявки</legend>
                    <div id="table-area" class="uk-overflow-auto">
                        <table id="requests" class="uk-table uk-table-striped uk-table-hover" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Дата заявки</th>
                                    <th>Комментарий</th>
                                    <th>Приблизительная общая цена</th>
                                    <th>Название услуги</th>
                                    <th>Статус заявки</th>
                                    <th>ФИО</th>
                                    <th>Почта</th>
                                    <th>Логин</th>
                                    <?php if ($_SESSION['sid'][0][0]['level'] == 2) echo '<th></th>'; ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (isset($context['main']['data'])) : ?>
                                    <?php for ($i = 0; $i < count($context['main']['data']); $i++) : ?>
                                        <tr>
                                            <td><?= $i + 1 ?></td>
                                            <td><?= $context['main']['data'][$i]['request_date'] ?></td>
                                            <td><?= $context['main']['data'][$i]['comment'] ?></td>
                                            <td><?= number_format($context['main']['data'][$i]['approximate_price'], '2', '.', '') ?></td>
                                            <td><?= $context['main']['data'][$i]['name'] ?></td>
                                            <td><?= $context['main']['data'][$i]['status'] ?></td>
                                            <td>
                                                <?php
                                                        echo isset($context['main']['data'][$i]['fio']) ? $context['main']['data'][$i]['fio'] : $_SESSION['sid'][0][0]['fio'];
                                                        ?>
                                            </td>
                                            <td>
                                                <?php
                                                        echo isset($context['main']['data'][$i]['mail']) ? $context['main']['data'][$i]['mail'] : $_SESSION['sid'][0][0]['mail'];
                                                        ?>
                                            </td>
                                            <td>
                                                <?php
                                                        echo isset($context['main']['data'][$i]['login']) ? $context['main']['data'][$i]['login'] : $_SESSION['sid'][0][0]['login'];
                                                        ?>
                                            </td>
                                            <?php if ($_SESSION['sid'][0][0]['level'] == 2) : ?>
                                                <td><button class="btn" value="<?= $context['main']['data'][$i]['id']?>" id="change_status">Смена статуса</button></td>
                                            <?php endif; ?>
                                        </tr>
                                    <?php endfor; ?>
                                <?php endif; ?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>#</th>
                                    <th>Дата заявки</th>
                                    <th>Комментарий</th>
                                    <th>Приблизительная общая цена</th>
                                    <th>Название услуги</th>
                                    <th>Статус заявки</th>
                                    <th>ФИО</th>
                                    <th>Почта</th>
                                    <th>Логин</th>
                                    <?php if ($_SESSION['sid'][0][0]['level'] == 2) echo '<th></th>'; ?>
                                </tr>
                            </tfoot>
                        </table>
                </fieldset>

                <p uk-margin>
                    <a class="uk-button uk-button-secondary" href="http://localhost/it_services/index.php/lk">Назад</a>
                </p>
            </div>
        </div>
    </div>
</div>
</div>