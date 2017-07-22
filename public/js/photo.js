$(function(){
    var nid = location.search.split('=')[1];
    //console.log(nid);
    $.ajax({
      url:'/imgNid/'+nid,
      type:'GET',
      success:function(data){
        //console.log(data);
        var html1='';
        for(var i=0;i<data.length;i++){
          var obj=data[i];
          html1+=`
            <li style="display: inline-block;  opacity: 1;" class="col-md-4 col-sm-4 col-xs-12 mix">
                  <a data-toggle="modal" data-target="${obj.target}" class="mix-cover">
                     <img class="vertical" src="${obj.src}" alt="portrait 4">
                     <span class="overlay"><span class="valign"></span></span>
                  </a>
               </li>
          `;
        }
        $('#Grid').html(html1);

        var html2='';
        for(var j=0;j<data.length;j++){
          var result=data[j];
          //console.log(result.target);
          var target=result.target.substring(1);
          //console.log(target);
          html2+=`
            <div class="modal fade" id="${target}" tabindex="-1" role="dialog" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                     </div>
                     <div class="modal-body">
                        <img class="thumbnail" alt="love_flower" src="${result.src}"/>
                     </div>
                  </div>
               </div>
            </div>
          `;
        }
        $('.gallery').append(html2);
      }
    });
});

<!-- Navbar -->

$(function(){
  $(document).ready(function() {
    $('#nav').scrollToFixed();
  });
});

