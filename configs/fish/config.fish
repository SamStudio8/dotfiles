set fish_greeting (set_color red)'                 ___
   ___======____='(set_color yellow)'---='(set_color red)')
 /T            \_'(set_color yellow)'--==='(set_color red)')
 L \ '(set_color yellow)'(@)   '(set_color red)'\~    \_'(set_color yellow)'-=='(set_color red)')
  \      / )J'(set_color yellow)'~~    '(set_color red)'\\'(set_color yellow)'-='(set_color red)')
   \\\\___/  )JJ'(set_color yellow)'~~    '(set_color red)'\)
    \_____/JJJ'(set_color yellow)'~~      '(set_color red)'\             '(hostname -f)'
    / \  , \\'(set_color red)'J'(set_color yellow)'~~~~      \            '(date)'
   (-\)'(set_color red)'\='(set_color yellow)'|  \~~~        L_
   ('(set_color red)'\\'(set_color yellow)'\\)  ( -\)_            ==__
    '(set_color red)'\V    '(set_color yellow)'\-'(set_color red)'\) =='(set_color yellow)'=_____  J\   \\\\
           '(set_color red)'\V)     \_)'(set_color yellow)' \   JJ J\)
                       /J J'(set_color red)'T'(set_color yellow)'\JJJ'(set_color red)'J)
                       (J'(set_color yellow)'JJ| '(set_color red)'\UUU)
                        (UU)
                        '

alias texcount /usr/local/bin/texcount.pl

function uncommit
    git reset --soft HEAD~1
end

function bigdir
    sudo du -h / | grep '^[0-9.]*G' | sort -rn
end

function backup
    switch (count $argv)
        case 0
            echo "Provide a source directory (no trailing slash) and destination pool."
        case 1
            echo "Specify a destination pool."
        case 2
            # -a  archive (r, l, p, t, g, o, D)
            #       r  recursive
            #       l  copy symlinks
            #       p  preserve permissions
            #       t  preserve times
            #       g  preserve group
            #       o  preserve owner (sudo only)
            #       D  preserve devices and special files
            # -v  verbose
            # -z  compress
            # -h  human readable
            # -e  use ssh
            rsync -avzh --progress -e "ssh -p 33849" $argv[1] sam@hyrule:/pools/cryo/fi/$argv[2]
    end
end

function todo
    grep -rniI "TODO" .
end

set -x PERL5LIB /home/sam/Downloads/vcftools_0.1.11/perl
setenv EDITOR vim

set fish_function_path $fish_function_path "/usr/lib/python2.7/site-packages/powerline/bindings/fish"
powerline-setup
