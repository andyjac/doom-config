;;; ~/.doom.d/elisp/functions.el -*- lexical-binding: t; -*-

(defun +restclient/open ()
  "Create a new restclient buffer"
  (interactive)
  (when (not (+workspace-exists-p "*restclient*"))
    (+workspace-new "*restclient*"))
  (+workspace-switch "*restclient*")
  (let ((request-buf (get-buffer-create "*HTTP Request*")))
    (switch-to-buffer request-buf)
    (restclient-mode)
    (when (= (buffer-size request-buf) 0)
      (progn
        (goto-char (point-max))
        (insert "# -*- restclient -*-\n#\n\n")))))
