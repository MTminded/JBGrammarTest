<div class="content">
	<div class="row mt40">
		<div class="col-xs-12">
			<div id="countdown"></div>
		</div>
		
	</div>
</div>

<script>

	(function() {
		//convert date to firefox format
		var startTime = '<?php echo $startTime;?>';
		// if(startTime.indexOf('Z')==-1)startTime=startTime.replace(' ','T')+'Z';

		// set the date we're counting down to
		// var start_date_time = new Date(startTime);
		//start_date_time.setUTCHours(15);

		// start_date_time = start_date_time.getTime();
		displayCountdown(startTime * 1000);
	}());

	function displayCountdown(start_date_time){
		// variables for time units and extra digits (i.e. 09 instead of 9)
		var days, hours, minutes, seconds, xhour, xmin, xsec;

		// get tag element
		var countdown = document.getElementById("countdown");
		var start = document.getElementById("startTime");
		var current = document.getElementById("currentTime");
		var diff = document.getElementById("diff");

		// update the tag with id "countdown" every 1 second
		setInterval(function () {

		    // find the amount of "seconds" between now and target
		    var d = new Date();	

		    var current_date = d.getTime();
		    var seconds_left = (900000 - (current_date - start_date_time)) / 1000;

		    current.innerHTML = current_date;
		    start.innerHTML = start_date_time;
		    diff.innerHTML = current_date - start_date_time

		    if (seconds_left < 0){
		    	countdown.innerHTML = "Times Up!";
		    } else{
		    	// do some time calculations
			    days = parseInt(seconds_left / 86400);
			    seconds_left = seconds_left % 86400;

			    hours = parseInt(seconds_left / 3600);
			    seconds_left = seconds_left % 3600;
			    xhour = (hours < 10 ) ? '0' : '' ;

			    minutes = parseInt(seconds_left / 60);
			    xmin = (minutes < 10 ) ? '0' : '' ;
			    seconds = parseInt(seconds_left % 60);
			    xsec = (seconds < 10 ) ? '0' : '' ;

			    // format countdown string + set tag value
			    countdown.innerHTML = xhour + hours + " : "
			    + xmin + minutes + " : " + xsec + seconds;  
		    }

		}, 1000);
	}



</script>


