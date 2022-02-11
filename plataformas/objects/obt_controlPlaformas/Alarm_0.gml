/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
randomize()

var enX = irandom_range(0,3)
var enY = irandom_range(0,4)
var deNuevo = irandom_range(0,5)
var objeto = irandom_range(0,2)

show_debug_message(string(room_width+listaX[enX])+","+string(listaY[enY]))

var inst = instance_create_layer(room_width+listaX[enX], listaY[enY], "Instances", objetos[objeto]);

alarm[0] = listaTiempos[deNuevo]