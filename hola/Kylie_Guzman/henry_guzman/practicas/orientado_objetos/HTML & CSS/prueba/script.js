function Buscar(){
    let id = document.getElementById("input").value;

    fetch(`https://jsonplaceholder.typicode.com/todos/${id}`)
      .then(response => response.json())
      .then(json => {
        var a = document.querySelector("body > table > tbody > tr:nth-child(1) > td:nth-child(2)")
        a.innerHTML = json.id

        var b = document.querySelector("body > table > tbody > tr:nth-child(2) > td:nth-child(2)")
        b.innerHTML = json.title

        var c = document.querySelector("body > table > tbody > tr:nth-child(3) > td:nth-child(2)")
        c.innerHTML = json.completed
      })
}