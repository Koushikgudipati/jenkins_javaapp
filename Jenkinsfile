node("AgentHarun") {
   stage("SCM Checkout"){
      git 'https://github.com/Koushikgudipati/jenkins_javaapp'
      }
   stage('Maven build'){
      withEnv(['JAVA_HOME=/opt/jdk1.8.0_211/']) {
     def mvnname= tool name: 'maven3', type: 'maven'
      sh "${mvnname}/bin/mvn clean package"
        }
      }
     
   stage('docker build image'){
    sh label: '', script: 'docker build -t dockerwithdockerkubectl .'
   
   }
   stage('Slack Notification'){
   slackSend baseUrl: 'https://hooks.slack.com/services/', channel: '#general', color: 'good', message: 'HI this is from jenkins pipeline', teamDomain: 'ibmdstapplegarage', tokenCredentialId: 'slack-demo'   
   }

}
