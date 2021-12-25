<?php 
    $arrAbout = $d->getTemplates(56);
    $arrSlides  = $d->getImg(1172);
    $arrPartners  = $d->getImg(1179);
    $arrSliderForm  = $d->getImg(1183);
    $arrProducts = $d->o_fet("SELECT s.ten_vn as sten, s.hinh_anh as image, c.ten_vn as cten, s.alias_vn as alias_vn FROM db_sanpham s LEFT JOIN db_category c ON s.id_loai = c.id WHERE s.hien_thi = 1 AND s.sp_hot=1 ORDER BY s.so_thu_tu ASC, s.id DESC");
    $arrPosts = $d->o_fet("SELECT ten_vn, hinh_anh, mo_ta_vn,  alias_vn  FROM db_tintuc WHERE id_loai=1156 AND hien_thi=1 ORDER BY so_thu_tu ASC, id DESC");
?>


<section id="mainContent">

    <?php include 'module/slider.php'; ?>

        <div id="about">
            <div class="container py-5">
                <div class="row pt-3">
                    <div class="col-md-5 col-sm-12">
                        <div class="about-background">
                            <img class="wow fadeInLeft "  data-wow-duration="5s" data-wow-delay="0s" src="<?= URLPATH.'img_data/images/'.$arrAbout['hinh_anh'] ?>">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <p class="title-secondary">Đôi nét về</p>
                        <h4><?= $arrAbout['ten_vn'] ?></h4>
                        <div class="content">
                            <?= $arrAbout['noi_dung_vn'] ?>
                        </div>

                        <ul class="highlights">
                            <?php $arrClass = ['project', 'emplyee', 'collaborators' ];
                            foreach ($arrSlides as $key => $item) { ?>
                                <li class="<?= $arrClass[$key]; ?>">
                                    <img  src="<?= URLPATH.'img_data/images/'.$item['picture'] ?>">
                                    <span class="number"><?= $item['title_vn']; ?></span>
                                    <span class="text"><?= $item['body_vn']; ?></span>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="projects" class="py-5" >
            <div class="title mb-5 wow fadeInUp" data-wow-duration="2s" data-wow-delay="0s">
                <h2>Dự án triển khai</h2>
            </div>
            <div class="container">
                <div class="row">
                    <?php foreach ($arrProducts as $key => $item) { ?>
                        <div class="col-md-4 project">
                            <div class="project-background">
                                <a href="du-an/<?= $item['alias_vn']; ?>.html">
                                    <img src="<?= URLPATH.'img_data/images/'.$item['image'] ?>" alt="">
                                </a>
                                <div class="project-content">
                                    <p class="project-category"><?= $item['cten']; ?></p>
                                    <h5><a style="color: #fff;" href="du-an/<?= $item['alias_vn']; ?>.html"><?= $item['sten']; ?></a></h5>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
            <p class="more"><a href="du-an.html">XEM CHI TIẾT <img  src="<?=URLPATH?>/templates/assets/my/images/more.png" alt="Xem thêm"></a></p>
        </div>
        <div id="posts" class="py-5">
            <div class="title my-5 wow fadeInUp" data-wow-duration="2s" data-wow-delay="0s">
                <h2>Tin tức mới nhất</h2>
            </div>
            <div class="container">
                <div class="row">
                    <div id="carouselExample" class="carouselPrograms carousel slide " data-ride="carousel" data-interval="false">
                        <div class="carousel-inner carousel-inner-post row w-100 mx-auto" role="listbox">
                            <?php foreach ($arrPosts as $key => $value) :  $strActivePost = $key == 0 ? 'active':''; ?>
                            <div class="carousel-item carousel-item-post col-md-4 col-sm-12 <?= $strActivePost ?>">
                                <div class="panel panel-default">
                                    <div class="panel-thumbnail">
                                        <a href="tin-tuc/<?= $value['alias_vn']; ?>.html" title="image 8" class="thumb">
                                            <img style="height: 220px;" class="img-fluid mx-auto d-block" src="<?= URLPATH.'img_data/images/'.$value['hinh_anh'] ?>" alt="slide 7">
                                        </a>
                                        <img class="img-logo" src="<?=URLPATH?>/templates/assets/my/images/flower-bg50.png">
                                    </div>
                                    <div class="post-content">
                                        <h5><?= $value['ten_vn']; ?></h5>
                                        <p><?= $value['mo_ta_vn']; ?>...<p>
                                        <p class="post-more"><a href="tin-tuc/<?= $value['alias_vn']; ?>.html">Chi tiết <img  src="<?=URLPATH?>/templates/assets/my/images/more.png" alt="Xem thêm"></a></p>
                                    </div>
                                </div>
                            </div>
                            <?php endforeach; ?>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
                            <img src="<?=URLPATH?>/templates/assets/my/images/return2.png" alt="Trở lại">
                        </a>
                        <a class="carousel-control-next text-faded" href="#carouselExample" role="button" data-slide="next">
                            <img src="<?=URLPATH?>/templates/assets/my/images/next2.png" alt="Tiếp tục">
                        </a>
                    </div>

                </div>
            </div>
        </div>
        <div id="contacts" class="mt-5">
            <div class="container container-form">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 slider-child">
                        <div class="carousel slide" data-ride="carousel">

                            <!-- Indicators -->
                            <ul class="carousel-indicators">
                            <?php foreach ($arrSliderForm as $key => $value) { $strActive = $key==0 ? 'active' : '';?>
                                <li data-target="#demo" data-slide-to="<?= $key; ?>" class="<?= $strActive; ?>"></li>
                                <?php } ?>
                            </ul>

                            <!-- The slideshow -->
                            <div class="carousel-inner">
                                <?php foreach ($arrSliderForm as $key => $value) { $strActive = $key==0 ? 'active' : '';?>
                                    
                                    <div class="carousel-item <?= $strActive ?>">
                                        <img src="<?= URLPATH.'img_data/images/'.$value['picture']; ?>">
                                        <div class="content">
                                            <p><?= $value['body_vn']; ?></p>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>

                            <img class="rectangle" src="<?=URLPATH?>/templates/assets/my/images/Rectangle5.png" alt="" srcset="">
                        </div>
                    </div>
                    <div class="col-xs-12  col-sm-12 col-md-6 col-lg-6 contact-form">
                        <h4>Đăng ký tư vấn</h4>
                        <form id="formContact" action="" method="post">
                            <div class="form-group">
                                <input type="text" class="form-input-custom" placeholder="Họ tên (*)" id="full_name" name="full_name">
                            </div>

                            <div class="form-group">
                                <input type="number" class="form-input-custom" placeholder="Điện thoại (*)" name="phone" id="phone">
                            </div>

                            <div class="form-group">
                                <input type="email" class="form-input-custom" placeholder="Email (*)" id="email" name="email">
                            </div>
                            <textarea name="content" id="content" cols="62" rows="2" placeholder="Lời nhắn (*)"></textarea>

                            <button id="submitBTN" type="button">Gửi <img id="submitBTNImage" src="<?=URLPATH?>/templates/assets/my/images/enter (1).png" alt="" srcset=""></button>
                        </form>
                    </div>
                </div>
            </div>
            
            
        </div>
        <div id="partners">
            <div class="container mt-3">
                <div class="title my-5 wow fadeInUp" data-wow-duration="2s" data-wow-delay="0s">
                    <h2>Đối tác của chúng tôi</h2>
                </div>
                <div class="customer-logos slider">
                    <?php foreach ($arrPartners as $key => $value) { ?>
                        <div class="slide"><img style="height: 100%; width: auto;" src="<?= URLPATH.'img_data/images/'.$value['picture'] ?>"></div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </section>
