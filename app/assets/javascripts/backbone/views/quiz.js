$(document).ready(function(){
  $(".start_quiz").on("click", function(){
    $(".quiz").slideDown("300") 
    $("#DateCountdown").TimeCircles({
      "animation": "smooth",
      "bg_width": 1.2,
      "fg_width": 0.13333333333333333,
      "circle_bg_color": "#212121",
      "time": {
        "Days": {
          "text": "Days",
          "color": "#FFCC66",
          "show": false
        },
        "Hours": {
          "text": "Hours",
          "color": "#99CCFF",
          "show": false
        },
        "Minutes": {
          "text": "Minutes",
          "color": "#8DC549",
          "show": true
          },
        "Seconds": {
          "text": "Seconds",
          "color": "#FF9999",
          "show": false
        }
      }
    });
    $("#DateCountdown").TimeCircles({count_past_zero: false}); 
  });
});