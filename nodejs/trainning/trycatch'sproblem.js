try{
	setTimeout(function)(){
		throw new Error("Uh oh!");
	},2000);
}
catch(e){
	console.log("i caught the error: " + e.message);
}