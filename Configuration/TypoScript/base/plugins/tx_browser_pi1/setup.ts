plugin.tx_browser_pi1 {

  displayList.selectBox_orderBy.selectbox.wrap.item.stdWrap.htmlSpecialChars = 0

  document_stdWrap.stdWrap.noTrimWrap = |<li>|</li> |

  general_stdWrap {
      // dwildt, 110123
    parseFunc >
    parseFunc < lib.parseFunc_RTE
    parseFunc {
      allowTags = {$styles.content.links.allowTags},table,td,tr,small,iframe,option,form,legend,fieldset,input,button
      externalBlocks {
        comment (
          div >
          Denn div soll nicht automatisch mit </div> ergaenzt werden.
          Siehe 301: Repertoire - tx_org_cal.datetime
        )
        div >
      }
    }
  }

  marker {
    my_singleviewbackbutton = COA
    my_singleviewbackbutton {
        // History Back
      10 = TEXT
      10 {
        value = Back
        lang {
          de = Zur&uuml;ck
          en = Back
        }
        noTrimWrap  = |<a href="javascript:history.back()">&laquo; |</a>|
      }
        // Devider
      20 = TEXT
      20 {
        value = |
        noTrimWrap  = | | |
      }
        // List
      30 = TEXT
      30 {
        value = To the list
        lang {
          de = Zur Liste
          en = To the list
        }
        stdWrap {
          noTrimWrap  = || &raquo;|
        }
      }
    }
  }

  navigation {
    indexBrowser {
      tabs {
        2 {
          valuesCSV = A,Ä,a,ä
        }
        16 {
          valuesCSV = O,Ö,o,ö
        }
        21 {
          valuesCSV = U,Ü,u,ü
        }
      }
    }
    //pageBrowser.showResultCount = 0
  }

  template {
      // #44136
    add_parameter {
      extensions {
        org = COA
        org {
            // calendarUid
          10 = TEXT
          10 {
            dataWrap        = &tx_browser_pi1[calendarUid]={GPvar:tx_browser_pi1|calendarUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|calendarUid
          }
            // departmentUid
          20 = TEXT
          20 {
            dataWrap        = &tx_browser_pi1[departmentUid]={GPvar:tx_browser_pi1|departmentUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|departmentUid
          }
            // downloadsUid
          30 = TEXT
          30 {
            dataWrap        = &tx_browser_pi1[downloadsUid]={GPvar:tx_browser_pi1|downloadsUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|downloadsUid
          }
            // downloadscatUid
          40 = TEXT
          40 {
            dataWrap        = &tx_browser_pi1[downloadscatUid]={GPvar:tx_browser_pi1|downloadscatUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|downloadscatUid
          }
            // eventUid
          50 = TEXT
          50 {
            dataWrap        = &tx_browser_pi1[eventUid]={GPvar:tx_browser_pi1|eventUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|eventUid
          }
            // feuserUid
          60 = TEXT
          60 {
            dataWrap        = &tx_browser_pi1[feuserUid]={GPvar:tx_browser_pi1|feuserUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|feuserUid
          }
            // headquartersUid
          70 = TEXT
          70 {
            dataWrap        = &tx_browser_pi1[headquartersUid]={GPvar:tx_browser_pi1|headquartersUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|headquartersUid
          }
            // jobUid
          80 = TEXT
          80 {
            dataWrap        = &tx_browser_pi1[jobUid]={GPvar:tx_browser_pi1|jobUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|jobUid
          }
            // locationUid
          90 = TEXT
          90 {
            dataWrap        = &tx_browser_pi1[locationUid]={GPvar:tx_browser_pi1|locationUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|locationUid
          }
            // newsUid
          100 = TEXT
          100 {
            dataWrap        = &tx_browser_pi1[newsUid]={GPvar:tx_browser_pi1|newsUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|newsUid
          }
            // serviceUid
          110 = TEXT
          110 {
            dataWrap        = &tx_browser_pi1[serviceUid]={GPvar:tx_browser_pi1|serviceUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|serviceUid
          }
            // staffUid
          120 = TEXT
          120 {
            dataWrap        = &tx_browser_pi1[staffUid]={GPvar:tx_browser_pi1|staffUid}&###CHASH###
            if.isTrue.data  = GPvar:tx_browser_pi1|staffUid
          }
        }
      }
    }
  }

  _LOCAL_LANG {
    default {
      label_sword_default       = Search Word
      pi_list_searchBox_search  = Search!
    }
    de {
      label_sword_default       = Suchbegriff
      pi_list_searchBox_search  = Suchen!
    }
  }
}