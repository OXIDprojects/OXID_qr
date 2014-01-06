(($, window, document) ->
  pluginName = "oxidQRcode"

  qr_overlay = $("#qrcode-overlay")
  qr_el = $("#qrcode")
  cookie_name = "qrcode_show"

  class Plugin
    constructor: (@element, options) ->
      return false if Modernizr.mq("only screen and (max-width: 767px)")

      new QRCode(
        $(qr_el)[0]
        text: options.url
        width: 160
        height: 160
        )

      if not $.cookie(cookie_name)? or $.cookie(cookie_name) == "true"
        @showQR()
      else
        @hideQR()

      qr_overlay.show()

      $(".qr-close").bind 'click', =>
        @hideQR()

      $(".qr-open").bind 'click', =>
        @showQR()

    showQR: ->
      $(qr_el).show()
      $(".qr-open").hide()
      $(".qr-close").show()
      $.removeCookie(cookie_name)
      $.cookie(cookie_name, true, { path: "/" })

    hideQR: ->
      $(qr_el).hide()
      $(".qr-open").show()
      $(".qr-close").hide()
      $.removeCookie(cookie_name)
      $.cookie(cookie_name, false,  { path: "/" })

  # A really lightweight plugin wrapper around the constructor,
  # preventing against multiple instantiations
  $.fn[pluginName] = (options) ->
    @each ->
      if !$.data(@, "plugin_#{pluginName}")
        $.data(@, "plugin_#{pluginName}", new Plugin(@, options))

)(jQuery, window, document)
