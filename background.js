var count = 1,
	currentPosition = null, google = null;
setInterval(function() {
	navigator.geolocation.getCurrentPosition(function(position) {
		currentPosition = position;
		$.post("http://localhost:4567/geo", {position: currentPosition});
	});

	count += 1;
}, 10000)
