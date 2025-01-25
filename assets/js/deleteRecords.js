$(document).ready(function () {
  $(".delete_record").click(function (e) {
    e.preventDefault()
    var empid = $(this).attr("id-a-borrar")
    var parent = $(this).parent("td").parent("tr")
    bootbox.dialog({
      message: "<h4>Se eliminar&aacute;: </h4><h3>" + empid + "</h3>",
      title: "<span class='text-danger'>Eliminar registro <i class='las la-1x la-trash-alt'></i></span>",
      buttons: {
        success: {
          label: "Cancelar",
          className: "btn-secondary",
          callback: function () {
            $(".bootbox").modal("hide")
          },
        },
        danger: {
          label: "Eliminar",
          className: "btn-danger",
          callback: function () {
            $.ajax({
              type: "POST",
              url: "delete.php",
              data: "empid=" + empid,
            })
              .done(function (response) {
                bootbox.alert(response)
                parent.fadeOut("slow")
              })
              .fail(function () {
                bootbox.alert("Error....")
              })
          },
        },
      },
    })
  })
})
