<?php
    $textfooter = $d->getTemplates(28);
    $strLinkFast = $d->getTemplates(57);
    $arrSocialNetwork   = $d->o_fet("select google_plus, facebook, zalo, instagram from #_thongtin where id = 1;");
?>

<footer id="mainFooter">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-xs-12  col-sm-12 info-address">
                    <h4 class="title-f"><?=$textfooter['ten_'.$lang]?></h4>
                    <?= $textfooter['noi_dung_vn']?>
                </div>
                <div class="col-md-3 col-xs-12  col-sm-12 link-fast">
                    <h4><?= $strLinkFast['ten_vn'] ?></h4>
                    <?= $strLinkFast['noi_dung_vn'] ?>
                </div>
                <div class="col-md-4 col-xs-12  col-sm-12 social-connet">
                    <h4>Liên kết với chung tôi qua</h4>
                    <ul>
                        <li>
                            <a href="<?= $arrSocialNetwork[0]['facebook'] ?>"><img src="<?=URLPATH?>/templates/assets/my/images/facebook-logo.png" alt="facebook"> </a>
                        </li>
                        <li>
                            <a href="<?= $arrSocialNetwork[0]['google'] ?>"><img src="<?=URLPATH?>/templates/assets/my/images/google-plus (2).png" alt="google"> </a>
                        </li>
                        <li>
                            <a href="<?= $arrSocialNetwork[0]['instagram'] ?>"><img src="<?=URLPATH?>/templates/assets/my/images/instagram (1).png" alt="instagram"></a>
                        </li>

                        <li>
                            <a href="<?= $arrSocialNetwork[0]['zalo'] ?>"><img class="zalo" src="<?=URLPATH?>/templates/assets/my/images/zalo.png" alt="zalo"></a>
                        </li>
                    </ul>
                </div>
            </div>
            
            <hr class="line">
            <div class="row">
                <div class="offset-md-2 offset-sm-0"></div>
                <div class="col-md-3 col-sm-3">
                    <label class="label-email" for="email">Đăng ký nhận tin mới mỗi tuần !</label>
                </div>
                <div id="fromRegistration" class="col-md-5  col-sm-5">
                    <form class="form" method="POST">
                        <div class="input-group mb-3">
                            <div class="farm">
                                <span  data-wow-duration="3s" data-wow-delay="0s" data-wow-iteration="1000" class="wow swing"><img src="<?=URLPATH?>/templates/assets/my/images/email.png" alt=""></span>
                                <input type="email" class="form-control" name="emailFile" id="emailFile" placeholder="Email ...">
                            </div>
                            <div class="input-group-append">
                                <button id="addEmailSubmit" class="btn btn-success" type="button">Đăng ký</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="offset-md-2 offset-sm-0"></div>
            </div>
        </div>
        <p id="copyright">
            <?= $copyright ?> | <?=$backlink?></p>
    </footer>