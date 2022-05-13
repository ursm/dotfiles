if empty(globpath(&rtp, 'autoload/gitmessenger.vim'))
  finish
endif

let g:git_messenger_always_into_popup = v:true
