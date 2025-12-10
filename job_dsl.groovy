freeStyleJob('Disk Space Check') {
    steps {
        shell('df -h')
    }
}

freeStyleJob('Daily Dose of Satisfaction') {
    parameters {
        stringParam('NAME', 'user', 'Your name')
    }
    steps {
        shell('echo "Hello dear ${NAME}!"')
        shell('date')
        shell('echo "This is your DDoS number ${BUILD_NUMBER}."')
    }
}