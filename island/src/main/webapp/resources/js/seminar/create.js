
function setThumbnail(event) {
  var reader = new FileReader();

  reader.onload = function(event) {
    var img = document.createElement("img");
    img.setAttribute("src", event.target.result);
    img.classList.add('seminar-photo');
    var imageContainer = document.querySelector("div#image_container");
    imageContainer.innerHTML = "";
    imageContainer.appendChild(img);
  };

  reader.readAsDataURL(event.target.files[0]);
}


