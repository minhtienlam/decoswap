$(document).ready(function() {
  $("#sofas-btn").on("click", function(event) {
    ajaxCallFilterItem();
  });
});

function ajaxCallFilterItem() {
  $.ajax({
    type: "GET",
    url: "https://api.github.com/gists",
    success: function(data) {
      console.log("Successfully created gist at");
    }
  });
}
