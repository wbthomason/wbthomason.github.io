--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}

import Data.Monoid (mappend)
import Hakyll
import System.FilePath.Posix ((</>), takeBaseName, takeDirectory, takeFileName)

--------------------------------------------------------------------------------
-- Taken from https://www.rohanjain.in/hakyll-clean-urls/
cleanRoute :: Routes
cleanRoute = customRoute createIndexRoute
  where
    createIndexRoute ident = takeDirectory p </> takeBaseName p </> "index.html"
      where
        p = toFilePath ident

cleanIndexUrls :: Item String -> Compiler (Item String)
cleanIndexUrls = return . fmap (withUrls cleanIndex)

cleanIndexHtmls :: Item String -> Compiler (Item String)
cleanIndexHtmls = return . fmap (replaceAll pattern replacement)
  where
    pattern = "/index.html"
    replacement = const "/"

cleanIndex :: String -> String
cleanIndex url
  | idx `isSuffixOf` url = take (length url - length idx) url
  | otherwise = url
  where
    idx = "index.html"

main :: IO ()
main =
  hakyll $ do
    match "images/*" $ do
      route idRoute
      compile copyFileCompiler
    match "css/*" $ do
      route idRoute
      compile compressCssCompiler
    match "*.md" $ do
      route $ setExtension "html"
      compile $
        pandocCompiler >>=
        loadAndApplyTemplate "templates/default.html" defaultContext >>=
        relativizeUrls
    match "index.html" $ do
      route idRoute
      compile $ do
        sections <- loadAll "*.md"
        let indexCtx =
              listField "posts" postCtx (return posts) `mappend`
              constField "title" "Home" `mappend`
              defaultContext
        getResourceBody >>= applyAsTemplate indexCtx >>=
          loadAndApplyTemplate "templates/default.html" indexCtx >>=
          relativizeUrls
    match "templates/*" $ compile templateBodyCompiler

--------------------------------------------------------------------------------
postCtx :: Context String
postCtx = dateField "date" "%B %e, %Y" `mappend` defaultContext
