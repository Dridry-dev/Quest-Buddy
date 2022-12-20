import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tuto"

export default class extends Controller {
  connect() {
  }
  toggle() {
    let skill = document.getElementById('skill-toggled')
    let tuto = document.getElementById('tuto-toggled')
    let close = document.getElementById('close-toggled')
    if (tuto.classList.contains("active")) {
      tuto.classList.remove("active")
      close.classList.remove("active")
    } else {
      tuto.classList.add("active")
      close.classList.add("active")
      skill.classList.add("active")
    }
  }

  toggle2() {
    let skill = document.getElementById('skill-toggled')
    let tuto = document.getElementById('tuto-toggled')
    let tuto2 = document.getElementById('tuto2-toggled')
    let close = document.getElementById('close-toggled')
    let close2 = document.getElementById('close2-toggled')
    if (tuto2.classList.contains("active")) {
      tuto2.classList.remove("active")
      tuto.classList.remove("active")
      close.classList.remove("active")
      close2.classList.remove("active")
      skill.classList.remove("active")
    } else {
      tuto.classList.remove("active")
      tuto2.classList.add("active")
      close.classList.add("active")
      close2.classList.add("active")

    }
  }

  close() {
    let tuto = document.getElementById('tuto-toggled')
    let skill = document.getElementById('skill-toggled')
    let close = document.getElementById('close-toggled')
    let tuto2 = document.getElementById('tuto2-toggled')
    let close2 = document.getElementById('close2-toggled')
    if (tuto.classList.contains("active")) {
      tuto.classList.remove("active")
      tuto2.classList.remove("active")
      close.classList.remove("active")
      close2.classList.remove("active")
      skill.classList.remove("active")
    } else {
      tuto.classList.remove("active")
      tuto2.classList.remove("active")
      close.classList.add("active")
      close2.classList.add("active")
      skill.classList.remove("active")
    }
  }
}
