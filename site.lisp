#!/usr/bin/env sbcl
(ql:quickload "spidey")
(in-package :spidey)

(define-context ctx
  :before '((start-html
             (include-html "head.html")
             (include-html "header.html")
             (start-body)))
  :after '((include-html "footer.html"
            (end-body)
            (end-html)))
  :vars '(:email "wbthomason@{my department, abbr.}.{my university}.edu"
           :twitter "wilthomason"
           :github "wbthomason"
           :linkedin "wbthomason"))

(define-page about
  (include-markdown "about.md"))

(define-page publications
  (include-markdown "publications.md")
  (generate-pubs "wbthomason.bib"))

(define-page contact
  (include-markdown "contact.md"))

(define-page links
  (include-markdown "links.md"))

(define-page awards
  (include-markdown "awards.md"))

(define-page index
  (include-page about)
  (include-page links)
  (include-page contact))

(define-site index
  '(publications awards contact)
  :generate-url clean-url
  :context ctx
  :copy '("images" "css" "papers" "keybase.txt" "wbthomason.cv.pdf"))

(generate-site "_site")
