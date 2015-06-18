;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: HUNCHENTOOT; Base: 10 -*-

(in-package :hero)

;;;; Constants and enums.

(defconstant +SDL-INIT-TIMER+ #x00000001)
(defconstant +SDL-INIT-AUDIO+ #x00000010)
(defconstant +SDL-INIT-VIDEO+ #x00000020
  "SDL-INIT-VIDEO implies SDL-INIT-EVENTS")
(defconstant +SDL-INIT-JOYSTICK+ #x00000200
  "SDL-INIT-JOYSTICK implies SDL-INIT-EVENTS")
(defconstant +SDL-INIT-HAPTIC+ #x00001000)
(defconstant +SDL-INIT-GAMECONTROLLER+ #x00002000
  "SDL-INIT-GAMECONTROLLER implies SDL-INIT-JOYSTICK")
(defconstant +SDL-INIT-EVENTS+ #x00004000)
(defconstant +SDL-INIT-NOPARACHUTE+ #x00100000)
(defconstant +SDL-INIT-EVERYTHING+
  (logior +SDL-INIT-TIMER+ +SDL-INIT-AUDIO+ +SDL-INIT-VIDEO+ +SDL-INIT-JOYSTICK+
          +SDL-INIT-HAPTIC+ +SDL-INIT-GAMECONTROLLER+ +SDL-INIT-EVENTS+
          +SDL-INIT-NOPARACHUTE+))

(defbitfield sdl-windowflags
  (:sdl-window-fullscreen #x00000001)
  (:sdl-window-opengl #x00000002)
  (:sdl-window-shown #x00000004)
  (:sdl-window-hidden  #x00000008)
  (:sdl-window-borderless  #x00000010)
  (:sdl-window-resizable  #x00000020)
  (:sdl-window-minimized  #x00000040)
  (:sdl-window-maximized  #x00000080)
  (:sdl-window-input-grabbed  #x00000100)
  (:sdl-window-input-focus  #x00000200)
  (:sdl-window-mouse-focus  #x00000400)
  (:sdl-window-fullscreen-desktop #x00001001) ;( SDL_WINDOW_FULLSCREEN | 0x00001000 )
  (:sdl-window-foreign  #x00000800)
  (:sdl-window-allow-highdpi  #x00002000)
  (:sdl-window-mouse-capture  #x00004000))


(defconstant +SDL-WINDOWPOS-UNDEFINED-MASK+ #x1FFF0000)
(defconstant +SDL-WINDOWPOS-UNDEFINED+
  (logior +SDL-WINDOWPOS-UNDEFINED-MASK+ #x00000000))

(defconstant +SDL-WINDOWPOS-CENTERED-MASK+ #x2FFF0000)
(defconstant +SDL-WINDOWPOS-CENTERED+
  (logior +SDL-WINDOWPOS-CENTERED-MASK+  #x00000000))
