function something()
{
	var x = window.localStorage.getItem('bbb');
	x = x*1 + 1

	window.localStorage.setItem('bbb', x);

	alert(x);
}

function add_to_cart(id)
{
	var key = 'product_' + id;

	var x = window.localStorage.getItem(key);
	x = x*1 + 1
	window.localstorage.setItem(key, x);
	/* alert('You added pizza with id: ' + id); */	
}