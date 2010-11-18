-- {-# LANGUAGE #-}
{-# OPTIONS_GHC -Wall #-}
----------------------------------------------------------------------
-- |
-- Module      :  Network.Gitit.Plugin.FixSymbols
-- Copyright   :  (c) Conal Elliott 2010
-- License     :  BSD3
-- 
-- Maintainer  :  conal@conal.net
-- Stability   :  experimental
-- 
-- Gitit plugin: Format ordinals like 21st
----------------------------------------------------------------------

module Network.Gitit.Plugin.Ordinal (plugin, fixInline) where

import Network.Gitit.Interface

plugin :: Plugin
plugin = PageTransform $ return . processWith (concatMap fixInline)


fixInline :: Inline -> [Inline]
fixInline (Str s) = [Str s]
fixInline x       = [x]
