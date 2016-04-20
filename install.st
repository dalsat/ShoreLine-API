" Change the content of this file with the code to load your application.
  Keep the last line, you don't want to keep the image running, that will be the
  job of start.st
"
| gitRepository |


FileStream stdout cr; nextPutAll: 'Installing ShoreLine API Server'; cr.

Metacello new
  baseline: 'ShoreLineAPI';
  repository: 'filetree://mc';
  load.

FileStream stdout cr; nextPutAll: 'Done.'; cr.

Smalltalk snapshot: true andQuit: true.
