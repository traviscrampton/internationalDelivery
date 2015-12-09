
    function initMap() {
      var comingFrom = {lat: comingLat, lng: comingLng};
      var goingTo = {lat: goingLat, lng: goingLng};


      var map = new google.maps.Map(document.getElementById('frommap'), {
        zoom: 4,
        center: comingFrom
      });

      var map1 = new google.maps.Map(document.getElementById('tomap'), {
        zoom: 4,
        center: goingTo
      });

      var marker = new google.maps.Marker({
        position: comingFrom,
        map: map,
        title: 'Hello World!'
      });
      var marker1 = new google.maps.Marker({
        position: goingTo,
        map: map1,
        title: 'Hello World!'
      });
    }
