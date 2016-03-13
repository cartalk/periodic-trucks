

    $(document).ready( function() {
      // init Isotope
      var $grid = $('.grid').isotope({
        itemSelector: '.grid-cell',
        percentPosition: true,
        masonry: {
          columnWidth: '.grid-cell-sizer'
        }
      });

      $('.truck-nav').on( 'click', '.truck-nav-filter', function() {
        var filterValue = $(this).attr('data-filter');
        $grid.isotope({ filter: filterValue });

        $('.truck-nav-filter').removeClass('current');
        $(this).addClass('current');
      });


    });
