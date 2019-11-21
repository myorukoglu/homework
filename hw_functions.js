var rule = {
  paper: "rock",
  rock: "scissors",
  scissors: "paper"
}



function play(event) {
  var opponent = "rock";  
  var player = event.target.id;
  var result;
  
  
  if(player === opponent){
    result = "Tie!"
  } else if (rule[player] === opponent ) {
    result = "You Win"
  } else {
    result = "They Win"
  }
  alert(result)
}
var buttons = document.getElementById("container")
buttons.addEventListener("click", play)