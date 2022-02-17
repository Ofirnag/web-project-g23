
// registration valid

function check(input) {
	if (input.value != document.getElementById("psw").value) {
		input.setCustomValidity("הסיסמא חייבת להיות זהה");
	} else {
		// input is valid -- reset the error message
		input.setCustomValidity("");
	}
}
