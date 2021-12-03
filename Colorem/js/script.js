const text=document.querySelector('.contenido').textContent;
console.log(text)
class Animacion {
  constructor(link, nombre) {
    this.link=link;
    this.nombre=nombre;
  }
}
const a = new Animacion('https../hola','jiji');


const gif=document.querySelector('.gif');
document.addEventListener('keyup',(e)=>{
    if(e.key==='s'){
        console.log("hola")
        
        gif.style.right='50px;';
    }
})