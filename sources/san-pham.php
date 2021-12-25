<?php
    $query=$d->simple_fetch("select id,ten_vn,alias_vn,mo_ta_vn from #_category where alias_{$_SESSION['lang']}='$com'");
    $id_loai=$query['id'];
    $all_id=$id_loai.$d->findIdSub($id_loai);

    if($id_loai == '') {
        $d->location(URLPATH."404.html");
    }
    $loai = $d->simple_fetch("select * from #_category where hien_thi = 1 and alias_{$lang} = '$com'");
    $sanpham = $d->o_fet("select * from #_sanpham where hien_thi = 1  and id_loai in ( $all_id ) and style=0 order by so_thu_tu asc, id desc");

    if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) {
            $d->location(URLPATH."404.html");
    }
    $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
    $url= $d->fullAddress();
    $maxR= 25;
    $maxP=3;
    $phantrang=$d->phantrang($sanpham, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
    $sanpham=$phantrang['source'];
    $loaisub = $d->o_fet("select * from #_category where hien_thi = 1 and (id_loai = ".$loai['id']." or id_loai = ".$loai['id_loai']." or id = ".$loai['id_loai'].") and id_loai <>0");
        
?>
<style>
    .item-project  {
        padding: 3px;
        overflow: hidden;
        background-color: #02528f;
    }
    .item-project:hover {
        background-color:  #2db34b;
    }
    .thumbnail-image {
        position: relative;
        overflow: hidden;
    }
    .thumbnail-image span {
        position: absolute;
        color: #fff;
        top: 0px;
        z-index: 9999;
        background-color: #02528f9e;
        padding: 5px;
        right: 0px;
    }
    .item-project img:hover {
        transform: scale(1.3);
    }
    .item-project a {
        text-decoration: none;
    }
    .bg-name h2 {
        color: #fff;
        font-size: 20px;
        justify-content: center;
        align-items: center;
        display: inline;
    }
</style>
    <section id="mainContentChild">
        <div class="content-header ">
            <div class="container">
                <div class="row">
                    <h1 class="title"><?=$loai['ten_vn']?></h1>
                    <?= $d->breadcrumbList($loai['id'],$lang,URLPATH) ?>
                </div>
            </div>
        </div>
        <div class="sub-content">
            <div class="container bg-white pt-3">
                <div class="row">
                    <?php foreach ($sanpham as $key => $value) { //var_dump($value); die;?>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 mb-3">
                            <div class="item-project">
                                <a class="item" href="du-an/<?= $value['alias_vn']; ?>.html">
                                    <div class="thumbnail-image">
                                        <span><img class="img-logo" src="<?=URLPATH?>/templates/assets/my/images/flower.png"></span>
                                        <img style="width: 100%; height: 240px;" src="<?= URLPATH.'img_data/images/'.$value['hinh_anh'] ?>" title="AQUA CITY">
                                    </div>
                                    <div class="p-1 bg-name">
                                        <h2 style="color: #fff; font-size: 20px;"><?= $value['ten_vn']; ?></h2>
                                    </div>
                                </a>
                            </div>  
                        </div>
                    <?php } ?>
                    
                </div>
            </div>
        </div>
    </section>
