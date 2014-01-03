###########################################################
# Set up some aliases
###########################################################
Set-Alias vsAlias ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe'

Set-Alias vs12Alias ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio 11.0\Common7\IDE\VWDExpress.exe'

Set-Alias vs13Alias ${Env:ProgramFiles(x86)}'\Microsoft Visual Studio 12.0\Common7\IDE\VWDExpress.exe'

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

function vs12 { vs12Alias $args }

function vs13 {vs13Alias $args}

function todo { & todoAlias $home'\desktop\'$args }

function gs { git status }

function git-staged { git diff --cached --name-only }

###########################################################
# Ding! Fries are done!
###########################################################
">>Alias List Loaded"