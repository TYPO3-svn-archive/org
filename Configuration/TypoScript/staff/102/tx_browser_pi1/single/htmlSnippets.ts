plugin.tx_browser_pi1 {
  views {
    single {
      102 {
        htmlSnippets =
        htmlSnippets {
          subparts {
            singleview = TEXT
            singleview {
              value (
                <!-- ###SINGLEVIEW### begin --><!-- ###SINGLEBODY### begin --><!-- ###SINGLEBODYROW### begin -->
                <!-- ###AREA_FOR_AJAX_LIST_01### begin -->
                <div class="main columns">
                  ###RECORD_BROWSER###
                  ###TX_ORG_STAFF.TITLE###
                  <!-- ###AREA_FOR_AJAX_LIST_01### end -->
                  <!-- ###BACKBUTTON### begin -->
                  <p class="backbutton">
                    ###MY_SINGLEVIEWBACKBUTTON###
                  </p>
                  <!-- ###BACKBUTTON### end -->
                  <!-- ###AREA_FOR_AJAX_LIST_02### begin -->
                  ###TX_ORG_STAFF.CONTACT_EMAIL###
                  ###TX_ORG_STAFF.DELETED###<!-- tx_org_staffgroup -->
                  ###TX_ORG_STAFF.CRDATE###<!-- tx_org_news -->
                  ###TX_ORG_HEADQUARTERS.UID###
                </div>
                <!-- ###AREA_FOR_AJAX_LIST_02### end -->
                <!-- ###SINGLEBODYROW### end --><!-- ###SINGLEBODY### end --><!-- ###SINGLEVIEW### end -->
)
            }
          }
        }
      }
    }
  }
}