import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calculator"
export default class extends Controller {
  static targets = ["total", "price", "quantity"]

  calculate(e) {
    const quantity = e.target;
    let sum = quantity.value * parseFloat(this.priceTarget.innerHTML.replace(/[^0-9\.]+/g, ""))
    this.totalTarget.innerText = '$' + sum.toFixed(2);
  }

  decrement() {
    const quantity = this.quantityTarget;
    if (quantity.value <= 1) return;
    quantity.value = parseInt(quantity.value) - 1;
    let sum = quantity.value * parseFloat(this.priceTarget.innerHTML.replace(/[^0-9\.]+/g, ""))
    this.totalTarget.innerText = '$' + sum.toFixed(2);
  }

  increment() {
    const quantity = this.quantityTarget;
    quantity.value = parseInt(quantity.value) + 1;
    let sum = quantity.value * parseFloat(this.priceTarget.innerHTML.replace(/[^0-9\.]+/g, ""))
    this.totalTarget.innerText = '$' + sum.toFixed(2);
  }
}
