$('.slider-01').slick({
    
    arrows: true,
    centerMode: true,
    centerPadding: '200px',
    slidesToShow: 1,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: true,
          centerMode: true,
          centerPadding: '300px',
          slidesToShow: 1
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '1px',
          slidesToShow: 1
        }
      }
    ]
  });




  function show(e) {
    const id = e.target.id;
    console.log(id.includes("img"));
    if (id.includes("img")) {
      const src = e.target.src;
      console.log(src);
      document.querySelector("#showcase-img").setAttribute("src", src);
    }
  }
  
  const showcase = document
    .querySelector("#showcase-div")
    .addEventListener("click", show);
  
  function moveRight() {
    let ele = document.querySelector(".gallery .image-container");
    let width = getComputedStyle(ele).width.replace("px", "");
    let margin = getComputedStyle(
      document.querySelector(".gallery .images img")
    ).marginRight.replace("px", "");
    left = ele.scrollLeft;
    let newLeft = left + 104 + 2 * Number(margin);
    console.log(newLeft, ele.scrollWidth - width);
    ele.scrollLeft = `${newLeft}`;
    console.log(ele.scrollLeft);
    if (newLeft > ele.scrollWidth - width) {
      ele.scrollLeft = 0;
    }
  }
  
  function moveLeft() {
    let ele = document.querySelector(".gallery .image-container");
    let width = getComputedStyle(ele).width.replace("px", "");
    let margin = getComputedStyle(
      document.querySelector(".gallery .images img")
    ).marginRight.replace("px", "");
    left = ele.scrollLeft;
    let newLeft = left - 104 - 2 * Number(margin);
    ele.scrollLeft = `${newLeft}`;
    if (newLeft < 0) {
      ele.scrollLeft = ele.scrollWidth;
    }
  }
  
  document.querySelector(".nav-left").addEventListener("click", moveLeft);
  document.querySelector(".nav-right").addEventListener("click", moveRight);
  

  $('.slider-for').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    fade: true,
    asNavFor: '.slider-nav'
  });
  $('.slider-nav').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: false,
    arrows: false,
    centerMode: true,
    focusOnSelect: true
  });

