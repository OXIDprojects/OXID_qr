<?php
/**
 * Metadata version
 */
$sMetadataVersion = '1.1';

$aModule = array(
    'id'           => 'qr',
    'title'        => 'QR Codes',
    'description'  => array(
        'de' => 'zeigt auf jeder Seite einen QR-Code an',
        'en' => 'displays a QR code on every frontend page'
        ),
    'thumbnail'    => 'picture.png',
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
