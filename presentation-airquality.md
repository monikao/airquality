Airquality - shiny application
========================================================
author: Monika Ożarek
date: Tue Oct 07 00:10:14 2014
transition: rotate

Description
========================================================

The Shiny App I wrote displays particular elements measuring air quality:

-Ozone

-Solar Radiation

-Wind

-Temperaure

for the month May to September 1973 in New York.

The data were obtained from the New York State Department of Conservation (ozone data) and the National Weather Service (meteorological data).

Example
========================================================
Here are the first few lines of the database:

```
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
```

Plot example: 
========================================================
Ozone in May

```
<!-- ColumnChart generated in R 3.1.1 by googleVis 0.5.5 package -->
<!-- Tue Oct 07 00:10:15 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataColumnChartID1408500ebb1 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "1",
41 
],
[
 "2",
36 
],
[
 "3",
12 
],
[
 "4",
18 
],
[
 "5",
null 
],
[
 "6",
28 
],
[
 "7",
23 
],
[
 "8",
19 
],
[
 "9",
8 
],
[
 "10",
null 
],
[
 "11",
7 
],
[
 "12",
16 
],
[
 "13",
11 
],
[
 "14",
14 
],
[
 "15",
18 
],
[
 "16",
14 
],
[
 "17",
34 
],
[
 "18",
6 
],
[
 "19",
30 
],
[
 "20",
11 
],
[
 "21",
1 
],
[
 "22",
11 
],
[
 "23",
4 
],
[
 "24",
32 
],
[
 "25",
null 
],
[
 "26",
null 
],
[
 "27",
null 
],
[
 "28",
23 
],
[
 "29",
45 
],
[
 "30",
115 
],
[
 "31",
37 
] 
];
data.addColumn('string','Day');
data.addColumn('number','Ozone');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartColumnChartID1408500ebb1() {
var data = gvisDataColumnChartID1408500ebb1();
var options = {};
options["allowHtml"] = true;
options["width"] = 75;

    var chart = new google.visualization.ColumnChart(
    document.getElementById('ColumnChartID1408500ebb1')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartColumnChartID1408500ebb1);
})();
function displayChartColumnChartID1408500ebb1() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartColumnChartID1408500ebb1"></script>
 
<!-- divChart -->
  
<div id="ColumnChartID1408500ebb1" 
  style="width: 75; height: automatic;">
</div>
```

Conclusions:
=========================================================
It is verry useful to present data in an interactive way using googleVis plots !
