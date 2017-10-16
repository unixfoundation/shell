# aliases-main-output_only-single-value.bash
# 
# Sections:
#    1.   System management
#    2.   Network management
#    3.   Hardware management
# 

# ======= 1.  SYSTEM MANAGEMENT ================================

#[Operating·system]
alias ostrgarch='llc --version | grep Default | tr -s " " | cut -d " " -f4'      # ostrgarch: print the current OS target architecture (requires llvm)

#[Processes]
getpid() { lsof -t -c "${@}" 2>/dev/null; }                                      # getpid: get the ID of a process by name; $1: process name (e.g. "/d$/" to get PIDs for processes ending in "d")

# ======= 2.  NETWORKING MANAGEMENT ============================

#[Internet]
alias myip='curl ipecho.net/plain; echo'                                         # myip: get the public IPv4 address

# ======= 3.  HARDWARE MANAGEMENT ==============================

#[Information]
alias cpuvend="cat /proc/cpuinfo | grep vendor | uniq | awk '{print \$3}'"       # cpuvend: get the vendor name of the current CPU
alias cpumodel="cat /proc/cpuinfo | grep 'model name' | uniq | cut -d' ' -f3-"   # cpumodel: get the model name of the current CPU
alias cpuarch="lscpu | grep 'Architecture' | awk '{print \$2}'"                  # cpuarch: get the architecture of the current CPU
alias cpusubarch="gcc -march=native -Q --help=target|grep march|awk '{print \$2}'" # cpusubarch: get the subarchitecture of the current CPU
alias cpuasm="gcc -march=native -Q --help=target |grep masm= |awk '{print \$2}'" # cpuasm: get the assembler name of the current CPU

#[Status]
alias batthrs='upower -i /org/freedesktop/UPower/devices/DisplayDevice | sed -n 12,12p | awk "{print $4}"' # batthrs: get the number of remaining hours for the battery power

