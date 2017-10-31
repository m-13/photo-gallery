$(document).ready(function () {
  $('#imageModal').on('show.bs.modal', function (event) {
    debugger
    var $image = $(event.relatedTarget) // Button that triggered the modal
    var url = $image.data('src') // Extract info from data-* attributes
    var filename = $image.data('filename');
    var id = $image.data('id')
    var $modal = $(this)

    $modal.find('.modal-body img').attr('src', url);
    $modal.find('.modal-header h3').html(filename);
    $modal.find('.modal-footer #delete').attr('href', '/photos/delete/'+ id);
  })
});