tts =
	speak: (text)->
		text = text.replace(/\s+/, '+')
		src = 'http://tts-api.com/tts.mp3?q=#{text}'

		$('#tts').remove()
		html = '<iframe id="tts" style="display:none;" src="'+src+'" />'
		$('body').append html
		
		# audio = new Audio()
		# audio.src = src
		# audio.play()
