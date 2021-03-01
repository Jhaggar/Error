#!/bin/bash
set -ex
#!/bin/bash

function addbashaliases() {
  # Add source bash_aliases on .bashrc
  cat >> ~/.bashrc << EOT
  
# some custome parameter for ritesh  
alias dwn='cd /home/ritesh/Downloads/'
alias doc='cd /home/ritesh/Documents/'
alias repo='cd /home/ritesh/Documents/jhaggar/'
alias cc="clear"
alias pub='cd /home/ritesh/Documents/jhaggar/public_repo'
EOT

  # Reload current environment
  source ~/.bashrc
}

# Execute the function                                                                                                                                                                                                                                                         
addbashaliases