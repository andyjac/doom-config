;;; ~/.doom.d/elisp/javascript.el -*- lexical-binding: t; -*-


(after! (:and flycheck web-mode)
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  ;; (flycheck-add-mode 'typescript-tslint 'web-mode)
  )

(after! web-mode
  (add-to-list 'web-mode-comment-formats '("javascript" . "//"))
  (add-to-list 'web-mode-comment-formats '("jsx"        . "//")))

(add-to-list '+format-on-save-enabled-modes 'not)
(add-to-list '+format-on-save-enabled-modes 'js2-mode t)
(add-to-list '+format-on-save-enabled-modes 'web-mode t)
(add-to-list '+format-on-save-enabled-modes 'typescript-mode t)

(setq-hook! 'web-mode-hook
  web-mode-css-indent-offset 2
  web-mode-code-indent-offset 2
  web-mode-markup-indent-offset 2
  web-mode-sql-indent-offset 2)

(setq-hook! 'js2-mode
  js2-basic-offset 2)
