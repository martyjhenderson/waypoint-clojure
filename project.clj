(defproject exopaste "waypoint-demo"
  :description "A pastebin clone storing data in-memory"
  :url "https://github.com/exoscale/exopaste"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :uberjar-name "exopaste-standalone.jar"
  :main exopaste.main
  :profiles {:uberjar {:main exopaste.main :aot :all}}
  :min-lein-version "2.0.0"
  :dependencies [[org.clojure/clojure "1.10.1"]
                 [com.stuartsierra/component "1.0.0"]
                 [aleph "0.4.6"]
                 [hiccup "1.0.5"]
                 [ring/ring-core "1.8.2"]
                 [bidi "2.1.6"]])
