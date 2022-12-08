import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quest-counter"
export default class extends Controller {
  static targets = ["div", "progressBar"]
  static values = {category: String, quest: String, threshold: Number, lastgoal: Number, userquest: String}


  connect() {
    this.counter = 0
    console.log (this.lastgoalValue)
    console.log (this.progressBarTarget)

  }
  clicked(){
    this.counter += 1
    this.divTarget.innerHTML = this.counter
    console.log("vpivpi");
    this.progressBarTarget.style.width = `${100 * (this.counter/this.lastgoalValue)}%`
    console.log(this.thresholdValue)
    if (this.counter == this.lastgoalValue){
      window.location.replace(`/categories/${this.categoryValue}/quests/${this.questValue}/user_quests/${this.userquestValue}`)
    }
    if (this.counter >= this.thresholdValue && this.counter < this.lastgoalValue) {
      this.connectUserGoal()
    }
  }

  connectUserGoal(){
    // this.divTarget.innerHTML = this.threshol
    fetch(`/categories/${this.categoryValue}/quests/${this.questValue}/user_goals`, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: JSON.stringify({ "threshold": this.thresholdValue })
    })
      .then(response => response.json())
      .then((data) => {
        this.thresholdValue = data.threshold
      })
  }
}
//fetch vers mon create pour creer mon instance
