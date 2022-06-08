import { Controller } from "stimulus"
import * as bootstrap from "bootstrap";

export default class extends Controller {
  connect() {
    this.modal = new bootstrap.Modal(this.element)
    this.modal.show()

  }
}
