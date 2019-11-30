;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;   <It's your masterpiece.
;;;    Use these three lines to describe
;;;    its inner meaning.>

(define (make-sqn n)
	(define (helper sq total)
		(if (null? sq)
			total
			(cond
				((equal? (car sq) 'L) (helper (cdr sq) (append total (list '+ 'R 'F '- 'L 'F 'L '- 'F 'R '+))))
				((equal? (car sq) 'R) (helper (cdr sq) (append total (list '- 'L 'F '+ 'R 'F 'R '+ 'F 'L '-))))
				(else (helper (cdr sq) (append total (list (car sq)))))
			)
		)
	)
	(define (accumulater n total)
		(if (= n 0)
			total
			(accumulater (- n 1) (helper total nil))
		)
	)
	(accumulater n (list 'L))
)

(define (draw-sqn sq len)
	(if (not (null? sq))
		(begin
			(cond
				((equal? (car sq) 'L)
					(begin
						(forward len)
						(right 90)
						(forward len)
						(left 90)
						(backward len)
					)
				)
				((equal? (car sq) 'R)
					(begin
						(backward len)
						(right 90)
						(forward len)
						(left 90)
						(forward len)
					)
				)
				((equal? (car sq) 'F)
					(begin
						(right 90)
						(forward len)
						(left 90)
					)
				)
				((equal? (car sq) '+)
					(left 90)
				)
				((equal? (car sq) '-)
					(right 90)
				)
			)
			(draw-sqn (cdr sq) len)
		)
	)
)
	
(define (draw-hilbert n size)
	(define len (/ size (- (expt 2 (+ n 1)) 1)))
	(define sq (make-sqn n))
	(draw-sqn sq len)
)


(define (draw)
	(speed 100)
	(penup)
	(setposition (- 700) (- 100))
	(pendown)
	(draw-hilbert 0 100)
	(penup)
	(right 90)
	(forward 100)
	(left 90)
	(pendown)
	(draw-hilbert 1 100)
	(penup)
	(right 90)
	(forward 100)
	(left 90)
	(pendown)
	(draw-hilbert 2 100)
	(penup)
	(right 90)
	(forward 100)
	(left 90)
	(pendown)
	(draw-hilbert 3 100)
	(penup)
	(right 90)
	(forward 100)
	(left 90)
	(pendown)
	(draw-hilbert 4 100)
	(penup)
	(right 90)
	(forward 100)
	(left 90)
	(pendown)
	(draw-hilbert 5 100)
	(penup)
	(right 90)
	(forward 100)
	(left 90)
	(pendown)
	(draw-hilbert 6 100)
	(exitonclick)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
;(draw)