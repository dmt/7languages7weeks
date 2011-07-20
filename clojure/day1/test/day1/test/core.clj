(ns day1.test.core
  (:use [day1.core])
  (:use [clojure.test]))

(deftest big-if-string-is-longer-than-n
  (is (= false (big "" 1)))
  (is (= false (big "xx" 2)))
  (is (= true (big "xx" 1))))

