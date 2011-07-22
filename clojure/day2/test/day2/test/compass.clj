(ns day2.test.compass
  (:use [day2.compass])
  (:use [clojure.test])
  (:import [day2.compass SimpleCompass]))

(deftest turn-changes-between-4-directions
  (is (= 0 (turn 0 0)))
  (is (= 3 (turn 1 2)))
  (is (= 0 (turn 1 3))))

(def northCompass (SimpleCompass. 0))

(deftest simple-compass
  (testing "creation"
    (is (= :south (direction (SimpleCompass. 2)))))
  (testing "changing direction"
    (is (= :east (direction (right northCompass))))
    (is (= :west (direction (left northCompass))))))
