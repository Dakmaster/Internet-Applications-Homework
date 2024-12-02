// For HW-13.3&13.4

// initialization function to insert cells into the table
function createCanvas() {
    var side = 100;
    var tbody = document.getElementById("tablebody");

    for (var i = 0; i < side; ++i) {
        var row = document.createElement("tr");

        for (var j = 0; j < side; ++j) {
            var cell = document.createElement("td");
            row.appendChild(cell);
        }

        tbody.appendChild(row);
    }
} // end function

// register mousemove listener
document.getElementById("canvas").addEventListener(
    "mousemove", processMouseMove, false
);
// onmousemove event
function processMouseMove(e) {
    if (e.target.tagName.toLowerCase() == "td") {
        // turn the cell blue if the Ctrl key is pressed
        if (e.ctrlKey) {
            e.target.setAttribute("class", "blue");
        } 
        // turn the cell red if the Shift key is pressed
        else if (e.shiftKey) {
            e.target.setAttribute("class", "red");
        } 
        // turn the cell white if the Alt key is pressed (erase)
        else if (e.altKey) {
            e.target.style.backgroundColor = "#fff";
            e.target.classList.remove("blue", "red");
        }
    }
}

// erase all cells by setting their backgound color to white and removing classes
function eraseAll() {
    var cells = document.querySelectorAll("#canvas td");
    cells.forEach(function(cell) {
        cell.style.backgroundColor = "#fff";
        cell.classList.remove("blue", "red");
    });
}

// register click listener for the erase buttn
document.getElementById("eraseAllButton").addEventListener(
    "click", eraseAll, false
);

window.addEventListener("load", createCanvas, false);
