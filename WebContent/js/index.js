var flag = 0
function scroll(num, index) {
	$(".centerInner ul").animate({
		"margin-left": num
	}, 1000, function() {
		if(index == 1){
			$(".centerInner ul li:eq(0)").appendTo($(".centerInner ul"))
		}
		$(".centerInner ul li:eq(0)").appendTo($(".centerInner ul"))
		$(".centerInner ul").css({
			"margin-left": -$(document).width()
		})
	})
}

$(document).ready(function() {
	$(".centerInner ul li").css("width", $(document).width())
	$(".centerInner ul").css("margin-left", -$(document).width())
	$(window).resize(function(){//监测窗口变化
		$(".centerInner ul li").css("width", $(document).width())
		$(".centerInner ul").css("margin-left", -$(document).width())
	});
	$(".pageCenter").mousemove(function() {
		$(".contBo").css("visibility", "visible")
	})
	$(".pageCenter").mouseleave(function() {
		$(".contBo").css("visibility", "hidden")
	})
	$(".cenContent>div").mousemove(function() {
		$(this).find("p").css("background-color", "#EE5909")
	})
	$(".cenContent>div").mouseleave(function() {
		$(this).find("p").css("background-color", "#b2b2b2")
	})
	$(".culD").click(function() {
		$(".secD").removeClass("selected");
		$(this).addClass("selected");
	})
	$(".secD").click(function() {
		$(".culD").removeClass("selected");
		$(this).addClass("selected");
	})
	$(".prePage").click(function() {
		scroll(0,1)
	})
	$(".nextPage").click(function() {
		scroll(-2*$(".centerInner ul li").width(),-1)
	})
})