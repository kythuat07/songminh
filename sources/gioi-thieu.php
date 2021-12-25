<?php
    $arrCategory = $d->simple_fetch("select * from #_category where hien_thi = 1 and alias_{$lang} = '$com'");
    $arrImages  = $d->getImg(1176);
    $arrPartners  = $d->getImg(1179);
    $arrManger  = $d->getImg(1180);
    $arrWe = $d->getTemplates(58);
    $arrOrganization = $d->getTemplates(59);
?>
    <section id="mainContentChild">
        <div class="content-header ">
            <div class="container">
                <div class="row">
                    <h1 class="title">Giới thiệu</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="index.html">
                                <span property="name">Trang chủ</span>
                            </a>
                        </li>
                        <li>
                            <a class="active" href="gioi-thieu.html">
                                <span property="name">Giới thiệu</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="sub-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="content col-text" style="min-height: 490px;">
                            <h2 class="title wow fadeInUp" data-wow-duration="2s" data-wow-delay="0s">SƠ LƯỢC VỀ CHÚNG TÔI</h2>
                            <div class="text">
                                <?= $arrCategory['mo_ta_vn'] ?>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class="block-gt col-text" style="min-height: 365px;">
                            <div class="img-video">
                                <img style="width: 100%;" src="<?= URLPATH.'img_data/images/'.$arrCategory['hinh_anh'] ?>" alt="Our floors are designed to last a lifetime">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sub-detail">
            <div class="container">
                <div class="section-content">
                    <div class="row number-block-one-outer justify-content-center">
                        <?php foreach ($arrImages as $key => $value) { ?>
                            
                            <div class="col-lg-4 col-md-6 col-sm-6 mb-3">
                                <div class="number-block-one animate-in-to-top">
                                    <img src="<?= URLPATH.'img_data/images/'.$value['picture'] ?>" alt="<?= $value['title_vn'] ?>">
                                    <div class="figcaption bg-white text-center p-a20">
                                        <p class="m-a0"><?= $value['body_vn'] ?></p>
                                    </div>
                                    <div class="figcaption-number text-center sx-text-primary animate-in-to-top-content">
                                        <span class="wow heartBeat" data-wow-duration="3s" data-wow-delay="0s" data-wow-iteration="1000"><?= $value['title_vn'] ?></span>
                                    </div>
                                </div>
                            </div>

                        <?php }?>
                    </div>
                </div>
            </div>
        </div>
        <div id="inWE" class="padding-20">
            <div class="container-fluid">
                <div class="row">
                    <div class="parallax" data-url="parallax-intro.jpg" data-speed="0.8" data-direction="normal" data-mobile="true" data-blur="false">
                        <div class="parallax_image parallax-maintop"></div>
                        <div class="parallax-content">
                            <div class="parallax-row visible-first">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-7"></div>
                                        <div class="col-md-5">
                                            <div class="home-article pull-right">
                                                
                                                <div class="item-module visible-first">
                                                    <div class="item-introtext">
                                                        <div class="">
                                                            <h2 class="title wow fadeInUp" data-wow-duration="2s" data-wow-delay="0s">
                                                            <?= $arrWe['ten_vn']; ?>
                                                            </h2>
                                                            <div class="feature-content-col">
                                                                <article class="item item-module visible-first">
                                                                    <div class="item-content">
                                                                        <div class="item-introtext">
                                                                            <?= $arrWe['noi_dung_vn']; ?>
                                                                        </div>
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                                </article>
                                                                <div class="clearfix"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>				
                        </div>

                    </div>
                </div>
            </div>
        </div>
    <div id="mainteam">
        <div class="container py-4">
            <h2 class="title wow fadeInUp" data-wow-duration="2s" data-wow-delay="0s">
                Đội ngũ giám đốc
            </h2>
            <div class="row">
                <?php foreach ($arrManger as $key => $value) : ?>
                <div class="col-md-6 mainteam-child py-3">
                    <div class="row">
                        <div class="col-md-5">
                            <img src="<?= URLPATH.'img_data/images/'.$value['picture'] ?>" alt="<?=  $value['ten_vn'] ?>">
                        </div>
                        <div class="item-content col-md-7 py-3">
                            <h3 class="item-title visible-first">
                                <?=  $value['title_vn'] ?>
                            </h3>
                            <div class="item-introtext">
                                <?=  $value['body_vn'] ?>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
    <div id="organization" class="py-5">
        <div class="container">
            <div class="about-organization col-md-4">
                <h2 class="title wow fadeInUp" data-wow-duration="2s" data-wow-delay="0s"><?=  $arrOrganization['ten_vn'] ?></h2>
                <p> <?=  $arrOrganization['noi_dung_vn'] ?></p>
            </div>
            <img  src="<?= URLPATH.'img_data/images/'.$arrOrganization['hinh_anh'] ?>" alt="" srcset="">
        </div>
    </div>
    <div id="partners">
        <div class="container mt-3">
            <div class="title my-5 wow fadeInUp" data-wow-duration="2s" data-wow-delay="0s">
                <h2>Đối tác của chúng tôi</h2>
            </div>
            <div class="customer-logos slider">
                <?php foreach ($arrPartners as $key => $value) { ?>
                    <div class="slide"><img style="height: 100%; width: auto;"  src="<?= URLPATH.'img_data/images/'.$value['picture'] ?>"></div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
    </section>