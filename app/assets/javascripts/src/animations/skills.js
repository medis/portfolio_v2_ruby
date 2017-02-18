animate_skills = function() {
  var controller = new ScrollMagic.Controller();
  /*new ScrollMagic.Scene({
    triggerElement: 'trigger-area-of-expertise',
    duration: 300,
    offset: 700,
  })
  .setTween('#area-of-expertise h3', {opacity: 1, y: 0})
  .addTo(controller);
*/
  new ScrollMagic.Scene({
    triggerElement: 'trigger-area-of-expertise',
    offset: 800,
  })
  .on("enter", function (e) {
    $('#area-of-expertise .progress-bar').removeClass('hidden-bar');
  })
  .addTo(controller);
  
}