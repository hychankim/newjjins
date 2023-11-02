window.addEventListener('scroll', () => {
  const box = document.getElementById('animate-box');
  const boxOffsetTop = box.offsetTop;
  const scrollPosition = window.scrollY + window.innerHeight;

  if (scrollPosition > boxOffsetTop) {
    box.classList.add('show');
  }
});
