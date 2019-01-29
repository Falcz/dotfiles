rap() {
    xargs -n1 -P1 -I{} bash -c "$1"
}

rapd() {
    rap "cd {} && echo -e '\n### {} ###' && $1"
}
