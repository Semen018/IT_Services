<!-- Navigation & Logo-->
<div class="mainmenu-wrapper">
    <div class="container">
        <div class="menuextras">
            <div class="extras">
                <ul>
                    <?php

                    use models\ServiceType;

                    if (isset($_SESSION['sid'])) : ?>
                        <li><a href="http://localhost/it_services/index.php/lk"><?= $_SESSION['sid'][0][0]['login'] ?><span uk-icon="user"></span></a>
                            <?php if (isset($_SESSION['sid']['services'])) : ?>
                                <span class="uk-badge"><?= count($_SESSION['sid']['services']) ?></span>
                            <?php endif; ?>
                        </li>
                        <li><a href="http://localhost/it_services/index.php/logout">Выйти<span uk-icon="sign-out"></span></a></li>
                    <?php else :  ?>
                        <li><a href="http://localhost/it_services/index.php/login">Войти<span uk-icon="sign-in"></span></a></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
        <nav id="mainmenu" class="mainmenu">
            <ul>
                <li class="logo-wrapper"><a href="http://localhost/it_services/index.php" style="font-weight: bold;"><img src="http://localhost/it_services/static/img/75686-200.png" style="width=200px; height: 40px;" alt="Multipurpose Twitter Bootstrap Template">ServiseIT</a></li>
                <li class="active">
                    <a href="http://localhost/it_services/index.php">Главная</a>
                </li>
                <li>
                    <a href="http://localhost/it_services/index.php/about">О компании</a>
                </li>
                <li class="has-submenu">
                    <a href="#">IT Услуги +</a>
                    <div class="mainmenu-submenu">
                        <div class="mainmenu-submenu-inner">
                            <?php
                            $st = new models\ServiceType();
                            $sr = new models\Service();
                            $types = $st->get_types();
                            $srvcs = $sr->get_services();
                            for ($i = 0; $i < count($types['data']); $i++) : ?>
                                <div>
                                    <h4><?= $types['data'][$i]['name'] ?></h4>
                                    <?php for ($j = 0; $j < count($srvcs['data']); $j++) : ?>
                                        <?php if ($types['data'][$i]['name'] == $srvcs['data'][$j]['s_type']) : ?>
                                            <ul>
                                                <li><a href="http://localhost/it_services/index.php/service/<?= $srvcs['data'][$j]['id'] ?>"><?= $srvcs['data'][$j]['name'] ?></a></li>
                                            </ul>
                                        <?php endif; ?>
                                    <?php endfor; ?>
                                </div>
                            <?php endfor; ?>
                        </div><!-- /mainmenu-submenu-inner -->
                    </div><!-- /mainmenu-submenu -->
                </li>
                <li>
                    <a href="http://localhost/it_services/index.php/articles">Статьи</a>
                </li>
                <li>
                    <a href="http://localhost/it_services/index.php/contacts">Контакты</a>
                </li>
            </ul>
        </nav>
    </div>
</div>