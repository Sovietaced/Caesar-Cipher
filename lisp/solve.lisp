(defun shift (c numshift)
	(let ((up))
		(setq up (+ (char-int c) numshift))
  			(if (<= up 90)
  				(code-char up)
  				(code-char (+ 64 (- up 90))))))

(defun e (input shift) 
	(let ((up))
		(setq up (string-upcase input))
		(let ((numshift))
			(setq numshift (rem shift 26))
				(map 'string #'(lambda (c) (shift c numshift)) up))))

(defun solve (input shift)
	(loop for i from shift downto 0 do 
		(print (e input i))))