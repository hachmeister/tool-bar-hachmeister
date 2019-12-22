module.exports =
  activate: (state) ->

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-hachmeister'

    @toolBar.addButton
      icon: 'ios-document'
      callback: 'application:new-file'
      tooltip: 'Neu'
      iconset: 'ion'

    @toolBar.addButton
      icon: 'ios-folder-open'
      callback: 'application:open-file'
      tooltip: 'Öffnen'
      iconset: 'ion'
