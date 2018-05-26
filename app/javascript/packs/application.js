/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

////////////// SLIDER //////////////////

const containerSlider = document.getElementById('slider-container');
const photos = document.querySelectorAll('.column-img img');
const photosSlider = document.querySelectorAll('.photo-slider');

const rightArrow = document.getElementById('right-arrow');
const leftArrow = document.getElementById('left-arrow');

function displaySlider(photoClikedIndex) {
  containerSlider.style.display = "flex";
  console.log(photoClikedIndex);
  photosSlider.forEach(function(photoSlider) {
    if ( photoSlider.dataset.index == photoClikedIndex ) {
       photoSlider.style.display = 'block';
    } else {
       photoSlider.style.display = 'none';
    }
  });

  let i = 0;
  function changePhoto(direction) {
    i += direction

    photosSlider.forEach(function(photoSlider) {
      if ( photoSlider.dataset.index == photoClikedIndex + i ) {
         photoSlider.style.display = 'block';
      } else {
         photoSlider.style.display = 'none';
      }
    });
  };

  rightArrow.addEventListener('click', function() {
    changePhoto(+1);
  });

  leftArrow.addEventListener('click', function() {
    changePhoto(-1);
  });
}

photos.forEach(function(photo) {
  photo.addEventListener('click', function() {
    displaySlider(this.dataset.index);
  });
});



console.log('Hello World from Webpacker')


// Selecting Navigation bar
const navigation = document.querySelector('.navigation');

// Selecting each nav li
const navLanding = document.getElementById('nav-landing');
const navPhotos = document.getElementById('nav-photos');
const navVideos = document.getElementById('nav-videos');
const navInstagram = document.getElementById('nav-instagram');
const navContact = document.getElementById('nav-contact');

// Selecting all sections
const allSections = document.querySelectorAll('.section-slidinhojs');

// Selecting each section
const sectionLanding = document.querySelector('.landing-section');
const sectionPhotos = document.querySelector('.photos-section');
const sectionVideos = document.querySelector('.videos-section');
const sectionInstagram = document.querySelector('.instagram-section');
const sectionContact = document.querySelector('.contact-section');


document.addEventListener("DOMContentLoaded", function(event) {
  const sectionLandingImg = document.querySelector('.landing-image');
  sectionLandingImg.style.opacity = '1';
});

function displaySection(sectionName) {
  allSections.forEach(function(section) {
    section.classList.remove('section-active');
  });
  sectionName.classList.add('section-active');
}

if ( navLanding && navPhotos && navVideos && navInstagram && navContact) {
  navLanding.addEventListener('click', function() { displaySection(sectionLanding) } );
  navPhotos.addEventListener('click', function() { displaySection(sectionPhotos) } );
  navVideos.addEventListener('click', function() { displaySection(sectionVideos) } );
  navInstagram.addEventListener('click', function() { displaySection(sectionInstagram) } );
  navContact.addEventListener('click', function() { displaySection(sectionContact) } );
}

function reload() {
  $('.container-messages').load(document.URL +  ' .container-messages');
}

setInterval(reload, 2000);























