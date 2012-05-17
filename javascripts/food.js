
$(function() {
  var $list, renderTweets, truck, trucks, _i, _len, _results;
  $.supersized({
    slides: [
      {
        image: '/images/1900.jpg'
      }
    ]
  });
  trucks = ["whereslloyd", "TheCheesyChick", "RnRBBQTruck", "RoamingBuffalo1", "MobileWoodFire", "WholeHogTruck", "RollingJoeCafe", "sweethearthny"];
  $list = $("#trucks");
  _results = [];
  for (_i = 0, _len = trucks.length; _i < _len; _i++) {
    truck = trucks[_i];
    $list.append("<li id='" + truck + "'>      <header>        <a href='https://twitter.com/" + truck + "' style='background: url(http://api.twitter.com/1/users/profile_image?screen_name=" + truck + ") no-repeat'>          @" + truck + "        </a>      </header>      <ul>      </ul>    </li>");
    renderTweets = function(tweets) {
      var created_at, html, screen_name, text, tweet, _j, _len2, _ref;
      screen_name = tweets[0].user.screen_name;
      html = "";
      _ref = tweets.slice(0, 3);
      for (_j = 0, _len2 = _ref.length; _j < _len2; _j++) {
        tweet = _ref[_j];
        created_at = Date.format(new Date(Date.parse(tweet.created_at)), "MM/dd hh:mm");
        text = twttr.txt.autoLink(twttr.txt.htmlEscape(tweet.text));
        html += "<li><p>" + text + "</p><a id='perma' href='https://twitter.com/" + screen_name + "/statuses/" + tweet.id_str + "'>" + created_at + "</a></li>";
      }
      return $("#" + screen_name + " ul").append(html);
    };
    _results.push($.getJSON("http://api.twitter.com/1/statuses/user_timeline.json?screen_name=" + truck + "&count=10&exclude_replies=true&callback=?", {}, renderTweets, 'jsonp'));
  }
  return _results;
});
