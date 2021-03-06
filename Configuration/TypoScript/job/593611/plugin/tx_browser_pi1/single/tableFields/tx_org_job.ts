plugin.tx_browser_pi1 {
  views {
    single {
      593611 {
          // 140706: empty statement: for proper comments only
        tx_org_job {
        }
          // title, mail_city
        tx_org_job =
        tx_org_job {
            // image, header, text, apply online
          title = COA
          title {
              // image
            10 = COA
            10 {
              if {
                isTrue {
                  field = tx_org_job.image // tx_org_headquarters.image
                }
              }
              wrap = <div class="###CSSVISMEDIUMTO###" style="float:left;padding: 0 1rem 1rem 0;">|</div>
              10 = IMAGE
              10 {
                file {
                  import = uploads/tx_org/
                  import {
                    field   = tx_org_job.image // tx_org_headquarters.image
                    listNum = 0
                  }
                  height  = 200c
                  width   = 200
                }
                altText = TEXT
                altText {
                  field   = tx_org_job.title // tx_org_job.teaser_title
                  stdWrap {
                    stripHtml = 1
                    htmlSpecialChars = 1
                  }
                }
                titleText < .altText
              }
            }
              // header
            20 = TEXT
            20 {
              field = tx_org_job.title
              wrap = <h1>|</h1>
            }
              // tx_org_job.description
            30 = COA
            30 {
              if {
                isTrue {
                  field = tx_org_job.description
                }
              }
              10 = TEXT
              10 {
                data = LLL:EXT:org/Resources/Private/Language/tx_org_job.xml:tx_org_job.description
                wrap = <h2>|</h2>
              }
              20 = TEXT
              20 {
                field = tx_org_job.description
                stdWrap.parseFunc < lib.parseFunc_RTE
              }
            }
              // tx_org_job.specification
            40 = COA
            40 {
              if {
                isTrue {
                  field = tx_org_job.specification
                }
              }
              10 = TEXT
              10 {
                data = LLL:EXT:org/Resources/Private/Language/tx_org_job.xml:tx_org_job.specification
                wrap = <h2>|</h2>
              }
              20 = TEXT
              20 {
                field = tx_org_job.specification
                stdWrap.parseFunc < lib.parseFunc_RTE
              }
            }
              // apply online
            50 = TEXT
            50 {
              fieldRequired = tx_org_job.onlineapplication
              value = Apply online
              lang {
                de = Online bewerben
                en = Apply online
              }
              //wrap = <a class="button small expand">|</a>
              typolink {
                parameter {
                  cObject = COA
                  cObject {
                      // url
                    10 = TEXT
                    10 {
                      value = {$plugin.org.pages.jobApply}
                    }
                      // target
                    20 = TEXT
                    20 {
                      value       = -
                      noTrimWrap  = | "|"|
                    }
                      // class
                    30 = TEXT
                    30 {
                      value       = button small expand
                      noTrimWrap  = | "|"|
                    }
                      // title
                    40 = TEXT
                    40 {
                      value = Apply online
                      lang {
                        de = Online bewerben
                        en = Apply online
                      }
                      noTrimWrap  = | "|"|
                    }
                  }
                }
                additionalParams {
                  wrap  = &tx_browser_pi1[tx_org_job.uid]=|
                  field = tx_org_job.uid
                }
                useCacheHash = 1
              }
            }
          }
            // <table>different categories: header, dateofentry, city, sector, category, workinghours</table>
          mail_city = COA
          mail_city {
            wrap = <table class="info tx_org_job-info">|</table>
              // <tr>header</tr>
            10 = COA
            10 {
              wrap = <tr>|</tr>
                // <th colspan="2">label</th>
              10 = TEXT
              10 {
                value = Info job offer
                lang {
                  de = Info Stellenangebot
                  en = Info job offer
                }
                wrap = <th colspan="2">|</th>
              }
            }
              // <tr>city</tr>
            20 = COA
            20 {
              if {
                isTrue {
                  field = tx_org_job.mail_city
                }
              }
              wrap = <tr>|</tr>
                // <th>label</th>
              10 = TEXT
              10 {
                data = LLL:EXT:org/Resources/Private/Language/tx_org_job.xml:tx_org_job.mail_city
                wrap = <th>|</th>
              }
                // <td>value</td>
              20 = TEXT
              20 {
                field = tx_org_job.mail_city
                wrap = <td>|</td>
              }
            }
              // <tr>dateofentry</tr>
            21 = COA
            21 {
              if {
                isTrue {
                  field = tx_org_job.dateofentry
                }
              }
              wrap = <tr>|</tr>
                // <th>label</th>
              10 = TEXT
              10 {
                data = LLL:EXT:org/Resources/Private/Language/tx_org_job.xml:tx_org_job.dateofentry
                wrap = <th>|</th>
              }
                // <td>value</td>
              20 = TEXT
              20 {
                field = tx_org_job.dateofentry
                  // PHP strftime: i.e  %a, %d. %b: Mi, 24. Mär (it is localised)
                strftime = %d. %B %Y
                wrap = <td>|</td>
              }
            }
              // <tr>Sector</tr>
            30 < .20
            30 {
              if {
                isTrue {
                  field = tx_org_jobsector.title
                }
              }
              10 {
                data = LLL:EXT:org/Resources/Private/Language/tx_org_job.xml:tx_org_jobsector.title
              }
              20 {
                field = tx_org_jobsector.title
              }
            }
              // <tr>Category</tr>
            40 < .20
            40 {
              if {
                isTrue {
                  field = tx_org_jobcat.title
                }
              }
              10 {
                data = LLL:EXT:org/Resources/Private/Language/tx_org_job.xml:tx_org_jobcat.title
              }
              20 {
                field = tx_org_jobcat.title
              }
            }
              // <tr>Workinghours</tr>
            50 < .20
            50 {
              if {
                isTrue {
                  field = tx_org_jobworkinghours.title
                }
              }
              10 {
                data = LLL:EXT:org/Resources/Private/Language/tx_org_job.xml:tx_org_jobworkinghours.title
              }
              20 {
                field = tx_org_jobworkinghours.title
              }
            }
              // <tr>lengthoftime</tr>
            60 < .20
            60 {
              if {
                isTrue {
                  field = tx_org_job.lengthoftime
                }
              }
              10 {
                data = LLL:EXT:org/Resources/Private/Language/tx_org_job.xml:tx_org_job.lengthoftime
              }
              20 {
                field = tx_org_job.lengthoftime
              }
            }
          }
        }
      }
    }
  }
}