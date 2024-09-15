pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Cloning the repository from GitHub
                git url: 'https://github.com/abhijeet32/django-todo-cicd.git'
            }
        }
        
        stage('Set up environment') {
            steps {
                // Install dependencies, set up a virtual environment
                sh '''
                python3 -m venv venv
                source venv/bin/activate
                pip install --upgrade pip
                pip install -r requirements.txt
                '''
            }
        }

        stage('Run Tests') {
            steps {
                // Run Django unit tests
                sh '''
                source venv/bin/activate
                python manage.py test
                '''
            }
        }
        
        stage('Build') {
            steps {
                // You can add build steps if needed, like Docker build if you're containerizing the app
                sh 'echo "Build step placeholder"'
            }
        }

        stage('Deploy') {
            when {
                branch 'main' // Only deploy when changes are made to the main branch
            }
            steps {
                // Deployment script
                sh '''
                echo "Deployment step placeholder"
                # You can add deployment commands here, e.g., rsync, docker push, etc.
                '''
            }
        }
    }
