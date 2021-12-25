<?php
	$t = addslashes($_REQUEST['textsearch']); 
    
	$s_type = 0;
	$tintuc = $d->o_fet("select * from #_tintuc where hien_thi = 1 and ten_{$lang} like '%".$t."%' order by id desc");

	$name = _ketquatimkiem. " (".count($tintuc).")";
    if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");
    
    $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
    $url= $d->fullAddress();
    $maxR=20;
    $maxP=5;
    $phantrang=$d->phantrang($tintuc, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
    $tintuc2=$phantrang['source'];

?>


<style>
    img {
        width: 100%;
    }
    .item-new {
        padding-bottom: 5px;
        border-bottom: 2px solid #02528f;
    }
</style>
    
<section id="mainContentChild">
    <div class="content-header ">
        <div class="container">
            <div class="row">
                <h1 class="title">Tìm kiếm</h1>
            </div>
        </div>
    </div>
    <div class="sub-content" >
    <div class="container bg-white py-3" style="min-height: 450px;">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <?php if(count($tintuc)==""){ ?>
            <div class="chitiettin">
                <p>Nội dung bạn cần tìm hiện không tồn tại...</p>
            </div>
            <?php }elseif(count($tintuc)==1){?>
             <div class="chitiettin">
                <?= $tintuc[0]['noi_dung_vn']?>
            </div>
            <?php }else{?>
            <?php if(count($tintuc)>6){ $dem = 5; ?>
            <div class="row">
                <div class="col-sm-8">
                    <div class="new-hot">
                        <a href="<?=URLPATH.$tintuc2[0]['alias_'.$lang] ?>.html" title="<?=$tintuc2[0]['ten_'.$lang] ?>">
                        <img src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$tintuc2[0]['hinh_anh']?>&w=730&h=400" alt="<?=$item['ten_'.$lang] ?>" onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';">
                        </a>
                        <h3><a href="<?=URLPATH.$tintuc2[0]['alias_'.$lang] ?>.html" title="<?= $tintuc2[0]['ten_'.$lang] ?>"><?=$d->catchuoi_new(strip_tags($tintuc2[0]['ten_'.$lang]),100) ?></a></h3>
                        <div class="mota">
                            <?=$d->catchuoi_new(strip_tags($tintuc2[0]['mo_ta_'.$lang]),350) ?>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="new-hot-2">
                        <a href="<?=URLPATH.$tintuc2[1]['alias_'.$lang] ?>.html" title="<?=$tintuc2[1]['ten_'.$lang] ?>">
                        <img src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$tintuc2[1]['hinh_anh']?>&w=400&h=200" alt="<?=$item['ten_'.$lang] ?>" onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';">
                        </a>
                        <h3><a href="<?=URLPATH.$tintuc2[1]['alias_'.$lang] ?>.html" title="<?= $tintuc2[1]['ten_'.$lang] ?>"><?=$tintuc2[1]['ten_'.$lang] ?></a></h3>
                    </div>
                    <div class="new-hot-3">
                        <?php foreach ($tintuc2  as $i => $item) {
                            if($i>1 and $i < 6){
                            ?>
                        <h3><a href="<?=URLPATH.$item['alias_'.$lang] ?>.html" title="$item['ten_'.$lang] ?>"><?=$d->catchuoi_new(strip_tags($item['ten_'.$lang]),100) ?></a></h3>
                        <?php }}?>
                    </div>
                </div>
            </div>
            <?php } else{$dem = -1;}?>
            <?php foreach ($tintuc  as $i => $item) {
                if($i>$dem){
                ?>
            <div class="item-new mb-3">
                <div class="row">
                    <div class="col-sm-4">
                        <a href="<?=URLPATH.$item['alias_'.$lang] ?>.html" title="<?=$item['ten_'.$lang] ?>">
                        <img src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$item['hinh_anh']?>&w=730&h=400" alt="<?=$item['ten_'.$lang] ?>" onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';">
                        </a>
                    </div> 
                    <div class="col-sm-8">
                        <h3><a href="<?=URLPATH.$item['alias_'.$lang] ?>.html" title="$item['ten_'.$lang] ?>"><?=$item['ten_'.$lang] ?></a></h3>
                        <div class="mota">
                            <?=$d->catchuoi_new(strip_tags($item['mo_ta_'.$lang]),350) ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php }}?>
            <div class="pagination-page">
                <?php echo @$phantrang['paging']?>
            </div>
            <?php }?>
        </div>
        
        </div>
    </div>
    </div>
</section>

