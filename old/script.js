function init() {
  if (document.querySelector(".swiper-testimonials")) {
    var slideNumberElement = document.querySelector(".actual-index-swiper");
    var swiper = new Swiper(".swiper-testimonials", {
      effect: "fade",
      speed: 550,
      loop: true,
      on: {
        slideChange: function () {
          slideNumberElement.textContent = this.realIndex + 1;
        },
      },
    });

    // Referenzen auf die Buttons
    var prevButton = document.querySelector(".prev-testimonial");
    var nextButton = document.querySelector(".next-testimonial");

    // Eventlistener für die Buttons
    if (prevButton) {
      prevButton.addEventListener("click", function () {
        swiper.slidePrev();
      });
    }

    if (nextButton) {
      nextButton.addEventListener("click", function () {
        swiper.slideNext();
      });
    }
  }

  const toggleButton = document.querySelector(".toggle-menu");
  const openButton = document.querySelector(".open-button");
  const closeButton = document.querySelector(".close-button");
  const mobileNav = document.querySelector(".mobile-nav");
  const body = document.body;

  toggleButton.addEventListener("click", function () {
    if (openButton.classList.contains("block")) {
      openButton.classList.remove("block");
      openButton.classList.add("hidden");
      closeButton.classList.remove("hidden");
      closeButton.classList.add("block");
      mobileNav.classList.add("open");
      body.classList.add("fix-body");
    } else {
      openButton.classList.remove("hidden");
      openButton.classList.add("block");
      closeButton.classList.remove("block");
      closeButton.classList.add("hidden");
      mobileNav.classList.remove("open");
      body.classList.remove("fix-body");
    }
  });

  mobileNav.querySelectorAll("a").forEach((link) => {
    link.addEventListener("click", () => {
      body.classList.remove("fix-body");
    });
  });

  const twoColButton = document.querySelector(".button-two-col-grid");
  const threeColButton = document.querySelector(".button-three-col-grid");
  const caseStudyGrid = document.querySelector(".case-study-grid");

  if (twoColButton) {
    twoColButton.addEventListener("click", function () {
      twoColButton.classList.add("active");
      threeColButton.classList.remove("active");
      caseStudyGrid.classList.remove("three-column-grid");
      caseStudyGrid.classList.add("two-column-grid");
    });

    threeColButton.addEventListener("click", function () {
      threeColButton.classList.add("active");
      twoColButton.classList.remove("active");
      caseStudyGrid.classList.remove("two-column-grid");
      caseStudyGrid.classList.add("three-column-grid");
    });
  }

  // Alle Elemente mit der Klasse 'case-study-item' auswählen
  const caseStudyItems = document.querySelectorAll(".case-study-item");
  const emailMarquee = document.querySelector(".marquee-email");
  // Das Element mit der ID 'circle-cursor' auswählen
  const circleCursor = document.getElementById("circle-cursor");

  // Funktion zum Hinzufügen der Klasse 'card-hover'
  function addHoverClass() {
    circleCursor.classList.add("card-hover");
  }

  // Funktion zum Entfernen der Klasse 'card-hover'
  function removeHoverClass() {
    circleCursor.classList.remove("card-hover");
  }

  // Event Listener für jeden 'case-study-item' hinzufügen
  if (caseStudyItems.length > 0) {
    caseStudyItems.forEach((item) => {
      item.addEventListener("mouseover", addHoverClass);
      item.addEventListener("mouseout", removeHoverClass);
    });
  }
  if (emailMarquee) {
    emailMarquee.addEventListener("mouseover", function () {
      circleCursor.classList.add("email-marquee-hover");
    });
    emailMarquee.addEventListener("mouseout", function () {
      circleCursor.classList.remove("email-marquee-hover");
    });
  }

  const lenis = new Lenis();

  lenis.on("scroll", ScrollTrigger.update);

  gsap.ticker.add((time) => {
    lenis.raf(time * 1000);
  });

  gsap.ticker.lagSmoothing(0);

  gsap.registerPlugin(ScrollTrigger);
  gsap.registerPlugin(ScrollToPlugin);

  // create
  let mm = gsap.matchMedia();

  mm.add("(min-width: 749.1px)", () => {
    //Cursor
    let cursor = document.querySelector("#circle-cursor");
    let cursoractive = false;
    gsap.set(cursor, { xPercent: -50, yPercent: -50 });
    let xToCursor = gsap.quickTo(cursor, "x", {
        duration: 0.2,
        ease: "power3",
      }),
      yToCursor = gsap.quickTo(cursor, "y", {
        duration: 0.2,
        ease: "power3",
      });

    document.body.addEventListener("mousemove", (e) => {
      xToCursor(e.clientX);
      yToCursor(e.clientY);
      if (!cursoractive) {
        cursoractive = true;
        gsap.set(cursor, { opacity: 1, delay: 0.2 });
      }
    });

    let downButton = document.querySelector(".down-button");
    if (downButton) {
      let isInViewport = function (element) {
        let rect = element.getBoundingClientRect();
        return rect.top >= 0 && rect.top <= window.innerHeight;
      };

      if (isInViewport(downButton)) {
        var offsetParent = downButton.getBoundingClientRect();
        gsap.to(downButton, {
          scrollTrigger: {
            trigger: downButton,
            start: "top " + offsetParent.top,
            scrub: 2,
          },
          yPercent: -20,
        });
      } else {
        gsap.to(downButton, {
          scrollTrigger: {
            trigger: downButton,
            scrub: 2,
          },
          yPercent: -20,
        });
      }
    }

    let parallax_images = document.querySelectorAll(".img-animate-parallax");
    if (parallax_images.length) {
      parallax_images.forEach((image) => {
        let imgWrapper = image.querySelector(".img-wrapper-animation");
        let realImage = imgWrapper.querySelector("img");
        let tl = gsap.timeline({
          scrollTrigger: {
            trigger: image,
            scrub: 2,
          },
          defaults: {
            ease: "none",
          },
        });
        tl.fromTo(imgWrapper, { yPercent: 10 }, { yPercent: -10 });
      });
    }
  });

  let contactSection = document.querySelector("#contact");
  if (contactSection) {
    let scrollContactTrigger = document.querySelectorAll(".scroll-to-contact");
    scrollContactTrigger.forEach((trigger) => {
      trigger.addEventListener("click", () => {
        gsap.to(window, { duration: 2, scrollTo: "#contact" });
      });
    });
  }

  let loadingScreen = document.querySelector(".loading-screen");
  if (loadingScreen) {
    let counterElement = loadingScreen.querySelector(".percent-counter");
    gsap.set(counterElement, { opacity: 1, yPercent: 100 });
    let tl = gsap.timeline({
      defaults: { duration: 3, ease: "power3.inOut" },
    });

    tl.to(counterElement, {
      yPercent: 0,
    })
      .to(
        counterElement,
        {
          "--num": 100,
          onUpdate: function () {
            let currentValue = parseInt(
              gsap.getProperty(counterElement, "--num")
            );
            counterElement.setAttribute("data-num", currentValue);
          },
        },
        "<=+1.5"
      )
      .to(loadingScreen, {
        xPercent: -100,
      });
  }
}

const swup = new Swup();
// Run once when page loads
if (document.readyState === "complete") {
  init();
} else {
  document.addEventListener("DOMContentLoaded", () => init());
}
// Run after every additional navigation by swup
swup.hooks.on("page:view", () => init());
