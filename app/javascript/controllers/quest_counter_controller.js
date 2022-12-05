import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quest-counter"
export default class extends Controller {
  static targets = ["div"]
  static values = {category: String, quest: String, threshold: Number}


  connect() {
    this.counter = 0
    console.log (this.categoryValue)
  }
  clicked(){
    this.counter += 1
    this.divTarget.innerHTML = this.counter
    console.log(this.thresholdValue)
    if (this.counter >= this.thresholdValue){
      this.connectUserGoal()
    }
  }

  connectUserGoal(){
    // this.divTarget.innerHTML = this.score
    // fetch(`/categories/${this.categoryValue}/quests/${this.questValue}/user_goals`), {
    // method: "POST",
    // headers: {"Content-Type": "application/json"},
    // body: JSON.stringify({"email": emailValue, "password": passwordValue}) }
    // .then(response => response.json())
    // .then((data) => {
    //   console.log(data);
    //   this.divTarget.innerHTML = '<%= @goal.score %>'
    // })
  }
}
//fetch vers mon create pour creer mon instance
