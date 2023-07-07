// Show toggle buttons and navbar links when click toggle button
const toggleButton = document.getElementsByClassName("toggle-button")[0]
const navbarLinks = document.getElementsByClassName("navbarLink")[0]

toggleButton.addEventListener('click', () => {
    navbarLinks.classList.toggle('active')
})
