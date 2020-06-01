;;; ~/.doom.d/elisp/javascript.el -*- lexical-binding: t; -*-


(after! (:and flycheck web-mode)
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (flycheck-add-mode 'typescript-tslint 'web-mode))

(after! web-mode
  (add-to-list 'web-mode-comment-formats '("javascript" . "//"))
  (add-to-list 'web-mode-comment-formats '("jsx"        . "//")))

(add-to-list '+format-on-save-enabled-modes 'not)
(add-to-list '+format-on-save-enabled-modes 'js2-mode t)
(add-to-list '+format-on-save-enabled-modes 'web-mode t)
(add-to-list '+format-on-save-enabled-modes 'typescript-mode t)
