;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: HUNCHENTOOT; Base: 10 -*-

(in-package :hero)

(pushnew #P"w:/libsdl/builds/RelWithDebInfo/" *foreign-library-directories*
         :test #'equal)


(define-foreign-library libsdl
  (:windows "SDL2.dll")
  (t (:default "SDL2")))

(use-foreign-library libsdl)

;;; The init function
;;; int SDL_Init(Uint32 flags)
(defcfun "SDL_Init" :uint32
  (flags :unsigned-int))

;; HERO> (sdl-init 3)
;; 0
;; HERO>

;;; The quit function.
;;; void SDL_Quit(void)
(defcfun "SDL_Quit" :void)

;;; The CreateWindow function.
;; SDL_Window* SDL_CreateWindow(const char* title,
;;                              int         x,
;;                              int         y,
;;                              int         w,
;;                              int         h,
;;                              Uint32      flags)

(defctype sdl-window :pointer)

(defcfun "SDL_CreateWindow" sdl-window
  (title :string) (x :int) (y :int)
  (w :int) (h :int) (flags sdl-windowflags))

;;; The Delay function.
;;; void SDL_Delay(Uint32 ms)
(defcfun "SDL_Delay" :void
  (ms :uint32))

;;; The DestroyWindow function.
;;; void SDL_DestroyWindow(SDL_Window* window)
(defcfun "SDL_DestroyWindow" :void
  (window sdl-window))


;; HERO> (sdl-init +SDL-INIT-VIDEO+)

;; 0
;; HERO>
;; HERO> (let ((window (sdl-createwindow "A SDL2 Window"
;;                                    +SDL-WINDOWPOS-UNDEFINED+
;;                                    +SDL-WINDOWPOS-UNDEFINED+
;;                                    640 480
;;                                    :sdl-window-resizable)))
;;      (sdl-delay 10000)
;;      (sdl-destroywindow window))

;; NIL
;; HERO>
