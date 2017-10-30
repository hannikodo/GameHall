pipeline {
    agent{
        label 'linux'
    }

    stages {
        stage('dev-off-build') {
            steps {
                ehco 'dev-mode off'
                sh 'mkdir build && cd build'
                sh 'qmake ..'
                sh 'make'
                sh 'cd ..'
            }
        }

        stage('dev-on-build') {
            steps {
                ehco 'dev-mode on'
                sh 'mkdir dev-build && cd dev-build'
                sh 'qmake DEVELOP_MODE=ON'
                sh 'make'
            }   
        }
    }
}
