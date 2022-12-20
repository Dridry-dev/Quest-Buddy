import { Controller } from "@hotwired/stimulus"
import Chart from 'chart.js/auto';


// Connects to data-controller="chart-js"
export default class extends Controller {
  static targets = ["myChart"]
  static values =  {skills: Array, userSkills: Array}
  connect() {
    const labels = this.skillsValue.map(skill => {
      return skill.name
    });
    const data = this.userSkillsValue.map(userSkill => {
      return userSkill.level
    });

    const ctx = this.myChartTarget
    const max = Math.max(...data);

    (function(){
      function decimalAdjust(type, value, exp) {
        // Si l'exposant vaut undefined ou zero...
        if (typeof exp === 'undefined' || +exp === 0) {
          return Math[type](value);
        }
        value = +value;
        exp = +exp;
        // Si value n'est pas un nombre
        // ou si l'exposant n'est pas entier
        if (isNaN(value) || !(typeof exp === 'number' && exp % 1 === 0)) {
          return NaN;
        }
        // Décalage
        value = value.toString().split('e');
        value = Math[type](+(value[0] + 'e' + (value[1] ? (+value[1] - exp) : -exp)));
        // Re "calage"
        value = value.toString().split('e');
        return +(value[0] + 'e' + (value[1] ? (+value[1] + exp) : exp));
      }
      // Arrondi décimal supérieur
      if (!Math.ceil10) {
        Math.ceil10 = function(value, exp) {
          return decimalAdjust('ceil', value, exp);
        };
      }
    })();

    const maximum = Math.ceil10(max, 1);
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
            suggestedMax: maximum,
          },
          x: {
            display: false
          }
        }
      }
    });
  }
}

  // data-value à ajouter pour rendre le graph
