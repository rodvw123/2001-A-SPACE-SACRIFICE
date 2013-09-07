
class ship_overview
	@sys_nav: true
	@sys_bridge: true
	@sys_core: true
	@sys_fuel: true
	@sys_power: true
	@sys_engineering: true
	@sys_engines: true
	@sys_supplies: true
	@sys_life: true

	@sys_pass_one: true
	@sys_pass_two: true
	@sys_pass_three: true
	@sys_pass_four: true
	@sys_pass_five: true
	@sys_pass_six: true


#class ship_view

class App.ship_time
	@seconds: App.g_initial_ticks
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
		@seconds - App.g_initial_ticks
