<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Услуги компании</h1>
            </div>
        </div>
    </div>
</div>

<!-- Posts List -->
<div class="section blog-posts-wrapper">
    <div class="container">
        <div class="row">
            <!-- Post -->
            <!-- service_types -->
            <?php if (count($context['service']['data']) > 0) : ?>
                <?php for ($i = 0; $i < count($context['service_types']['data']); $i++) : ?>
                    <div>
                        <h4><?= $context['service_types']['data'][$i]['name'] ?></h4>
                        <?php for ($j = 0; $j < count($context['service']['data']); $j++) : ?>
                            <?php if ($context['service_types']['data'][$i]['name'] == $context['service']['data'][$j]['s_type']) : ?>
                                <ul>
                                    <li><a href="http://localhost/it_services/index.php/service/<?= $context['service']['data'][$j]['id'] ?>"><?= $context['service']['data'][$j]['name'] ?></a></li>
                                </ul>
                            <?php endif; ?>
                        <?php endfor; ?>
                    </div>
                <?php endfor; ?>
            <?php endif; ?>
        </div>
    </div>
</div>
<!-- End Posts List -->