$ = jQuery
$.fn.extend
	myui: (options) ->
		settings = 
			style: '',
			text_true: 'On',
			text_false: 'Off'

		settings = $.extend settings, options
		style = ['rounded','square']
		@each ->			
			if options.style == 'rounded'
				$(this).addClass('rounded')
				$input = $(this).find('input')
				$input.hide()
				$input.after('<span class="round"><span></span></span>')

			if options.style == 'square'
				$(this).addClass('button')
				$input = $(this).find('input')
				$input.hide()
				$input.wrap('<span class="square">')
				$input.after('<span class="yes">'+options.text_true+'</span><span class="no">'+options.text_false+'</span>')
			
			if options.style == 'cross'
				$(this).addClass('cross')
				$input = $(this).find('input')
				$input.hide()
				$input.after('<span class="croix"><span></span></span>')