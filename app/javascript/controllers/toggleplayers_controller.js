import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggleplayers"
export default class extends Controller {
  connect() {
    console.log("TogglePlayers connected");
  }
}
