// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


$(document).ready(function(){


	$('#dLabel1').on('click', function () {
		$('.drop1').slideToggle(250)
		$('.drop2').hide()
		$('.dropdown1').on('mouseleave', function () {
			$('.drop1').hide()
		})
	})


	console.warn("This works");
    	console.log("This log");


});
