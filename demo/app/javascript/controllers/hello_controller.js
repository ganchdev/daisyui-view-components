import { Controller } from "@hotwired/stimulus";

export default class HelloController extends Controller {
  connect() {
    console.log("Hello, World!");
  }
}
