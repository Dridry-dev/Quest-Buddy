import { Controller } from "@hotwired/stimulus"
// import Chart from 'chart.js/auto';


// Connects to data-controller="chartpage"
export default class extends Controller {
  static targets = ["myChartDeux"]
  static values =  {skills: Array}
  connect(){
    console.log(this.skillsValue);
    const labels = this.skillsValue.map(skill => {
      return skill.name
    });
    console.log(labels);
    const bob = this.skillsValue.map(skill => {
      return skill.level
    });
    console.log(bob);
    const ctx = this.myChartDeuxTarget;
    console.log(ctx);

    const data = {
      labels: labels,
      datasets: [{
        label: 'Skills',
        data: bob,
        fill: true,
        backgroundColor: 'rgba(245, 203, 92, 0.2)',
        borderColor: 'rgb(245, 203, 92)',
      pointBackgroundColor: 'rgb(245, 203, 92)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgba(207, 207, 207, 0.8)'
    },]
  };

  const config = {
    type: 'radar',
    data: data,
    options: {
      elements: {
        line: {
          borderWidth: 3
        }
      }
    },
  };

  const myChartDeux = new Chart(ctx, config)



  }
}
