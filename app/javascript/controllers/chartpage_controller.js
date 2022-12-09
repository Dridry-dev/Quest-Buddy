import { Controller } from "@hotwired/stimulus"
import Chart from 'chart.js/auto';


// Connects to data-controller="chartpage"
export default class extends Controller {
  static targets = ["myChartDeux"]
  static values =  {skills: Array, userSkills: Array}
  connect(){
    console.log(this.skillsValue);
    const labels = this.skillsValue.map(skill => {
      return skill.name
    });
    console.log(labels);
    const bob = this.userSkillsValue.map(userSkill => {
      return userSkill.level
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
      pointBackgroundColor: '#000',
      pointBorderColor: 'rgb(245, 203, 92)',
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
      },
      scales: {
        r: {
            suggestedMin: 1,
            suggestedMax: 100,
        }
    }
    },
  };

  const myChartDeux = new Chart(ctx, config)



  }
}
