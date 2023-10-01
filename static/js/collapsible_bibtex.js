function setup_collapsibles() {
  const bibtex = document.getElementsByClassName("bibtexcollapsible");
  for (let item of bibtex) {
    item.addEventListener("click", function() {
      this.classList.toggle("active");
      let content = this.nextElementSibling;
      if (content.style.display === "block") {
        content.style.display = "none";
      } else {
        content.style.display = "block";
      }
    });
  }
}

window.addEventListener("load", setup_collapsibles, false);
