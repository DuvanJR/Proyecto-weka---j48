//Crea un objeto XMLHttpRequest
var file = new XMLHttpRequest();
var dataSet = "";
var path = 'diabetes.txt';

var div = document.getElementById("myData");
//div.innerHTML = "";

//Inicializa una nueva solicitud
file.open("GET", path, false);

//Se ejecuta cada vez que cambie el estado del objeto 'file'
file.onreadystatechange = function () {
    //La respuesta está lista
    if (file.readyState == 4 && file.status == 200) {
        //Devuelve la respuesta del servidor como una cadena de texto
        dataSet = file.responseText;
        console.log(dataSet);
        div.innerHTML = dataSet;
    }
};

//Envia la solicitud al servidor
file.send();


// Habilitar o Desabilitar un boton
const $btn = document.querySelector("button"),
        $form = document.querySelector("form");

$form.addEventListener("keyup", e => {
    let disabled = false;

    if ($form.pregnancies.value === "")
        disabled = true;
    if ($form.glucose.value === "")
        disabled = true;
    if ($form.bloodPressure.value === "")
        disabled = true;
    if ($form.skinThickness.value === "")
        disabled = true;
    if ($form.insulin.value === "")
        disabled = true;
    if ($form.bmi.value === "")
        disabled = true;
    if ($form.age.value === "")
        disabled = true;

    (disabled === true)
            ? $btn.disabled = true
            : $btn.disabled = false;

})



