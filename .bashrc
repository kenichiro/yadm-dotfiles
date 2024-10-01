case ${-} in
( *i* ) ;;
(  *  ) return ;;
esac

if [[ $( id -u ) == 0 ]] ; then
  PS1='\[\e[38;5;196m\]> \h \u bash \w \[\e[0m\]\n\[\e[38;5;240m\]\$ \[\e[0m\]'
  PS2='\[\e[38;5;240m\]> \[\e[0m\]'
else
  PS1='\[\e[38;5;046m\]> \h \u bash \w \[\e[0m\]\n\[\e[38;5;240m\]\$ \[\e[0m\]'
  PS2='\[\e[38;5;240m\]> \[\e[0m\]'
fi


bind '"\C-p": history-search-backward'
bind '"\C-n": history-search-forward'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

