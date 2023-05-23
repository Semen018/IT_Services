<!-- Homepage Slider -->
<div class="homepage-slider">
    <div id="sequence">
        <ul class="sequence-canvas">
            <!-- Slide 1 -->
            <li class="bg4">
                <!-- Slide Title -->
                <h2 class="title">IT - решения для бизнеса</h2>
                <!-- Slide Image -->
                <img class="slide-img" src="static/img/homepage-slider/slide1.png" alt="Slide 1" />
            </li>
            <!-- End Slide 1 -->
            <!-- Slide 2 -->
            <li class="bg3">
                <!-- Slide Title -->
                <h2 class="title">Качественный IT-аутсорсинг</h2>
                <!-- Slide Image -->
                <img class="slide-img" src="static/img/homepage-slider/slide3.png" alt="Slide 3" />
            </li>
            <!-- End Slide 2 -->
            <!-- Slide 3 -->
            <li class="bg1">
                <!-- Slide Title -->
                <h2 class="title">IT - аудит</h2>
                <!-- Slide Image -->
                <img class="slide-img" src="static/img/homepage-slider/slide1.png" alt="Slide 1" />
            </li>
            <!-- End Slide 3 -->
        </ul>
        <div class="sequence-pagination-wrapper">
            <ul class="sequence-pagination">
                <li>1</li>
                <li>2</li>
                <li>3</li>
            </ul>
        </div>
    </div>
</div>
<!-- End Homepage Slider -->

<!-- Pricing Table -->
<div class="section">
    <div class="container">
        <h2>Цены</h2>
        <div class="row">
            <!-- Pricing Plans Wrapper -->
            <div class="pricing-wrapper col-md-12">
                <!-- Pricing Plan -->
                <div class="pricing-plan" style="min-height: 340px;">
                    <!-- Pricing Plan Ribbon -->
                    <h2 class="pricing-plan-title"><?= $context['data'][0]['name'] ?></h2>
                    <p class="pricing-plan-price">₽<?= number_format($context['data'][0]['price'], 1, '.', '') ?></p>
                    <!-- Pricing Plan Features -->
                    <ul class="pricing-plan-features">
                        <li><strong><?= $context['data'][0]['s_type'] ?></strong></li>
                    </ul>
                    <button class="btn" id="add_service" value="<?= $context['data'][0]['id'] ?>">Добавить</button>
                </div>
                <!-- End Pricing Plan -->
                <div class="pricing-plan" style="min-height: 340px;">
                    <h2 class="pricing-plan-title"><?= $context['data'][1]['name'] ?></h2>
                    <p class="pricing-plan-price">₽<?= number_format($context['data'][1]['price'], 1, '.', '') ?></p>
                    <ul class="pricing-plan-features">
                        <li><strong><?= $context['data'][1]['s_type'] ?></strong></li>
                    </ul>
                    <button class="btn" id="add_service" value="<?= $context['data'][1]['id'] ?>">Добавить</button>
                </div>
                <!-- Promoted Pricing Plan -->
                <div class="pricing-plan pricing-plan-promote" style="min-height: 390px;">
                    <h2 class="pricing-plan-title"><?= $context['data'][2]['name'] ?></h2>
                    <p class="pricing-plan-price">₽<?= number_format($context['data'][0]['price'], 2, '.', '') ?></p>
                    <ul class="pricing-plan-features">
                        <li><strong><?= $context['data'][2]['s_type'] ?></strong></li>
                    </ul>
                    <button class="btn" id="add_service" value="<?= $context['data'][2]['id'] ?>">Добавить</button>
                </div>
                <div class="pricing-plan" style="min-height: 340px;">
                    <!-- Pricing Plan Ribbon -->
                    <h2 class="pricing-plan-title"><?= $context['data'][3]['name'] ?></h2>
                    <p class="pricing-plan-price">₽<?= number_format($context['data'][3]['price'], 1, '.', '') ?></p>
                    <ul class="pricing-plan-features">
                        <li><strong><?= $context['data'][3]['s_type'] ?></strong></li>
                    </ul>
                    <button class="btn" id="add_service" value="<?= $context['data'][3]['id'] ?>">Добавить</button>
                </div>
            </div>
            <!-- End Pricing Plans Wrapper -->
        </div>
    </div>
</div>
<!-- End Pricing Table -->

<!-- рассчет стоимости -->
<?php
$srvcs_object = new models\Service();
$srvcs = $srvcs_object->get_services();
$srvcs_type_object = new models\ServiceType();
$srvcs_type = $srvcs_type_object->get_types();
?>
<div class="section">
    <div class="container">
        <h2>Рассчет стоимости</h2>
        <div class="row">
            <div class="col-sm-8">
                <form role="form" id="calculator">
                    <div style='margin-left: auto; margin-right: auto;'>
                        <div class="uk-margin">
                            <select class="uk-select" name="id_type" id="calc_services">
                                <?php for ($j = 0; $j < count($srvcs_type['data']); $j++) : ?>
                                    <option disabled style="background-color: lightgray; font-weight: bold;"><?= $srvcs_type['data'][$j]['name'] ?></option>
                                    <?php for ($i = 0; $i < count($srvcs['data']); $i++) : ?>
                                        <?php if ($srvcs_type['data'][$j]['name'] == $srvcs['data'][$i]['s_type']) : ?>
                                            <option value="<?= $srvcs['data'][$i]['id'] ?>"><?= $srvcs['data'][$i]['name'] ?></option>
                                        <?php endif; ?>
                                    <?php endfor; ?>
                                <?php endfor; ?>
                            </select>
                        </div>


                        <div class="uk-margin">
                            <button type="submit" class="uk-button uk-button-secondary" id="calc_add_service">Добавить услугу</button>
                        </div>
                    </div>
                    <div class="uk-child-width-1-3@m uk-grid-small uk-grid-match" uk-grid id="clac_result_list"></div>
                    <div id="clac_total_price"></div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Services -->
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="service-wrapper">
                    <img src="static/img/service-icon/diamond.png" alt="Service 1">
                    <h3>Cтатьи</h3>
                    <p>Будем рады, если наши статьи ответят на ваши вопросы.</p>
                    <a href="http://localhost/it_services/index.php/articles" class="btn">Смотреть</a>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="service-wrapper">
                    <img src="static/img/service-icon/ruler.png" alt="Service 2">
                    <h3>Услуги</h3>
                    <p>Компания «ServiceIT» профессиональный поставщик IT услуг</p>
                    <a href="http://localhost/it_services/index.php/it_services" class="btn">Смотреть</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Services -->