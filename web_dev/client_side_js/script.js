console.log("The script is running!");

var h2s = document.querySelectorAll('h2'), i = h2s.length;

while (i --) {
	h2s[i].style.color = "white";
}

function ohYouDidNot() {
	var el = document.createElement('div');
	el.innerHTML = '<img id = "tinaphoto" src = "ohyoudidnot.gif">';
	document.body.appendChild(el);

}

//var photo = document.getElementById("footer");
//photo.addEventListener("click", ohYouDidNot);

document.getElementById('footer').addEventListener('click', ohYouDidNot);