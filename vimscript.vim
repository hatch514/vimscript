" get file info
function! FileInfo() " ! can overWrite the function
  let currentFile = expand("%")
  let fullPath = expand("%:p")
  let fileName = expand("%:r") 
  let extention = expand("%:e")
  echo "filename: ".currentFile 
  echo "fullpath: ".fullPath
  echo "noextention: ".fileName
  echo "extention: ".extention
endfunction

function! GetHighlightWord()
  let lastSearch = histget('/')
  echo lastSearch
  execute "nmap <F2> :%s/".lastSearch."//gc<LEFT><LEFT><LEFT>"
  call feedkeys("\<F2>")
endfunction

" call feedkeys(":!ls");

" call FileInfo()
" call Auto_command_new_file()
" new commands
" history
" tags (usefull)
"
