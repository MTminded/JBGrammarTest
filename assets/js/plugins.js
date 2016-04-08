// Avoid `console` errors in browsers that lack a console.
(function() {
    var method;
    var noop = function () {};
    var methods = [
        'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
        'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
        'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
        'timeline', 'timelineEnd', 'timeStamp', 'trace', 'warn'
    ];
    var length = methods.length;
    var console = (window.console = window.console || {});

    while (length--) {
        method = methods[length];

        // Only stub undefined methods.
        if (!console[method]) {
            console[method] = noop;
        }
    }
}());

// Place any jQuery/helper plugins in here.

//Validate the form
$(".submit_button").click(function(){

    $(".warning_message").html("");

    if ($("input[name='recording']").val() == ""){
        $(".warning_message").html("请先录音后再点击Next。");
        return false;
    }

    if ($("input[name='text']").val() == ""){
        $(".warning_message").html("请输入翻译的英文内容。");
        return false;
    }

});

$(".play_both").click(function(){
    console.log("text");
    $(".teachers_audio_wrapper")[0].play();
    $(".playback_wrapper")[0].play();
});
