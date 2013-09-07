#constants:
#1 day: 15.375 hours
g_day = 55350
#initial ticks ~ 81 years after epoch
g_initial_ticks = 2556110937

m_timer = null

temp = 0

class c_time
	@seconds: g_initial_ticks
	@time: [0,0,0]

	@print: ->
		$ =>
			$("#ticks").text("ticks: " + @seconds)
			$("#uptime").text("uptime: #{@time[0]}:#{@time[1]}:#{@time[2]} up")

	@tick: ->
		@seconds++

		@time[2]++

		if @time[2] >= 60
			@time[1]++
			@time[2] = 0

		if @time[1] >= 60
			@time[0]++
			@time[1] = 0

	@ticks: ->
		@seconds - g_initial_ticks

class c_background
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
	c_time.tick()
	c_time.print()
#	c_background.shift_color()
#	c_background.print()

$ ->
	$("#tabs").tabs({event: "mouseover"})

m_timer = window.setInterval(main,1000) 