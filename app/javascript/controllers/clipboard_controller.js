import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["input"];
  static values = {
    feedbackText: String,
    code: String
  }

  copy(event) {
    // this.inputTarget.select();
    navigator.clipboard.writeText(this.codeValue)
    // document.execCommand('copy');
    event.currentTarget.disabled = true;
    event.currentTarget.innerText = this.feedbackTextValue;
  }
}
