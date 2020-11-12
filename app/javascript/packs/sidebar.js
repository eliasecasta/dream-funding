// document.getElementById("openBtn").addEventListener("click", () => openNav());
// document.getElementById("closeBtn").addEventListener("click", () => closeNav());

/* Set the width of the sidebar to 250px and the left margin of the page content to 250px */
function openNav() {
  document.getElementById("mySidebar").style.width = "80%";
  document.getElementById("main").style.marginLeft = "20%";
}
window.openNav = openNav
/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
}
window.closeNav = closeNav
