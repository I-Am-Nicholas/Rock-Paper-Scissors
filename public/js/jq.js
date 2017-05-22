$( document ).ready(function() {

  $ ("#panel-one").click(function() {
    $("#panel-one").effect( "shake" )
    $("#panel-one").text(function(){
      return "YOUR CHOICE!"
    });
  });

  $ ("#panel-two").click(function() {
    $("#panel-two").effect( "shake" )
  });

  $ ("#panel-three").click(function() {
    $("#panel-three").effect( "shake" )
  });


});
