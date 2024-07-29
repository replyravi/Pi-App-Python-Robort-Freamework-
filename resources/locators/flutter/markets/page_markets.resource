*** Settings ***
Resource    ../../../../configs/default.resource
Resource    ../../../locators/${PLATFORM_NAME}/markets/page_markets.resource

*** Variables ***               
&{tab_markets}           locator=${platform_tab_markets}
&{tab_markets_pi}        locator=${platform_tab_markets_pi}
&{tab_markets_set}       locator=${platform_tab_markets_title}    id_content=606
&{tab_markets_global}    locator=${platform_tab_markets_title}    id_content=607
&{tab_markets_mfund}     locator=${platform_tab_markets_title}    id_content=608 
&{tab_markets_tfex}      locator=${platform_tab_markets_title}    id_content=609
&{tab_markets_indices}   locator=${platform_tab_markets_title}    id_content=610 
&{tab_markets_currenies}      locator=${platform_tab_markets_title}    id_content=611 
&{tab_markets_commodities}    locator=${platform_tab_markets_title}    id_content=612 

&{cards_markets}       locator=${platform_cards_markets}

&{row_markets_data_1}  locator=${platform_row_markets_data_1}
