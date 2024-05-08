function saveAndNext() {
  var checkbox = document.getElementById("checkID");

  if (checkbox.checked) {
    // Checkbox is checked, proceed to the next page
    window.location.href = "/";
  } else {
    // Checkbox is not checked, display a message
    alert("Please check the declaration box before proceeding.");
  }
}
