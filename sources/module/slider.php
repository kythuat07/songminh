<?php

$slide  = $d->getImg(1130);
$chuoi="";
foreach ($slide as $key => $item_sl) {
    $strActive = $key == 0 ? 'active' : '';
    $chuoi .='<div class="carousel-item '.$strActive.'">
        <img src="'.URLPATH.'img_data/images/'.$item_sl['picture'].'" data-thumb="'.URLPATH.'img_data/images/'.$item_sl['picture'].'" alt="'.$item_sl['title_vn'].'">
        <div class="carousel-caption">
            <h3>'.$item_sl['title_vn'].'</span>
            </h3>
            <p>'.$item_sl['body_vn'].'</p>
            <a class="btn-detail" href="'.$item_sl['link'].'">Chi tiết</a>
        </div>
    </div>';
}
?>


<div id="carousel" class="carousel slide" data-ride="carousel">

    <div class="carousel-inner">
        <?= $chuoi ?>
    </div>

    <a class="carousel-control-prev" href="#carousel" data-slide="prev">
        <img src="<?=URLPATH?>/templates/assets/my/images/return.png" alt="Trở lại" >
    </a>
    <a class="carousel-control-next" href="#carousel" data-slide="next">
        <img src="<?=URLPATH?>/templates/assets/my/images/next (5).png" alt="Trang tiếp">
    </a>
</div>