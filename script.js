var randomideas = [ '<a href = "http://www.tropicalmba.com/learn-to-play-guitar/">learn how to play guitar</a>', 
 '<a href = "http://www.auntiepixelante.com/twine/">learn how to make interactive stories with the free program Twine</a>', 
 '<a href = "https://www.duolingo.com/">learn another language</a>' ];

var learn = [
	'<a href = "http://www.tropicalmba.com/learn-to-play-guitar/">learn how to play guitar</a>',
	'<a href = "http://www.auntiepixelante.com/twine/">learn how to make interactive stories with the free program Twine</a>', 
	'<a href = "https://www.duolingo.com/">learn another language</a>'
];
var food = [
	'<a href = "http://www.tropicalmba.com/learn-to-play-guitar/">learn how to play guitar</a>', 
	'<a href = "http://www.auntiepixelante.com/twine/">learn how to make interactive stories with the free program Twine</a>', 
	'<a href = "https://www.duolingo.com/">learn another language</a>'
];
var misc = [
	'<a href = "http://www.tropicalmba.com/learn-to-play-guitar/">learn how to play guitar</a>', 
	'<a href = "http://www.auntiepixelante.com/twine/">learn how to make interactive stories with the free program Twine</a>', 
	'<a href = "https://www.duolingo.com/">learn another language</a>'
];
 
var random = learn.concat(food);
random = random.concat(misc);

$(document).ready(function() {
	//$("#suggestion")

	$("#random").click(function() {
		var randnum = Math.floor(Math.random()* random.length);
		var randomidea = random[randnum];
		document.getElementById("suggestion").innerHTML = randomidea;
		document.getElementById("directions").innerHTML = "Click again to get another suggestion";
	})
	
	$("#learn").click(function() {
		var randnum = Math.floor(Math.random()* learn.length);
		var randomidea = learn[randnum];
		document.getElementById("suggestion").innerHTML = randomidea;
		document.getElementById("directions").innerHTML = "Click again to get another suggestion";	
	})
	
	$("#food").click(function() {
		var randnum = Math.floor(Math.random()* food.length);
		var randomidea = food[randnum];
		document.getElementById("suggestion").innerHTML = randomidea;
		document.getElementById("directions").innerHTML = "Click again to get another suggestion";
	})
	
	$("#misc").click(function() {
		var randnum = Math.floor(Math.random()* misc.length);
		var randomidea = misc[randnum];
		document.getElementById("suggestion").innerHTML = randomidea;
		document.getElementById("directions").innerHTML = "Click again to get another suggestion";
	})


})