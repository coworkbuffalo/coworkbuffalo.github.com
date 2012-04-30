$ ->
  $window = $(window)

  $('#nav').localScroll(800)
  RepositionNav()
  $window.resize ->
    RepositionNav()

  #$('#intro').parallax("50%", 0, 0.1, true)
  #$('#where').parallax("50%", 800, 0.1, true)
  #$('#plans').parallax("50%", 1300, 0.1, true)
  #$('#community').parallax("50%", 1800, 0.1, true)
  #$('#contact').parallax("50%", 2300, 0.1, true)
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
      $header.css 'background-position-x': pos - 72

    if pos >= 861 and pos <= 1800
      currentPosition = Math.floor((pos - 860) / 2) + 1
      $herd.css 'background-position-y': currentPosition

    #if pos >= 300 and pos <= 1300
      #currentPosition = Math.floor((pos - 300) / 50) + 1
      #if currentPosition != lastPosition
      #  normalPosition = 16

      #  if currentPosition < 10
      #    normalPosition -= 10 - currentPosition

      #  if currentPosition > 11
      #    normalPosition -= currentPosition - 10

      #  map.setCenterZoom(location, normalPosition)
      #  lastPosition = currentPosition
