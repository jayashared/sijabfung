<?php foreach($list as $num_row => $row){ ?>
    <tr>
        <td>
        	<?php if(!$unset_delete) { ?>
            <input type="checkbox" class="select-row" data-id="<?php echo $row->primary_key_value; ?>" />
        	<?php } ?>
        </td>
        <td>
                <div class="only-desktops"  style="white-space: nowrap">
                    
                    <div class="btn-group dropdown">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            Aksi
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <?php if(!$unset_edit){?>
                            	<li>
                                <a class="" href="<?php echo $row->edit_url?>" title="<?php echo $this->l('list_edit')?>"><i class="fa fa-pencil"></i> <?php echo $this->l('list_edit'); ?></a>
                            	</li>
							<?php } ?>
							<?php
                            if(!empty($row->action_urls)){
                                foreach($row->action_urls as $action_unique_id => $action_url){
                                    $action = $actions[$action_unique_id];
                                    ?>
                                    <li>
                                        <a href="<?php echo $action_url; ?>">
                                            <i class="fa <?php echo $action->css_class; ?>"></i> <?php echo $action->label?>
                                        </a>
                                    </li>
                                <?php }
                            }
                            ?>
                            <?php if (!$unset_read) { ?>
                                <li>
                                    <a href="<?php echo $row->read_url?>"><i class="fa fa-eye"></i> <?php echo $this->l('list_view')?></a>
                                </li>
                            <?php } ?>
                            <?php if (!$unset_delete) { ?>
                                <li>
                                    <a data-target="<?php echo $row->delete_url?>" href="javascript:void(0)" title="<?php echo $this->l('list_delete')?>" class="delete-row">
                                        <i class="fa fa-trash-o text-danger"></i>
                                        <span class="text-danger"><?php echo $this->l('list_delete')?></span>
                                    </a>
                                </li>
                            <?php } ?>
                            
                        </ul>
                    </div>
                </div>
                <div class="only-mobiles">
                    <div class="btn-group dropdown">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <?php echo $this->l('list_actions'); ?>
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="<?php echo $row->edit_url?>">
                                    <i class="fa fa-pencil"></i> <?php echo $this->l('list_edit'); ?>
                                </a>
                            </li>
                            <?php
                            if(!empty($row->action_urls)){
                                foreach($row->action_urls as $action_unique_id => $action_url){
                                    $action = $actions[$action_unique_id];
                                    ?>
                                    <li>
                                        <a href="<?php echo $action_url; ?>">
                                            <i class="fa <?php echo $action->css_class; ?>"></i> <?php echo $action->label?>
                                        </a>
                                    </li>
                                <?php }
                            }
                            ?>
                            <?php if (!$unset_read) { ?>
                                <li>
                                    <a href="<?php echo $row->read_url?>"><i class="fa fa-eye"></i> <?php echo $this->l('list_view')?></a>
                                </li>
                            <?php } ?>
                            <?php if (!$unset_delete) { ?>
                                <li>
                                    <a data-target="<?php echo $row->delete_url?>" href="javascript:void(0)" title="<?php echo $this->l('list_delete')?>" class="delete-row">
                                        <i class="fa fa-trash-o text-danger"></i> <span class="text-danger"><?php echo $this->l('list_delete')?></span>
                                    </a>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
        </td>
        <?php foreach($columns as $column){?>
            <td>
                <?php echo $row->{$column->field_name} != '' ? $row->{$column->field_name} : '&nbsp;' ; ?>
            </td>
        <?php }?>
    </tr>
<?php } ?>