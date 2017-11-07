##
## for tab-completion
##
import rlcompleter, readline
readline.parse_and_bind('tab: complete')
readline.parse_and_bind( 'set show-all-if-ambiguous On' )

##
## for history
##
import os, atexit
histfile = os.path.join(os.environ["HOME"], ".python_history")
try:
    readline.read_history_file(histfile)
except IOError:
    pass
atexit.register(readline.write_history_file, histfile)
del os, atexit, histfile
del readline
