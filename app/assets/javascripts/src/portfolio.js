/**
 * Portfolio javascript logic.
 * Open description when clicked on item.
 */
$(function() {
  var portfolio = new Vue({
    el: '#portfolio',
    data: {
      description: '',
    },
    methods: {
      portfolioClick: function(e) {
        var index, row, selector, $elem;
        $elem = $(e.currentTarget);
        index = this.getIndex($elem);
        row = this.getRow(index);
        this.hideDescription();
        this.showDescription($elem, row, index);
        this.description = this.getDescription($elem);
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

      // Make description div visible.
      showDescription: function($elem, row, index) {
        var $small, $medium, $large,
            medium_offset = 0;
        if (row * 3 + 1 < index) {
          medium_offset = 2;
        }
        // Reserve dom elements.
        $small = $elem.parent().next('.dynamic-description');
        $medium = $('#portfolio .dynamic-description').eq(row * 3 + 1 + medium_offset);
        $large = $('#portfolio .dynamic-description').eq(row * 3 + 2);

        // Show small, medium and large descriptions related to current row.
        $small.addClass('visible-xs-block').removeClass('hidden');
        $medium.addClass('visible-sm-block').removeClass('hidden');
        $large.addClass('visible-md-block visible-lg-block').removeClass('hidden');
      },

      // Hide visible description divs.
      hideDescription: function() {
        $('#portfolio .dynamic-description:not(.hidden)').removeClass().addClass('dynamic-description hidden');
      }
    }
  });
});
