function fish_prompt
	set_color red
   printf '%s' (whoami)
   set_color normal
   printf '@'

   set_color blue
   printf '%s' (hostname|cut -d . -f 1)
   set_color normal
   printf ': '

   set_color $fish_color_cwd
   printf '%s' (prompt_pwd)
   set_color normal

   # Line 2
   echo
   if test $VIRTUAL_ENV
       printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
   end
   printf '↪ '
   set_color normal
end
