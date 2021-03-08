import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "sidebar" ]

  connect() {
    console.log("hello")
  }

  showSidebar() {
    this.sidebarTarget.classList.toggle("open");
  }
}
