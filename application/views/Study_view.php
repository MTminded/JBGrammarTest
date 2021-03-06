<div class="content">
	<div class="row mt40">
		<div class="col-xs-12">
			<div class="back"><a href="<?php echo site_url('test/result/' . $result_id);?>"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Back to Test Result</a></div>
			<div class="box">
				<div class="box_top">
					
					<div class="hud row">
						<div class="col-xs-12 col-sm-10">
							<h2 class="study_title"><?php echo $study_unit->No; ?> <?php echo $study_unit->Name; ?></h1>
						</div>

						<div class="col-xs-12 col-sm-2">
							<div class="page_numer"><?php echo $current_page; ?>/<?php echo $total_pages; ?></div>
						</div>

						<div class="col-xs-12"><div class="line"></div></div>
					</div>
					
					<div class="study_desc">
						<h3>A. 理论</h3>
						<p><?php echo $study_unit->Description; ?></p>
					</div>
					
					<div class="study_example">
						<h3>B. 实例</h3>
						<p><?php echo nl2br($study_unit->Example); ?></p>
					</div>
					
					<div class="study_explain">
						<h3>C. 解析</h3>
						<p><?php echo $study_unit->Explanation; ?></p>
					</div>
					
					<div class="row">
						
						
					</div>

				</div>
				<div class="box_bottom">
					
					<?php if ($current_page > 1):?>
						<a href="<?php echo site_url('study/' . $result_id . '/' . $study_nums . '/' . ($current_page-1) );?>" class="btn back_button f_l transition">Back</a>
					<?php endif;?>
						
					<?php if ($current_page < $total_pages):?>
						<a href="<?php echo site_url('study/' . $result_id . '/' . $study_nums . '/' . ($current_page+1)   );?>" class="btn btn-default next_button f_r transition" >Next</a>
					<?php endif; ?>
				</div>

				</form>


			</div>
		</div>
		
	</div>
</div>