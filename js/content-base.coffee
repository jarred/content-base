cb = window.ContentBase ||= {}
cb.Plugin =
	init: ->
		$('.content-base img').each cb.Plugin.fixImage
		return

	fixImage: (index, img) ->
		console.log "fixImage", arguments
		$img = $ img
		$new = $ """<figure data-index="#{index}">
				<img src="#{$img.attr('src')}" />
			</figure>
		"""
		if $img.attr('alt') != ''
			$new.append """
			<figcaption>#{$img.attr('alt')}</figcaption>
			"""
		$new.attr 'class', $img.attr('class')
		$new.addClass 'image'

		$(img).replaceWith $new
		return


cb.Plugin.init()