pipeline {

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
    stages {
        stage('checkout') {
            steps {
                 script{
                            git "https://github.com/suryarudraraju98/terraform-pratice.git", branch:"main"
                        }
                    }
                }
            }

        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('validate') {

           steps {
               sh 'terraform validate'
               }
           }
       }

        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply') {
            steps {
                input 'Approve to apply?'
                sh 'terraform apply tfplan'
            }
        }
    }

  }