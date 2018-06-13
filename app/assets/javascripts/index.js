// // 1.wrap functions to have them work when page loaded
// window.addEventListener("DOMContentLoaded", function(){
//   var commentBtns = document.getElementsByClassName('comment-btns')
//   var commentForms = document.getElementsByClassName('comment-forms')
//
//
// for (let i = 0; i < commentBtns.length; i++) {
//   commentBtns[i].addEventListener('click', function(){
//     commentForms[i].style.display = 'block'
//     commentBtns[i].style.display = 'none'
//   })
// }
// })
// // 1.wrap functions to have them work when page loaded
// window.addEventListenter("DOMContentLoaded", function(){
//
// })
// // OR 2. add jquery gem in rails Gemfile/bundle install and require in application.js
$(document).on("turbolinks:load", function(){

    var commentBtns = document.getElementsByClassName('comment-btns')
    var commentForms = document.getElementsByClassName('comment-forms')


  for (let i = 0; i < commentBtns.length; i++) {
    commentBtns[i].addEventListener('click', function(){
      commentForms[i].style.display = 'block'
      commentBtns[i].style.display = 'none'
    })
  }
})
