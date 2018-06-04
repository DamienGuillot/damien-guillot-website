const containerSlider = document.getElementById('slider-container');
const photos = document.querySelectorAll('#container-photos img');
const photosSlider = document.querySelectorAll('.photo-slider');
const leftArrow = document.getElementById('arrow-left');
const rightArrow = document.getElementById('arrow-right');

function displaySlider(photoClikedIndex) {
  containerSlider.style.display = "flex";
  photosSlider.forEach(function(photoSlider) {
    if ( photoSlider.dataset.index == photoClikedIndex ) {
      photoSlider.classList.add('photo-slider-active');
    } else {
      photoSlider.classList.remove('photo-slider-active');
    }
  });
};

function changePhoto(direction) {
  var photoActiveIndex = document.querySelector('.photo-slider-active').dataset.index;
  var newPhoto = Number(photoActiveIndex) + direction;
  if ( newPhoto === 0 ||
       newPhoto === ( photosSlider.length + 1 ) ) {
        containerSlider.style.display = 'none';
      }
  photosSlider.forEach(function(photoSlider) {
    if ( Number(photoSlider.dataset.index) === newPhoto ) {
       photoSlider.classList.add('photo-slider-active');
    } else {
       photoSlider.classList.remove('photo-slider-active');
    }
  });
}

rightArrow.addEventListener('click', function() {
  changePhoto(1);
});

leftArrow.addEventListener('click', function() {
  changePhoto(-1);
});

document.addEventListener('keyup', function(event){
  if ( event.keyCode === 39 ) {
    rightArrow.style.marginLeft = '90px';
    rightArrow.style.opacity = 0.5;
    changePhoto(1);
  } else if ( event.keyCode === 37 ) {
    leftArrow.style.marginRight = '90px';
    leftArrow.style.opacity = 0.5;
    changePhoto(-1);
  }
});

document.addEventListener('keydown', function(event){
  if ( event.keyCode === 39 ) {
    rightArrow.style.marginLeft = '100px';
    rightArrow.style.opacity = 1;
  } else if ( event.keyCode === 37 ) {
    leftArrow.style.marginRight = '100px';
    leftArrow.style.opacity = 1;
  } else {
    rightArrow.style.marginLeft = '90px';
    rightArrow.style.opacity = 0.5;
    leftArrow.style.marginRight = '90px';
    leftArrow.style.opacity = 0.5;
  }
});


const closingCross = document.getElementById('closing-cross');

closingCross.addEventListener('click', function() {
  containerSlider.style.display = 'none';
});

photos.forEach(function(photo) {
  photo.addEventListener('click', function() {
    displaySlider(this.dataset.index);
  });
});
