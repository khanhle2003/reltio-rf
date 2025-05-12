*** Variables ***
# button
# ${ADD_FAX_FIELD}    xpath=//label[text()='Fax']/ancestor::tr//td[contains(@class,'ebx_Input')]//input
# ${ADD_PHONE_FIELD}    xpath=//label[text()='Phone Number']/ancestor::tr//td[contains(@class,'ebx_Input')]//input

# field
${ADD_ADDRESS_XPATH}    xpath=//label[text()='%s']/ancestor::tr//td[contains(@class,'ebx_Input')]//input
${INPUT_ID_FIELD}    xpath=//div[contains(@class, 'ebx_AdvancedSearchCriterionLineContent')][.//input[@type='hidden' and contains(@value, '/field/id')]]//input[@class='ebx_APV']


# button
${ADDRESS_BUTTON}    xpath=//span[normalize-space()='Address']
${ADD_BUTTON}    xpath=//button[@aria-label='Create a record']
${SAVE_AND_CLOSE_BUTTON}    xpath=//button[text()='Save and close']
${ID_FIELD}    xpath=(//div[@class='ebx_mes_item_ctn'])[1]
${APPLY_BUTTON}    xpath=//button[@id='ebx_AdvancedSearchPaneApplyButton']
${ADDRESS_NEED_UPDATE}    xpath=//div[normalize-space()='%s']
#dropdown
${SHOW_CRITERION_FILTER}    xpath=//button[@title='Open drop-down list']
${SHOW_ADV_FILTER}    xpath=//button[@title='Show filters']

# iframe
${FRAME}    xpath=//iframe[@id='ebx-legacy-component']


#input
${SEARCH_INPUT}    xpath=//input[@id='search-input']


