<?php
 $menu = "";
    $nav  = $d->o_fet("select * from #_category where tieu_bieu=1 and hien_thi=1 order by so_thu_tu asc, id desc");
    foreach($nav as $item) {
        $sub=$d->o_fet("select * from #_category where id_loai={$item['id']} and hien_thi=1 order by so_thu_tu asc, id desc");
        if(count($sub)>0) {
            $menusub="";
            foreach ($sub as $key => $item1) {
                $sub1=$d->o_fet("select * from #_category where id_loai={$item1['id']} and hien_thi=1 order by so_thu_tu asc, id desc");
                if(count($sub1)>0){
                    $menusub2="";
                    foreach ($sub1 as $key1 => $item2) {
                        $menusub2.='<li><a href="'.URLPATH.$item2['alias_'.$lang].'.html" title="'.$item2['ten_'.$lang].'">'.$item2['ten_'.$lang].'</a></li>';
                    }
                    $menusub.='
                        <li  class="sub-nav">
                            <a href="'.URLPATH.$item1['alias_'.$lang].'.html" title="'.$item1['ten_'.$lang].'">'.$item1['ten_'.$lang].' <span class="caret"></span></a>
                            <ul>'.$menusub2.'</ul>
                        </li>'; 
                }  else {
                   $menusub.='<li><a href="'.URLPATH.$item1['alias_'.$lang].'.html" title="'.$item1['ten_'.$lang].'">'.$item1['ten_'.$lang].'</a></li>'; 
                }
                
            }
            $menu.='<li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" title="'.$item['ten_'.$lang].'" href="'.URLPATH.$item['alias_'.$lang].'.html" data-toggle="dropdown"> '.$item['ten_'.$lang].' </a>
                        <ul class="dropdown-menu">
                            '.$menusub.'
                        </ul>
                    </li>';
        }  else {
            $menu.='<li class="nav-item"><a class="nav-link" href="'.URLPATH.$item['alias_'.$lang].'.html" title="'.$item['ten_'.$lang].'">'.$item['ten_'.$lang].'</a></li>';
        }
        
    }

    echo $menu;

    ?>

