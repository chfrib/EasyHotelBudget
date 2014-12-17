$(function () { 
    var rooms_sold = parseInt($("#rooms_sold").text());
    var rooms_available = parseInt($("#rooms_available").text());
    var year = $("#year").text();

    $('#container1').highcharts({
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
            name: 'Rooms sold',
            data: [rooms_sold]
        }, {
            name: 'Rooms available',
            data: [rooms_available]
        }]
    });

$(function () {
    var room_sales_proportion = parseFloat($("#room_sales_proportion").text());
    var food_sales_proportion = parseFloat($("#food_sales_proportion").text());
    var beverage_sales_proportion = parseFloat($("#beverage_sales_proportion").text());
    var telephone_sales_proportion = parseFloat($("#telephone_sales_proportion").text());
    var other_sales_proportion = parseFloat($("#other_sales_proportion").text());

    $('#container2').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 1,//null,
            plotShadow: false
        },
        title: {
            text: 'Sales'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Sales Share',
            data: [
                ['Room Sales',   room_sales_proportion],
                ['Food Sales',   food_sales_proportion],
                ['Beverage Sales',   beverage_sales_proportion],
                ['Telephone Sales',    telephone_sales_proportion],
                ['Other Sales',   other_sales_proportion]
            ]
        }]
    });
});
});
