var _token = document.head.querySelector('[name="csrf-token"').content;
function getUsers(obj, name) {
    var $this = $(obj),
        selected = $this.find('option:selected').val();
    $.ajax({
        type: 'POST',
        url : '/Task/public/admin/'+name,
        data: { '_token': _token, 'field': name, 'value' : selected},
        success: function (result){
            console.log(result);
        }
    });
}