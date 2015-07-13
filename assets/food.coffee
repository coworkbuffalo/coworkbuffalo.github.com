$ ->
  $.supersized slides: [{image: '/images/buffalo_1900.jpg'}]

  trucks = {
    "whereslloyd"      :  "344853196625309696",
    "RoamingBuffalo1"  :  "344857092533911552",
    "theBMFT"          :  "344858519096397824",

    "FindFrankNow"     :  "344858686004535296",
    "amys_truck"       :  "344858789989728256",
    "RnRBBQTruck"      :  "344858857568362496",

    "SweetHearthNY"    :  "344858930691833856",
    "HouseOfMunch"     :  "344859058567790596",
    "TheKnightSlider"  :  "344859260351561729",

    "MobileWoodFire"   :  "344859315275964417",
    "WholeHogTruck"    :  "344859366903656448",
    "PaniniTruckBflo"  :  "344859430824845313",

    "buffalosbestbbq"  :  "463678306605232130",
    "thaimeuptruck"    :  "344859485296271360",
    "TheCheesyChick"   :  "344859534478675968",

    "greekonstreet"    :  "359790551186407425",
    "BettyCrockski"    :  "463677794044502016",
    "Macarollin"       :  "463678250967773184",

    "Gr8Foodini"       :  "463678118729773057",
    "flaminfishtruck"  :  "620631633335443457",
    "findthecrawdad"   :  "620631887778721792",

    "streeteatsbflo"   :  "620632069501161472",
    "PhillyFlattop"    :  "620632249898143744",
    "716ClubHouse"     :  "620633236197109760",

    "taffystruck"      :  "620632437719109632",
    "Sassi_Cakes"      :  "620632908299005952",
    "bigsuzies"        :  "620633102260416512"
  }

  $list = $("#trucks")

  for truck, widget of trucks
    $list.append "<li id='#{truck.toLowerCase()}'>
      <header><a href='https://twitter.com/#{truck}'>@#{truck}</a></header>
      <a class='twitter-timeline' data-tweet-limit='3' data-dnt='true' data-chrome='noheader nofooter transparent' href='https://twitter.com/#{truck}' data-widget-id='#{widget}'>
      </a>
    </li>"
