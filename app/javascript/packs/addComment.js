var elements = document.getElementsByClassName("addNewComment")
  for(var e=0;e<elements.length;e++){
    elements[e].addEventListener("click", function(){
        this.style.display="none";
        this.parentElement.display="block";
    });
  }
  
