pipeline 
{
    agent any
    stages {
        stage('run tests in docker container') {
            steps {
               sh "docker build -t 'pytest' . && docker run --rm 'pytest' 'DevOps-Challenge-Demo-Code/tests/test.py'" 
            }
        }
        stage('docker-compose build & run') {
            steps {
                sh "docker-compose build && docker-compose -p master_project up -d "
            }
        }
    }
}