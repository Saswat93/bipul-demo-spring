node {
  stage ('Git Checkout'){
   git credentialsId: 'GIT_CREDENTIALS' , url:'https://github.com/Saswat93/bipul-demo-spring.git' , branch: 'main'
  }
   stage(" Maven Clean Package"){
      def mavenHome =  tool name: "Maven-3.6.1", type: "maven"
      def mavenCMD = "${mavenHome}/bin/mvn"
      sh  "${mavenCMD} clean package"
     } 
  
   stage('Build Docker Image'){
        sh 'docker build -t saswatpattnaik21/bipulmongo .'
    }
   
}
