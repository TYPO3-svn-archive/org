plugin.tx_browser_pi1 {

  advanced {
    sql {
      devider {
        tx_org_headquarters {
          uid {
            display = TEXT
            display {
              value =
              wrap = |
            }
          }
        }
        XXXtx_org_staffgroup {
          title {
            display = TEXT
            display {
              value =
              wrap = |
            }
          }
        }
      }
    }
  }

  displayList {
    selectBox_orderBy {
      display = 1
    }
  }

  views {
    list {
      101 = +Org: People
      101 {
        name    = +Org: People
        showUid = {$plugin.tx_browser_pi1.navigation.showUid}
      }
    }
    single {
      101 = +Org: People
    }
  }
}

<INCLUDE_TYPOSCRIPT: source="FILE:EXT:org/Configuration/TypoScript/staff/101/tx_browser_pi1/list/_setup.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:EXT:org/Configuration/TypoScript/staff/101/tx_browser_pi1/single/_setup.ts">