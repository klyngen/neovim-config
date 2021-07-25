

" Uses absolute paths. Cannot be used on windows. Only nix-like systems
function! s:changeFileExtension(newextension)
  " Create the new file-name
  let currentFileName = expand('%:p')
  " Only works on real operative systems ;)
  let splits = split(currentFileName, '/')

  let filename = splits[-1]

  let newFilename = join(split(filename, '\V.')[0:-2] + [a:newextension], '.')

  return join( [""] + split(currentFileName, '/')[0:-2] + [newFilename], '/')

endfunction

function! s:exportMardownToPDF()
  let newPath = s:changeFileExtension("pdf")
  echomsg newPath
  let command = join(["!pandoc % -o ", newPath, "> /dev/null"], " ")
  :silent execute command
  
endfunction

command! ExportMarkdown call s:exportMardownToPDF()
