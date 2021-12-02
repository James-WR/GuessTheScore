import { Controller } from "stimulus"

export default class extends Controller {
  static classes = ["new"]

  input() {
    this.element.classList.add(this.newClass)
    // this.element.classList.add()
  }
}
