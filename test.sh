# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if ! [ $PYENV_ROOT = "$HOME/.pyenv" ];then  
    exec echo "tenho"
fi

if [ $PYENV_ROOT = "$HOME/.pyenv" ];then  
    exec echo "Não tenho"
fi