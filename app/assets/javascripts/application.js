// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

$('#addNewEvaluation').on('hidden.bs.modal', function () {
 location.reload();
})
