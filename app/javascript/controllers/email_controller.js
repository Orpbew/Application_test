import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="email"
export default class extends Controller {
  connect() {
    //console.log("kikou from email-controller")
    const emailInput = document.querySelector("#e-mail");
    console.log(emailInput.value);
    //console.log("Frome test.js -- Enfiiiiiinnnn !!!")
  }
}
