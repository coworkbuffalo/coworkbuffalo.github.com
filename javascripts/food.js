
$(function() {
  var $list, truck, trucks, widget, _results;
  $.supersized({
    slides: [
      {
        image: '/images/1900.jpg'
      }
    ]
  });
  trucks = {
    "whereslloyd": "344853196625309696",
    "RoamingBuffalo1": "344857092533911552",
    "theBMFT": "344858519096397824",
    "FindFrankNow": "344858686004535296",
    "amys_truck": "344858789989728256",
    "RnRBBQTruck": "344858857568362496",
    "GelatoGypsy": "357934093062778880",
    "SweetHearthNY": "344858930691833856",
    "RollingJoeCafe": "344858992918536192",
    "HouseOfMunch": "344859058567790596",
    "TheKnightSlider": "344859260351561729",
    "MobileWoodFire": "344859315275964417",
    "WholeHogTruck": "344859366903656448",
    "PaniniTruckBflo": "344859430824845313",
    "thaimeuptruck": "344859485296271360",
    "TheCheesyChick": "344859534478675968"
  };
  $list = $("#trucks");
  _results = [];
  for (truck in trucks) {
    widget = trucks[truck];
    _results.push($list.append("<li id='" + (truck.toLowerCase()) + "'>      <header><a href='https://twitter.com/" + truck + "'>@" + truck + "</a></header>      <a class='twitter-timeline' data-tweet-limit='3' data-dnt='true' data-chrome='noheader nofooter transparent' href='https://twitter.com/" + truck + "' data-widget-id='" + widget + "'>      </a>    </li>"));
  }
  return _results;
});
