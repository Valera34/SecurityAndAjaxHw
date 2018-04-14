$(document).ready(function(){ 
  show();  
  setInterval('show()',10000);  


});
function show(){
	var prefix="/SpringSecurityPr";
    $.ajax({
        type: 'GET',
        url:prefix+'/home2',
        contentType: "application/json",
        dataType: 'json',
        async: true,
        success: function(result) {
        	$("#st").empty()
            console.log(result);
            $.each(result, function(index, item){
            $('#st').append(''+ item.studentId+"." +'PIB:'+item.pib+"Course:"+ item.course+'</br>');
            });
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert(jqXHR.status + ' ' + jqXHR.responseText);
        }
   });
}
var doAjax = function() {
	var prefix="/SpringSecurityPr";
        $.ajax({
        type: 'POST',
        
        url: prefix+'/admin/'+ document.getElementById('pib').value.toString()+'/'+document.getElementById('course').value.toString(),
        dataType: 'json',
        async: true,
        success: function(result) {
            alert('Student:'+ result.pib+' with course '+result.course+' was added!');
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert(jqXHR.status + ' ' + jqXHR.responseText);
        }
    });
}