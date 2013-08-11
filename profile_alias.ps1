###########################################################
# Set up some aliases
###########################################################
Set-Alias vsAlias ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe'

Set-Alias todoAlias ${Env:ProgramFiles(x86)}'\Git\Bin\touch.exe'

# Assumes 64bit installation of sublime text 2
Set-Alias subl ${Env:ProgramW6432}'\Sublime Text 2\sublime_text.exe'


###########################################################
# Now create some functions to allow us to
# pass parameters to some of our aliased executables.
# I'm sure there is a nicer way to do this
###########################################################
function vssafe { vsAlias /SafeMode }

function vs { vsAlias $args }

function todo { & todoAlias $home'\desktop\'$args }

###########################################################
# Ding! Fries are done!
###########################################################
">>Alias List Loaded"