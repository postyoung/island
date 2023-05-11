// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("myBarChart");
var myLineChart = new Chart(ctx, {
	type : 'bar',
	data : {
		labels : [ "회원", "관리자", "소모임", "세미나" ],
		datasets : [ {
			label : "Revenue",
			backgroundColor : "rgba(2,117,216,1)",
			borderColor : "rgba(2,117,216,1)",
			data : [ 1557, 157, 1601, 1601 ],
		} ],
	},
	options : {
		scales : {
			xAxes : [ {
				time : {
					unit : 'month'
				},
				gridLines : {
					display : false
				},
				ticks : {
					maxTicksLimit : 6
				}
			} ],
			yAxes : [ {
				ticks : {
					min : 0,
					max : 2000,
					maxTicksLimit : 5
				},
				gridLines : {
					display : true
				}
			} ],
		},
		legend : {
			display : false
		}
	}
});