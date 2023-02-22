function Confirm() {
    let text = "Please Confirm.";
    if (confirm(text) == false) {
        event.preventDefault();
    }
}
