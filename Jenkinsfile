#!groovy​
import groovy.json.JsonSlurper
@Library('BuildUtils') _

pipeline {
    agent any
    triggers {
        pollSCM ''
    }
    stages {
        stage('Build') { 
            steps {
               sh "make build"
            }
        } 
        stage('Clean')
        {
            steps {
                sh "make clean"
            }
        }
    }
}