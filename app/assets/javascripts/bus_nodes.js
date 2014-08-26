$(document).ready(function(){
  var vis = d3.select("#graph")
              .append("svg")
  .attr("width", 200).attr("height", 200);

  var x=20;
  var y=20;

  var nodes = [
      {x: 10, y: 50},
      {x: 70, y: 10},
      {x: 140, y: 20},
      {x: 160, y: 180}
    ]

  var links = [
    {source: nodes[0], target: nodes[1]},
    {source: nodes[2], target: nodes[1]},
    {source: nodes[1], target: nodes[3]}
  ]


  vis.selectAll("circle.nodes")
     .data(nodes)
     .enter()
     .append("svg:circle")
     .attr("cx", function(d) { return d.x; })
     .attr("cy", function(d) { return d.y; })
     .attr("r", "10px")
     .attr("fill", "black")

  vis.selectAll(".line")
     .data(links)
     .enter()
     .append("line")
     .attr("x1", function(d) { return d.source.x })
     .attr("y1", function(d) { return d.source.y })
     .attr("x2", function(d) { return d.target.x })
     .attr("y2", function(d) { return d.target.y })
     .style("stroke", "rgb(6,120,155)");
});
