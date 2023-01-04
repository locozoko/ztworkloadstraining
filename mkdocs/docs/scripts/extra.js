document.addEventListener('DOMContentLoaded', function() {
  addOnclickToImg();
//  thumbnailImages();
  }
);

// Show/Hide Images
function toggleImages() {
  let x = document.getElementsByTagName("img");
  for (let i = 0; i < x.length; i++) {
    if (x[i].className === "hidden") {
      x[i].className = "";
    }
    else {
      x[i].className = "hidden";
    }
  }
}

// Toggle thumbnail class assignment
function toggleThumbnailClass(el1) {
  if (el1.className === "thumbnail") {
    el1.className = "";
  }
  else {
    el1.className = "thumbnail";
  }
}

// Enable/Disable thumbnail of images in the guide
function thumbnailImages() {
  let x = document.getElementsByTagName("img");
  for (let i = 0; i < x.length; i++) {
    toggleThumbnailClass(x[i]);
    // wrap(x[i]);
  }
}

// Add onclick feature to the guide's images
function addOnclickToImg() {
  let x = document.getElementsByTagName("img");
  for(let i = 0; i < x.length; i++) {
    x[i].onclick = function() { toggleThumbnailClass(x[i]) };
  }
}
