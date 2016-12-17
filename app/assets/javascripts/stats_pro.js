if ($(".dashboards.stats").length > 0) {
 google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);


      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
         ['Month', 'Chairs', 'Lamps', 'Tables', 'Paintings', 'Average'],
         ['2016/05',  16,      93,         52,             99,                 61],
         ['2016/06',  13,      112,        59,             126,                68],
         ['2016/07',  15,      116,        58,             80,                 62],
         ['2016/08',  13,      111,        61,             96,                 60],
         ['2016/09',  513,      69,        62,            102,                125]
      ]);

    var options = {
      title : 'N° of Orders sold',
      vAxis: {title: 'N° Orders'},
      hAxis: {title: 'Month'},
      seriesType: 'bars',
      series: {4: {type: 'line'}}
    };

    var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
}
