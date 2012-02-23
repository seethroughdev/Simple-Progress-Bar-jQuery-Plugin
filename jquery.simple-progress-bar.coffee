###
Title: Simple Progress bar
Desc: Re-usable animated bar plugin
Created: 01.12
Updated: 01.27.12
Version 0.91

Compiled with CoffeeScript, use original for detailed comments
###
$ ->

	$.fn.simpleProgressBar = (options) ->

		# Set plugin defaults
		defaults =
			direction		: 'horizontal'
			innerLength		: 0
			outerLength 	: 100

		# Tell jQuery to use defaults if options are empty
		options = $.extend(defaults, options)

		@.each (options) ->

			# cached $(this) for efficiency
			$this = $(this)

			# Get direction and bar length from attribute
			$direction = defaults.direction
			$innerLength = $this.attr("data-bar-length") or defaults.innerLength

			# Set width or height
			if $direction is 'horizontal'
				$outerLength = $(this).width()
				$directionStyle = 'width'
			else if $direction is 'vertical'
				$outerLength = $(this).height()
				$directionStyle = 'height'

			# Get percentage
			$innerLength = parseInt($innerLength, 10) * 0.01

			# Get total bar length
			$newLength = $innerLength * $outerLength

			# force jQuery to allow variables to animate
			animDirection = $directionStyle
			animArg = {}
			animArg[animDirection] = $newLength + 'px'

			# insert inner div
			$innerBar = $(this).append('<div class="innerbar"></div>')

			# perform bar animation
			$this.children('.innerbar').css($directionStyle, '0px').animate(animArg, 'slow')