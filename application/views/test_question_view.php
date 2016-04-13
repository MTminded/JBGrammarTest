<div class="content">
	<div class="row mt40">
		<div class="col-xs-12">
			<div class="box">
				<div class="box_top">
					
					<div class="hud row">
						<div class="col-xs-12 col-sm-9">
							<div class="progress_bar">
								<?php for ($x = 1; $x <= 16; $x++) :?>
									<span class="progress-<?php echo $x;?> <?php if ($x<$num) echo "complete";?>"></span>
								<?php endfor; ?>
							</div>
						</div>

						<div class="col-xs-12 col-sm-3">
							<div id="timer">
								<i class="fa fa-clock-o" aria-hidden="true"></i> <span id="countdown">00:00</span>
							</div>
						</div>

						<div class="col-xs-12"><div class="line"></div></div>
					</div>
					
					<h1 class="title">Complete the sentence</h1>
					<h2 class="subtitle">Select all answers that apply</h2>
					
					<div class="sentence"><?php echo $question->tests;?></div>
					
					<div class="row">
						<div class="col-xs-12 col-sm-3">
						<?php if ($question->choice_A != '') :?>
							<label class="answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_a" value="a"> <?php echo $question->choice_A;?>
							</label>
						<?php endif;?>	
						</div>
						
						<div class="col-xs-12 col-sm-3">
						<?php if ($question->choice_B != '') :?>
							<label class="answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_b" value="b"> <?php echo $question->choice_B;?>
							</label>
						<?php endif;?>	
						</div>

						<div class="col-xs-12 col-sm-3">
						<?php if ($question->choice_C != '') :?>
							<label class="answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_c" value="c"> <?php echo $question->choice_C;?>
							</label>
						<?php endif;?>	
						</div>

						<div class="col-xs-12 col-sm-3">
						<?php if ($question->choice_D != '') :?>
							<label class="answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_d" value="d"> <?php echo $question->choice_D;?>
							</label>
						<?php endif;?>	
						</div>

						<div class="col-xs-12 col-sm-3">
						<?php if ($question->choice_E != '') :?>
							<label class="answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_e" value="e"> <?php echo $question->choice_E;?>
							</label>
						<?php endif;?>	
						</div>
					</div>
										
					<div class="form_wrapper">
					<?php echo form_open('test/submit') ?>
						<input type="hidden" autocomplete="off" name="submitted_answer" value="<?php echo $answer;?>" placeholder="Type Answer" />
						<input type="hidden" autocomplete="off" name="group_no" value=<?php echo $num; ?> />
						<input type="hidden" autocomplete="off" name="question_no" value=<?php echo $question->No; ?> />
						
					</div>

				</div>
				<div class="box_bottom">
					
					<?php if ($num > 1):?>
					<a href="<?php echo site_url('test/grammar/'. ($num-1) );?>" class="btn back_button f_l transition">Back</a>
					<?php endif;?>

					<button type="submit" class="btn btn-default next_button f_r transition" name="submit">Next</button>
				</div>

				</form>


			</div>
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
		var timer = document.getElementById("timer");
		// var countdown = $('.countdown');

		// update the tag with id "countdown" every 1 second
		setInterval(function () {

		    // find the amount of "seconds" between now and target
		    var d = new Date();	

		    var current_date = d.getTime();
		    var seconds_left = (900000 - (current_date - start_date_time)) / 1000;

		    if (seconds_left < 0){
		    	countdown.innerHTML = "Times Up!";
		    	timer.style.visibility = "visible";
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
			    countdown.innerHTML = xmin + minutes + ":" + xsec + seconds; 
			    timer.style.visibility = "visible";
		    }

		}, 1000);
	}



</script>


