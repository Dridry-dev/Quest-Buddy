import { Controller } from "@hotwired/stimulus"
import Chart from 'chart.js/auto';


// Connects to data-controller="chart-js"

export default class extends Controller {
  static targets = ["myChart"]
  static values =  {skills: Array}
  connect() {
    console.log(this.skillsValue);
    const labels = this.skillsValue.map(skill => {
      return skill.name
    });
    console.log(labels);
    const data = this.skillsValue.map(skill => {
      return skill.level
    });
    console.log(data);
    const ctx = this.myChartTarget
    console.log(ctx);
    const myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels,
          datasets: [{
            label: false,
            data,
            backgroundColor: [
              '#F5CB5C',
              '#F5CB5C',
              '#F5CB5C',
              ],
              borderColor: [
                '#ffffff',
                '#ffffff',
                '#ffffff',
              ],
              borderWidth: 5
          }]
      },
      options: {
        plugins: {
          legend: {
              display: false
          },
      },
        scales: {
            y: {
                beginAtZero: true,
            }
        }
      }
      });
    }
  }

  // data-value à ajouter pour rendre le graph
