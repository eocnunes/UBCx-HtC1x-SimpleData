;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HtDF-design-quizz-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(require 2htdp/image)

;; Image -> Boolean
;; returns true if first source image is larger than second

(check-expect (larger? (rectangle 40 20 "solid" "blue") (rectangle 20 20 "solid" "yellow")) true)
(check-expect (larger? (rectangle 40 20 "solid" "blue") (rectangle 40 20 "solid" "yellow")) false)
(check-expect (larger? (rectangle 20 40 "solid" "blue") (rectangle 20 20 "solid" "yellow")) true)
(check-expect (larger? (rectangle 20 40 "solid" "blue") (rectangle 20 40 "solid" "yellow")) false)
(check-expect (larger? (rectangle 20 20 "solid" "blue") (rectangle 20 20 "solid" "yellow")) false)
(check-expect (larger? (rectangle 40 40 "solid" "blue") (rectangle 20 20 "solid" "yellow")) true)
(check-expect (larger? (rectangle 40 10 "solid" "blue") (rectangle 20 20 "solid" "yellow")) false)
(check-expect (larger? (rectangle 10 40 "solid" "blue") (rectangle 20 20 "solid" "yellow")) false)
(check-expect (larger? (rectangle 40 10 "solid" "blue") (rectangle 10 40 "solid" "yellow")) false)

;(define (larger? img) false)

(define (larger? a b)
  (or (and (> (image-width a) (image-width b))
           (> (image-height a) (image-height b)))
      (and (> (image-width a) (image-width b))
           (= (image-height a) (image-height b)))
      (and (= (image-width a) (image-width b))
           (> (image-height a) (image-height b)))))