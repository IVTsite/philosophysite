var hidden = false;
var moveSize = 0;
var obj = null;
var timerMulti = window.setInterval("move();", 50);
var opac = 1;
var idObject;
var idButHide;

function move() {
    if (moveSize < 0) {
        opac -= 0.05;
        obj.style.opacity = opac;
        if (opac <= 0) {
            obj.style.display = 'none';
            moveSize = 0;
        }
    } else if (moveSize > 0) {
        if (obj.style.display == 'none') {
            obj.style.display = 'block';
        }
        opac += 0.05;
        obj.style.opacity = opac;
        if (opac >= 1) {
            moveSize = 0;
        }
    }
}

function actionClick(idObject, idButHide) {
    this.idObject = idObject;
    this.idButHide = idButHide;
    var object = document.getElementById(idObject);
    obj = object;
    if (hidden) {
        moveSize = 1;
        hidden = false;
    } else {
        moveSize = -1;
        hidden = true;
    }
}