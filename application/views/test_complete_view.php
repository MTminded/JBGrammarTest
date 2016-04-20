<div class="content">
	<div class="row mt40">
		<div class="col-xs-12">
			<div class="box">
				<div class="box_top complete_page">
					
					
					<h1 class="title">Test Complete!</h1>
					<h2 class="subtitle">Let's see how well you did.</h2>
					
					<div class="score_container row">
						<div class="col-xs-6 col-sm-6 center score">
							<span class="correct_answers"><?php echo $correct_answers ?></span>
							<span class="total_answers">/16</span>
						</div>
					</div>
					
					
					<div class="row study_units">
						<div class="col-xs-12 col-sm-5 center">
							<p class="t_c">Recommended Study Units:</p>
							<?php foreach ($study_units as $study_unit): ?>
								<div class="study_unit row">
									<div class="col-xs-5">Unit: <?php echo $study_unit['unit'];?></div>
									<div class="col-xs-7"><?php echo $study_unit['category']; ?> </div>
									 
								</div>

							<?php endforeach;?>
						</div>
					</div>	

				</div>
	


				<div class="box_bottom">
					
					<button type="submit" class="btn btn-default next_button f_r transition" name="submit">Next</button>
				</div>

				</form>


			</div>
		</div>
		
	</div>
</div>

