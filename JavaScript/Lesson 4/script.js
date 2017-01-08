var a,b,c,y; 

a = 50;
b = 20;
c = 10;

if (a == b) {
	if (b == c){
		alert ("b=c");
	}
}

else {
	alert("а не равно b");
}

y = (a > b) ? true : false; //тернарный оператор. если a > b, то переменной y присвоится значение после знака вопроса. в противном случае присвоится значение после двоеточия
alert(y);

/*
if (a == b) {
	alert("hello");
}

else {
	alert("goodbye");
} 
*/

/*
if (a == b) alert("1");
else alert("2");
*/

var test ="string";

switch(test) {
	case "": //задано второе условие вывода alert("null");
	case null:
		alert("null");
	break;

	case "string":
		alert("string");
	break;

	case 10:
		alert(10);
	break;

	deafult:
		alert("default");
	break;
}
