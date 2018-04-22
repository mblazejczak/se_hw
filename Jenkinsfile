pipeline {
    agent any
    stages {
        stage('Deps') {
          steps {
            sh 'make deps'
                }
        stage('Linter') {
          steps {
            sh 'make lint'
                }
              }
    stage('Test') {
            steps {
              sh 'make test_xunit || true'
              step([$class: 'XUnitBuilder',
                  thresholds: [
                      [$class: 'SkippedThreshold', failureThreshold: '0'],
                      [$class: 'FailureThreshold', failureThreshold: '1']],
                      tools: [[$class: 'JunitType', pattern: 'test_results.xml']]])
	            sh 'make test'
        	}
        }
    }
}
}
