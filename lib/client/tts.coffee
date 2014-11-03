tts =
	speak: (text,tl,domain)->
		domain = domain or 'com'
		tl = tl || Session.get('tl') || 'en'

		src = 'http://translate.google.'+domain+'/translate_tts?tl='+tl+'&q='+text+''

		$('#tts').remove()
		html = '<iframe id="tts" style="display:none;" src="'+src+'" />'
		$('body').append html
		
		# audio = new Audio()
		# audio.src = src
		# audio.play()