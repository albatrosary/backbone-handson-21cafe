/*
  main.js 0.0.1

  (c) 2013-2014 albatrosary
  Notepad may be freely distributed under the MIT license.
  For all details and documentation:
  https://github.com/albatrosary/backbone-app
*/
'use strict';

require.config({
    shim: {
        underscore: {
            exports: '_'
        },
        backbone: {
            deps: [
                'underscore',
                'jquery'
            ],
            exports: 'Backbone'
        },
        backboneLocalStorage: {
          deps: [
            'backbone'
          ],
          exports: 'LocalStorage'
        },
    },
    paths: {
        jquery: '../bower_components/jquery/jquery',
        backbone: '../bower_components/backbone-amd/backbone',
        underscore: '../bower_components/underscore-amd/underscore',
        backboneLocalStorage: '../bower_components/Backbone.localStorage/backbone.localStorage',
    }
});

require([
    'backbone',
    './routes/notes-router'
], function (Backbone, NotesRouter) {

    // Google Analytics の設定をする
    // JSエラーが発生した際に呼び出されるイベント
    window.onerror = function(message, fileName, lineNumber) {
      
        // 送信するメッセージを生成します。
        var message = 'message:' + message
            + ', fileName:' + fileName 
            + ', line:' + lineNumber
            + ', href:' + location.href
            + ', userAgent:' + window.navigator.userAgent;

        // エラー内容をGoogle Analyticsへ送信します。
        // _gaq.push(['_trackEvent', 'Error', 'JSError', message]);
        console.log(message);
        alert(message);
    }; 

    // メモ本体とリスト
    var NotesRouter = new NotesRouter();
    Backbone.history.start();
});