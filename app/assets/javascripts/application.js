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
//= require popper
//= require jquery
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

/* global $*/
// オプションを指定してSkipprの実行
$(document).on("turbolinks:load",function () {
  $(".theTarget").skippr({
    // スライドショーの変化（"fade" or "slide"）
    transition : 'slide',
    // 変化にかかる時間（ミリ秒）
    speed : 3000,
    // easingの種類
    easing : 'easeOutQuart',
    // ナビゲーションの形（"block" or "bubble"）
    navType : false,
    // 子要素の種類（"div" or "img"）
    childrenElementType : 'div',
    // ナビゲーション矢印の表示（trueで表示）
    arrows : false,
    // スライドショーの自動再生（falseで自動再生なし）
    autoPlay : true,
    // 自動再生時のスライド切替間隔（ミリ秒）
    autoPlayDuration : 3000,
    // キーボードの矢印キーによるスライド送りの設定（trueで有効）
    keyboardOnAlways : false,
    // 1枚目のスライド表示時に戻る矢印を表示するかどうか [false]:矢印を隠さない [true]:矢印を隠す
    hidePrevious : true,
  });
});

$(function() {
    var $allMsg = $('#title');
    var $wordList = $('#title').html().split("");
    $('#title').html("");
    $.each($wordList, function(idx, elem) {
        var newEL = $("<span/>").text(elem).css({ opacity: 0 });
        newEL.appendTo($allMsg);
        newEL.delay(idx * 70);
        newEL.animate({ opacity: 1 }, 1100);
    });
});

$(document).on('turbolinks:load', function() {
  $('.menu-trigger').on('click', function(event) {
    $(this).toggleClass('active');
    $('#sp-menu').fadeToggle();
    event.preventDefault();
  });
   $('#sp-menu').toggleClass;
});