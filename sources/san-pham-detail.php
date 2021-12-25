<?php
$ctsp = $d->o_fet("select * from #_sanpham where hien_thi = 1 and alias_".$_SESSION['lang']." = '".$com."'");
$property=explode('@1@',$ctsp[0]['property']);
if(count($ctsp) == 0) $d->location(URLPATH."404.html");
$loai = $d->simple_fetch("select * from #_category where hien_thi = 1 and id = ".$ctsp[0]['id_loai']." ");
$sanpham = $d->o_fet("select * from #_sanpham where hien_thi = 1  and id <> '".@$ctsp[0]['id']."' and id_loai = '".@$ctsp[0]['id_loai']."' order by id desc limit 0,6");
$hinh_anh_sp = $d->o_fet("select * from #_sanpham_hinhanh where id_sp = '".@$ctsp[0]['id']."' order by id desc");

$list_color = $d->o_fet("select * from #_sanpham_phienban where type = 0 and id_sanpham = '".$ctsp[0]['id']."'");
$list_size = $d->o_fet("select * from #_sanpham_phienban where type = 1 and id_sanpham = '".$ctsp[0]['id']."'");
if($ctsp[0]['gia']==''){
        $gia='<span class="p-price gia-center">Liên hệ</span>';
}else{
    if($item['khuyen_mai']==''){
         $gia='<span class="p-price gia-center">'.$ctsp[0]['gia'].' VNĐ</span>';
    }else{
        $gia=' 
        <span class="p-price">'.$ctsp[0]['khuyen_mai'].' VNĐ</span>
        <span class="p-oldprice">'.$ctsp[0]['gia'].' VNĐ</span>';

    }

}
if(isset($_POST['lienhe'])){
    $d->reset();
    $data['ho_ten'] = addslashes($_POST['ho_ten']);
    $data['email'] = addslashes($_POST['email']);
    $data['sdt'] = addslashes($_POST['phone']);
    $data['noi_dung'] = addslashes($_POST['noi_dung']);
    $data['ngay_hoi'] = date('d-m-Y H:i:s');
    $data['trang_thai'] = '0';
    $data['tieu_de']="Liên hệ của sản phẩm: <a href=\"".$url_page."\">".$ctsp[0]['ten_vn']."</a>";
    $d->setTable('#_lienhe');
    print_r($data);
    if($d->insert($data)) {
        $d->alert("Gửi thành công!");
        $d->location($url_page);
    }else{
        $d->alert("Gửi thất bại"); 
    }
}

// echo $com;
?>



<section id="mainContentChild">
        <div class="content-header ">
            <div class="container">
                <div class="row">
                    <h1 class="title"><?=$ctsp[0]['ten_'.$lang] ?></h1>
                    <?= $d->breadcrumbList($loai['id'],$lang,URLPATH) ?>
                </div>
            </div>
        </div>
        <div class="sub-content" id="sub-content-slider">
            <div class="container bg-white py-3">
                <div class="row">
                <?php if(count($hinh_anh_sp) > 0) { ?>
                    <div class="col-md-12 mx-auto fancybox-show">
                        <div class="product-images demo-gallery">
                            <div class="main-img-slider">
                                <?php foreach ($hinh_anh_sp as $key => $item) {  ?>
                                    <a data-fancybox="gallery" href="<?=URLPATH ?>img_data/images/<?= $item['hinh_anh'] ?>">
                                        <img style="width: auto; height: 350px; margin: 0 auto;" src="<?=URLPATH ?>img_data/images/<?= $item['hinh_anh'] ?>" class="img-fluid">
                                    </a>
                                <?php } ?>
                            </div>
                            <!-- End Product Images Slider -->

                            <!-- Begin product thumb nav -->
                            <ul class="thumb-nav" style="margin-top: 10px;">
                                <?php foreach ($hinh_anh_sp as $key => $item) {  ?>
                                    <li>
                                        <a href="javascript:void()">
                                            <img style="width: auto; height: 50px; margin: 0 auto;" src="<?=URLPATH ?>img_data/images/<?= $item['hinh_anh'] ?>">
                                        </a>    
                                    </li> 
                                <?php } ?>
                            </ul>
                            <!-- End product thumb nav -->
                        </div>
                    </div>

                    <div class="col-md-12">
                    <?=$ctsp[0]['thong_tin_'.$lang] ?>
                    </div>

                <?php } ?>


                </div>
            </div>
        </div>
        <div class="sub-detail">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <h2 class="title">Dự án liên quan</h2>
                    </div>

                    <?php include 'ct_product.php'; ?>

                </div>
            </div>
        </div>
    </section>

