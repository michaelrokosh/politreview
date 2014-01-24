// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

$(function() {
  $('.star').click(function() {
    $button = $(this)
    if ( $( ".star-rating" ).hasClass( "active" ) ) {
      $.ajax({
        type: "POST",
        url: '/politics/' + $button.attr('data-politic-id') + '/stars?rate=' + $button.attr('data-rate'),
        success: function() {
          $button.removeClass('active').addClass('inactive').html("<span>OK!</span>"); ; 
        }
      })
    }
  });
});

$(function() {
  $('.vote-against').click(function() {
    $button = $(this)
    if ( $( ".votes" ).hasClass( "make-vote" ) ) {
      $.ajax({
        type: "POST",
        url: $button.attr('data-article-type') + $button.attr('data-article-id') + $button.attr('data-voteable-type') + $button.attr('data-voteable-id') + '/vote_down',
        success: function() {
          $button.removeClass('make-vote').addClass('vote-made').html("<span>OK!</span>"); ; 
        }
      })
    }
  });
});

$(function() {
  $('.vote-for').click(function() {
    $button = $(this)
    if ( $( ".votes" ).hasClass( "make-vote" ) ) {
      $.ajax({
        type: "POST",
        url: $button.attr('data-article-type') + $button.attr('data-article-id') + $button.attr('data-voteable-type') + $button.attr('data-voteable-id') + '/vote_up',
        success: function() {
          $button.removeClass('make-vote').addClass('vote-made').html("<span>OK!</span>"); ; 
        }
      })
    }
  });
});
