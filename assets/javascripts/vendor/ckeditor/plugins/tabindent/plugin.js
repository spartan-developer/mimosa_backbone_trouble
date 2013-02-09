CKEDITOR.plugins.add('tabindent', {
  init: function(editor) {
    editor.on('key', function(ev) {
      if( ev.data.keyCode == 9 || ev.data.keyCode == CKEDITOR.SHIFT + 9) {
        if ( editor.focusManager.hasFocus ) {
          var sel = editor.getSelection();
          var ancestor = sel.getCommonAncestor();
          var li = ancestor.getAscendant({li:1, td:1, th:1}, true);
          if(li && li.$.nodeName == 'LI') {
            editor.execCommand(ev.data.keyCode == 9 ? 'indent' : 'outdent');
            ev.cancel();
          }
        }

      }
    }, null, null, 5); // high priority (before the tab plugin)
  }
});

