pipeline {
    agent{
        label 'linux'
    }

    stages {
        stage('before_install') {
            echo 'update repo'
            sh 'sudo add-apt-repository ppa:beineri/opt-qt591-trusty -y'
            sh 'sudo apt-get update -qq'
        }
        
        stage('install') {
            sh 'ehco install QT 5.9.1'
            sh 'sudo apt-get install -qq qt59base'
            sh 'sudo apt-get install -qq qt59webengine'
            sh 'source /opt/qt59/bin/qt59-env.sh'
        }

        stage('dev-off-build') {
            ehco 'dev-mode off'
            sh 'mkdir build && cd build'
            sh 'qmake ..'
            sh 'make'
            sh 'cd ..'
        }

        stage('dev-on-build') {
            ehco 'dev-mode on'
            sh 'mkdir dev-build && cd dev-build'
            sh 'qmake DEVELOP_MODE=ON'
            sh 'make'
        }
    }
}
