// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    document.querySelector("input[type='hidden']#poll_deadline_1i").remove()
    document.querySelector("input[type='hidden']#poll_deadline_2i").remove()
    document.querySelector("input[type='hidden']#poll_deadline_3i").remove()
  }
}
