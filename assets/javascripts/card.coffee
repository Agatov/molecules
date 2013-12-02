$ ->

  $('.buy').bind 'click', ->

    perfume_parent = $(@).parent()

    img = perfume_parent.find('img').attr('src')
    name = perfume_parent.find('.name').text()
    price = perfume_parent.find('.price').text()




    show_card({img: img, name: name, price: price})


  $('.card-overlay').bind 'click', ->
    hide_card()




window.show_card = (data) ->

  fill_card(data)
  $('.card-overlay').show()
  $('.card').show()

window.hide_card = ->
  $('.card-overlay').hide()
  $('.card').hide()

window.fill_card = (data) ->
  $('#card-header').text(data['name'])
  $('#card-image').attr('src', data['img'])
  $('#card-price').text(data['price'])
