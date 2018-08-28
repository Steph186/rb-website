window.onscroll = () => {
  const nav = document.querySelector('#navbar-home');
  if(this.scrollY <= 5) nav.className = ''; else nav.className = 'scroll';
};
