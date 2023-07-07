let login = document.getElementById("login-page");

login.addEventListener("submit", (e) => {
  e.preventDefault();
  var username = document.getElementById('username').value
  var password = document.getElementById('password').value
  var errormessgae = document.getElementById('invalid-message')

  if (username == "" || password == "") {
    errormessgae.style.display = ' block';
  } else {
    location.href = "Admi.html";
  }
});