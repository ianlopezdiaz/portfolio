// Expand the target callout section (and scroll to it) when navigating via
// a navbar anchor link such as #experience.
function expandCalloutForHash() {
  const id = window.location.hash.slice(1);
  if (!id) return;

  const target = document.getElementById(id);
  if (!target || !target.classList.contains("callout")) return;

  const header = target.querySelector(".callout-header");
  const body = target.querySelector(".callout-collapse");
  if (!header || !body) return;

  body.classList.add("show");
  header.classList.remove("collapsed");
  header.setAttribute("aria-expanded", "true");

  target.scrollIntoView({ behavior: "smooth", block: "start" });
}

window.addEventListener("hashchange", expandCalloutForHash);
window.addEventListener("DOMContentLoaded", expandCalloutForHash);
