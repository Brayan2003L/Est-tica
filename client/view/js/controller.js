vista=null;


window.onload=function(){
    vista = new Vista();
    vista.mostrarPlantilla("temp-login", "container");
}

function login() {
    vista.mostrarPlantilla("temp-login", "container")
}

function abrirRegistro(){
    vista.mostrarPlantilla("temp-registro", "container")
}
function abrirRecuperarContrasena() {
    vista.mostrarPlantilla("temp-recuperar-contrasena", "container")
}
function abrirValidarCodigo() {
    vista.mostarPlantilla("tempe-validar-codigo", "container");
}
function abrirMenu() {
    vista.mostrarPlantilla("temp-menu-inicio", "container")
}
function abrirPerfil(){
    vista.mostrarPlantilla("temp-perfil","container")
}
function abrirCatalogo(){
    vista.mostrarPlantilla("temp-catalogo","container")
}
function abrirDetallesProducto(){
    vista.mostrarPlantilla("temp-detalles-producto","container")
}
function abrirCanasta(){
    vista.mostrarPlantilla("temp-canasta","container")
}
function abrirDetallesCompra(){
    vista.mostrarPlantilla("temp-detalles-compra","container")
}
function abrirCentroDudas(){
    vista.mostrarPlantilla("temp-canasta","container")
}
function abrirMenúEmoleado(){
    vista.mostrarPlantilla("temp-detalles-compra","container")
}
function abrirAlmacenamiento(){
    vista.mostrarPlantilla("temp-centro-dudas","container")
}
function abrirCitasAdmin(){
    vista.mostrarPlantilla("temp-menu-empleado","container")
}
function abrirInfoClientes(){
    vista.mostrarPlantilla("temp-almacenamiento","container")
}
function abrirCompras(){
    vista.mostrarPlantilla("temp-catalogo","container")
}

