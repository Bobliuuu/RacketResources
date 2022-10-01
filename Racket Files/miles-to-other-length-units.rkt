;; converts miles to various other length units based on Google definitions

;; kilometres (km) is a unit of length measurement used by everyone but americans
(define (miles-to-kilometers miles)
  (* miles 1.609))

;; nautical miles are used by people on boats
(define (miles-to-nautical-miles miles)
  (/ miles 1.151))

;; siriometers are used by astronomers
(define (miles-to-siriometers miles)
  (/ miles 9.296e+13))

;; yes this is a thing https://en.wikipedia.org/wiki/Hand_(unit)
(define (miles-to-hands miles)
  (* miles 15840))