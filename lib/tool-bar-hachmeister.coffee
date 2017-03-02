module.exports =
  activate: (state) ->

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-hachmeister'

    @toolBar.addButton
      icon: 'document'
      callback: 'application:new-file'
      tooltip: 'Neu'
      iconset: 'ion'

    @toolBar.addButton
      icon: 'folder'
      callback: 'application:open-file'
      tooltip: 'Öffnen'
      iconset: 'ion'
