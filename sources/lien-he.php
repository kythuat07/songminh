<?php
	if(!isset($_SESSION)){
		session_start();
	}
	//include "./smtp/index.php";
	date_default_timezone_set('Asia/Ho_Chi_Minh');
    $textfooter = $d->getTemplates(28);

	if(isset($_POST['sub_email'])){
		$chuoi1 = strtolower($_SESSION['captcha_code']);
		$chuoi2 = strtolower($_POST['captcha']);
		if($chuoi1 == $chuoi2){
			$d->reset();
			$data['ho_ten'] = addslashes($_POST['ho_ten']);
			$data['email'] = addslashes($_POST['email']);
			$data['sdt'] = addslashes($_POST['so_dien_thoai']);
			$data['noi_dung'] = addslashes($_POST['noi_dung']);
			$data['dia_chi'] = addslashes($_POST['dia_chi']);
			$data['ngay_hoi'] = date('d-m-Y H:i:s');
			$data['trang_thai'] = '0';
                        $data['tieu_de']="Liên hệ";

			$d->setTable('#_lienhe');
				$noidung = "<div style='margin-bottom:5px;'>Bạn nhận được tin nhắn từ website: ".URLPATH." : </div>";
				$noidung .= "<div style='margin-bottom:5px;'>Thông tin: </div>";
				$noidung .= "<div style='margin-bottom:5px;'>Họ tên: ".$_POST['ho_ten']."</div>";
				$noidung .= "<div style='margin-bottom:5px;'>Địa chỉ: ".$_POST['dia_chi']."</div>";
				$noidung .= "<div style='margin-bottom:5px;'>Số điện thoại: ".$_POST['so_dien_thoai']."</div>";
				$noidung .= "<div style='margin-bottom:5px;'>Email: ".$_POST['mail']."</div>";
				// $noidung .= "<div style='margin-bottom:5px;'>Tiêu đề: ".$_POST['tieu_de']."</div>";
				$noidung .= "<div style='margin-bottom:5px;    line-height: 1.5;'>Content: ".$_POST['noi_dung']."</div>";
				$noidung .= "<div style='margin-bottom:5px;'>Date: ".date('d-m-Y h:i:s', time())."</div>";
				$noidung .= "<div style='color:red; margin-top:10px; font-style:italic; font-size:12px'>Đây là thư gửi tự động, vui lòng ko trả lời thư này!</div>";
			if($d->insert($data)) {
				// if(sendmail("Liên hệ từ website ".URLPATH, $noidung, $_POST['mail'] , $thongtin[0]['email'] ,  $data['ho_ten'])) {
				// }
				$d->alert("Gửi thành công!");
				$d->location(URLPATH);
			}
			else {
				$d->alert("Error!");
			}
		}else {
			$d->alert("Security code is incorrect");
		} 
	}
	$dulieu = $d->getTemplates(10);
	$dulieu_1 = $d->simple_fetch("select * from #_category where hien_thi = 1 and id = 105");
         $loai = $d->simple_fetch("select * from #_category where hien_thi = 1 and alias_{$lang} = '$com'");
$time_cur = time();
$arrCategory = $d->simple_fetch("select * from #_category where hien_thi = 1 and alias_".$lang." = '".$com."' limit 0,1");
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
                        <a class="active" href="tuyen-dung.html">
                            <span property="name">Tuyển dụng</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="sub-form sub-content">
        <div class="container bg-white py-5">
            <div class="row">
                <div class="col-xs-12  col-sm-12 col-md-6 col-lg-6 contact-form">
                    <h2 class="title">Liên hệ với chúng tôi</h2>
                    <form id="formContact" action="" method="post">
                        <div class="form-group">
                            <input type="text" class="form-input-custom" placeholder="Họ tên (*)" name="full_name" id="full_name">
                        </div>

                        <div class="form-group">
                            <input type="number" class="form-input-custom" placeholder="Điện thoại (*)" name="phone" id="phone">
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input-custom" placeholder="Địa chỉ" name="address" id="address">
                        </div>

                        <div class="form-group">
                            <input type="email" class="form-input-custom" placeholder="Email (*)" name="email" id="email">
                        </div>
                        <div class="form-group">
                            <textarea name="content" id="content" cols="62" rows="2" placeholder="Lời nhắn (*)"></textarea>
                        </div>

                        <button id="submitContact" type="button">Gửi <img src="<?=URLPATH?>/templates/assets/my/images/enter (1).png" alt="" srcset=""></button>
                    </form>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 form-image">
                <h2 class="title"><?=$textfooter['ten_'.$lang]?></h2>
                <?= $textfooter['noi_dung_vn']?>
                <?= $arrCategory['mo_ta_vn'] ?>
                </div>
            </div>
        </div>
    </div>
    </section>