let price = 0;
let packageInclu = "";
window.onclick = function (event) {
	if (event.target === document.getElementById("id02")) {
		document.getElementById("id02").style.display = "none";
	}
};
function dis(x) {
	let price_string=x+"_price"
	let desc_string=x+"_desc"
	let img_string=x+"_img"
	let img_string2= document.getElementById(img_string).value
	let name_string=x+"_name"
	var priceTemp = parseInt(document.getElementById(price_string).value, 10);
	document.getElementById("id02").style.display = "block";
	let par = mediaModal(); // check screen size
	let words1=document.getElementById(desc_string).value
	let words =
		"<p>" +
		par +
		words1+
		"<br>" +
		priceTemp +
		'  לק"ג';
	("</p>");
	price = document.getElementById(price_string).value;
	document.getElementById("modal_img").src =img_string2;
	document.getElementById("target").innerHTML = words;
	packageInclu = document.getElementById(name_string).value;
}


function mediaModal() {
	//check if it mobile screen size
	let mediaQuery = window.matchMedia("(min-width: 768px)");
	let par = '<b style="font-size: 5vw">';
	if (mediaQuery.matches) {
		par = "<b>";
	}
	return par; // returns tag needed
}

function incrementValue() {
	var numerofkg = parseInt(document.getElementById("numerofkg").value, 10);
	var value = parseInt(document.getElementById("number").value, 10);
	value = isNaN(value) ? 0 : value;
	value += price * numerofkg;
	document.getElementById("number").value = value;
	document.getElementById("packageInclu").innerHTML +=
		packageInclu + " " + numerofkg + "X" + "<br>";
	document.getElementById("price").value = value;
	document.getElementById("desc").value   = document.getElementById("packageInclu").value;
	document.getElementById("id02").style.display = "none";
}
