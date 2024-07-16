var cont = document.getElementById("pt-container")

window.addEventListener('message', (event) => {
    if (event.data.type === 'enablePT') {
      cont.style.opacity = 65 + '%'
    } else if (event.data.type === 'disablePT') {
      cont.style.opacity = 0 + '%'
    }
});
