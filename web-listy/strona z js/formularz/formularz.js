
window.alert("Cześć! Miło, że wpadłeś! :)");

const lucky_random = Math.random()*16 + 1;

function myName(){
	var name = prompt("Wpisz swoje Imię, plz");
	var now = new Date();
	var hour = now.getHours();


	if ( hour < 12 )
		document.getElementById("imie").innerHTML = ( "<h1>Dzień dobry, " + name + "! Miło,  że chcesz tańczyć z nami!");


	if ( hour >= 12 )
	{
		hour = hour - 12;

		if ( hour < 6 )
			document.getElementById("imie").innerHTML =( "<h1>Good Afternoon, " + name + "! Miło,  że chcesz tańczyć z nami!");

		if ( hour >= 6 )
			document.getElementById("imie").innerHTML =( "<h1>Dobry wieczór, " + name + "! Miło,  że chcesz tańczyć z nami!");
	}
}
 	


	
function myAge(){
	var ileLatMa = prompt("Ile masz lat?");
	var ileLatTanczyl = prompt("Ile lat już trenujesz taniec?");
	var sum;

	if(ileLatTanczyl != null && ileLatMa != null){
		number1 = parseInt(ileLatMa);
		number2 = parseInt(ileLatTanczyl);
		sum = 2*(number1 + number2);
		document.getElementById("age").innerHTML = "<h1>To tak jakbyś miał " + sum + ", bo kto tańczy, ten żyje podwójnie!</h1>";
	}
}

function favPrzecinek(){
	var wprowadzLicz = prompt("Wprowadź swoją ulubioną liczbę z przecinkiem (np. 3.14)");
	licz1 = parseInt(wprowadzLicz);
	licz2 = parseFloat(wprowadzLicz);
	document.getElementById("licz").innerHTML = "<h1>Tak wygląda jako integer: "+licz1+" zaś tak jako float: " +licz2+" :D</h1>";
}

// function repeat(){
// 	var counter = 1;
// 	while (counter <= 7)
// 	{

// 		document.writeIn("<p style = 'font-size: " + counter + "ex'>Zapisz się!</p>" );
// 		//document.getElementById("repetition").innerHTML = ("<p style = 'font-size: " + counter + "Zapisz się!");
// 			++counter;
// 	}
// }



document.addEventListener("click", 
	function(){
		document.body.style.backgroundColor = "#ffe6ff";
});


function day(){
	var day;

	switch (new Date().getDay()) {
    case 0:
        day = "Niedziela";
        break;
    case 1:
        day = "Pon";
        break;
    case 2:
        day = "Wt";
        break;
    case 3:
        day = "Sroda";
        break;
    case 4:
        day = "Czwartek";
        break;
    case 5:
        day = "Piątek";
        break;
    case  6:
        day = "Sobota";
	}
	document.getElementById("day").innerHTML = "Dzisiaj jest " + day;
}


function luckyNumber(){
	document.getElementById("number").innerHTML = Math.floor(lucky_random);
}






















// // console.log('To jest mój pierwszy skrypt');

// const wstep = document.writeIn('Wypełnij misiaczku formularz');
// const input = document.getElementById("name");
// const email = document.getElementById("email");

// // const val = input.value;

// // if(!val.length) {
// // 	console.log('Nie wpisałeś imienia!')
// // }

// input.addEventListener('change', function() {
// 	const val = this.value;
// 	const reg = /^[a-zA-ZąĄćĆęĘłŁńŃóÓśŚźżŻ]{3,}$/g; // /g regular expresiion - global, min 3 znaki nie bedacee cyframi

// 	if(!reg.test(val)) {
// 		alert("Co to za dziwne imię?");
// 		this.select(); //zaznaczamy treść pola
// 	} else {
// 		alert('Twoje imię to: ' + val[0].toUpperCase() + val.slice(1));
// 	}
// });


// // email.addEventListener('change2', function() {
// // 	const className = 'error';
// // 	const emailReg = new RegExp('^[0-9a-z_.-]+@[0-9a-z.-]+\.[a-z]{2,3}$', 'i');
	
// // 	if(!mailReg.test(this.value)) {
// // 		this.classList.add(className);
// // 	} else {
// // 		this.classList.remove(className);	}
// // });

// let selectedValue = null;
// const genderRadio = document.querySelectorAll('#myForm input[name="gender"]');

// for( const radio of genderRadio) {
// 	if(radio.checked) {
// 		selectedValue = radio.value;
// 		break;
// 	}
// }

// if(checkedIndex !== null) {
// 	alert('Nie zaznaczyłeś żadnego pola!');
// }



