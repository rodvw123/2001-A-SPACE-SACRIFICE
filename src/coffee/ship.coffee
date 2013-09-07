
class ship_overview
	@sys_nav: true
	@sys_bridge: true
	@sys_communications: true
	
	@sys_core: true
	@sys_fuel: true
	@sys_power: true
	@sys_engineering: true
	@sys_supplies: true

	@sys_shielding: true

	@sys_engine_one: true
	@sys_engine_two: true
	@sys_engine_three: true
	@sys_engine_four: true

	@sys_life_one: true
	@sys_life_two: true

	@sys_pass_one: true
	@sys_pass_two: true
	@sys_pass_three: true
	@sys_pass_four: true
	@sys_pass_five: true
	@sys_pass_six: true


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
