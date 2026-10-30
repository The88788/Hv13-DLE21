/* Hv13 / DLE 21: engine jQuery remains the single jQuery instance. */
document.addEventListener('DOMContentLoaded', () => {
  const up = document.querySelector('.scrollup');
  if (up) { const update = () => { up.hidden = window.scrollY < 450; }; window.addEventListener('scroll', update, {passive:true}); update(); up.addEventListener('click', () => window.scrollTo({top:0, behavior:matchMedia('(prefers-reduced-motion: reduce)').matches ? 'auto' : 'smooth'})); }
  document.addEventListener('click', e => { document.querySelectorAll('.account-menu[open]').forEach(menu => { if (!menu.contains(e.target)) menu.open=false; }); });
  document.addEventListener('keydown', e => { if(e.key==='Escape') document.querySelectorAll('.account-menu[open]').forEach(menu => { menu.open=false; menu.querySelector('summary').focus(); }); });
  document.querySelectorAll('img').forEach(img => { const fallback=() => { if (!img.dataset.fallback) { img.dataset.fallback='1'; img.src=new URL('../images/dle.jpg', document.querySelector('script[src$="hv21.js"]').src).href; } }; img.addEventListener('error', fallback); if(img.complete && !img.naturalWidth) fallback(); });
});