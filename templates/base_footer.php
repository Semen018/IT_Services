<!-- Footer -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-footer col-md-6 col-xs-6">
                <h3>Навигация</h3>
                <ul class="no-list-style footer-navigate-section">
                    <li><a href="index.php">Главная</a></li>
                    <li><a href="index.php/about">О компании</a></li>
                    <li><a href="page-products-3-columns.html">IT Услуги</a></li>
                    <li><a href="index.php/articles">Статьи</a></li>
                    <li><a href="index.php/contacts">Контакты</a></li>
                </ul>
            </div>

            <div class="col-footer col-md-6 col-xs-6">
                <?php
                $c = new models\Contacts();
                $d = $c->get_contacts();
                ?>
                <h3>Контакты</h3>
                <p class="contact-us-details">
                    <b>Адрес:</b> <?php if (isset($d['data'][0]['address'])) echo $d['data'][0]['address']; ?><br />
                    <b>Телефон:</b> <?php if (isset($d['data'][0]['tel'])) echo $d['data'][0]['tel']; ?><br />
                    <b>Email:</b> <?php if (isset($d['data'][0]['mail'])) echo $d['data'][0]['mail']; ?><br />
                    <b>Skype:</b> <?php if (isset($d['data'][0]['skype'])) echo $d['data'][0]['skype']; ?>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="footer-copyright">&copy; 2019 ServiceIT</div>
            </div>
        </div>
    </div>
</div>