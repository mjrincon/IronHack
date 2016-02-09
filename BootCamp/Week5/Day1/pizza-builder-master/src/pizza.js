// Write your Pizza Builder JavaScript in this file.

$('.btn-pepperonni').on('click', function () {$('.pep').toggle()});

$('.btn-mushrooms').on('click', function () {$('.mushroom').fadeToggle()});

$('.btn-green-peppers').on('click', function () {$('.green-pepper').slideToggle(1500)});


$('.btn-sauce').on('click', function () {$('.sauce').toggleClass('sauce-white')});

$('.btn-pepperonni').on('click', function () {$('.btn-pepperonni').toggleClass('active')});

$('.btn-mushrooms').on('click', function () {$('.btn-mushrooms').toggleClass('active')});


$('.btn-crust').on('click', function () {$('.btn-crust').toggleClass('active')});

$('.btn-sauce').on('click', function () {$('.btn-sauce').toggleClass('active')});
