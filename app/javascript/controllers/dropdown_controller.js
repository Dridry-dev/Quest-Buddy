import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"

export default class extends Controller {


  connect() {

  }
  toggle() {
    let test = document.getElementById('dropdown-toggled')
    let test2 = document.getElementById('dropdown-toggled-deux')
    let test3 = document.getElementById('dropdown-toggled-trois')
    if (test.classList.contains("active")) {
      test.classList.remove("active")
    } else {
      test.classList.add("active")
      test2.classList.remove("active")
      test3.classList.remove("active")
    }
  }

  toggledeux() {
    let test = document.getElementById('dropdown-toggled-deux')
    let test2 = document.getElementById('dropdown-toggled')
    let test3 = document.getElementById('dropdown-toggled-trois')
    console.log(test.classList);
    if (test.classList.contains("active")) {
      test.classList.remove("active")

    } else {
      test.classList.add("active")
      test2.classList.remove("active")
      test3.classList.remove("active")
    }
  }

  toggletrois() {
    let test = document.getElementById('dropdown-toggled-trois')
    let test2 = document.getElementById('dropdown-toggled')
    let test3 = document.getElementById('dropdown-toggled-deux')
    console.log(test.classList);
    if (test.classList.contains("active")) {
      test.classList.remove("active")

    } else {
      test.classList.add("active")
      test2.classList.remove("active")
      test3.classList.remove("active")
    }
  }
}
