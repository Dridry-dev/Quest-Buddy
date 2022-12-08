import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"

export default class extends Controller {


  connect() {

  }
  toggle() {
    let test = document.getElementById('dropdown-toggled')
    console.log(test.classList);
    if (test.classList.contains("active")) {
      test.classList.remove("active")
      console.log("aaa");

    } else {
      test.classList.add("active")
      console.log("bbb");
    }
  }
}
