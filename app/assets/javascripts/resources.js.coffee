$ ->
  url = $('dd a').attr('href')
  
  if url?
    console.log "url=#{url}"
    PDFJS.disableWorker = true

    PDFJS.getDocument(url).then (pdf)->
      pdf.getPage(1).then (page) ->
        scale = 1.6
        viewport = page.getViewport(scale)
        canvas = document.getElementById 'pdf-reader'
        context = canvas.getContext('2d')
        canvas.height = viewport.height
        canvas.width = viewport.width

        page.render canvasContext: context, viewport: viewport
