" File:        todo.txt.vim
" Description: Todo.txt syntax settings
" Author:      Leandro Freitas <freitass@gmail.com>
" License:     Vim license
" Website:     http://github.com/freitass/todo.txt-vim
" Version:     0.3

if exists("b:current_syntax")
    finish
endif

syntax  match  TodoDone       '^[xX]\s.\+$'
syntax  match  TodoPriorityA  '^(A)\s'
syntax  match  TodoPriorityB  '^(B)\s'
syntax  match  TodoPriorityC  '^(C)\s'
syntax  match  TodoPriorityD  '^(D)\s'
syntax  match  TodoPriorityE  '^(E)\s'
syntax  match  TodoPriorityF  '^(F)\s'
syntax  match  TodoPriorityG  '^(G)\s'
syntax  match  TodoPriorityH  '^(H)\s'
syntax  match  TodoPriorityI  '^(I)\s'
syntax  match  TodoPriorityJ  '^(J)\s'
syntax  match  TodoPriorityK  '^(K)\s'
syntax  match  TodoPriorityL  '^(L)\s'
syntax  match  TodoPriorityM  '^(M)\s'
syntax  match  TodoPriorityN  '^(N)\s'
syntax  match  TodoPriorityO  '^(O)\s'
syntax  match  TodoPriorityP  '^(P)\s'
syntax  match  TodoPriorityQ  '^(Q)\s'
syntax  match  TodoPriorityR  '^(R)\s'
syntax  match  TodoPriorityS  '^(S)\s'
syntax  match  TodoPriorityT  '^(T)\s'
syntax  match  TodoPriorityU  '^(U)\s'
syntax  match  TodoPriorityV  '^(V)\s'
syntax  match  TodoPriorityW  '^(W)\s'
syntax  match  TodoPriorityX  '^(X)\s'
syntax  match  TodoPriorityY  '^(Y)\s'
syntax  match  TodoPriorityZ  '^(Z)\s'

syntax  match  TodoDate       '\d\{2,4\}-\d\{2\}-\d\{2\}' contains=NONE
syntax  match  TodoProject    '\(^\|\W\)+[^[:blank:]]\+'  contains=NONE
syntax  match  TodoContext    '\(^\|\W\)@[^[:blank:]]\+'  contains=NONE
syntax  match  TodoTag        '\(^\|\W\)#[^[:blank:]]\+'  contains=NONE
syntax  match  TodoIssue       '\(^\|\W\)issue:[^[:blank:]]\+'  contains=NONE

" Other priority colours might be defined by the user
highlight  default  link  TodoDone       Comment
highlight  default  link  TodoPriorityA  Error
highlight  default  link  TodoPriorityB  Statement
highlight  default  link  TodoPriorityC  Identifier
highlight  default  link  TodoDate       PreProc
highlight  default  link  TodoProject    Type
highlight  default  link  TodoContext    Special
highlight  default  link  TodoTag        Special
highlight  default  link  TodoIssue      Comment

if exists('g:todo_load_python') && g:todo_load_python
    if has('python')
        let b:curdir = expand('<sfile>:p:h')
        let s:script_dir = b:curdir . "/python/"
        execute "pyfile " . s:script_dir. "todo.py"
    elseif has('python3')
        let b:curdir = expand('<sfile>:p:h')
        let s:script_dir = b:curdir . "/python/"
        execute "py3file " . s:script_dir. "todo.py"
    else
        echom "Your version of vim has no python support. Overdue dates won't be highlighted"
    endif
endif

let b:current_syntax = "todo"
