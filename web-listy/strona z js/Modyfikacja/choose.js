let l1, l3;

function getHsl() {
  return {
      rl1: Math.floor(Math.random() * 360) + 1,
      rl2: Math.floor(Math.random() * 100) + 1,
      rl3: Math.floor(Math.random() * 100) + 1
  }
}

function background() {
  const { rl1, rl2, rl3 } = this.getHsl();

  l1 = rl1;
  l2 = rl2;
  l3 = rl3;

  document.body.style.backgroundColor = `hsl(${rl1}, ${rl2}%, ${rl3}%)`;
 // return lucky_random1, lucky_random3;
}

window.addEventListener('scroll', (e) => {
  const val = pageYOffset / 10;

  document.body.style.backgroundColor = 'hsl(' + l1 + ', ' + val + '%, ' + l3 + '%)';
})

//property  np. 