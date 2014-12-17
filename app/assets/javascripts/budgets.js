$(function () { 
    var rooms_sold = parseInt($("#rooms_sold").text());
    var rooms_available = parseInt($("#rooms_available").text());
    var year = $("#year").text();

    $('#container').highcharts({
        chart: {
            type: 'bar'
        },
        title: {
            text: 'Occupancy rate'
        },
        xAxis: {
            categories: [year]
        },
        yAxis: {
            title: {
                text: ''
            }
        },
        series: [{
            name: 'Rooms_sold',
            data: [rooms_sold]
        }, {
            name: 'Rooms_available',
            data: [rooms_available]
        }]
    });
});
