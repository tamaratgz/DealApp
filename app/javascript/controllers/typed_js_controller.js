import { Controller } from "@hotwired/stimulus"

import Typed from "typed.js"

export default class extends Controller {

  connect() {
    console.log("Hello from typedjs")

    new Typed(this.element, {
      strings: ["DEAL."],
      typeSpeed: 100,
      loop: true,
      showCursor: false
    });
  }
}
