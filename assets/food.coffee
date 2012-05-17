$ ->
  $.supersized slides: [{image: '/images/1900.jpg'}]

  trucks = ["whereslloyd", "TheCheesyChick", "RnRBBQTruck", "RoamingBuffalo1", "MobileWoodFire", "WholeHogTruck"]

  $list = $("#trucks")
  for truck in trucks
    $list.append "<li id='#{truck}'>
      <header>
        <a href='https://twitter.com/#{truck}' style='background: url(http://api.twitter.com/1/users/profile_image?screen_name=#{truck}) no-repeat'>
          @#{truck}
        </a>
      </header>
      <ul>
      </ul>
    </li>"

    renderTweets = (tweets) ->
      screen_name = tweets[0].user.screen_name
      html        = ""

      for tweet in tweets[0...3]
        created_at = Date.format(new Date(Date.parse(tweet.created_at)), "MM/dd hh:mm")
        text = twttr.txt.autoLink(twttr.txt.htmlEscape(tweet.text))

        html += "<li><p>#{text}</p><a id='perma' href='https://twitter.com/#{screen_name}/statuses/#{tweet.id_str}'>#{created_at}</a></li>"

      $("##{screen_name} ul").append(html)

    $.getJSON "http://api.twitter.com/1/statuses/user_timeline.json?screen_name=#{truck}&count=10&exclude_replies=true&callback=?",
      {},
      renderTweets,
      'jsonp'
