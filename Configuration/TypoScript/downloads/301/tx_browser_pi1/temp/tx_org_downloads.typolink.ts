temp.tx_org_downloads.typolink  {
  parameter {
  }
    // cObject: url, target, class, title
  parameter =
  parameter {
      // url, target, class, title
    cObject = COA
    cObject {
        // url: page id, typeNum
      10 = TEXT
      10 {
        value       = {$plugin.org.pages.downloads},{$plugin.tx_browser_pi1.typeNum.downloadPageObj}
        noTrimWrap  = || |
      }
        // target
      20 = TEXT
      20 {
        value = -
        noTrimWrap  = |"|" |
      }
        // class
      30 = TEXT
      30 {
        value = -
        noTrimWrap  = |"|" |
      }
        // title
      40 = TEXT
      40 {
        field = tx_org_downloads.title
        stdWrap {
          stripHtml = 1
          htmlSpecialChars = 1
        }
        wrap = "|"
      }
    }
  }
  additionalParams {
    cObject = COA
    cObject {
        // plugin
      10 = TEXT
      10 {
        field     = tt_content.uid
        required  = 1
        wrap      = &tx_browser_pi1[plugin]=|
      }
        // file
      20 = COA
      20 {
        10 = TEXT
        10 {
          field     = tx_org_downloads.uid
          required  = 1
          wrap      = &tx_browser_pi1[file]=single.301.tx_org_downloads.|.documents
        }
          // key
        20 = TEXT
        20 {
          field     = key
          required  = 1
          wrap      = .|
        }
      }
    }
  }
  useCacheHash = 1
}