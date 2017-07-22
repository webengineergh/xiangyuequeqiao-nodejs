////nav导航条
//$.ajax({
//  type:'GET',
//  url:'/user',
//  success:function(result){
//    console.log(result);
//    var html='';
//    for(var i=0;i<result.length;i++){
//      var obj=result[i];
//      //console.log(obj)
//      html+=`
//        <li><a href="${obj.href}"><i class="${obj.class}"></i>&nbsp;${obj.text}</a></li>
//      `;
//    }
//    $('.navbar-nav').html(html);
//  }
//});
//
//
//$.ajax({
//  type:'GET',
//  url:'/aaa',
//  success:function(result){
//    console.log(result);
//    var html='';
//    for(var i=0;i<result.length;i++){
//      var obj=result[i];
//      console.log(obj);
//      html+=`
//        <span class="${obj.class}" data-filter="${obj.data}">${obj.text}</span>
//      `;
//    }
//    $('.h3').html(html);
//  }
//});


$(function(){
  $.ajax({
    type:'GET',
    url:'/cat',
    success:function(result){
      var html='';
      for(var i=0;i<result.length;i++){
        var obj=result[i];
        //console.log(obj);
        html+=`
        <li style="display: inline-block;  opacity: 1;" class="col-md-4 col-sm-4 col-xs-12 mix ${obj.class} mix_all" data-cat="${obj.cat}">
            <a data-toggle="modal" data-target="${obj.target}" class="mix-cover">
              <img class="horizontal" src="${obj.src}" alt="${obj.nid}">
              <span class="overlay"><span class="valign"></span><span class="title">${obj.txt}</span></span>
            </a>
      	</li>
      `;
      }
      $('#Grid').html(html);
    }
  });
});


$(function(){
  $('#Grid').on('click','a',function(){
    var nid=$(this).children('img').attr('alt');
    location.href='photo.html?nid='+nid;
  });
});


$(function(){
  $.ajax({
    type:'GET',
    url:'/customer',
    success:function(result){
      var html='';
      for(var i=0;i<result.length;i++){
        var obj=result[i];
        //console.log(obj);
        html+=`
         <div class="col-md-4 text-center">
            <div class="service-item">
               <div class="thumbnail">
                  <img src="${obj.src}" alt="${obj.cid}">
                  <div class="caption">
                     <a>${obj.txt}</a>
                  </div>
               </div>
            </div>
         </div>
      `;
      }
      $('.customer').html(html);
    }
  });
});


$(function(){
  $('.customer').on('click','div.thumbnail',function(){
    var nid=$(this).children('img').attr('alt');
    location.href='photo.html?nid='+nid;
  });
});

//gift

$(function(){
  $('#giftBtn').click(function(){
    var n = $('#uname').val();  //用户名
    var t = $('#telphone').val();   //手机号码
    if(n==''){
      $('#giftUname').html('*姓名不能为空');
      return false;
    }else if(!/^([a-zA-Z0-9\u4e00-\u9fa5\*]{1,10})$/.test(n)){
      $('#giftUname').html("姓名格式不正确");
      return false;
    }
    else if(t==''){
      $('#giftTel').html('*手机号码不能为空');
      return false;
    }
    else if(!/^(\+86|0086)?\s*1[34578]\d{9}$/.test(t)){
      $('#giftTel').html("手机号码格式不正确");
      return false;
    }else{
      $.ajax({
        type: 'POST',
        url: '/gift',
        data: {uname:n,tel:t},
        success: function(result){
          if(result.code===200){
            $('#giftMsg').html(result.msg);
            $('#giftUname').html('');
            $('#giftTel').html('');
            $('#uname').val("");
            $('#telphone').val("");
          }else {
            $('#giftMsg').html(result.msg);
          }
        }
      });
    }
  });
});


$(function(){
  $('#customerBtn').click(function(){
    var n = $('#name').val();  //用户名
    var e = $('#email').val();   //密码
    var m = $('#message').val();   //留言
    if(n==''){
      $('#msgName').html("顾客姓名不能为空");
      return false;
    }else if(!/^([a-zA-Z0-9\u4e00-\u9fa5\*]{1,10})$/.test(n)){
      $('#msgName').html("顾客姓名格式不正确");
      return false;
    }else if(e==''){
      $('#msgEmail').html('*Email不能为空');
      return false;
    }else if(!/^\w+@\w+\.\w+(\.\w+)?$/.test(e)){
      $('#msgEmail').html("Email格式不正确");
      return false;
    }else if(m=='') {
      $('#msgWords').html("留言不能为空");
      return false;
    }
    else if(!/^([a-zA-Z0-9\u4e00-\u9fa5\*]{1,300})$/.test(m)) {
      $('#msgWords').html("留言格式不正确");
      return false;
    }else{
      $.ajax({
        type: 'POST',
        url: '/msg',
        data: {name:n,email:e,msg:m},
        success: function(result){
          if(result.code===200){
            $('#customerMsg').html(result.msg);
            $('#msgName').html("");
            $('#msgEmail').html("");
            $('#msgWords').html("");
            $('#name').val("");
            $('#email').val("");
            $('#message').val("");
          }else {
            $('#customerMsg').html(result.msg);
          }
        }
      });
    }

  });
});


$('#newSearch').hide();
$(function(){
  $('#search').on('click',function(){
    $('#newSearch').show();
    $.ajax({
      type:'GET',
      url:'/search',
      success:function(result){
        var html='';
        for(var i=0;i<result.length;i++){
          var obj=result[i];
          //console.log(obj);
          html+=`
        <div class="row">
         <div class="col col-md-12">
            <div class="jumbotron">

               <h3 style="color:#000"><i class="glyphicon glyphicon-user"></i> ${obj.uname}</h3>
               <p style="color:#000">${obj.msg}</p>
               <h5 class="text-right" style="color:#000">${obj.time}</h5>
            </div>
         </div>
      </div>
      `;
        }
        $('#searchMsg>div').html(html);
        $('#search').hide();
        $('#newSearch').show();
      }
    });
  });

});
$('#newSearch').click(function(){
  $('#searchMsg>div').html('');
  $('#search').show();
  $('#newSearch').hide();
});