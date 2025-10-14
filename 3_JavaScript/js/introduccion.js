var ul = document.getElementById("lista")
let url = "https://thesimpsonsapi.com/api/"
let arr_original =[]
var lis = ""

var getLista = (page)=>{
fetch(url+"characters?page="+page).then(response =>{
    if(!response.ok){
     console.log("Error en la RED")   
    }
     return response.json()   
}).then(data=>{
    console.log("Datos del Personaje: ", data)
    data.results.forEach(personaje=>{
        arr_original.push({
            personaje:personaje,
            datos:null
        })
        lis+=
        `<li>
            <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" </img>
            <h2>${personaje.name}</h2>
        </li>`
    })
    ul.innerHTML = lis
    console.log("ARREGLO FINAL", arr_original)
})
}
for(let i=1;i<=5;i++){
    getLista(i)
}
setTimeout(()=>{
    document.getElementById("preloader").style.display = "none"
},3000)
const imprimir = (arr)=>{
    var todo="";
    arr.forEach(item =>(
        todo+=
        `<li>
            <img src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px" </img>
            <h2>${item.personaje.name}</h2>
        </li>`
    ))
    ul.innerHTML=todo
}
//Mostar todo
document.getElementById("mostrarTodo").addEventListener('click',(evt)=>{
    evt.preventDefault()
    imprimir(arr_original)
})

//EDAD MENOR QUE 18
document.querySelector("#linkEdad").addEventListener('click',(evt)=>{
    //Evitar Recarga
    evt.preventDefault()
    let res =arr_original.filter((item)=>item.personaje.age < 18)
    console.log("EDAD",res)
    imprimir(res)
})
//Moridos
document.querySelector("#Muertos").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let res =arr_original.filter((item)=>item.personaje.status == "Deceased")
    imprimir(res)
})
//Promedio de Edad
document.querySelector("#proEdad").addEventListener('click', (evt) => {
    evt.preventDefault();

    // Extraer edades válidas (solo números)
    let edadesValidas = arr_original
        .map(item => item.personaje.age)
        .filter(age => typeof age === "number" && !isNaN(age));

    // Si no hay edades válidas, el promedio es 0
    if (edadesValidas.length === 0) {
        alert("Promedio de edad: 0");
        return;
    }

    // Sumar edades válidas
    let suma = edadesValidas.reduce((acc, age) => acc + age, 0);

    // Calcular promedio
    let promedio = (suma / edadesValidas.length).toFixed(2);

    alert("Promedio de edad: " + promedio);
});


//Promedio de Edad
document.querySelector("#Orden").addEventListener('click', (evt) => {
    evt.preventDefault();

    let res = arr_original
        .filter(item => typeof item.personaje.age === "number" && !isNaN(item.personaje.age))
        .sort((a, b) => a.personaje.age - b.personaje.age); // Orden ascendente

    imprimir(res);
});
// viejo y joven
document.querySelector("#viejojoven").addEventListener('click', (evt) => {
    evt.preventDefault();

    // Filtrar edades válidas
    let edadesValidas = arr_original
        .filter(item => typeof item.personaje.age === "number" && !isNaN(item.personaje.age));

    if(edadesValidas.length === 0){
        ul.innerHTML = "<li>No hay edades válidas</li>";
        return;
    }

    // Ordenar ascendente por edad
    let ordenado = edadesValidas.sort((a, b) => a.personaje.age - b.personaje.age);

    // Tomamos el más joven y el más viejo
    let mostrar = [ordenado[0], ordenado[ordenado.length - 1]];

    // Mostrar en pantalla
    imprimir(mostrar);
});

document.querySelector("#Estudiantes").addEventListener('click', (evt) => {
    evt.preventDefault();

    let res = arr_original.filter(item => 
        item.personaje.occupation &&
        item.personaje.occupation.toLowerCase().includes("student")
    );

    imprimir(res);
});
//Nacimineto
document.querySelector("#Nacimiento").addEventListener('click', (evt) => {
    evt.preventDefault();

    const fechaLimite = new Date("1980-02-01");

    let res = arr_original.filter(item => {
        let fechaStr = item.personaje.birthdate; // usamos birthdate
        if(fechaStr){ // solo si existe
            let fechaPersonaje = new Date(fechaStr);
            return !isNaN(fechaPersonaje.getTime()) && fechaPersonaje < fechaLimite;
        }
        return false;
    });

    if(res.length > 0){
        imprimir(res);
    } else {
        ul.innerHTML = "<li>No se encontraron personajes con fecha de nacimiento anterior a 1980-02-01</li>";
    }
});

const inputBuscar = document.getElementById("buscarInput");

inputBuscar.addEventListener("input", (evt) => {
    let frase = evt.target.value.toLowerCase().trim();

    if(frase === "") {
        // Si no hay nada escrito, mostramos todo
        imprimir(arr_original);
        return;
    }

    // Filtramos personajes que tengan alguna frase que incluya la búsqueda
    let res = arr_original.filter(item => 
        item.personaje.phrases && item.personaje.phrases.some(p => p.toLowerCase().includes(frase))
    );

    if(res.length > 0){
        imprimir(res);
    } else {
        ul.innerHTML = `<li>No se encontraron personajes que digan: "${frase}"</li>`;
    }
});

//moridos
//menores de edad
//promedio de edad
//ordenar por edad ASC
//mostrar el mas viejo y el mas joven
//mostrar los que son estudiantes
//mostrar fecha de nacimiento que sea menor de 1980/02/01
//buscar por frase