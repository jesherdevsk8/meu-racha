import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["name", "nickname"];

  connect() {
    console.log("Hello Stimulus!! \n", this.element);
  }

  filterPlayers(event) {
    const searchTerm = event.target.value.toLowerCase();

    this.nameTargets.forEach((name) => {
      const playerNickname = name.nextElementSibling.textContent.toLowerCase();
      const playerName = name.textContent.toLowerCase();

      if (playerNickname.includes(searchTerm) || playerName.includes(searchTerm)) {
        name.parentElement.style.display = "";
      } else {
        name.parentElement.style.display = "none";  
      }
    });
  }
}