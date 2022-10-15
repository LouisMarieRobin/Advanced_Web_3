function age() {
  var age = document.getElementById("age").value;
  if (age < 22) {
    window.location.href = "http://localhost:3000/age/0";
  } else {
    window.location.href = "http://localhost:3000/age/1";
  } 
  }