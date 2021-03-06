// Selecting Navigation bar
const navigation = document.querySelector('.navigation');

// Selecting each nav li
const navLanding = document.getElementById('nav-landing');
const navPhotos = document.getElementById('nav-photos');
const navVideos = document.getElementById('nav-videos');
const navContact = document.getElementById('nav-contact');

// Selecting all sections
const allSections = document.querySelectorAll('.section-slidinhojs');

// Selecting each section
const sectionLanding = document.querySelector('.landing-section');
const sectionPhotos = document.querySelector('.photos-section');
const sectionVideos = document.querySelector('.videos-section');
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

if ( navLanding && navPhotos && navVideos && navContact) {
  navLanding.addEventListener('click', function() { displaySection(sectionLanding) } );
  navPhotos.addEventListener('click', function() { displaySection(sectionPhotos) } );
  navVideos.addEventListener('click', function() { displaySection(sectionVideos) } );
  navContact.addEventListener('click', function() { displaySection(sectionContact) } );
}

// Reload container message every 2s

// function reload() {
//   $('.container-messages').load(document.URL +  ' .container-messages');
// }

// setInterval(reload, 2000);
