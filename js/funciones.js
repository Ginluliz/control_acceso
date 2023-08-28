var ctx = document.getElementById("entradas");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Blue", "Blue", "Yellow", "Green"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745'],
    }],
  },
});

var ctx = document.getElementById("carreras");
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["Blue", "Blue", "Yellow", "Green"],
    datasets: [{
      data: [33, 15.58, 11.25, 8.32],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745'],
    }],
  },
});