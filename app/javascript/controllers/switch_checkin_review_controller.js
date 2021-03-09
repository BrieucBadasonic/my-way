import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "checkinbtn", "reviewbtn" ]

  connect() {
    console.log(this.checkinbtnTarget)
  }
  switch() {
    // const checkinToReview = document.getElementById("btn-switch");
    // if (checkinToReview) {
      this.checkinbtnTarget.style.visibility = "hidden";
    console.log(this.reviewbtnTarget)
      this.reviewbtnTarget.classList.remove("hidden")
    // }
  }
}
console.log("outside")
