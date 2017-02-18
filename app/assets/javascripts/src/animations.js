$(function() {
  if (typeof ScrollMagic == 'undefined') {
    return;
  }

  // Animate border.
  function animate_border(trigger, elem) {
    var controller = new ScrollMagic.Controller();

    new ScrollMagic.Scene({
			triggerElement: trigger,
      duration: $(window).height(),
      offset: -200
		})
		.setTween(elem, {width: '30%'})
		.addTo(controller);
  }

  function animate_knowledge_opacity() {
    var controller = new ScrollMagic.Controller();

    new ScrollMagic.Scene({
			triggerElement: 'body',
      duration: 700,
      offset: $(window).height() / 2
		})
		.setTween('.animate-bg', {opacity: '1'})
		.addTo(controller);

    new ScrollMagic.Scene({
			triggerElement: 'body',
      duration: 700,
      offset: $(window).height() / 2 + 100,
		})
		.setTween('.icon.white, #logo img.white', {opacity: '1'})
		.addTo(controller);

    new ScrollMagic.Scene({
			triggerElement: 'body',
      duration: 700,
      offset: $(window).height() / 2 + 100,
		})
		.setTween('ul.nav a .title', {color: '#FFFFFF'})
		.addTo(controller);

    new ScrollMagic.Scene({
			triggerElement: 'body',
      duration: 500,
      offset: $(window).height() / 2,
		})
		.setTween('ul.nav', {height: 132})
		.addTo(controller);
  }

  $(window).load(function() {
    /*animate_border('#trigger-biography', '#about .section-title .border');
    animate_border('#trigger-area-of-expertise', '#area-of-expertise .section-title .border');
    animate_border('#trigger-portfolio', '#portfolio .section-title .border');
    animate_border('#trigger-contact', '#contact .section-title .border');*/
    animate_knowledge_opacity();
    animate_skills();
  });
});
