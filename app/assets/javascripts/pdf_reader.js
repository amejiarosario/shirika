var goNext, goPrevious, pageNum, pdf, renderPage;

pdf = null;

pageNum = 1;

$(function() {
  var url;
  url = $('dd a').attr('href');
  if (url != null) {
    console.log("url=" + url);
    PDFJS.disableWorker = true;
    PDFJS.getDocument(url).then(function(_pdf) {
      pdf = _pdf;
      renderPage(pageNum);
    });
  }
});

renderPage = function(num) {
  console.log('Rendering page '+num+' ... ');

  pdf.getPage(num).then(function(page) {
    var canvas, context, scale, viewport;
    scale = 1.6;
    viewport = page.getViewport(scale);
    canvas = document.getElementById('pdf-reader');
    context = canvas.getContext('2d');
    canvas.height = viewport.height;
    canvas.width = viewport.width;
    
    page.render({
      canvasContext: context,
      viewport: viewport
    }).then(function(){
      console.log('done with page '+num+'.');
      updatePageMessage('Page');
    });
  });
  updatePageMessage('Page (rendering)');
};

goPrevious = function() {
  if (pageNum !== 1) {
    pageNum--;
    renderPage(pageNum);
  }
};

goNext = function() {
  if (pageNum < pdf.numPages) {
    pageNum++;
    renderPage(pageNum);
  }
};

var updatePageMessage = function(status){
  $('#page_num').text(status+': '+pageNum+'/'+pdf.numPages);
};