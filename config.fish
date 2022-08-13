#
# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/natdempk/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/natdempk/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/natdempk/Downloads/google-cloud-sdk/path.fish.inc'; end; end

# rust cargo
set PATH $HOME/.cargo/bin $PATH


# prettify json
function jp
    jq --sort-keys . $argv
end

# prettify json from clipboard
function jpp
    pbpaste | jp
end

# prettify json from clipboard, copying it out again
function jppy
    pbpaste | jp | pbcopy
end

# prettify json, copying it out
function jpy
    jp | pbcopy
end

# git stuff
function gs
    git status
end

function gd
    git diff $argv
end

function gdc
    git diff --cached $argv
end

function ga
    git add $argv
end

function gcm
    git checkout master
end

function gcmp
    git checkout master
    git pull
end

function gp
    git push $argv
end

function gl
    git log $argv
end

function mvnc
    mvn -Dmaven.skipTests -DskipTests -Dcheckstyle.skip -Dhs-swagger.skip=true -DskipValidation=true compile
end
