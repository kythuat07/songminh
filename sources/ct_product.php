<?php foreach ($sanpham as $key => $item) {
    $gia=$item['gia'];
    $km = $item['khuyen_mai']
?>

    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 mb-3">
        <div class="item-project">
            <a class="item" href="<?=URLPATH.$item['alias_'.$lang]?>.html" title="<?=$item['ten_'.$lang]?>">
                <div class="thumbnail-image">
                    <span><img class="img-logo" src="<?=URLPATH?>templates/assets/my/images/flower.png" alt="<?=$item['ten_'.$lang]?>"></span>
                    <img style="width: 100%; object-fit:cover; height: 200px;" src="<?=URLPATH?>img_data/images/<?=$item['hinh_anh']?>" title="AQUA CITY">
                </div>
                <div class="p-1 bg-name">
                    <h2 style="color: #fff; font-size: 20px;">
                    <?=$item['ten_'.$lang]?>
                    </h2>
                </div>
            </a>
        </div>
    </div>

<?php } ?>