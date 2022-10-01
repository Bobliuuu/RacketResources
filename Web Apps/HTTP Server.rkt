#lang web-server/insta

;; This program creates a simple HTTP web server hosted at http://localhost:55931/

(require markdown)
(require racket/format css-expr)

(define (start request)
  (response/xexpr
   '(html
     (head (title "My Website"))
     (body (h1 "Stuff About Me")
           (h2 "Here Is A List")
           (ol "Item 1")
           (ol "Item 2")))))
