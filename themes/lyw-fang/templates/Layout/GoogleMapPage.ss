<% include SideBar %>
<style>
    #map-canvas {
        height: 100%;
        min-height: 400px;
        margin: 0px;
        padding: 0px
    }
    #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
    }
</style>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
<script>
// If you're adding a number of markers, you may want to
// drop them on the map consecutively rather than all at once.
// This example shows how to use setTimeout() to space
// your markers' animation.
    var auckland = new google.maps.LatLng(-36.81, 174.91);

    var neighborhoods = [
        new google.maps.LatLng(-36.81, 174.91),
        new google.maps.LatLng(-36.71, 174.76),
        new google.maps.LatLng(-36.89, 174.23),
        new google.maps.LatLng(-36.56, 174.55)
    ];

    var markers = [];
    var iterator = 0;

    var map;

    function initialize() {
        var mapOptions = {
            zoom: 6,
            center: auckland
        };

        map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);

        drop();
    }

    function drop() {
        for (var i = 0; i < neighborhoods.length; i++) {
            setTimeout(function() {
                addMarker();
            }, i * 200);
        }
    }

    function addMarker() {
        markers.push(new google.maps.Marker({
            position: neighborhoods[iterator],
            map: map,
            draggable: false,
            animation: google.maps.Animation.DROP
        }));
        iterator++;
    }

    google.maps.event.addDomListener(window, 'load', initialize);

</script>

<div class="content-container unit size2of3 lastUnit">

    <article>
        <div id="map-canvas"></div>
    </article>

    <article>
        <h1>$Title</h1>
        <div class="content">$Content</div>
        <%-- <div>$GoogleMapForm</div> --%>
    </article>
    $Form
    $PageComments
</div>
