(ns day2.test.core
  (:use [day2.core])
  (:use [clojure.test]))

(deftest fib-sequence
  (is (= 1 (fib 1)))
  (is (= 1 (fib 2)))
  (is (= 2 (fib 3)))
  (is (= 13 (fib 7))))

(deftest unless-macro
  (is (= :foo (unless false :foo :bar)) "execute body if test fails")
  (is (nil? (unless true :foo)) "do nothing is test is true")
  (is (= :bar (unless true :foo :bar)) "execute else body if test is true"))
