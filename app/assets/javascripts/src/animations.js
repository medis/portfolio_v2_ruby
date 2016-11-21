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

  $(window).load(function() {
    animate_border('#trigger-biography', '#about .section-title .border');
    animate_border('#trigger-area-of-expertise', '#area-of-expertise .section-title .border');
    animate_border('#trigger-portfolio', '#portfolio .section-title .border');
  });
});
