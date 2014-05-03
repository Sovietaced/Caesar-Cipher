(defun shift (c numshift)
	(let ((up))
		(setq up (+ (char-int c) numshift))
  			(if (< up 90)
  				(print (code-char up))
  				(print (code-char up)))))

(defun e (input shift) 
	(let ((up))
		(setq up (string-upcase input))
		(let ((numshift))
			(setq numshift (rem shift 26))
				(map 'string #'(lambda (c) (shift c numshift)) up))))
