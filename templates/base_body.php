<?php
include('base_header.php');
if ($CONTENT) {
    if ($TYPE_CONTENT == 'html')
        echo $CONTENT;
    else if ($TYPE_CONTENT == 'file')
        require $CONTENT;
    else
        echo 'Тип контента не установлен';
}
include('base_footer.php');
