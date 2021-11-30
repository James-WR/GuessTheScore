import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form"]
  connect() {
    console.log("button clicked")
    console.log(this.formTargets)
    console.log(this.formTargets.slice(0,2))
  }
  submit() {
    let count = 50
    this.formTargets.forEach((form) => {
      setTimeout(function() {
        form.submit()
      }, count)
      count += 50
    });
  }
}
