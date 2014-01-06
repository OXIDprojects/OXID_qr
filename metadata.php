<?php
/**
 * Metadata version
 */
$sMetadataVersion = '1.1';

$aModule = array(
    'id'           => 'qr',
    'title'        => 'QR Codes',
    'description'  => array(
        'de' => 'zeigt auf jeder Seite einen QR-Code an<br><br>Github-Repository: <a href="https://github.com/marten-seemann/OXID_qr" target="_blank">https://github.com/marten-seemann/OXID_qr</a>',
        'en' => 'displays a QR code on every frontend page<br><br>Github-Repository: <a href="https://github.com/marten-seemann/OXID_qr" target="_blank">https://github.com/marten-seemann/OXID_qr</a>'
        ),
    'thumbnail'    => 'picture.jpg',
    'version'      => '1.0',
    'author'       => 'Marten Seemann',
    'url'          => 'http://www.oxid-responsive.com',
    'blocks'       => array(
       array("template" => "layout/footer.tpl", "block" => "footer_main", "file" => "qr.tpl"),
        ),
    'extend' => array(
        ),
    'settings'     => array(
        ),
    'templates' => array(
        ),
);
