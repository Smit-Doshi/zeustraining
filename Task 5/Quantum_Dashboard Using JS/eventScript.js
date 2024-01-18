// HamburgerMenu Script
const image = document.querySelector('.hamburger-logo');
const hamburgerLinks = document.querySelector('#hamburger-links');

image.addEventListener('touchstart', (e) => {
    e.preventDefault();
    hamburgerLinks.classList.toggle('inactive');
});

// Announcement notification script
const announcement_logo = document.querySelector('#announcements_logo');
const announcement_notification = document.querySelector('#announcements_notification');

announcement_logo.addEventListener('touchstart', (e) => {
    e.preventDefault();
    announcement_notification.classList.toggle('announcements_inactive');
})


//   Alert notification script
const alert_logo = document.querySelector('#alert_logo');
const alert_notification = document.querySelector('#alert_notification');

alert_logo.addEventListener('touchstart', (e) => {
    e.preventDefault();
    alert_notification.classList.toggle('alert_inactive');
})