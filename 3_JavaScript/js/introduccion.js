
let x = [1,2,3,4]
const y = [...x]
console.log(y)

const edadLegalEEUU = 21
const checkEstado = (edad, edadLegal)=>{
    return edad >= edadLegal ? "Eres mayor" : "Eres menor"
}

const persona = checkEstado (18,edadLegalEEUU)
console.log(persona)

//JSON
let arreglo=[
    { id:1,name:"Javi", age:21},
    { id:2,name:"Luis", age:20},
    { id:3,name:"Javier", age:22},
    { id:4,name:"Luis Javier", age:23},
]
let ul = document.getElementById("lista")
var todo = ""
arreglo.forEach((item)=>{
    item.age = item.age * 10
    todo += `
        <li>${item.name} -EDAD-${item.age}</li>
    `
})
console.log(todo)
ul.innerHTML = todo

console.log("Arreglo Original", arreglo)
var copia = arreglo.map((item,index)=>{
    item.age *= 10
    return item
})

console.log("Arreglo Modificado", arreglo)
console.log("Arreglo Modificado", copia)

let url = "https://thesimpsonsapi.com/api/"
fetch(url+"characters").then(response =>{
    if(!response.ok){
     console.log("Error en la RED")   
    }
     return response.json()   
}).then(data=>{
    console.log("Datos del Personaje: ", data)
    var lis = ""
    data.results.forEach(personaje=>{
        lis+=
        `<li>
            <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" </img>
            <h2>${personaje.name}</h2>
            <h2>${personaje.age}</h2>
        </li>`
    })
    ul.innerHTML = lis
})