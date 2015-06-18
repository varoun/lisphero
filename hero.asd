;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-

(in-package :cl-user)

(asdf:defsystem :hero
  :name "LispHero"
  :author "Varoun P"
  :version "1.0"
  :license "MIT-Style"
  :maintainer "Varoun P"
  :description "LispHero Game."
  :long-description "A CL port of HandmadeHero"
  :depends-on (:cffi)
  :serial t
  :components
  ((:module "packages"
            :serial t
            :pathname #p""
            :components
            ((:file "src/packages")))
   (:module "platform"
            :serial t
            :pathname #p""
            :components
            ((:file "src/sdl")))))
