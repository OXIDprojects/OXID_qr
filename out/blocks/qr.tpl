[{$smarty.block.parent}]

[{oxscript include=$oViewConf->getModuleUrl('qr','out/js/combined.min.js')}]
[{oxstyle include=$oViewConf->getModuleUrl('qr','out/css/styles.min.css')}]

[{assign var=url value=$oxcmp_lang[0]->link}]

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
