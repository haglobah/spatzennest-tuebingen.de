#lang racket

(require pollen/core)

(provide (all-defined-out))

(define (inner-link url . content) 
  `(a ([href ,url] [rel "noreferrer noopener"]
       [class "text-[#44567e]/80 hover:underline decoration-2 underline-offset-2 decoration-[#44567e]/50 hover:text-[#44567e]"])
      ,@content))

(define (outer-link url . content) 
  `(a ([href ,url] [rel "noreferrer noopener"] [target "_blank"]
       [class "text-[#44567e]/80 hover:underline decoration-2 underline-offset-2 decoration-[#44567e]/50 hover:text-[#44567e]"])
      ,@content))

(define (heading-to-id heading)
  (string-downcase
   (string-join
    (filter
     (lambda (s) (not (string=? s "")))
     (string-split
      (string-replace
       (string-replace heading #rx"[^a-zA-Z0-9 -]" "")
       " "
       "-")
      "-"))
    "-")))

(define (section title . body)
  `(div ([id ,(heading-to-id title)] [class "section my-6 scroll-mt-[14vh]"])
    (h1 ([class "text-2xl text-[#44567e]"])
        ,title)
    ,@body))

(define (subsection title . body)
  `(div ([id ,(heading-to-id title)] [class "my-4"])
    (h2 ([class "text-xl text-[#44567e]"])
        ,title)
    ,@body))

(define (par . body)
  `(p ([class "my-2"]) ,@body))

(define (it . body)
  `(span ([class "italic"]) ,@body))

(define (bold . body)
  `(span ([class "font-bold"]) ,@body))

(define (card #:title title #:img [img ""] . body)
  `(div ([class "max-w-sm rounded overflow-hidden shadow-lg"])
      ,(if (string=? img "")
           ""
           `(img ([class "w-full"] [src ,img])))
      (div ([class "px-6 py-4"])
        (h2 ([class "font-bold text-xl mb-2"])
          ,title)
        ,@body)))

(define (table . rows)
`(table ([class "table-auto w-full"])
    ,@(map 
      (λ (row)
        `(tr ([class ""])  
          ,@(map  
              (λ (data)
                 `(td ([class "border-b border-slate-500 p-4 pl-8"]) ,data))
              (filter (λ (data) (not (equal? data "\n")))
                      (string-split row ",")))))
      rows)))

(define (song . text)
  `(div ([class "mr-1.5 mb-2"])
		(div ([class ,"flex items-center rounded-full bg-[#44567e]/10 hover:bg-[#44567e]/40 px-4 py-2 text-sm font-medium leading-5 text-[#44567e]"])
         (svg ([xmlns "http://www.w3.org/2000/svg"] [fill "none"] [viewBox "0 0 24 24"] [stroke-width "1.5"] [stroke "currentColor"] [class "mx-1 size-5"])
            (path ([stroke-linecap "round"] [stroke-linejoin "round"] [d "m9 9 10.5-3m0 6.553v3.75a2.25 2.25 0 0 1-1.632 2.163l-1.32.377a1.803 1.803 0 1 1-.99-3.467l2.31-.66a2.25 2.25 0 0 0 1.632-2.163Zm0 0V2.25L9 5.25v10.303m0 0v3.75a2.25 2.25 0 0 1-1.632 2.163l-1.32.377a1.803 1.803 0 0 1-.99-3.467l2.31-.66A2.25 2.25 0 0 0 9 15.553Z"])))
         ,@text)))
