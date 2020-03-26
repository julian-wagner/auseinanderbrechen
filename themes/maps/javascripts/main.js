if (!ThanksRoy) {
    var ThanksRoy = {};
}

(function ($) {

    ThanksRoy.mobileMenu = function() {
        $('.supports.touchevents #primary-nav li ul').each(function() {
            var childMenu = $(this);
            var subnavToggle = $('<button type="button" class="sub-nav-toggle" aria-label="Show subnavigation"></button>');
            subnavToggle.click(function() {
                $(this).parent('.parent').toggleClass('open');
            });
            childMenu.parent().addClass('parent');
            childMenu.addClass('sub-nav').before(subnavToggle);
        });

        $('.menu-button').click( function(e) {
            e.preventDefault();
            $('#primary-nav ul.navigation').toggle();
        });
    };

})(jQuery);



// Neatline Filter

$(document).ready(function() {
	$("#toggle-waypoints").change(function() {
		if ($(this).is(":checked")) {
			$("#waypoints").fadeIn();
			//$("#simile").removeClass("w100");
		} else {
			$("#waypoints").fadeOut();
			//$("#simile").addClass("w100");
		}
	});
});



// Change <html> on Map

$(document).ready(function() {
	if ($("body").hasClass("neatline")) {
		$("html").addClass("noscroll");
	}
});