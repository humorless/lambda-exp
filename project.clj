(defproject lambda-exp "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [org.clojure/tools.namespace "0.3.0-alpha3" :scope "test"]
                 [uswitch/lambada "0.1.2"]
                 [com.taoensso/timbre "4.7.3"]
                 [cheshire "5.6.3"]
                ]
  :main ^:skip-aot lambda-exp.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}})
