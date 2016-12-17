$(document).ready(function() {
	$('.toggle-stripe').on('click', function(event) {
		event.preventDefault();
		$button = $(this);
		$form = $button.parents('form');
		opts = $.extend({}, $button.data(), {
			token: function(result) {
				return $form.append($('<input>').attr({
					type: 'hidden',
					name: 'stripeToken',
					value: result.id
				})).submit();
			}
		});
		return StripeCheckout.open(opts);
	});
	$('form#stripe-form').on("submit", function() {
		$('[id*=edit_order]').submit()
	});
});