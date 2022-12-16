import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tuto"

export default class extends Controller {
  connect() {
    console.log("YES");
  }
  toggle() {
    let tuto = document.getElementById('tuto-toggled')
    let tuto2 = document.getElementById('tuto2-toggled')
    if (tuto.classList.contains("active")) {
      tuto.classList.remove("active")
      tuto2.classList.remove("active")
    } else {
      tuto.classList.add("active")
      tuto2.classList.add("active")
    }
  }

  toggledeux() {
    let tuto = document.getElementById('tuto-toggled')
    let tuto2 = document.getElementById('tuto2-toggled')
    if (tuto.classList.contains("active")) {
      tuto.classList.remove("active")
      tuto2.classList.remove("active")
    } else {
      tuto.classList.add("active")
      tuto2.classList.add("active")
    }
  }
}
