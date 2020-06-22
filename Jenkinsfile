pipeline 
{
    agent any
    stages {
        stage('run tests in docker container') {
            steps {
               sh "cd challenge-01 && docker build -t 'pytest' . && docker run --rm 'pytest' '/usr/src/app/tests/test.py'" 
            }
        }
        stage('docker-compose build & run') {
            steps {
                sh "cd challenge-01 &&  docker-compose up "
            }
        }
    }
}