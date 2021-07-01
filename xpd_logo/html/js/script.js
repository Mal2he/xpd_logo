$(function () {
  // Configura o Timezone do Moment.js
  moment.locale('pt-BR');
  // Inicia o tick de horário
  function iniciarHorario() {
    document.getElementById('horario').innerHTML = "<h3><th></th>" + moment().format("DD/MM/YYYY HH:mm:ss") + "</h3>";
    t = setTimeout(function () {
      iniciarHorario()
    }, 500);
  }
  iniciarHorario();

  window.addEventListener("message", function (event) {
    $("#playersText").text(event.data.players);
  })
});