function funcion(){
    let id = document.getElementById("input").value;
    fetch(`https://jsonplaceholder.typicode.com/todos/${id}`)
      .then(response => response.json())
      .then(json => {

        var a1 = document.querySelector("body > table > tbody > tr:nth-child(1) > td:nth-child(2)")
        a1.innerHTML = json.id

        var a2 = document.querySelector("body > table > tbody > tr:nth-child(2) > td:nth-child(2)")
        a2.innerHTML = json.title

        var a3 = document.querySelector("body > table > tbody > tr:nth-child(3) > td:nth-child(2)")
        a3.innerHTML = json.completed

      })

}