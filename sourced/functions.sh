rap() {
    xargs -n1 -P1 -I{} bash -c "$1"
}

rapd() {
    rap "cd {} && echo -e '\n### {} ###' && $1"
}

mountup() {
    sudo mount -t drvfs '\\tradingbcpapp\Logs' /media/bcp
    sudo mount -t drvfs '\\tradingdevapp\Logs' /media/dev
    sudo mount -t drvfs '\\tradinguatapp\Logs' /media/uat
    sudo mount -t drvfs '\\tofsapp\Logs' /media/prod
    sudo mount -t drvfs '\\bloomberg1\Logs' /media/bb
}
