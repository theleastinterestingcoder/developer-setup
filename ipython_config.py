# Configuration file for ipython.
# Setup steps
# - `ipython profile create`
# - vim ~/.ipython/profile_default/ipython_config.py 

c = get_config()  #noqa

# NZ: automatically print out the variable that you have computed for the cell
# This affects both ipython as well as jupyter notebook
## 'all', 'last', 'last_expr' or 'none', 'last_expr_or_assign' specifying which
#  nodes should be run interactively (displaying output from expressions).
#  Choices: any of ['all', 'last', 'last_expr', 'none', 'last_expr_or_assign']
#  Default: 'last_expr'
c.InteractiveShell.ast_node_interactivity = 'all'


