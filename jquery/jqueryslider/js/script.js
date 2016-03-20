var sliderInt = 1;
var sliderNext = 2;
var newSlide = 0;

$(document).ready(function() {
  $('#slider>img#1').fadeIn(600);
  startSlider();
});

function startSlider() {
  count = $('#slider>img').size();
  loop = setInterval(function() {
    if (sliderNext > count) {
      sliderNext = 1;
    }
    $('#slider>img').fadeOut(600);
    $('#slider>img#' + sliderNext).fadeIn(600);
    sliderNext += 1;
  }, 2800);
}

function prev() {
  newSlide = sliderInt - 1;
  showSlide(newSlide);
}

function next() {
  newSlide = sliderInt + 1;
  showSlide(newSlide);
}

function stopSlider() {
  window.clearInterval(loop);
}
function showSlide(id) {
  stopSlider();
  if (id > count) {
    id = 1;
  } else if ( id < 1) {
    id = count;
  }
  $('#slider>img').fadeOut(600);
  $('#slider>img#' + id).fadeIn(600);
  sliderInt = id;
  sliderNext = id + 1;
  startSlider();
}

$('#slider>img').hover(
  function() {stopSlider();}, function() {startSlider();}
);
