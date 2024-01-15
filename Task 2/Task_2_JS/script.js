const formSubmit = (event) => {

    let name = document.getElementById('name');
    let comment = document.getElementById('comment');
    let male = document.getElementById('male');
    let female = document.getElementById('female');
    let message = document.getElementsByClassName('success_message');

    if ((name.value) == '') {
        alert('All filed are compulsory');
        name.focus();
        return false;
    }
    if ((comment.value) == '') {
        alert('All filed are compulsory');
        comment.focus();
        return false;
    }

    if ((male.checked === false) && (female.checked === false)) {
        alert('All filed are compulsory');
        return false;
    }

    alert('Form Submitted Succesfully');
    message[0].innerHTML = 'Form Submitted';
    name.value = '';
    comment.value = '';
    male.checked = false;
    female.checked = false;
    return false;
}