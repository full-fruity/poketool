window.onload = () => {
  const suggestArea = document.querySelector('#nameList')
  const input = document.querySelector('#pokename')
  const removeSuggests = () => [...suggestArea.children].map(e => e.remove())
  input.addEventListener('input', e => {
    let request = new XMLHttpRequest()
    request.addEventListener('load', e => {
      removeSuggests()
      e.target.response.map(monster => {
        let el = document.createElement('div')
        el.innerText = monster.screen_name
        el.setAttribute('data-name', monster.name)
        el.addEventListener('click', e => {
          input.value = e.target.getAttribute('data-name')
          removeSuggests()
        })
        suggestArea.appendChild(el)
      })
    })
    request.open('GET', `/search?name=${e.target.value}`)
    request.responseType = 'json'
    request.send()
  })




  // autoComplete = () =>{
  //   let name = document.getElementById("pokename").value
  //   console.log(name);
  //
  //   let pokeList = document.getElementById("nameList")
  //
  //   function nameSuggest () {
  //     console.log(this.response);
  //
  //     let names = this.response
  //     for (var i = 0; i < names.length; i++) {
  //       // console.log(names[i]);
  //
  //       pokeList.innerHTML += names[i].screen_name　+ ':' + names[i].name + '<br>';
  //
  //     }
  //   }
  //   pokeList.textContent = '';
  //
  //   let xhr = new XMLHttpRequest();
  //   xhr.addEventListener("load", nameSuggest);
  //   xhr.open("GET", `/search?name=${name}`);
  //   xhr.responseType = 'json';
  //   xhr.send();
  // }
}
