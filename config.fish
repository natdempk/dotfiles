#
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/natdempk/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/natdempk/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/natdempk/Downloads/google-cloud-sdk/path.fish.inc'; end; end

# rust cargo
set PATH $HOME/.cargo/bin $PATH


function jp
    jq --sort-keys . $argv
end
