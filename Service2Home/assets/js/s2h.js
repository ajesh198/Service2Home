function Confirm() {
    let text = "Please Confirm.";
    if (confirm(text) == false) {
        event.preventDefault();
    }
}

function validatename() {
    var name = document.getElementById('nametxt');
    if (name == null || name == "") {
         var msg = "name is required"
         document.getElementById("p1").innerHTML = msg;
        return false;
    } 
}