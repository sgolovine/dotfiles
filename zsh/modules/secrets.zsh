# We do not keep secrets in this
# File however during init we create
# a .secrets file and then source it
if [ ! -f $HOME/.secrets ];
then
    echo "Could not find $HOME/.secrets, creating secrets file"
    touch $HOME/.secrets
fi

source $HOME/.secrets