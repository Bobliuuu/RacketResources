#lang web-server/insta

(require markdown)
(require racket/format css-expr)

(define (start request)
  (response/xexpr
   '(html
     (head (title "My Website"))
     (body (h1 "Nathan Sucks")
           (h2 "JK lol he is suuuper hot")
           (ul "linda is cool too ig")
           (ul "lol")))))