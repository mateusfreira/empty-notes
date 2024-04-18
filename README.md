```vimscript
function! NewTask()
  let name = input('Enter Task name: ', "")
  exec "e `./new-task.sh '" . name . "'`"
endfunction
function! NewProblem()
  let name = input('Enter Problem name: ', "")
  exec "e `./new-problem.sh '" . name . "'`"
endfunction
function! NewMeeting()
  let name = input('Enter Meeting name: ', "")
  exec "e `./new-meeting.sh '" . name . "'`"
endfunction

function! NewDay()
  exec "e `./new-day.sh`"
endfunction

function! ChooseDocument()
  let doc_kind = inputlist(['What document?', '1. Day', '2. Meeting', '3. Problem', '4. Task'])
  if doc_kind == 1
    call NewDay()
  elseif doc_kind == 2
    call NewMeeting()
  elseif doc_kind == 3
    call NewProblem()
  elseif doc_kind == 4
    call NewTask()
  endif
endfunction
"  nmap <leader>n  :call ChooseDocument()<cr>

```
