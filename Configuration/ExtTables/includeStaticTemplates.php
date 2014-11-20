<?php
if (!defined ('TYPO3_MODE'))
{
  die ('Access denied.');
}

// INDEX
// * de
// * default

switch( true )
{
  case($llStatic == 'de'):
      // German
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/base/',                              'Org [1] Basis');
    switch( true )
    {
      case( $typo3Version < 4007000 ):
        t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/base/typo3/4.6/',                'Org [1.1] + Basis fuer TYPO3 < 4.7 (einbinden!)');
        break;
      default:
        t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/base/typo3/4.6/',                'Org [1.1] + Basis fuer TYPO3 < 4.7 (NICHT einbinden!)');
        break;
    }
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/service/593621/',                    'Org [2] Dienstleistungen');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/',                     'Org [3] Downloads');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_caddy/',            'Org [3.1] + Downloads Caddy');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_caddy/wiFlag/',     'Org [3.1.1] + Downloads Caddy Flaggen');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_flipit/',           'Org [3.2] + Downloads Flip it!');
    switch( true )
    {
      case( $typo3Version < 4007000 ):
        t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_flipit/typo3/4.6/', 'Org [3.2.1] + Downloads Flip it! TYPO3 < 4.7 (einbinden!');
        break;
      default:
        t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_flipit/typo3/4.6/', 'Org [3.2.1] + Downloads Flip it! TYPO3 < 4.7 (NICHT einbinden!');
        break;
    }
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_flipit/typo3/6.x/', 'Org [3.2.1] + Downloads Flip it! TYPO3 >= 6.x');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/311/',                     'Org [3] Downloads - TOP 5');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/302/',                     'Org [3] Downloads Kategorien');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/calendar/201/',                      'Org [4] Kalender');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/calendar/201/caddy/',                'Org [4.1] + Kalender Caddy');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/calendar/201/expired/',              'Org [4.2] + Kalender Archiv');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/calendar/211/',                      'Org [4] Kalender - Rand');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/news/401/',                          'Org [5] Nachrichten');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/news/411/',                          'Org [5] Nachrichten - Rand');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/news/402/',                          'Org [5] Nachrichten - Slider');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/news/499/',                          'Org [5] Nachrichten (RSS)');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/staff/101/',                         'Org [6] Personen');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/staff/111/',                         'Org [6] Personen - Rand (nicht cachen!)');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/headquarters/501/',                  'Org [7] Standorte');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/headquarters/511/',                  'Org [7] Standorte - Rand');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/job/593611/',                        'Org [8] Stellenangebote');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/job/60527/',                         'Org [8] Stellenangebote - Newsletter');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/location/701/',                      'Org [9] Veranstaltungsorte');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/location/711/',                      'Org [9] Veranstaltorte - Rand');
    break;
  default:
      // English
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/base/',                              'Org [1] Basis');
    switch( true )
    {
      case( $typo3Version < 4007000 ):
        t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/base/typo3/4.6/',                'Org [1.1] + Basis for TYPO3 < 4.7 (obligate!)');
        break;
      default:
        t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/base/typo3/4.6/',                'Org [1.1] + Basis for TYPO3 < 4.7 (don\'t use it!)');
        break;
    }
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/calendar/201/',                      'Org [2] Calendar');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/calendar/201/caddy/',                'Org [2.1] + Calendar Caddy');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/calendar/201/expired/',              'Org [2.2] + Calendar expired');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/calendar/211/',                      'Org [2] Calendar - margin');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/',                     'Org [3] Downloads');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_caddy/',            'Org [3.1] + Downloads Caddy');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_caddy/wiFlag',      'Org [3.1.1] + Downloads Caddy Flags');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_flipit/',           'Org [3.2] + Downloads Flip it!');
    switch( true )
    {
      case( $typo3Version < 4007000 ):
        t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_flipit/typo3/4.6/', 'Org [3.2.1] + Downloads Flip it! TYPO3 < 4.7 (obligate!');
        break;
      default:
        t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_flipit/typo3/4.6/', 'Org [3.2.1] + Downloads Flip it! TYPO3 < 4.7 (don\'t use it!');
        break;
    }
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/301/tx_flipit/typo3/6.x/', 'Org [3.2.1] + Downloads Flip it! TYPO3 >= 6.x');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/311/',                     'Org [3] Downloads - TOP 5');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/downloads/302/',                     'Org [3] Downloads categories');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/headquarters/501/',                  'Org [4] Headquarters');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/headquarters/511/',                  'Org [4] Headquarters - margin');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/job/593611/',                        'Org [5] Jobs');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/job/60527/',                         'Org [5] Jobs - newsletter');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/location/701/',                      'Org [6] Locations');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/location/711/',                      'Org [6] Locations - margin');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/news/401/',                          'Org [7] News');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/news/411/',                          'Org [7] News - margin');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/news/402/',                          'Org [7] News - slider');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/news/499/',                          'Org [7] News (RSS)');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/staff/101/',                         'Org [8] People');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/staff/111/',                         'Org [8] People - margin (don\'t cache!)');
    t3lib_extMgm::addStaticFile($_EXTKEY,'Configuration/TypoScript/service/593621/',                    'Org [9] Service');
    break;
}
?>