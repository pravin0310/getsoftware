(function ($) {
  $(function () {
    $(".sidenav").sidenav();
  }); // end of document ready
})(jQuery); // end of jQuery name space

// glider settings

new Glider(document.querySelector(".glider"), {
  slidesToShow: 5,
  // slidesToScroll:3,
  draggable: true,
  dots: "#dots",
  arrows: {
    prev: ".glider-prev",
    next: ".glider-next",
  },
  responsive: [
    {
      // screens greater than >= 700px
      breakpoint: 700,
      settings: {
        // Set to `auto` and provide item width to adjust to viewport
        slidesToShow: 3,
        slidesToScroll: "auto",
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 1024px
      breakpoint: 1024,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 100px
      breakpoint: 100,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
        dots: false, // iadded
      },
    },
    {
      // screens greater than >= 400px
      breakpoint: 340,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 400px
      breakpoint: 400,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
  ],
});

// second glider


new Glider(document.querySelector(".secondndglid"), {
  slidesToShow: 5,
  // slidesToScroll:3,
  draggable: true,
  dots: "#dotsscnd",
  arrows: {
    prev: ".scndprev",
    next: ".scndnxt",
  },
  responsive: [
    {
      // screens greater than >= 700px
      breakpoint: 600,
      settings: {
        // Set to `auto` and provide item width to adjust to viewport
        slidesToShow: 3,
        slidesToScroll: "auto",
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 1024px
      breakpoint: 1024,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 100px
      breakpoint: 100,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
        dots: false, // iadded
      },
    },
    {
      // screens greater than >= 400px
      breakpoint: 400,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 400px
      breakpoint: 260,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
  ],
});


// Thirdd glider


new Glider(document.querySelector(".tdglid"), {
  slidesToShow: 5,
  // slidesToScroll:3,
  draggable: true,
  dots: "#dotstd",
  arrows: {
    prev: ".tdprev",
    next: ".tdnxt",
  },
  responsive: [
    {
      // screens greater than >= 700px
      breakpoint: 600,
      settings: {
        // Set to `auto` and provide item width to adjust to viewport
        slidesToShow: 3,
        slidesToScroll: "auto",
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 1024px
      breakpoint: 1024,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 100px
      breakpoint: 100,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
        dots: false, // iadded
      },
    },
    {
      // screens greater than >= 400px
      breakpoint: 400,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 400px
      breakpoint: 260,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
  ],
});


// fourth glider

new Glider(document.querySelector(".frthglid"), {
  slidesToShow: 5,
  // slidesToScroll:3,
  draggable: true,
  dots: "#dotsfrth",
  arrows: {
    prev: ".frthprev",
    next: ".frthnxt",
  },
  responsive: [
    {
      // screens greater than >= 700px
      breakpoint: 600,
      settings: {
        // Set to `auto` and provide item width to adjust to viewport
        slidesToShow: 3,
        slidesToScroll: "auto",
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 1024px
      breakpoint: 1024,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 100px
      breakpoint: 100,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
        dots: false, // iadded
      },
    },
    {
      // screens greater than >= 400px
      breakpoint: 400,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
    {
      // screens greater than >= 400px
      breakpoint: 260,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        itemWidth: 150,
        duration: 0.25,
      },
    },
  ],
});