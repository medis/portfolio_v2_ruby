/**
 * Portfolio javascript logic.
 * Open description when clicked on item.
 */
$(function() {
  var portfolio = new Vue({
    el: '#portfolio',
    data: {
      row0_description: '',
    },
    methods: {
      portfolioClick: function(e) {
        var index, row, selector, $elem;
        $elem = $(e.currentTarget);
        index = this.getIndex($elem);
        row = this.getRow(index);
        selector = 'row' + row + '_description';
        this[selector] = this.getDescription($elem);
      },

      // Return clicked portfolio row index in DOM.
      getIndex: function($elem) {
        var $item = $elem.parent();
        return $('#portfolio .item').index($item);
      },

      // Returns portfolio item description.
      getDescription: function($elem) {
        return $elem.next('.description').html();
      },

      // Return row number to which description needs to be put.
      getRow: function(index) {
        var columns = 1;
        if ($(window).width() >= 992) {
          columns = 3;
        } else if ($(window).width() >= 768) {
          columns = 2;
        }
        return Math.floor(index / columns);
      },
    }
  });
});
