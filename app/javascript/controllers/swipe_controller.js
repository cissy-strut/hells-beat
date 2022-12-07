import { Controller } from "@hotwired/stimulus"
import 'hammerjs'

// Connects to data-controller="swipe"
export default class extends Controller {
  static targets = [ "refuseButton", "acceptButton"]

  connect() {
    console.log(this.refuseButtonTarget)
    console.log(this.acceptButtonTarget)
    let profiles = document.querySelectorAll('.profile');

    const maxAngle = 42;
    const smooth = 0.3;
    const threshold = 42;
    const thresholdMatch = 150;
    const refuseButton = this.refuseButtonTarget
    const acceptButton = this.acceptButtonTarget
    profiles.forEach(setupDragAndDrop);

    function setupDragAndDrop(profile) {
      const hammertime = new Hammer(profile);

      hammertime.on('pan', function (e) {
        profile.classList.remove('profile--back');
        let posX = e.deltaX;
        let posY = Math.max(0, Math.abs(posX * smooth) - 42);
        let angle = Math.min(Math.abs(e.deltaX * smooth / 100), 1) * maxAngle;
        if (e.deltaX < 0) {
          angle *= -1;
        }

        profile.style.transform = `translateX(${posX}px) translateY(${posY}px) rotate(${angle}deg)`;
        profile.classList.remove('profile--matching');
        profile.classList.remove('profile--nexting');
        if (posX > thresholdMatch) {
          profile.classList.add('profile--matching');
        } else if (posX < -thresholdMatch) {
          profile.classList.add('profile--nexting');
        }

        if (e.isFinal) {
          profile.style.transform = ``;
          if (posX > thresholdMatch) {
            acceptButton.form.submit()
          } else if (posX < -thresholdMatch) {
            console.log("swipe gauche ?")
            refuseButton.form.submit()
          } else {
            profile.classList.add('profile--back');
          }
        }
      });
    }

  }
}
