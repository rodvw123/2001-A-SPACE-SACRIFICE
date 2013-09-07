
class App.ship_control
	@systems = [sys_bridge,
				sys_nav,
				sys_comm,
				sys_supp,

				sys_shields,

				sys_eng_one,
				sys_eng_two,
				sys_eng_three,
				sys_eng_four,

				sys_pass_one,
				sys_pass_two,
				sys_pass_three,
				sys_pass_four,
				sys_pass_four,
				sys_pass_four,

				sys_life_one,
				sys_life_two,

				sys_engineering,
				sys_power,
				sys_fuel,
				sys_core
				]
	@enumerate_power: ->
		power = 0
		stat = null
		for sys in @systems
			stat = sys.status()
			if stat[0]
				power += stat[1]

	@main: ->
		pow_avail = sys_power.output()



class App.ship_view


#class ship_view

class App.ship_time
	@seconds: App.g_ticks

	@print: ->
		$ =>
			$("#ticks").text("TIME: " + @seconds)
	@tick: ->
		@seconds--

	@ticks: ->
		@seconds - App.g_ticks
