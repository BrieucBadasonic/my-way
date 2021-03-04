import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "sidebar" ]

  connect() {

  }

  showSidebar() {
    this.sidebarTarget.classList.toggle("collapsed");
  }
}
