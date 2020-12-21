;;; ~/.doom.d/elisp/lsp.el -*- lexical-binding: t; -*-

(add-hook 'lsp-after-initialize-hook
          (lambda () (flycheck-add-next-checker 'lsp 'javascript-eslint)))
