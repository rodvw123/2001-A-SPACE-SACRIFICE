m_timer = null

temp = 0

class App.c_background
	@color: 255
	@sign: -1

	@shift_color: ->
		if @color <= 0
			@sign = 1
		else if @color >= 255
			@sign = -1
		
		@color += 5*@sign
	@print: ->
		$ =>
			temp = 105 - @color
			if temp < 0
				temp = 0
			$("body").css("background-color","rgb(#{@color},#{@color},#{@color})")
			$("body").css("color","rgb(#{temp},255,#{temp})")

main = ->
	App.ship_time.tick()
	App.ship_time.print()
#	c_background.shift_color()
#	c_background.print()

$ ->
	$("#tabs").tabs({event: "mouseover"})

m_timer = window.setInterval(main,1000) 