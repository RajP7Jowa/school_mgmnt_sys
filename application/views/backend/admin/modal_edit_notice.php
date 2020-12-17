<?php 
$edit_data = $this->db->get_where('noticeboard' , array('notice_id' => $param2) )->result_array();
?>
<section class="panel">
        <?php foreach($edit_data as $row):?>
        <?php echo form_open(base_url(). 'index.php?admin/noticeboard/do_update/'.$row['notice_id'] , array('class' => 'form-horizontal form-bordered validate'));?>
	
	<div class="panel-heading">
		<h4 class="panel-title">
			<i class="fa fa-pencil-square"></i>
			<?php echo get_phrase('edit_notice');?>
		</h4>
	</div>
	
		<div class="panel-body">
			<div class="padded">
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo get_phrase('title');?></label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="notice_title" value="<?php echo $row['notice_title'];?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo get_phrase('notice');?></label>
					<div class="col-sm-5">
						<div class="box closable-chat-box">
							<div class="box-content padded">
									<div class="chat-message-box">
									<textarea name="notice" id="ttt" rows="5" class="form-control"
										placeholder="<?php echo get_phrase('add_notice');?>"><?php echo $row['notice'];?></textarea>
									</div>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo get_phrase('date');?></label>
					<div class="col-sm-5">
						<input type="text" class="form-control" data-plugin-datepicker name="create_timestamp" value="<?php echo date('m/d/Y',$row['create_timestamp']);?>"/>
					</div>
				</div>

			</div>
		</div>
    
	<footer class="panel-footer">
	<div class="row">
	<div class="col-sm-9 col-sm-offset-3">
	<button type="submit" class="btn btn-primary"><?php echo get_phrase('edit_notice');?></button>
	</div>
	</div>
	</footer>
  </form>
  <?php endforeach;?>
  
</section>