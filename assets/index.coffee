$ ->
  $window = $(window)

  $('#nav').localScroll(800)
  RepositionNav()
  $window.resize ->
    RepositionNav()

  $header = $('h1')
  $herd = $('#herd')

  layer    = new MM.StamenTileLayer("toner")
  map      = new MM.Map(document.getElementById("tile"), layer, null, null)
  location = new MM.Location(42.890595,-78.876607)
  map.setCenterZoom(location, 16)
  lastPosition  = 0

  $window.bind 'scroll', ->
    pos = $window.scrollTop()
    if pos <= 800
      $header.css 'background-position': "#{pos - 72}px 105%"

    if pos >= 861 and pos <= 1800
      currentPosition = Math.floor((pos - 860) / 2) + 1
      $herd.css 'background-position': "0 #{currentPosition}px"

  $("#map").click (event) ->
    window.location = $(this).find("a").attr("href")

  $('#slider').nivoSlider
    effect: 'boxRain'
    animSpeed: 2000
    randomStart: true
    controlNav: false
    directionNavHide: true
    keyboardNav: false
