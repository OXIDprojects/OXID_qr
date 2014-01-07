[{$smarty.block.parent}]
[{assign var=url value=$oxcmp_lang[0]->link}]

[{*if strpos($url, "?cl=start") === false*}]
[{if $url!=$oViewConf->getPaymentLink() && $url!=$oViewConf->getOrderLink() && $url!=$oViewConf->getOrderConfirmLink() && $url!=$oViewConf->getExeOrderLink && strpos($url, "?cl=thankyou")===false}]
  [{oxscript include=$oViewConf->getModuleUrl('qr','out/js/combined.min.js')}]
  [{oxstyle include=$oViewConf->getModuleUrl('qr','out/css/styles.min.css')}]

  [{capture name="code" assign="code"}]
    $('body').oxidQRcode({ url: '[{$url}]' });
  [{/capture}]

  <div id="qrcode-overlay">
    <div class="qr-controls">
      <span class="qr-close">&or;</span>
      <span class="qr-open">&and;</span>
    </div>
    <div class="title">[{oxmultilang ident="QRCODE_TITLE"}]</div>
    <span class="url">[{$url}]</span>
    <div id="qrcode"></div>
    [{oxscript add=$code}]
  </div>
[{/if}]
