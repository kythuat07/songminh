<header id="mainHeader">
    <div class="container">
        <nav class="navbar  navbar-expand-md navbar-expand-sm">
            <a class="justify-content-first" href="<?=URLPATH?>" title="<?=$ten_cong_ty?>">
                <img id="logo" width="100" src="<?=$logo?>" alt="<?=$ten_cong_ty?>">
            </a>
            <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <i style="color: #fff;" class="fas fa-bars"></i>
            </button>
            <!-- Links -->
            <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
                <ul class="navbar-nav ">
                    <li class="nav-item">
                        <a class="nav-link" href="<?=URLPATH?>" title="Trang chủ">Trang chủ</a>
                    </li>
                    <?php include 'module/menu.php'; ?>
                    <li class="nav-item dropdown search-form">
                        <a class="button-search  dropdown-toggle nav-link" href="javasript:void()" data-toggle="dropdown">
                            <img src="<?=URLPATH?>/templates/assets/my/images/search.png" alt="Tìm kiếm">
                        </a>
                        <div class="dropdown-menu">
                            <form method="POST" action="<?=URLPATH?>search.html">
                                <div class="input-group mb-3">
                                    <input type="text" name="textsearch" class="form-control" placeholder="Tìm ...">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-success" type="submit">Tìm</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>