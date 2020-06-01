;;; ~/.doom.d/elisp/c.el -*- lexical-binding: t; -*-

(add-hook! ('c-mode-hook 'c++-mode-hook)
  (defun c-settings ()
    (setq c-basic-offset 2)
    (c-set-offset 'substatement-open 0)
    (c-set-offset 'arglist-intro '+)
    (c-set-offset 'arglist-close 0)))
