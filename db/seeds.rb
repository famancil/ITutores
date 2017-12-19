# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

key = "Tutor"

Tutorado.create([{nombre: "Ricardo", apellidos:"Ramirez Sanhueza", email: "rramirez@alumnos.usm.cl",rol: "201089093-4",numero: "+56 9 98732123", carrera: "Arquitectura", campus:"Casa Central",semestre:"2017-2"},	
	{nombre: "Ruben",apellidos:"Soto Tello", email: "rsoto@alumnos.usm.cl",rol: "201089080-4",numero: "+56 9 98732130", carrera: "Arquitectura", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Thalia",apellidos:"Aguirre Aguilar", email: "taguirre@alumnos.usm.cl",rol: "201089081-4",numero: "+56 9 98732131", carrera: "Arquitectura", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Rodrigo",apellidos:"Zamora Bustos", email: "rzamora@alumnos.usm.cl",rol: "201089082-4",numero: "+56 9 98732132",carrera: "Arquitectura", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Pablo",apellidos:"Caballero Casanova", email: "pcaballero@alumnos.usm.cl",rol: "201089083-4",numero: "+56 9 98732133",carrera: "Arquitectura", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Juan",apellidos:"Condon Segura", email: "jcondon@alumnos.usm.cl",rol: "201089084-4",numero: "+56 9 98732134",carrera: "Ing. Civil Mecanico", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Esteban",apellidos:"Cerda Silva", email: "ecerda@alumnos.usm.cl",rol: "201089085-4",numero: "+56 9 98732135",carrera: "Ing. Civil Mecanico", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Yolanda",apellidos:"Lazo Torres", email: "ylazo@alumnos.usm.cl",rol: "201089086-4",numero: "+56 9 98732136",carrera: "Ing. Civil Mecanico", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Paula",apellidos:"Contreras Allende", email: "pcontreras@alumnos.usm.cl",rol: "201089087-4",numero: "+56 9 98732137",carrera: "Ing. Civil Mecanico", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Carlos",apellidos:"Chico Escobar", email: "cchico@alumnos.usm.cl", rol: "201089088-4",numero: "+56 9 98732138",carrera: "Ing. Civil Mecanico", campus:"Casa Central",semestre:"2017-2"},
	{nombre: "Laura",apellidos:"Figueroa Garcia", email: "lfigueroa@alumnos.usm.cl",rol: "201089089-4",numero: "+56 9 98732139",carrera: "Ing. Civil Informatico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "David",apellidos:"Guerra Gutierrez", email: "dguerra@alumnos.usm.cl", rol: "201089090-4",numero: "+56 9 98732140",carrera: "Ing. Civil Informatico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "Nicolas",apellidos:"Ibanez Laguna", email: "nibanez@alumnos.usm.cl", rol: "201089001-4",numero: "+56 9 98732141",carrera: "Ing. Civil Informatico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "Mario",apellidos:"Olivares Leal", email: "molivares@alumnos.usm.cl", rol: "201089002-4",numero: "+56 9 98732142",carrera: "Ing. Civil Informatico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "Cristobal",apellidos:"Vera Carvajal", email: "cvera@alumnos.usm.cl", rol: "201089003-4",numero: "+56 9 98732143",carrera: "Ing. Civil Informatico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "Luis",apellidos:"Carrera Aguila", email: "lcarrera@alumnos.usm.cl", rol: "201089004-4",numero: "+56 9 98732144",carrera: "Ing. Civil Matematico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "Victor",apellidos:"Rojas Rojo", email: "vrojas@alumnos.usm.cl", rol: "201089005-4",numero: "+56 9 98732145",carrera: "Ing. Civil Matematico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "Fabian",apellidos:"Munoz Novoa", email: "fmunoz@alumnos.usm.cl", rol: "201089009-4",numero: "+56 9 98732146",carrera: "Ing. Civil Matematico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "Gabriel",apellidos:"Palacios Boloñas", email: "gpalacios@alumnos.usm.cl", rol: "201089081-4",numero: "+56 9 98732147",carrera: "Ing. Civil Matematico", campus:"Campus San Joaquin",semestre:"2017-2"},
	{nombre: "Harold",apellidos:"Perez Ayala", email: "hperez@alumnos.usm.cl", rol: "201089081-4",numero: "+56 9 98732148",carrera: "Ing. Civil Matematico", campus:"Campus San Joaquin",semestre:"2017-2"}])

Tutor.create([{nombre: "Juan", apellidos:"Cordova Merino", email: "jcordova@alumnos.usm.cl",numero: "+56 9 97456783",contraseña: AESCrypt.encrypt("hola123", key), carrera: "Ing. Ejec. en Informatica", campus:"Casa Central"},
	{nombre: "Felipe", apellidos:"Mancilla Sepúlveda", email: "famancil@alumnos.usm.cl",numero: "+56 9 97456781",contraseña: AESCrypt.encrypt("hola1234", key), carrera: "Ing. Ejec. en Informatica", campus:"Casa Central"}])

Coordinador.create({nombre: "Antonio", apellidos:"Salinas Soto", email: "antonio.salinas@usm.cl",contraseña: AESCrypt.encrypt("jefecitolindo", key), campus: "Casa Central"})

Mensaje.create([{titulo:"Mensaje de Inicio",texto: "Bienvenidos Estudiantes al nuevo sistema de Tutorias",carrera:"Ing. Ejec. en Informatica",campus:"Casa Central",coordinador_id: 1},
	{titulo:"Mensaje de Bienvenida",texto: "Bienvenidos Estudiantes de Arquitectura a un nuevo año semestre de experiencias",carrera:"Arquitectura",campus:"Casa Central",coordinador_id: 1}])