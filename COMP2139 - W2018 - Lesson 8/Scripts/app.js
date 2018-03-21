//IIFE - Immediately Invoked Function Expression

// also called an anonymous self-executing function

(function () {
    function Start() {
        console.log("App Started!");
    }

    window.onload = Start;
})();