
$('#para').click(function () {
    $('#para').hide();
});
$(document).ready(function () {
    $("#tabs").tabs();
    document.getElementById('edit_profile_content').style.display = 'block';
});
function displayDiv(divOnValTrue, divOnValFalse) {
        document.getElementById(divOnValTrue).style.display = 'block';
        document.getElementById(divOnValFalse).style.display = 'none';
}
function displayDivByValueOfDDL(divID, val, divOnValTrue, divOnValFalse) {
    if (divID.options[divID.selectedIndex].text == val) {
        displayDiv(divOnValTrue, divOnValFalse);
    }
    else {
        displayDiv(divOnValFalse, divOnValTrue);
    }
}