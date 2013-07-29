" Find current word in command mode
function! AckGrep()
  let command = "ack-grep ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

function! AckVisual()
  normal gv"xy
  let command = "ack-grep ".@x
  cexpr system(command)
  cw
endfunction
