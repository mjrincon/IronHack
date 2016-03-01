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
//= require twitter/bootstrap
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(function(){

    $('#show').on('click',function(){
        $('.card-reveal').slideToggle('slow');
    });

    $('.card-reveal .close').on('click',function(){
        $('.card-reveal').slideToggle('slow');
    });
});

// Leaderboard SHIT BELOW



// LB shii Above

// var vid = document.getElementById("bgvid");
// var pauseButton = document.querySelector("#polina button");

// function vidFade() {
//   vid.classList.add("stopfade");
// }

// vid.addEventListener('ended', function()
// {
// // only functional if "loop" is removed
// vid.pause();
// // to capture IE10
// vidFade();
// });


// pauseButton.addEventListener("click", function() {
//   vid.classList.toggle("stopfade");
//   if (vid.paused) {
//     vid.play();
//     pauseButton.innerHTML = "Pause";
//   } else {
//     vid.pause();
//     pauseButton.innerHTML = "Paused";
//   }
// })