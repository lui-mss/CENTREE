import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-user"
export default class extends Controller {
  static targets = ["formHidden"]

  // connect() {
  //   console.log("connected edit")
  // }

  show() {
    this.formHiddenTarget.classList.toggle("d-none")
  }
}
