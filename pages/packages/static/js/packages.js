

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
	if (event.target === document.getElementById("id01")) {
		document.getElementById("id01").style.display = "none";
	}
};
function dis(x) {
	let price_string=x+"_price"
	let desc_string=x+"_desc"
	let img_string=x+"_img"

	let img_string2= document.getElementById(img_string).value
	let name_string=x+"_name"
	var priceTemp = parseInt(document.getElementById(price_string).value, 10);
	document.getElementById("id01").style.display = "block";
	let par = mediaModal(); // check screen size
	let words1=document.getElementById(desc_string).value
	let words =
		"<p>" +
		par +
		words1+
		"<br>" +
		priceTemp +
		'  ש"ח';
	("</p>");
	price = document.getElementById(price_string).value;
	document.getElementById("modal_img").src =img_string2;
	document.getElementById("target").innerHTML = words;
	document.getElementById("order").value = x;
	document.getElementById("price").value = priceTemp;
	document.getElementById("desc").value   = words1;

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

let txt = "חבילות מומלצות לאירועים";
let t = 0;
document.addEventListener("DOMContentLoaded",function text() {
	//inside letters animation
	if (t < txt.length) {
	}
	{
		document.getElementById("text").innerHTML += txt.charAt(t);
		t++;
		setTimeout(text, 80);
	}
})

