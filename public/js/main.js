// Run svg check and replace with png if needed
svgeezy.init(false, 'png');

/*
  Detect whether it is retina display or not and check combination 
  of high density and srcset support
*/
var isRetina = window.devicePixelRatio >= 1.5,
    listOfImages = document.getElementById("projects").getElementsByTagName("img"),
    listLength = listOfImages.length,
    isSrcset = listOfImages[0].srcset || false;

if (isRetina && !isSrcset)  {
  for (i = 0; i < listLength; ++i) {
    listOfImages[i].src = listOfImages[i].src.split(".")[0] + "-2x.jpg";
  }
}
