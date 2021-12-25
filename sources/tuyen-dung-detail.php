<?php 
$time_cur = time();
$arrPost = $d->simple_fetch("select * from #_tintuc where hien_thi = 1 and alias_".$lang." = '".$com."' limit 0,1");
?>
    <section id="mainContentChild">
        <div class="content-header ">
            <div class="container">
                <div class="row">
                    <h1 class="title">Tuyển dụng</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="index.html">
                                <span property="name">Trang chủ</span>
                            </a>
                        </li>
                        <li>
                            <a href="tuyen-dung.html">
                                <span property="name">Tuyển dụng</span>
                            </a>
                        </li>
                        
                        <li>
                            <a class="active" href="<?= $arrPost['alias_vn'] ?>.html">
                                <span property="name"><?= $arrPost['ten_vn'] ?></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="sub-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="content col-text">
                            <h2 class="title"><?= $arrPost['ten_vn'] ?></h2>
                            <div class="text">
                                <?= $arrPost['noi_dung_vn'] ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sub-form">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12  col-sm-12 col-md-8 col-lg-8 contact-form">
                        <h2 class="title">Đăng ký thông tin tuyển dụng</h2>
                        <form id="formContact" action="" method="post">
                            <div class="form-group">
                                <input type="text" class="form-input-custom" placeholder="Họ tên" name="full_name" id="full_name">
                            </div>

                            <div class="form-group">
                                <input type="number" class="form-input-custom" placeholder="Điện thoại" name="phone" id="phone">
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-input-custom" placeholder="Vị trí ứng tuyển" name="recruitment" id="recruitment">
                            </div>

                            <div class="form-group">
                                <input type="email" class="form-input-custom" placeholder="Email" name="email" id="email">
                            </div>

                            <button id="submitRecruitment" type="button">Gửi <img src="<?=URLPATH?>/templates/assets/my/images/enter (1).png" alt="" srcset=""></button>
                        </form>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 form-image">
                        <img src="<?=URLPATH?>/templates/assets/my/images/recruiment.png" alt="" srcset="">
                    </div>
                </div>
            </div>
        </div>
    </section>