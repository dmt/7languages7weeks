(ns day1.test.core
  (:use [day1.core])
  (:use [clojure.test]))

(deftest big-if-string-is-longer-than-n
  (is (false? (big "" 1)))
  (is (false? (big "xx" 2)))
  (is (true? (big "xx" 1))))

(deftest collection-type-returns-correct-name
  (is (= :list (collection-type '())))
  (is (= :map (collection-type {})))
  (is (= :vector (collection-type [])))
  (is (= :set (collection-type #{}))))

(deftest col-type-multi-method-returns-correct-name
  (is (= :list (col-type '(1))))
  (is (= :map (col-type {})))
  (is (= :vector (col-type [])))
  (is (= :set (col-type #{}))))


