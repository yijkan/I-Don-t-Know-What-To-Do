var randomideas = [ '<a href = "http://www.tropicalmba.com/learn-to-play-guitar/">learn how to play guitar</a>', 
 '<a href = "http://www.auntiepixelante.com/twine/">learn how to make interactive stories with the free program Twine</a>', 
 '<a href = "https://www.duolingo.com/">learn another language</a>' ];




$(document).ready(function() {
	//$("#suggestion")

	$("#random").click(function() {
		var randnum = Math.floor((Math.random()* randomideas.length));
		var randomidea = randomideas[randnum];
		document.getElementById("#suggestion").innerHTML = randomidea;
		
	})
})