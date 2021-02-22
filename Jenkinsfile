pipeline {
    agent any
    tools {
        maven 'apache-maven-3.6.3'
    }
    stages {
        stage('build') {
            steps {
                script {
                    sh """
                        mvn clean install -f pom.xml
                    """
                }
            }
        }
        stage('test') {
            steps {
                script {
                    sh """
                        mvn test
                    """
                }
            }
        }
    }
}
