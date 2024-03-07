import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["cardNumber", "expiration", "ccv", "cardHolder", "card"]

    insertNumber(e) {
        const digits = e.target.value.replace(/\D/g, "");
        let formattedInput = "";
        for (let i = 0; i < digits.length; i++) {
            if (i % 4 === 0 && i > 0) {
                formattedInput += " ";
            }
            formattedInput += digits[i];
        }
        e.target.value = formattedInput;
        this.cardNumberTarget.innerHTML = formattedInput;
    }

    insertExpiration(e) {
        const date = e.target.value.replace(/\D/g, "");
        let formattedInput = "";
        for (let i = 0; i < date.length; i++) {
            if (i % 2 === 0 && i > 0) {
                formattedInput += "/";
            }
            formattedInput += date[i];
        }
        e.target.value = formattedInput;
        this.expirationTarget.innerHTML = formattedInput;
    }

    insertCvv(e) {
        const cvv = e.target.value.replace(/\D/g, "");
        e.target.value = cvv;
        this.ccvTarget.innerHTML = cvv;
    }

    insertCardHolder(e) {
        this.cardHolderTarget.innerHTML = e.target.value;
    }

    flipCard() {
        const cardEl = this.cardTarget;
        if (cardEl.classList.contains("rearIsVsible")) {
            cardEl.classList.remove("rearIsVsible");
        } else {
            cardEl.classList.add("rearIsVsible");
        }
    }
}