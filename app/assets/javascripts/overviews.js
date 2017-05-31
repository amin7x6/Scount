// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function() {
	function addValues() {
		var numbers = []

		$('input.numeric').each(function() {
			numbers.push(parseInt($(this).val() || 0))
		});

		var total = numbers.reduce(function(a, b) {
			return a + b;
		}, 0);

		$('item.total').text(total)
	 //  $(`#total_value${item.id}`).text(total)
	}

	$('input.numeric').each(function(index, value){
		$(value).change(function(event){
			addValues()
		})
	})
})
