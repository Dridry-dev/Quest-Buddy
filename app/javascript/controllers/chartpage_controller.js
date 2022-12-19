import { Controller } from "@hotwired/stimulus"
import Chart from 'chart.js/auto';


// Connects to data-controller="chartpage"
export default class extends Controller {
  static targets = ["myChartDeux"]
  static values =  {skills: Array, userSkills: Array}
  connect(){
    const labels = this.skillsValue.map(skill => {
      return skill.name
    });
    const bob = this.userSkillsValue.map(userSkill => {
      return userSkill.level
    });
    const ctx = this.myChartDeuxTarget;
    const data = {
      labels: labels,
      datasets: [{
        label: ' ' + ' ' + 'Level' + ' ' + ' '  ,
        data: bob,
        fill: true,
        backgroundColor: 'rgba(245, 203, 92, 0.2)',
        borderColor: 'rgb(245, 203, 92)',
      pointBackgroundColor: '#000',
      pointBorderColor: 'rgb(245, 203, 92)',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgba(207, 207, 207, 0.8)'
    },]
  };
  const max = Math.max(...bob);
  console.log(max);

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
  console.log(Math.ceil10(max, 1));

  const config = {
    type: 'radar',
    data: data,
    options: {
      elements: {
        line: {
          borderWidth: 3
        }
      },
      scales: {
        r: {
            suggestedMin: 1,
            suggestedMax: maximum,
        }
    }
    },
  };

  const myChartDeux = new Chart(ctx, config)
  }
}
