//plugin.tx_browser_pi1.map.controlling.enabled = Map

plugin.tx_browser_pi1 {
  jQuery {
    plugin {
      jstree {
        tablefield_01 = tx_org_jobcat.title
        tablefield_02 = tx_org_jobsector.title
        tablefield_03 = tx_org_jobworkinghours.title
        tablefield_04 = tx_org_headquarters.title
      }
    }
  }
  map {
    aliases {
      showUid {
        marker = jobUid
      }
    }
    controlling {
      enabled = Map
      provider = GoogleMaps
    }
    design {
      path {
        categoryIcon  = uploads/tx_org/
      }
      height  = 415
      width   = 470
    }
    html {
      jss {
        //toggle = 1
      }
    }
    icon {
      listNum {
        categoryIconMap       = 0
        categoryIconMapSingle = 0
      }
    }
    marker {
      field {
        linktoSingle      = tx_org_job.uid
        latitude          = tx_org_job.mail_lat
        longitude         = tx_org_job.mail_lon
        description       = tx_org_job.title
        category          = tx_org_jobcat.title
        categoryIcon      = tx_org_jobcat.icons
        categoryOffsetX   = tx_org_jobcat.icon_offset_x
        categoryOffsetY   = tx_org_jobcat.icon_offset_y
      }
    }
    mobileTouchscreen = 1
    popup {
      image {
        height = 60
        width =
      }
    }
  }
  navigation {
    showUid = jobUid
  }
  radialsearch {
    lat         = tx_org_job.mail_lat
    lon         = tx_org_job.mail_lon
    #searchmode  = Within the radius only
    uid         = tx_org_job.uid
  }

  templates {
    listview {
      header {
        0 {
          field   = tx_org_job.teaser_title // tx_org_job.title
        }
      }
      image {
        0 {
          default   = EXT:org/Resources/Public/Images/Icons/Default/tx_org_job_300x200.png
          file      = tx_org_headquarters.image // tx_org_job.image
          height    = 70c
          #listNum   =
          path      = uploads/tx_org/
          seo       = tx_org_headquarters.imageseo // tx_org_job.imageseo
          width     = 120m
        }
        1 {
          default   = EXT:org/Resources/Public/Images/Icons/Default/tx_org_staff_300x200.png
          file      = tx_org_staff.image
          height    = 70c
          #listNum   =
          path      = uploads/tx_org/
          seo       = tx_org_staff.imageseo // tx_org_staff.title // tx_org_job.teaser_title // tx_org_job.title
          width     = 70
        }
        2 {
          default   = EXT:org/Resources/Public/Images/Icons/Default/tx_org_headquarters_300x200.png
          file      = tx_org_headquarters.image
          height    = 80
          #listNum   =
          path      = uploads/tx_org/
          seo       = tx_org_headquarters.imageseo // tx_org_headquarters.title // tx_org_job.teaser_title // tx_org_job.title
          width     = 120m
        }
      }
      text {
        0 {
          field   = tx_org_job.teaser_short // tx_org_job.description
        }
      }
      url {
        0 {
          key       = tx_org_job.type
          page      = tx_org_job.page
          record    = tx_org_job.uid
          showUid   = jobUid
          #singlePid =
          url       = tx_org_job.url
        }
      }
    }
  }
}

[globalVar = GP:tx_browser_pi1|jobUid > 0]
  plugin.tx_browser_pi1 {
    map {
      zoomLevel {
        mode = fixed
        start = 10
      }
      design {
        height = 340
        width = 637
      }
    }
  }
[global]