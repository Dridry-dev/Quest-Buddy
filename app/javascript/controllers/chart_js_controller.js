import { Controller } from "@hotwired/stimulus"
import Chart from 'chart.js/auto';


// Connects to data-controller="chart-js"

export default class extends Controller {
  static targets = ["myChart"]
  connect() {


    const ctx = this.myChartTarget
    console.log(ctx);
    const myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            'Force',
            'Cardio',
            'Endurance',
          ],
          datasets: [{
            label: false,
            data: [0, 10, 14, 13],
            backgroundColor: [
              '#ACD9D0',
              '#0F7373',
              '#F2E7DD',
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
