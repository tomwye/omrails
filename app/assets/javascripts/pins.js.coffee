jQuery ->
  $('#pins').imagesLoaded ->
        $('#pins').masonry itemSelector: ".box"

  if $('.pagination').length
    $(window).scroll ->
      url = $('.pagination .next_page a').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.pagination').text("Fetching more pins...")
        $.getScript(url)

  $(window).scroll()
