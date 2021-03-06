plugin.tx_browser_pi1 {
  views {
    single {
      593611 {
          // 140706: empty statement: for proper comments only
        tx_org_headquarters {
        }
          // uid: object for headquarters marginal box
        tx_org_headquarters =
        tx_org_headquarters {
            // headquarters marginal box: header, content
          uid = COA
          uid {
            if {
              isTrue {
                field = tx_org_headquarters.uid
              }
            }
            wrap = <div class="row tx_org_headquarters">|</div><!-- row tx_org_headquarters -->
              // column: vcard
            10 = COA
            10 {
              wrap = <div class="###CSSGRID######CSSGRIDLARGE###12">|</div><!--columns-->
                // column: image, header, title, steet, zip city, url
              10 = COA
              10 {
                wrap = <ul class="vcard">|</ul><!-- vcard -->
                  // image, header
                10 = COA
                10 {
                  wrap = <li class="header">|</li>
                    // image
                  10 < plugin.tx_browser_pi1.displayList.master_templates.tableFields.image.2
                  10 {
                    wrap = <div class="image" style="float:right;">|</div>
                  }
                    // title, if title (name)
                  20 = TEXT
                  20 {
                    value = Contractor
                    lang {
                      de = Anbieter
                      en = Contractor
                    }
                  }
                }
                  // title
                20 = TEXT
                20 {
                  field = tx_org_headquarters.title
                  wrap = <li class="fn">|</li>
                  required = 1
                }
                  // street
                30 = TEXT
                30 {
                  field = tx_org_headquarters.mail_street
                  wrap = <li class="street-address">|</li>
                  required = 1
                }
                  // zip city
                31 = COA
                31 {
                  if {
                    isTrue {
                      field = tx_org_headquarters.mail_city
                    }
                  }
                  wrap = <li class="locality">|</li>
                  10 = TEXT
                  10 {
                    field = tx_org_headquarters.mail_postcode
                    noTrimWrap = |<span class="zip">|</span> |
                    required = 1
                  }
                  20 = TEXT
                  20 {
                    field = tx_org_headquarters.mail_city
                    wrap = <span class="locality">|</span>
                    required = 1
                  }
                }
                  // url
                40 = CASE
                40 {
                  key {
                    field = {$plugin.tx_browser_pi1.templates.listview.url.2.key}
                  }
                  default = TEXT
                  default {
                    value = Contractor details &raquo;
                    lang {
                      de = Zum Anbieter &raquo;
                      en = Contractor details &raquo;
                    }
                    noTrimWrap = | ||
                    typolink < plugin.tx_browser_pi1.displayList.master_templates.tableFields.typolinks.2.default
                    wrap = <li class="url">|</li>
                  }
                  notype = TEXT
                  notype {
                    value =
                    wrap = |
                  }
                  page < .default
                  page {
                    typolink < plugin.tx_browser_pi1.displayList.master_templates.tableFields.typolinks.2.page
                  }
                  url < .page
                  url {
                    value >
                    field = {$plugin.tx_browser_pi1.templates.listview.url.2.url}
                    typolink < plugin.tx_browser_pi1.displayList.master_templates.tableFields.typolinks.2.url
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}