/**
 * Created by kreyes on 10/14/16.
 */


$(function() {
    $("#dialog-form").dialog({
        autoOpen: false,
        modal: true,
        buttons: {
            "Ok": function() {
                var text1 = $("#txt1");
                var text2 = $("#txt2");
                //Do your code here
                text1.val(text2.val().substr(1,9));
                $(this).dialog("close");
            },
            "Cancel": function() {
                $(this).dialog("close");
            }
        }
    });


    $('#btn').click(function() {
        $("#dialog-form").dialog("open");
    });

});
