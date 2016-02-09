// app.js

console.log('APP JS START');


$(document).ready(function () {

  var html = `
  <p> this is the price</p>
  <p> this is another paragraph</p>`;

  console.log("JS APPEND TO ME", $('.js-append-to-me').length)

  $('.js-append-to-me').append(html);
});