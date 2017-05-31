// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


// Set up the chart
  $(document).ready(function() {

    if($('#mostpop').length) { // Only run the chart code on dashboard page
      Highcharts.chart('mostpop', {
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: 0,
          plotShadow: false
      },
      title: {
          text: 'This Month\'s Best sellers',
          // align: 'center',
          // verticalAlign: 'middle',
          y: 40
      },
      subtitle: {
        text: '<strong>Most<br>Popular</br></strong>',
        align: 'center',
        verticalAlign: 'middle',
        y:70
    },
      tooltip: {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      },
      plotOptions: {
          pie: {
              dataLabels: {
                  enabled: true,
                  distance: -50,
                  style: {
                      fontWeight: 'bold',
                      color: 'white'
                  }
              },
              startAngle: -90,
              endAngle: 90,
              center: ['50%', '75%']
          }
      },
      series: [{
          type: 'pie',
          name: 'Browser share',
          innerSize: '50%',
          data: [
              ['5W30 Reg',   10.38],
              ['5W40 Full Syn',       56.33],
              ['0W20 Full Syn', 24.03],
              ['5W30 Fill Syn',    34.77],
              {
                  name: 'Proprietary or Undetectable',
                  y: 0.2,
                  dataLabels: {
                      enabled: false
                  }
              }
          ]
      }]
  });


  Highcharts.chart('newarr', {
      chart: {
          type: 'line'
      },
      title: {
          text: 'Monthly Average Sales'
      },
      subtitle: {
          text: ''
      },
      xAxis: {
          categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
      },
      yAxis: {
          title: {
              text: 'Sales (CAD)'
          }
      },
      plotOptions: {
          line: {
              dataLabels: {
                  enabled: true
              },
              enableMouseTracking: false
          }
      },
      series: [{
          name: 'Today',
          data: [7.0, 6.9, 9.5, 14.5, 16.4]
      }, {
          name: 'Last Year',
          data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
      }]
  });
  }

});
