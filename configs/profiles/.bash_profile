function cls {
    clear;
}

function scoop() {
    powershell -ex unrestricted scoop "$@" ;
} && export -f scoop

eval "$(starship init bash)"