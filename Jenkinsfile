#!groovy

node {
    stage 'Checkout'
    git url: 'https://github.com/pgoultiaev/spring-petclinic.git'

    // Mark the code build 'stage'....
    stage 'unit test'
    def mvnHome = tool 'M3'
    sh "${mvnHome}/bin/mvn test"

    stage 'build'
    sh "${mvnHome}/bin/mvn clean package"

    stage 'build docker image'
    def dockerRegistry = 'registry.default.svc.appfactory.local:5000'
    sh "docker build -t pgoultiaev/petclinic:\$(git rev-parse HEAD) ."

    stage 'tag and push docker image'
    sh "docker tag -f pgoultiaev/petclinic:\$(git rev-parse HEAD) ${dockerRegistry}/petclinic:latest"
    sh "docker push ${dockerRegistry}/petclinic:latest"
}
