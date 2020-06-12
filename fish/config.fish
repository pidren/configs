set -gx CLICOLOR 1
set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx GOPATH /Users/ren/go
set -gx GOBIN /Users/ren/go/bin
set -gx theme_display_k8s_context yes

function vim
  nvim
end

function fish_right_prompt
  #intentionally left blank so it stops printing date and time for every command
end

function k
  set -l NS ""
  switch "$argv[1]"
    case ""
      return
    case '*'
      set NS $argv[1]

  set -l CMD ""
  switch "$argv[2]"
    case ""
      echo "Empty command"
      return
    case g
      set CMD "get"
    case d
      set CMD "describe"
    case r
      set CMD "delete"
    case e
      set CMD "edit"      
    case sc
      set CMD "scale"
    case '*'
      echo "Unsupported command: $argv[2]"
      return
  end

  set -l RSC ""
  switch "$argv[3]"
    case ""
      echo "Invalid resource"
      return
    case p
      set RSC "po"
    case s
      set RSC "sts"
    case 
  end
    

end
