<script src="<?php echo base_url() ?>assets/plugins/Highcharts-4.1.5/js/highcharts.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/Highcharts-4.1.5/js/modules/funnel.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/Highcharts-4.1.5/js/modules/exporting.js"></script>

<style>
	.gugus { width:auto; }
</style>

<script type="text/javascript">
	$(function () {
	
		$('.gugus_tugas1').highcharts({
			chart: {
				type: 'pyramid',
				marginRight: 100
			},
			title: {
				text: 'Gugus Tugas',
				x: -50
			},
			plotOptions: {
				series: {
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b> ({point.y:,.0f})',
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
						softConnector: true
					}
				}
			},
			legend: {
				enabled: false
			},
			series: [{
				name: 'Gugus Tugas',
				data: [
					['Auditor Terampil',   1000],
					['Auditor Pertama',       800],
					['Auditor Muda', 600],
					['Auditor Madya',    300],
					['Auditor Utama',    100]
				]
			}]
		});
		
		$('.gugus_tugas2').highcharts({
			chart: {
				type: 'pyramid',
				marginRight: 100
			},
			title: {
				text: 'Gugus Tugas',
				x: -50
			},
			plotOptions: {
				series: {
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b> ({point.y:,.0f})',
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
						softConnector: true
					}
				}
			},
			legend: {
				enabled: false
			},
			series: [{
				name: 'Gugus Tugas',
				data: [
					['Auditor Terampil',   1000],
					['Auditor Pertama',       800],
					['Auditor Muda', 600],
					['Auditor Madya',    300]
				]
			}]
		});
		
		$('.gugus_tugas3').highcharts({
			chart: {
				type: 'pyramid',
				marginRight: 100
			},
			title: {
				text: 'Gugus Tugas',
				x: -50
			},
			plotOptions: {
				series: {
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b> ({point.y:,.0f})',
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
						softConnector: true
					}
				}
			},
			legend: {
				enabled: false
			},
			series: [{
				name: 'Gugus Tugas',
				data: [
					['Auditor Terampil',   1000],
					['Auditor Pertama',       800],
					['Auditor Muda', 600],
					['Auditor Madya',    300]
				]
			}]
		});
		
		$('.gugus_tugas4').highcharts({
			chart: {
				type: 'pyramid',
				marginRight: 100
			},
			title: {
				text: 'Gugus Tugas',
				x: -50
			},
			plotOptions: {
				series: {
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b> ({point.y:,.0f})',
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
						softConnector: true
					}
				}
			},
			legend: {
				enabled: false
			},
			series: [{
				name: 'Gugus Tugas',
				data: [
					['Auditor Terampil',   1000],
					['Auditor Pertama',       800],
					['Auditor Muda', 600],
					['Auditor Madya',    300]
				]
			}]
		});
		
		$('.gugus_tugas5').highcharts({
			chart: {
				type: 'pyramid',
				marginRight: 100
			},
			title: {
				text: 'Gugus Tugas',
				x: -50
			},
			plotOptions: {
				series: {
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b> ({point.y:,.0f})',
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
						softConnector: true
					}
				}
			},
			legend: {
				enabled: false
			},
			series: [{
				name: 'Gugus Tugas',
				data: [
					['Auditor Terampil',   1000],
					['Auditor Pertama',       800],
					['Auditor Muda', 600],
					['Auditor Madya',    300]
				]
			}]
		});
		
		$('.gugus_tugas6').highcharts({
			chart: {
				type: 'pyramid',
				marginRight: 100
			},
			title: {
				text: 'Gugus Tugas',
				x: -50
			},
			plotOptions: {
				series: {
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b> ({point.y:,.0f})',
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
						softConnector: true
					}
				}
			},
			legend: {
				enabled: false
			},
			series: [{
				name: 'Gugus Tugas',
				data: [
					['Auditor Terampil', 1000],
					['Auditor Pertama', 800],
					['Auditor Muda', 600],
					['Auditor Madya', 300]
				]
			}]
		});
	});
</script>

<!-- BEGIN LEFT SIDEBAR -->   

<div class="col-md-9 col-sm-9 blog-posts margin-bottom-40">
	
    <div role="tabpanel">
    
      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#semua" aria-controls="home" role="tab" data-toggle="tab">Semua</a></li>
        <li role="presentation"><a href="#wilayah1" aria-controls="profile" role="tab" data-toggle="tab">Wilayah 1</a></li>
        <li role="presentation"><a href="#wilayah2" aria-controls="messages" role="tab" data-toggle="tab">Wilayah 2</a></li>
        <li role="presentation"><a href="#wilayah3" aria-controls="settings" role="tab" data-toggle="tab">Wilayah 3</a></li>
        <li role="presentation"><a href="#wilayah4" aria-controls="settings" role="tab" data-toggle="tab">Wilayah 4</a></li>
        <li role="presentation"><a href="#wilayah5" aria-controls="settings" role="tab" data-toggle="tab">Wilayah 5</a></li>
      </ul>
    
      <!-- Tab panes -->
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="semua"> <div class="gugus_tugas1 gugus"></div> </div>
        <div role="tabpanel" class="tab-pane" id="wilayah1"> <div class="gugus_tugas2 gugus"></div> </div>
        <div role="tabpanel" class="tab-pane" id="wilayah2"> <div class="gugus_tugas3 gugus"></div> </div>
        <div role="tabpanel" class="tab-pane" id="wilayah3"> <div class="gugus_tugas4 gugus"></div> </div>
        <div role="tabpanel" class="tab-pane" id="wilayah4"> <div class="gugus_tugas5 gugus"></div> </div>
        <div role="tabpanel" class="tab-pane" id="wilayah5"> <div class="gugus_tugas6 gugus"></div> </div>
      </div>
    
    </div>


</div>