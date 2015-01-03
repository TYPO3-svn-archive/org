plugin.tx_browser_pi1 {
  views {
    single {
      61826 {
        tx_org_event {
          title {
          40 {
          }
            // tx_org_event.tx_org_cal
          40 = COA
          40 {
            if {
              isTrue {
                field = tx_org_event.tx_org_cal
              }
            }
            wrap = <ul class="vcard tx_org_event tx_org_cal">|</ul><!-- vcard -->
              // header
            10 = TEXT
            10 {
              value = Events
              lang {
                de = Veranstaltungen
                en = Events
              }
              wrap = <li class="header">|</li>
            }
              // tx_org_event.uid
            19 = TEXT
            19 {
              field = tx_org_event.uid
              wrap = <li class="tx_org_cal">|</li>
            }
            20 = COA
            20 {
              10 = CONTENT
              10 {
                table = tx_org_cal
                select {
                  pidInList = {$plugin.org.sysfolder.calendar}
                  join = tx_org_mm_all ON tx_org_mm_all.uid_local = tx_org_cal.uid
                  where {
                    field = tx_org_event.uid
                    noTrimWrap = |tx_org_mm_all.uid_foreign = | AND tx_org_mm_all.table_local = 'tx_org_cal' AND tx_org_mm_all.table_foreign = 'tx_org_event'|
                  }
                  //andWhere = tx_org_cal.datetime > UNIX_TIMESTAMP()
                  orderBy = tx_org_cal.datetime ASC
                  //max = 3
                }
                  // tx_org_cal.title croped and linked
                renderObj = CASE
                renderObj {
                  key {
                    field = {$plugin.tx_browser_pi1.templates.listview.url.5.key}
                  }
                    // link to detail view
                  default = TEXT
                  default {
                    field = title
                    wrap = <li class="url circle">|</li>
                    stdWrap {
                      noTrimWrap = || &raquo;|
                    }
                    typolink < plugin.tx_browser_pi1.displayList.master_templates.tableFields.typolinks.5.default
                  }
                    // no link
                  notype = TEXT
                  notype {
                    field   = title
                    wrap = <li class="url circle">|</li>
                  }
                    // link to internal page
                  page < .default
                  page {
                    typolink < plugin.tx_browser_pi1.displayList.master_templates.tableFields.typolinks.5.page
                  }
                    // link to external url
                  url < .page
                  url {
                    typolink < plugin.tx_browser_pi1.displayList.master_templates.tableFields.typolinks.5.url
                  }
                }
              }
              wrap = <li class="tx_org_cal">|</li>
            }
            wrap = <div class="columns">|</div>
          }
        }
      }
    }
  }
}