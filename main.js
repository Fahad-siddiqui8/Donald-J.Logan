
document.getElementById('year').textContent = new Date().getFullYear();

function scrollCarousel(direction) {
  const track = document.getElementById('servicesTrack');
  const cardWidth = 340;
  track.scrollBy({ left: direction * cardWidth, behavior: 'smooth' });
}

function handleQuoteSubmit(e) {
  e.preventDefault();
  const toast = document.getElementById('toastPill');
  toast.style.display = 'inline-flex';
  setTimeout(() => {
    toast.style.display = 'none';
  }, 5000);
  document.getElementById('quoteForm').reset();
}
