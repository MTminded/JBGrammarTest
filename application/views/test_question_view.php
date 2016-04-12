<div class="content">
	<div class="row mt40">
		<div class="col-xs-12">
			<h1><?php echo $num; ?></h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum quod facilis, eum necessitatibus similique possimus et aut tempora perspiciatis dolorem reiciendis, nulla obcaecati placeat, doloribus, impedit iure provident eligendi culpa!</p>
			<pre>
			<?php print_r($question); ?>
			</pre>
			
			<div class="form_wrapper">
			<?php echo form_open('test/submit') ?>
				<input autocomplete="off" name="submitted_answer" value="<?php echo $answer;?>" placeholder="Type Answer" />
				<input type="hidden" autocomplete="off" name="group_no" value=<?php echo $num; ?> />
				<input type="hidden" autocomplete="off" name="question_no" value=<?php echo $question->No; ?> />
				
				<input type="submit" class="btn btn-default submit_button" name="submit" value="Next" />

			</form>

			</div>

			<a class="btn btn-primary start_button" href="<?php echo site_url('test/grammar/');?>/<?php echo $num+1;?>"> Next Question</a>      
		</div>
		
	</div>
</div>


