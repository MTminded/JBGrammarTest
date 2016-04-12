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
							<div class="timer">
								<i class="fa fa-clock-o" aria-hidden="true"></i> 15:00
							</div>
						</div>

						<div class="col-xs-12"><div class="line"></div></div>
					</div>
					
					<h1 class="title">Complete the sentence</h1>
					<h2 class="subtitle">Select all answers that apply</h2>
					
					<div class="sentence"><?php echo $question->tests;?></div>
					
					<div class="clear">
						<?php if ($question->choice_A != '') :?>
							<label class="col-xs-6 col-sm-3 answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_a" value="a"> <?php echo $question->choice_A;?>
							</label>
						<?php endif;?>	
						<?php if ($question->choice_B != '') :?>
							<label class="col-xs-6 col-sm-3 answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_b" value="b"> <?php echo $question->choice_B;?>
							</label>
						<?php endif;?>	
						<?php if ($question->choice_C != '') :?>
							<label class="col-xs-6 col-sm-3 answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_c" value="c"> <?php echo $question->choice_C;?>
							</label>
						<?php endif;?>	
						<?php if ($question->choice_D != '') :?>
							<label class="col-xs-6 col-sm-3 answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_d" value="d"> <?php echo $question->choice_D;?>
							</label>
						<?php endif;?>	
						<?php if ($question->choice_E != '') :?>
							<label class="col-xs-6 col-sm-3 answer_wrapper">		 
								<input class="answer" type="checkbox" name="answer_e" value="e"> <?php echo $question->choice_E;?>
							</label>
						<?php endif;?>	
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


