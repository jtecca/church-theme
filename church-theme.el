;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; ---------------------------
;;
;; Church: A creamy light theme fit for Alonzo Church
;;
;; ----------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme church "A creamy light theme fit for Alonzo Church.")

(let (
      (*background*         "#f6f2f2")
      (*comments*           "#2c5115")
      (*constant*           "#2c9f20")
      (*current-line*       "#e2e3e2")
      (*cursor-underscore*  "#e41111")
      (*keywords*           "#26408b")
      (*line-number*        "#EEE")
      (*method-declaration* "#11abab")
      (*mode-line-bg*       "#555")
      (*mode-inactive-bg*   "#ccc")
      (*mode-line-fg*       "#EEE")
      (*normal*             "#1b1e2b")
      (*string*             "#585858")
      (*number*             "#5b93fc")
      (*operators*          "#75507B")
      (*warning*            "#b22222")
      (*regexp*             "#E9C")
      (*variable*           "#D14")
      (*visual-selection*   "#a2a3a4")
      (*header-line-bg-old* "#c3c4c5")
      (*link*               "#1620cf")
      (*link-visited*       "#9360a5")
      (*header-line-bg*     "#6787af")
      (*something*          "#e4e5e6")
      (*delim-1*            "#c4c5c6")
      (*delim-2*            "#9d9d9d")
      (*delim-3*            "#6a6a6a")
      (*delim-4*            "#484848")
      (*delim-5*            "#252525")
)

  (custom-theme-set-faces
   'church

   `(bold ((t (:bold t))))
   `(button ((t (:foreground, *keywords*))))
   `(link ((t (:foreground, *link* :underline t :weight normal))))
   `(link-visited ((t (:foreground ,*link-visited* :underline t :weight normal))))
   `(default ((t (:background, *background* :foreground, *normal*))))

   ;; header line and highlights
   `(header-line ((t (:background, *header-line-bg* :foreground, *background*))))
   `(highlight ((t (:background, *current-line*))))
   `(highlight-face ((t (:background, *current-line*))))
   `(hl-line ((t (:background, *current-line*))))
   `(region ((t (:background, *visual-selection*))))
   `(underline ((nil (:underline nil))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground, *operators*))))
   `(font-lock-comment-delimiter-face ((t (:foreground, *comments*))))
   `(font-lock-comment-face ((t (:foreground, *comments*))))
   `(font-lock-constant-face ((t (:foreground, *constant*))))
   `(font-lock-doc-face ((t (:foreground, *string*))))
   `(font-lock-doc-string-face ((t (:foreground, *string*))))
   `(font-lock-function-name-face ((t (:foreground, *method-declaration*))))
   `(font-lock-keyword-face ((t (:foreground, *keywords*))))
   `(font-lock-negation-char-face ((t (:foreground, *warning*))))
   `(font-lock-number-face ((t (:foreground, *number*))))
   `(font-lock-preprocessor-face ((t (:foreground, *keywords*))))
   `(font-lock-reference-face ((t (:foreground, *constant*))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground, *regexp*))))
   `(font-lock-regexp-grouping-construct ((t (:foreground, *regexp*))))
   `(font-lock-string-face ((t (:foreground, *string*))))
   `(font-lock-type-face ((t (:foreground, *operators*))))
   `(font-lock-variable-name-face ((t (:foreground, *variable*))))
   `(font-lock-warning-face ((t (:foreground, *warning*))))

   ;; GUI
   `(fringe ((t (:background, *background*))))
   `(linum ((t (:background, *line-number*))))
   `(minibuffer-prompt ((t (:foreground, *variable*))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-inactive-bg* :foreground, *background*))))
   `(cursor ((t (:background, *cursor-underscore*))))
   `(text-cursor ((t (:background, *cursor-underscore*))))
   `(vertical-border ((t (:foreground, *operators*))))

   ;; show-paren
   `(show-paren-mismatch ((t (:background, *warning* :foreground, *background*))))
   `(show-paren-match ((t (:background, *keywords* :foreground, *background*))))

   ;; search
   `(isearch ((t (:background, *header-line-bg* :foreground, *background*))))
   `(isearch-fail ((t (:background, *warning* :foreground, *background*))))
   `(lazy-highlight ((t (:background, *current-line* :foreground, *variable*))))
   
   ;; rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,*delim-1*))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,*delim-2*))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,*delim-3*))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,*delim-4*))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,*delim-5*))))

   ;; sml-modeline
   `(sml-modeline-end-face ((t (:foreground ,*mode-line-fg*))))
   `(sml-modeline-vis-face ((t (:foreground ,*mode-line-fg*))))
))

;;;
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'church)

;; Local Variables:
;; no-byte-compile: t
;; End:
