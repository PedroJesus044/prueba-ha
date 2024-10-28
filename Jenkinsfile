pipeline {
    agent any

    // environment {
    //     server = 'https://api.sandbox-m2.ll9k.p1.openshiftapps.com:6443'
    //     token  = 'sha256~njZbWI3Xjf-tMCw2AG0o7kvin9R7f9VqEYXwvn9qsIY'
    //     project = 'pibarrap044-dev'
    // }

    stages {
        stage("Openshift Login") {
            steps {
                sh 'oc login --token=${token} --server=${server} --insecure-skip-tls-verify'
            }
        }

        stage("Openshift Select Project") {
            steps {
                sh 'oc project ${project}'
            }
        }

        stage("Openshift Build") {
            steps {
                sh 'oc start-build backend-electronico'
                sh 'oc start-build frontend-electronico'
                sh 'oc start-build hello-openshift'
            }
        }
    }
}