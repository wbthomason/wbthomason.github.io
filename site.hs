--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}

import Data.List (intercalate, isInfixOf, isPrefixOf, isSuffixOf, sort)
import Data.Monoid (mappend)
import Hakyll
import System.FilePath.Posix ((</>), takeBaseName, takeDirectory, takeFileName)

--------------------------------------------------------------------------------
-- Routes
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

-- Site variables
twitter = "wilthomason"
github = "wbthomason"
site_title = "wil thomason"
linkedin = "wbthomason"
email = "wbthomason@{my department, abbr.}.{my university}.edu"
author = "Wil Thomason"

-- Contexts
mainContext :: Context String
mainContext = -- Variables
              constField "twitter" twitter `mappend`
              constField "github" github `mappend`
              constField "site_title" site_title `mappend`
              constField "linkedin" linkedin `mappend`
              constField "email" email `mappend`
              constField "author" author `mappend`
              defaultContext

main :: IO ()
main =
  hakyll $ do
    match "images/*" $ do
      route idRoute
      compile copyFileCompiler

    match "*.txt" $ do
      route idRoute
      compile copyFileCompiler

    match "js/*" $ do
      route idRoute
      compile copyFileCompiler

    match "css/*" $ do
      route idRoute
      compile compressCssCompiler

    match "papers/*" $ do
      route idRoute
      compile copyFileCompiler

    match "*.pdf" $ do
      route idRoute
      compile copyFileCompiler

    match "*.md" $ do
      route $ cleanRoute
      compile $
        pandocCompiler >>=
        loadAndApplyTemplate "templates/page.html" mainContext >>=
        saveSnapshot "content" >>=
        loadAndApplyTemplate "templates/default.html" mainContext >>=
        relativizeUrls >>=
        cleanIndexUrls

    match "index.html" $ do
      route idRoute
      compile $ do
        about_section <- loadSnapshotBody "about.md" "content"
        contact_section <- loadSnapshotBody "contact.md" "content"
        links_section <- loadSnapshotBody "links.md" "content"
        projects_section <- loadSnapshotBody "projects.md" "content"
        publications_section <- loadSnapshotBody "publications.md" "content"
        let indexCtx =
              -- Sections
              constField "about" about_section `mappend`
              constField "contact" contact_section `mappend`
              constField "links" links_section `mappend`
              constField "projects" projects_section `mappend`
              constField "publications" publications_section `mappend`
              mainContext
        getResourceBody >>= applyAsTemplate indexCtx >>=
          loadAndApplyTemplate "templates/default.html" indexCtx >>=
          relativizeUrls
    match "templates/*" $ compile templateBodyCompiler
