var close = true;
var lastData = {};
var titlesize = 2.08;
var playerSize = 1.6;
var playerSizeme = 1.83;
var currentAction = null;

$(document).ready(() => {
    $(document).on('input change', '#increase-size', function () {
        lastData.size = $(this).val();
        lastData.me = Math.abs(playerSizeme * $(this).val());
        lastData.title = Math.abs(titlesize * $(this).val());
        lastData.player = Math.abs(playerSize * $(this).val());

    
        

        $('.title').css('font-size', `${lastData.title}rem`);
        $('.player me').css('font-size', `${lastData.me}rem`);
        $('.player').css('font-size', `${lastData.player}rem`);
        $('.player me').css('font-weight', 'bold');
    });

    $(document).on('input', '#opacity', function () {
        ChangeBackGround($(this).val());
    });

    $(".restore-btn").on("click", function () {
        lastData = {};
        ChangeBackGround("0.7");
        $('.player').css('font-size', `1rem`);
        $('.title').css('font-size', `1.3rem`);
        $('.range-inputes input').val("contrast");
        $('.player.me').css('font-size', `1.1rem`);
        $('.active-players').animate({ left: '1%', top: '5%' })
    });

    $(".options-btns").on("click", ".options-btn", function () {
        currentAction = $(this).data('action');
        SetRightInput(currentAction);
        $("#action-text").text(`Current Action: ${capitalize(currentAction)}`)
    });

    $(".inputs-id").on("click", ".save-btn", function () {
        if (currentAction == null) {
            $('.inputs-id #err-text').text('Please select an action');
            return;
        } else if (currentAction == "remove") {
            if ($('#id').val() == "")
                $('.inputs-id #err-text').text('The input can not be empty!');
            else
                SendData(null);
        } else {
            if (($('#code').val() == "") || ($('#id').val() == ""))
                $('.inputs-id #err-text').text('The inputs can not be empty!');
            else
                SendData($('#code').val());
        }
    });

    $(".rank").on("click", function () {
        $('#rank-err').text("");
        if ($('#rank').val() == "")
            $('#rank-err').text('The input can not be empty!');
        else
            $.post('http://fs-10system/rank', JSON.stringify({ rank: $('#rank').val() }));
    });


    $(".range-bar").prop('disabled', close);
    SwitchPages();
    DragAble();
    Close();
});

window.addEventListener("message", e => {
    if (e.data.action == "open") {
        if (lastData.opacity) {
            $('#opacity').val(lastData.opacity);
        } else if (lastData.size) {
            $('#increase-size').val(lastData.size);
        }
        $('.warrper').show(500);
        $('.settings-container').slideDown();
    } else if (e.data.action == "open10system") {
        toggle();
    }
    else if (e.data.action == "error") {
        $('.inputs-id #err-text').text(e.data.errorText);
    } else if (e.data.action == "update" && !close) {
        var players = e.data.data;
        players.sort( (a, b) => a.callsign > b.callsign ? 1 : (a.callsign == b.callsign ? 0 : -1));

        $('.players-container').empty();
        $('.title span').text(`${players.length} ${e.data.title}`);
        for (var player of players) {
            let talkingRadio;
            if (player.panic){
                talkingRadio = `<i class="fa-solid fa-face-dizzy"></i>`
            } else {
                talkingRadio = `<span style=${player.talking ? "color:red;" : ""}>${player.radioChannel == "x" || player.radioChannel == "0" ? "Off" : player.radioChannel + " Hz"}</span>`

            }
            var html = `
            <div class="player ${player.me ? "me" : ""}">
            <span class="tag ${player.class}">${player.callsign}</span> <span style=${player.panic ? "color:red;" : ""}>${player.name} | ${player.rank} - ${talkingRadio}</span></span>
            </div>`
            $('.players-container').append(html);
        }

        $('.active-players').slideDown();
        $('.title').css('font-size', `${lastData.title}rem`);
        $('.player me').css('font-size', `${lastData.me}rem`);
        $('.player').css('font-size', `${lastData.player}rem`);
        $('.player me').css('font-weight', 'bold');
    } else if (e.data.action == "close") {
        if (!close) $('.active-players').slideUp();
    }
})

function toggle() {
    close = !close;
    $(".range-bar").prop('disabled', close);
    if (close) $('.active-players').slideUp();
    $.post('http://fs-10system/ToggleOpen', JSON.stringify({ toggle: close }))
}

function Close() {
    $("#close-del").on("click", function () {
        CloseEvent();
    });
}


function SetRightInput(action) {
    if (action == "remove") {
        $('#code').hide();
    } else {
        $('#code').show();
    }
}

function SendData(code) {
    var data = {
        action: currentAction,
        id: $('#id').val(),
        code: code
    }
    $('.inputs-id #err-text').text("");
    $.post('http://fs-10system/action', JSON.stringify({ data: data }))
}

function ChangeBackGround(val) {
    $('.active-players').css('background-color', `rgba(0,0,0,${val})`);
    $('.title').css('background-color', `rgba(0,0,0,${addbits(val + 0.05)})`);
}

function addbits(s) {
    var total = 0,
        s = s.match(/[+\-]*(\.\d+|\d+(\.\d+)?)/g) || [];

    while (s.length) {
        total += parseFloat(s.shift());
    }
    return total;
}

function DragAble() {
    $(".active-players").draggable({
        appendTo: 'body',
        containment: 'window',
        scroll: false,
    });
}

const capitalize = (s) => {
    if (typeof s !== 'string') return ''
    return s.charAt(0).toUpperCase() + s.slice(1)
}

function CloseEvent() {
    currentAction = null;
    $('input').val("");
    $('.warrper').hide();
    $("#action-text").text("");
    $('.settings-container').slideUp();
    $.post('http://fs-10system/close', JSON.stringify({}));
}

function SwitchPages() {
    $(".slide-btnLeft").on("click", function () {
        $('.page-1').fadeOut(200);
        $('.inputs-id').fadeIn(250);

        $('.slide-btnLeft').fadeOut(200);
        $('.slide-btnRight').fadeIn(200);
        $('.settings-container-header span').text('Administrator Panel');
        if (currentAction != null) $("#action-text").text(`Current Action: ${capitalize(currentAction)}`)
    });

    $(".slide-btnRight").on("click", function () {
        $('.page-1').fadeIn(200);
        $('.inputs-id').fadeOut(250);

        $('.slide-btnLeft').fadeIn(200);
        $('.slide-btnRight').fadeOut(200);
        $('.settings-container-header span').text('Personal Settings');
        $("#action-text").text("");
    });
}

$(document).keyup(function (e) {
    if (e.keyCode == 27) {
        CloseEvent();
    }
});