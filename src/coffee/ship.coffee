
class App.ship_control
	@systems = [App.sys_bridge,
				App.sys_nav,
				App.sys_comm,
				App.sys_supp,

				App.sys_shields,

				App.sys_eng_one,
				App.sys_eng_two,
				App.sys_eng_three,
				App.sys_eng_four,

				App.sys_pass_one,
				App.sys_pass_two,
				App.sys_pass_three,
				App.sys_pass_four,
				App.sys_pass_four,
				App.sys_pass_four,

				App.sys_life_one,
				App.sys_life_two,

				App.sys_engineering,
				App.sys_power,
				App.sys_fuel,
				App.sys_core
				]
	@enumerate_power: ->
		power = 0
		stat = null
		for sys in @systems
			stat = sys.status()
			if stat[0]
				power += stat[1]

	@poll: ->
		pow_avail = App.sys_power.output()
		pow_used = @enumerate_power()
		if pow_used > pow_avail
			@systems[rand(22)].deactivate()
			@poll()

class App.ship_view

class App.ship_time
	@seconds: App.g_ticks

	@print: ->
		$ =>
			$("#ticks").text("TIME: " + @seconds)
	@tick: ->
		@seconds--

	@ticks: ->
		@seconds - App.g_ticks
