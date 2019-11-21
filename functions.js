var pictures = {
  "mittens":
    "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRPJDISIzIZkVC0b2LDUr-ZTsOEyzcamiDBrEAia2ph7RX4IR_HW8bNDdnwj7tQa7peaEKiPvweoQ&usqp=CAc",
  "coat":
    "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTVQjZC6XfmeY6LQ_sJnFmtG0Mo8wEuOoMxRug_3E-Y4gdXdt1Yg7SIdcVXHxseO_JpkSHKhu5y&usqp=CAc",
  "hat":
    "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTjmAdDeGbnPhSxNyzglpxBXd4C_K8i_BQvgBdQpHL85qjuOosI9rWe1VNY9FHSuCSAbMYVMVELwg&usqp=CAc"
};

function catInTheHat(event) {
  var img = document.getElementById("picture");
  img.setAttribute("src", pictures[event.target.id]);
  
  var titleText = "Your Item Is " + event.target.id;
  var title = document.getElementsByClassName("card-title")[0]
  title.innerText = titleText;

}
var cartItems = document.getElementsByTagName("ul")[0]
cartItems.addEventListener("click", catInTheHat)