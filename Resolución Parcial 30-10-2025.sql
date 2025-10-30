/*
Gestión de arbolado público
A través de la Dirección General de Parques y Paseos, la Secretaría de Ambiente y Espacio Público del municipio de Rosario, gestiona el arbolado público de la ciudad.
Esta gestión incluye la plantación, el mantenimiento y el cuidado de los árboles en veredas, espacios verdes, bulevares y plazas como parte de un plan integral que busca, entre otros objetivos, incrementar la cantidad de ejemplares y priorizar las especies nativas.
Cada ejemplar forma parte de un inventario que se actualiza con relevamientos periódicos y con las novedades que llegan desde reclamos vecinales. De cada árbol se registra un identificador municipal, su especie (nombre común y científico), la fecha o temporada de plantación cuando se conoce, dimensiones estimadas (diámetro a la altura del pecho y altura total), estado sanitario (sano,regular,malo,seco), nivel de riesgo (bajo, medio, alto), su estado vital (vivo en pie, extraído, seco en pie, ausente), interferencias con tendidos eléctricos o frentistas y observaciones sobre raíces, copa y oquedades. La localización se anota por calle y numeración o esquina, barrio y coordenadas geográficas, junto con datos del entorno: ancho de vereda, tamaño del alcorque y presencia de servicios subterráneos.
Inspectores del área realizan visitas en distintas zonas y documentan hallazgos con fecha, responsable, notas técnicas y fotografías, además de recomendaciones como poda de despeje, formación, extracción o destoconado, asignando una prioridad según el riesgo. 
Los vecinos pueden iniciar reclamos por distintos canales. Cada reclamo queda asociado a una dirección o a un árbol concreto y detalla el motivo (rama sobre cableado, vereda levantada, árbol seco, caída de rama), el canal de ingreso (app municipal, formulario web, línea telefónica 147, atención presencial en distritos/centros municipales, correo electrónico, whatsApp/chatbot, derivación interna (p. ej., Protección Civil, Inspección) y su estado a lo largo del ciclo de atención (recepcionado, en inspección, constatado, no  constatado,programado, resuelto).
En situaciones climáticas severas se abren partes de incidente con ubicación, daños ocasionados, tiempos de respuesta y vínculo con eventuales reclamos de terceros. 
A partir de inspecciones y reclamos se emiten órdenes de trabajo con un tipo de intervención definido (poda, extracción, plantación, trasplante, riego, control de plagas). Las órdenes se asignan a cuadrillas municipales o a contratistas externos, indicando zona, fecha programada, responsable, equipamiento requerido y costos estimados. Al finalizar, se registra la ejecución real con horas trabajadas, insumos, fotos del “antes y después” y el resultado técnico, pudiendo programarse tareas pendientes si no se completa lo previsto.
*/

-- Ejercitación
-- Dado el diagrama modelo relacional, escribí las consultas necesarias que permitan:
/*
(1 punto) Informar todos los ejemplares cuyo nombre científico comience con “Platanus”, con estado vital “vivo en pie”, estado sanitario “malo” ó “seco”, plantados antes del 31 de diciembre de 1990, ordenados por riesgo descendente y fecha de plantación ascendente :
|ID Municipal |Nombre científico |Fecha plan. (dd/mm/yyyy)↑↑↑ |Riesgo ↓↓↓ |Est. Sanitario |
*/



/*
(1 punto) Realizar un informe detallado de los reclamos recepcionados entre el 21 de septiembre de 2024 y 21 de diciembre de 2025 ingresado por “línea telefónica 147” ordenados por fecha de reclamo ascendente :
ID Recl.
Nombre común
Fecha reclamo (dd/mm/yyyy)↑↑↑
Motivo reclamo
Est. Sanitario



(1 punto) Informar las especies que no hayan generado reclamos en los últimos 3 años:
Nombre común
Nombre científico
Diámetro
Alt. máxima



(2 punto) Informar cantidad de reclamos que no hayan sido resueltos por estado, ordenados por cantidad de reclamos en forma descendente.
Estado
Cant. de reclamos ↓↓↓



(2 punto) Para obtener un recuento anual, se necesita un listado con los datos de todas las especies y la cantidad de ejemplares que hay plantados de cada una (estado vital: vivo en pie). En el caso que no haya, mostrar “Sin ejemplares”.
Nombre común
Nombre científico
Cant. de ejemplares



(3 puntos) Informar las especies que tuvieron más de 100 reclamos en el último año, ordenado por cantidad de reclamos descendente.
Nombre común
Nombre científico
Cant. de reclamos



*/