package my.grails.app

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration
import org.springframework.metrics.export.prometheus.EnablePrometheusMetrics

@EnablePrometheusMetrics
class Application extends GrailsAutoConfiguration {
    static void main(String[] args) {
        GrailsApp.run(Application, args)
    }
}