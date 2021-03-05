const finishrideButton = () => {
  const button = document.getElementById("finishride");
    button.addEventListener("click", function(event) {
      event.preventDefault();
      button.innerText = "Finish Ride";
    });
};

export { finishrideButton };

