import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "main"];

  submit(event) {
    event.target.disabled = true
    let count = 50
    this.formTargets.forEach((form) => {
      setTimeout(function() {
        form.submit()
      }, count)
      count += 50
    });
    this.buttonTarget.submit()
  }
  update() {
    this.mainTarget.classList.remove("d-none");
  }
}
