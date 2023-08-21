var regex = new RegExp("^[a-zA-Z\d? ,_-]+$");


function isValidInput(){
	
	var els = document.getElementById("my-form").elements;
	
	for(var i = 0; i < els.length; i++){
		
	    if(els[i].type === "text" && els[i].value === ""){
	        alert(els[i].name+" can not be null!");
	        els[i].value = "";
	        break;
	    }
	    if(els[i].type === "text" && regex.test(els[i].value) === false){
	        alert(els[i].name+" has Invalid Input");
	        els[i].value = "";
	        break;
	    }
	}	

/*	for (var i = 0, element; element = els[i++];) {
		
	    if(element.type === "text" && element.value === "")
	        console.log("it's an empty textfield")
		}
		if(!regex.test(element.value)){
			alert('Input Value Not Supported!');
	}
*/	
	
}



function validateFrm(document){
	//validateSearchForm(this);
	var frm = document.getElementById("my-form").elements;
	
}