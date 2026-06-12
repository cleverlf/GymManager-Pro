prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.0'
,p_default_workspace_id=>5801915512520998
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'GYM_ADMIN'
);
end;
/
 
prompt APPLICATION 100 - GymManager Pro
--
-- Application Export:
--   Application:     100
--   Name:            GymManager Pro
--   Date and Time:   09:00 Friday June 12, 2026
--   Exported By:     CLEVER
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     17
--       Items:                   36
--       Validations:              1
--       Processes:               21
--       Regions:                 41
--       Buttons:                 26
--       Dynamic Actions:          4
--     Shared Components:
--       Logic:
--         App Settings:           1
--         Build Options:          3
--       Navigation:
--         Lists:                  5
--         Breadcrumbs:            1
--           Entries:              7
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   6
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     1200101141227989
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'GYM_ADMIN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'GymManager Pro')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'GYMMANAGER-PRO')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E043BB17116480F20944085D0D782253865CF4DB23EC98EC078A91531C0D8665'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(6024858717618670)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'GymManager Pro'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'GymManager Pro'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260612072450Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461203112206
,p_version_scn=>'5497413'
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(6025700425618689)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(6026419831618784)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6020413185618615)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6020744932618651)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6021051411618653)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6021335308618653)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6021676367618654)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6021969801618656)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6022231199618656)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6022501705618657)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6022811232618659)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6023110889618659)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6023484046618659)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6023792021618660)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6024037757618660)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6024353672618660)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6190098501619635)
,p_name=>'Feedback'
,p_static_id=>'feedback'
,p_required_patch=>wwv_flow_imp.id(6029144424618804)
,p_version_scn=>'SH256:-Vvy3ewgV_bX-gBMzyFEWhyX97mdJG2IFsN_C08-8uw'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6190568825619637)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_static_id=>'user-feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10023:&APP_SESSION.::&DEBUG.:10023::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6026419831618784)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:8VP5K1nI8B2pS0aankHx4X31hPK9r5AuN87MarVOF2E'
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6186335161619618)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6186082353619618)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Feedback'
,p_static_id=>'feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:RP,10020:P10020_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(6029144424618804)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6186901770619620)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(6186335161619618)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6187477170619623)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(6186335161619618)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6025700425618689)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:r1uFh_t3emR6wmuwmB_M1cIrmwptKpYtoJ4YcV1ym20'
,p_created_on=>wwv_flow_imp.dz('20260611112205Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6188042296619626)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(6030449885618812)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6053107770618934)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Alunos'
,p_static_id=>'alunos'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6090898432619340)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Avaliacoes Fisicas'
,p_static_id=>'avaliacoes-fisicas'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6041842793618910)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6040334862618898)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6074479743619293)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Matriculas'
,p_static_id=>'matriculas'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6068750051619273)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Planos'
,p_static_id=>'planos'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112210Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6140201534619448)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:ZiWncKzhrxmXV2hZfFDtZoKa3Nho01N0WhGlMiegmfA'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6141210433619450)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Alunos'
,p_static_id=>'alunos'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6142728680619453)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Avaliacoes Fisicas'
,p_static_id=>'avaliacoes-fisicas'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6140769473619450)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6142277031619451)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Matriculas'
,p_static_id=>'matriculas'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6141738219619451)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Planos'
,p_static_id=>'planos'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6189267857619629)
,p_name=>'User Interface'
,p_static_id=>'user-interface'
,p_required_patch=>wwv_flow_imp.id(6029795984618804)
,p_version_scn=>'SH256:TEHQI3W-evOu5t7srXTUWfuXODpW2jafK7fobqw9eKU'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6189719650619632)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_static_id=>'theme-style-selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(6029795984618804)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000B73494441547801EC9D6B6C54C71580CFDC5D1B3FC2CB116F5A42C22331CF82BD264014482049AB82DA5486B554C5604323AAA84AAB56A99A1F4DAAF667AA20B5';
wwv_flow_imp.g_varchar2_table(2) := '51A0B6814811DED0AA21A89568A296D0C4E05DD306952A2802EA80791862C036C68BBD7BA7732E4B5A8221ECCCDCBB3BF79ED53DFBF29D9973BEF331DEBD09C202BA110105022490023C1A0A400291054A044820257C3498042207940890404AF8683009';
wwv_flow_imp.g_varchar2_table(3) := '440E281190164869551AEC1B0224906F5A999B4248A0DC70F7CDAA24906F5A999B4248A0DC70F7CDAA24906F5A999B4248A0DC70F7CDAADE0B7417E83E58DD383C5EBD6D7CDBDAED0FB4AE6D9C178F362D4ED46C5B19AF695815844860ADA266AC1D1920';
wwv_flow_imp.g_varchar2_table(4) := '0B647217E83C3F25A70271E0ACAD66DB83AD350DB5F168C36BF1B54D6DF168E3406109F440C83E6BB3F431C6E02300FE21E7F65FC4E9EF04219C5A45CD583B324016C804D9388CD636FE1699213B640839BC792AD03FAA9BC624A28DAB5BA38DBF8AD734';
wwv_flow_imp.g_varchar2_table(5) := 'BE9B88365DB2B9FD31E36C3B00DB048C2F04800211740C4DA0C061C4E0FBC80CD9214387654DC32FE362876EA96E281B7AA83BEF5AEE4C7BEBACF827256DC1620EF00203F819705821CE1A29820E3502239125E7EC45E0EC85906509C65C20569BF46E47';
wwv_flow_imp.g_varchar2_table(6) := 'BB2E50DBF7B614C4A38D1B13D1A6A39CF1B745628B45D0E10E81258CF13D899AA68FC52E5F8FECDD59E67FB3BA2A504BF58E497677C101B1DC56113344D0E105010E33C516D460F7845BF063839B4BBA26D0C1EAA6F27028D5EAFCCE76B3029AFB4E042A';
wwv_flow_imp.g_varchar2_table(7) := '5221FB40BC66EBAC3B9DA4F23357046AAB695C6A85788B486C92084D074D2347803D003CF461BCA6E951B9F1771EA55D20DC796C0E7BC5B2F4015940C893437CD0E67F766327D22A50DBAA2D255698EF12D04A44D0915F044A808763D8239D696915C82E';
wwv_flow_imp.g_varchar2_table(8) := '2D780D3894EB4C90E6D24980CF727AA4714A6D02C5A38DEBC415E35A8DB9D154AE10E0E2AA3FF64ACFE45A046AA97EAB9801FBB59E9468160F08BCA2EB5799168142A1DE5A71A579B40785D3127A0894A54BC3CFE8984A5920210E630C9E87FCBD516643';
wwv_flow_imp.g_varchar2_table(9) := '10108DFF01F66E881F65F5969827ABF36F393951D3F8A4F8E03CF3961FD01B794D80033CE4F44E314B6581C066B4FB28362167C335F44E49A0BFADDB56040C56E60C002DAC4640F40EBF00A94CA224D03DC9D422B1B8D21C623C1DB923601584BAAB5496';
wwv_flow_imp.g_varchar2_table(10) := '576A3EE7160AA4B23E8DCD3101D51EAA09C438099463015497E78A3D941608BF0232604B550BC8E7F141C84DF450691390162851BD7D9C007CAF083ACC2630AEF5991DD27D941608C24C7A51B379FB2F7B36C8C7CB56252F90CDE97FD990A59E6FE3147A';
wwv_flow_imp.g_varchar2_table(11) := '292F904502E59B07D2F928F4525E20B08BA513A681F94580DB61D984E40552D8F66493A5712E116050203BB3BC40218B76A0DB5137ED7D85CD405E205BDE5AD3F8FA3E5F85CD405E20C652BE074B057E29017981BE746A3A21080448A02074D9C51A4920';
wwv_flow_imp.g_varchar2_table(12) := '17E106616A1228085D76B14612C845B8D94F6DDE082305EA1BEC878BC91EB8D07F39EBC071C9F480799DCAD38C8D12C8E61C3EED3D07A77ACFC3F9AB97A0ABBF3BEBC071EDDD67E178F769E81DB89AA76D31272DA304EA4A7643FFE035281D790F4C5F50';
wwv_flow_imp.g_varchar2_table(13) := '0EB3972CC83ACA17CD834933A6409AD970FACA05E8BC7AD19C6EE561A64609944C5D7310CEAC9C0DE3A64E8451E3CBB28EB2496360EA9CE9B070C562282A29824BC95E384712395C65EE8C1228CD6DA7C612B103394F14EE869516C1DC659530AC78185C';
wwv_flow_imp.g_varchar2_table(14) := '16129DEDEB52982DB8438D1248779B0A853CF39647A0A8B418BAAF5D81B37D9FE95EC2F7F3055A20EC2E4A347F796546A23E382324C20FEBF833832267A9065E20241F1E56082851C98852E8B9D60727C43734DC8D642E13C88CC14B0B78690273312D48';
wwv_flow_imp.g_varchar2_table(15) := 'A04CC750A2058F2F82F1532642CA4E8B5F697D595F2290B9AC8063F0D2025E9A38D9DB09A6ED7E24504620E7C16230ADA21CAABEF108CCAC98055F99719F2731F6AB13C00A5B707530E95C20757231E48E041AA25105E2C3F598291360CA9C699EC48CCA';
wwv_flow_imp.g_varchar2_table(16) := '59F06064AE9349327DFD5285F3C2803B1228D3A4D4C020B41FFE048EEC3F0487F7253C8F5347FFE36482BF3E9D2786DC9140A251BD177BA06D6F0B741C3B09972F5C82DEAE6EEFE362B7C8C4BC23F002755FB80847FE7E087007AA883E06DFFEDD7350FD';
wwv_flow_imp.g_varchar2_table(17) := 'E68F7212B9D04775CD400BF4D9C973F0EF968F209D4A43E4BB2B60EAAAF9102E2954651AA8F1460AF4C11FDE031D71347104EC940D5F7BFA1198F2F5EB1F6203D57D0DC51A29D0E439F7838E78E8F105B0F2C5284CFB4EA50694C19CC23C811883877FFA';
wwv_flow_imp.g_varchar2_table(18) := '2D2D31BB6E198C2A9F18CCCE6BAADA3C8134154ED3E8214002E9E118D85948A0C0B65EB1F0CC70122803821EE408904072DC68548600099401410F72044820396E342A438004CA80A007390224901C371A952140026540D0831C81EC05925B8746F99400';
wwv_flow_imp.g_varchar2_table(19) := '09E4D3C67A551609E415699FAE4302F9B4B15E9545027945DAA7EB90403E6DAC576591405E91F6E93A1E0AE45382012F8B040AB800AAE59340AA04033E9E040AB800AAE59340AA04033EDE2881424CA4CB39F49F31F3EF91DFC9B5BE8E4BCE8F9D1A9D67';
wwv_flow_imp.g_varchar2_table(20) := '66DC898E989128665914BEFED78E135BF6C2F9F809E8F9A4D317D179E0381C12355DAF71183E18132608F439CCB2A29110B642D079AC03DEDFFC36EC7DF94D5FC4FEDFEC86CE13679CDACA8A467C5EAF094F8C1208B7F769A326C3E4E163616CC968B8B7';
wwv_flow_imp.g_varchar2_table(21) := '78A42F026BC19AB036ACD104716EE46894403792BEA7A018F04FEA98E251E087C05AB02630F066A4400672F66DCA24906F5BEB4D612490379C7DBB0A09E4DBD67A5398AF05F20661B057218182DD7FE5EAE505B2D3F4CFFD29E3CF9309D276BF6C26F202';
wwv_flow_imp.g_varchar2_table(22) := '598C0492A59E6FE3147A292F1058D2D6E61B3FCA47BE97F202D9B403F9463C855ECA0BA4B0EDF906BC5F0A51E8A5B4408CC97FF0CA7BEE014B50A597D202F141FA15E617CF547A292D90357AA04B004C8AA0C36C02C94C2FA5AA9016A862EBB38362C556';
wwv_flow_imp.g_varchar2_table(23) := '1174984DA035D34BA92AA405C2D538C03EA09BD104547BA8249005360964B43E00AA3D5412E84A51F8A0E0479F830404438F64A687D2E92B09B47CFB7A210FDF2DBDBAEF069A5610DF7DBD87F2792B0984CBDA9CBF8A8F14E611D0D13B658116C5361EE4';
wwv_flow_imp.g_varchar2_table(24) := '00F46DCC307FB067D83BD5B49505C2042CDA85108351A1AB675A04BAD2D9F17B41AF43041D6610389DE99972B65A045ABEEFA514E3EC39E56C68026F0830BE097BA663312D02612295B1BADDC0D8667C4E91C704448F223B37ECD195A1368130216BF8E0';
wwv_flow_imp.g_varchar2_table(25) := '4FC46342041DD911F0E86CB62FD323D075D32A10FE379534586B80C365A05BBE11E8B4593A8A3DD29998568130B1879BD7B733C61F13CFDB45D0910704C457F64F39872717EDDCD8A93B1DED02618295CD1BFEC90BC315C0E03D7C4D9153027F85C2F0C2';
wwv_flow_imp.g_varchar2_table(26) := 'AA58FD6137B27045204CB4EA8DDAAEF6D4F0A718C0EBF89A22070438BCD29E1EFE04F6C2ADD55D1308135EB36B4DBAB2B97E93D8423789D70322E8F086403F008B4662F53FC61E808B375705BA91775573FDEBA974F87EE0ECE7E2BD5322E870874087D8';
wwv_flow_imp.g_varchar2_table(27) := 'F15F12ACA7479AEB62EE2C71F3AC9E08844B2EDE557B3A12ABFB85D852A78A1DE969E0B057BC2F9E8A7B3AA409888169E06C0F07FE4DC1F63EB1E3BF8CACC5FB9E1C9E0974A31ADC52C58EF4C748ACFE292B9D1A0D367F14387F1E80ED000EFF02809408';
wwv_flow_imp.g_varchar2_table(28) := '3A86269042468CC11B227E088C2D1BB80AA323B1BAD555CD1BFE846C871EE6DEBB9E0BF4FFA554EC7AB63BF2D686FD91D886CD62CB5D1789D5CF8D34D717082823206D4DB078681AE7301F802D61CC7A02185F1D84706A153563EDC80059201364838C2A';
wwv_flow_imp.g_varchar2_table(29) := '77D6D78A7835B2B3EEFDA5EFD4F7420E6F3915E876752394C8AEF5E72A62EB8EE3D7CF48735D4BE5CEF5EF46C425F8208453ABA8196B4706C80299DC8E572EDFCF4B81720984D6CE8E0009941D2F3AFB0B0448A02F00A197D9112081B2E3E59FB3355542';
wwv_flow_imp.g_varchar2_table(30) := '02690219D46948A0A0765E53DD24902690419D86040A6AE735D54D02690219D46948A0A0765E53DD24902690C199E6E64A49A09B79D0AB2C0990405902A3D36F26F05F000000FFFFA27B95BD0000000649444154030057A0808A0F2EF360000000004945';
wwv_flow_imp.g_varchar2_table(31) := '4E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6028715329618804)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000009FE494441547801EC9B4B6C1D5719C7BFFA99879D36896327B66312BB719A8414925252A2B45279556253D108812862CD02B16053818440486C5920587601122B';
wwv_flow_imp.g_varchar2_table(2) := '840A8815442A548816A2525502A5454EEAA6761227F1F3FA15DB89B9C724279665EBCEBD77CE99EF9CF38B32F199B933E77CDFEF3F3FE7DE78D2F0CFAFBDBACA068354EF8106E117041226800009874FEB2208C05D90340104483A7E9A4F5800C287006F';
wwv_flow_imp.g_varchar2_table(3) := '81B8071227C0DF0089DF00A9B78F00A9DF0189F78F0089DF00A9B78F0029DE01F46C09208045C1204502089062EAF46C09208045C1204502089062EAF46C09208045C12005021B7B44808D44D84F8A0002241537CD6E2480001B89B09F140104482A6E9A';
wwv_flow_imp.g_varchar2_table(4) := 'DD4800013612613F290209099054AE349B9100026404C569711240803873A5AB8C04102023284E8B930002C4992B5D652480001941057D1AC56F490001B644C30B291040801452A6C72D0920C0966878210502089042CAF4B8250104D8120D2FC440A052';
wwv_flow_imp.g_varchar2_table(5) := '0F08508910AF474D0001A28E97E62A1140804A84783D6A02081075BC34578900025422C4EB5113885880A873A3B99C0820404E2099264C020810666E549D130104C80924D384490001C2CC8DAA73228000398154350DC564268000995171628C041020C6';
wwv_flow_imp.g_varchar2_table(6) := '54E929330104C88C8A136324800031A64A4F9909204066549C1802816A6B44806A89717E54041020AA3869A65A0208502D31CE8F8A0002441527CD544B0001AA25C6F95111884880A872A1194F0410C0136896D149000174E642559E08208027D02CA393';
wwv_flow_imp.g_varchar2_table(7) := '0002E8CC85AA3C1140004FA09D2EC3E4351340809AD171610C04A2126066694E46666FCAD0D488BC37F1A193EDFDC9ABF261E986DC9C9F94D2D27C0CF740D23D4421C0CABDBB72B53426D7666FCBECD282987D57A9AEAEAECAC2F21D99589C91D1D95B32';
wwv_flow_imp.g_varchar2_table(8) := '3C735D96EEADB85A8E791D138842806B73B7657E79D131AACDA75F5C59922B53A332591662F33338AA9940F0024CDD99B5377F736BB31C397D5C3EFDA567E5DCF9CF3BD9CEBEF45939F9EC69E93BD62F8DCD4D36DBB1F25BA25B0B53769F811F02F5AE12';
wwv_flow_imp.g_varchar2_table(9) := 'BC00A5E587EFC3074E1E95AEC3DDD2B2BDB55E2E5B5EDFF048833CDAB947FA8EF7CBA7BE78567677EDB5E78E2F4CCBAD8549BBCF403F81E0055858F7D667774F8757E2CDDB5AE4C4B953B2AF77BF5D777C6146C6E627EC3E03DD048217E05EF943E903C4';
wwv_flow_imp.g_varchar2_table(10) := '8D4D0FDF923C38E6E3EBD1331F97CEBE0376A9C9C51212581ABA07C10BA005EFE0D32790404B1855D4810055C0AA74AA91E0C0A11E7B9AF99BE0FADCB8DD67A08F40C002E883692A1A78EA98AC9760BAFCAF544860C8E8DC10C0412E4682EE43BD766623';
wwv_flow_imp.g_varchar2_table(11) := '81F9A1D9DDD57BF618031D0410C0510EFD4F3D21BD037D7676F3D8C4E5A911195F9C96F9953BF638836209208043FE873E3928874F0E8ADCA76CFEC5EAD6FC945C9DB9E1E4392557CF3F9979CDF355E639AB99A53987C4FC4F7D3F1AFF0BA7B262CF609F';
wwv_flow_imp.g_varchar2_table(12) := '9CFEDC33B263575BD02D9BE7ABCC7356D7666FCB47A531A7CF5BF90485001E689B9BFFF4179E9163679E949EFE83D2BEE7D1FA562DF8EAB9F20F1FCDF357059791CBF208900BC66C93ECEDED94C3A78ECA279E7FDAC9734AAE9E7F32F39AE7AB8E9C3A2E';
wwv_flow_imp.g_varchar2_table(13) := '4DADCD6BCD9A870FCD87FBB59D80FF408080C3F359BA79BEAAABBF5BFA4F3C6E975DFF1C963D18D80001020BACE872F774EFB3259847C1ED4EA003047018DC42695E86DEBE24EF5C784BFEF6DB0B516C6FFDF10D4BCC7C30B63B810E10C0517023EF0DCB';
wwv_flow_imp.g_varchar2_table(14) := 'DB7FFABBDC181E95B9E95947ABA4376DDE1D2340DE44CBF30DFDEB920CFF67A83CE2B776020890734257DE795F6E7C306A67DDD7BF5F5EF8F137E52BBFFE6E349B6D2E820102E418E2F0BBFF956B573EB233EE1F3C28CFFDE0ABB26BA0C31E63A08B4083';
wwv_flow_imp.g_varchar2_table(15) := 'AE72C2ADE672F9C3EEC8D055DB40D7408F9C7DE5CBD2D0D2688F31D047202A01DEFDCB45F1BEBD7E51DEFCC3EB72BDFC61F741BCE6E63FF7BDF3D2B8AD98FFA1F6A00EBE5626109000959B298D4F8BF76D625AEE2EDFB5C5F53D3920E7BE7F5E1AB673F3';
wwv_flow_imp.g_varchar2_table(16) := '5B288A0751095024E78E43FBE5B96FBF28675E79511AF8CE5F641455AD1D95002FFCF065F1BEFDE81BF2D2ABDF91E77FF275E9FACC4055F039B978025109B06BB04BBC6F473A79AF5FFC7D5C730551095033052E4C96000284103D353A238000CED03271';
wwv_flow_imp.g_varchar2_table(17) := '080410208494A8D1190104708696894320800021A4448DCE08208033B44C9C0701D77320806BC2CCAF9A0002A88E87E25C134000D784995F350104501D0FC5B9268000AE0933BF6A028A0550CD8DE2222180009104491BB5114080DAB871552404102092';
wwv_flow_imp.g_varchar2_table(18) := '2069A3360208501B37AE8A840002680C929ABC1140006FA85948230104D0980A3579238000DE50B390460208A031156AF2460001BCA166A12C047C9F8300BE89B39E2A0208A02A0E8AF14D00017C13673D55041040551C14E39B0002F826CE7AAA082812';
wwv_flow_imp.g_varchar2_table(19) := '4015178A498400022412346D6E4E000136E7C2D1440820402241D3E6E6041060732E1C4D84000268089A1A0A23800085A167610D041040430AD450180104280C3D0B6B2010BC004D0D8D96E3CAEC921D3370436065F68E9D783D7B7B30B041F002B436B5';
wwv_flow_imp.g_varchar2_table(20) := '58E4939746ED98811B0213FF7EC8783DFB5A572BFABAE00578ACA5CD32BCF8CB0B72F31F1FC872E9E17729FB2283BA08AC94998EBD79592EFEEACF769EDDADED761CEA207801DA5B76C8CE96ED6BFCE7264BF2D79FBD26BFFBD62FE4372FFF942D4706AF';
wwv_flow_imp.g_varchar2_table(21) := '9599BEF1F3DFCBFCF4DC1AEBB632F3B6E6FF735F3B10E81FC10B60B81FD8B15776366F3343360F040CEB033B3B3CACE47E892804301FC60EB67749775B8798EF4C66DF3DBAB456304CDB5B7688616C58373E12C5AD23717471FF5EDCD5B2537ADB3AE5F1';
wwv_flow_imp.g_varchar2_table(22) := 'C77AE5893D1F63CB918161DAD3B64F0CE3FBB8A3F852A00051F0A389C0092040E001527E7D0410A03E7E5C1D380104083C40CAAF8F0002D4C78FAB032780004504C89A6A0820809A2828A4080208500475D654430001D44441214510408022A8B3A61A02';
wwv_flow_imp.g_varchar2_table(23) := '08A0268A340AD1D62502684B847ABC124000AFB8594C1B0104D09608F5782580005E71B398360208A02D11EAF14AC0A3005EFB6231086422800099307152AC041020D664E92B130104C884899362258000B1264B5F99082040264C759EC4E56A092080DA';
wwv_flow_imp.g_varchar2_table(24) := '6828CC070104F0419935D4124000B5D150980F0208E083326BA82580006AA389A330ED5D2080F684A8CF290104708A97C9B5134000ED09519F530208E0142F936B278000DA13A23EA7041C0AE0B46E2687402E041020178C4C122A0104083539EACE8500';
wwv_flow_imp.g_varchar2_table(25) := '02E482914942258000A12647DDB91040805C306E9884DD60082040305151A80B0208E0822A730643000182898A425D10400017549933180208104C5461141A5A9508105A62D49B2B0104C815279385460001424B8C7A73258000B9E264B2D00820406889';
wwv_flow_imp.g_varchar2_table(26) := '516FAE04721420D7BA980C025E08208017CC2CA2950002684D86BABC1040002F9859442B0104D09A0C75792180007960668E60092040B0D151781E0410200F8ACC112C010408363A0ACF830002E441913982258000C146A7A3F0D0ABF81F000000FFFFA5';
wwv_flow_imp.g_varchar2_table(27) := 'F69CC800000006494441540300C5294E5B522EE2C20000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6027552851618801)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D09745CD579C7BFFB4623C91B36C880176CF0825D56DB683366B1491B1A9A8425ADB1EC1283253BB4E9390D05525A1AA803A4E1B4E93969';
wwv_flow_imp.g_varchar2_table(2) := '7B922ED642E0604B71203421A7D034C5590CB6641B8C430E016262B3795F64C9B2AC9977F3DD411A4BE3913592DEBBF7BEB9FF39EF6ADEBC79EF7EDFF7FBDFF77FCB68248FF00001107096000CC059E951380810C100300A40C06102300087C547E96E13';
wwv_flow_imp.g_varchar2_table(3) := '50D5C300140534107094000CC051E15136082802300045010D041C25000370547894ED36819EEA61003D24F00C020E12800138283A4A06811E0230801E127806010709C0001C141D25BB4DA077F53080DE34300F028E118001382638CA0581DE046000BD';
wwv_flow_imp.g_varchar2_table(4) := '69601E041C230003704C7094EB3681CCEA61009944F01A041C22000370486C940A02990460009944F01A041C22000370486C94EA36816CD5C300B251C132107084000CC011A151260864230003C84605CB40C011023000478446996E13E8AF7A18407F64';
wwv_flow_imp.g_varchar2_table(5) := 'B01C041C200003C810F9ED9BFEB5E8D55B1BC6352F6E98D05C553F65FBE79F9CF6EAB2868B372DAEBF74D3D23557BEB2A4FEAA4DCBD694A2D9C720A50D6BA4B4529A29ED94864A4BA5A9D236436EE75F3A69005B963C31A379C99ACF352FADFDEAE6AADA';
wwv_flow_imp.g_varchar2_table(6) := 'E79A97D4BEDA5C55F701377978ECA8135DC5FE618AF91F11C9DD9D5D5D3BBB7CFF2D2F26DFF0A4B73D26E456CFF7B6A0D9C720A50D6BA4B4529A29ED94864A4BA5A9D2B6B9AA4E72FB40699ED29EC7801A0B2DCBEAA7BBE8064E1840F3B286B92CFA43CD';
wwv_flow_imp.g_varchar2_table(7) := '4BEB7ECACF6DBE48BE43C27B86A4785890B8858498CBE24FE286C90D029394E64269CF63408D05E9CBDFA8B1C16D437355ED57362FA99B932F28CE54475E1AC01B8BBF5BD8B2ACE18F58C86F3757D5ED26DF7F95213C4292AEE7E751DC30814036026A6C';
wwv_flow_imp.g_varchar2_table(8) := '2C24128F0A41AFF1D8D9D9BCB4FE9BCD55B5BFAFC614E5E123AF0C60EBE2DA997CCDF70FEDB1633BA5EFFF8848FC39114DE18609048642601A49F92522F17F6A4C6DAEAAFB9A1A6394478FC81BC01B8BBF35BAA5AAB69AC5F9793226DEE66BBEBF657D26';
wwv_flow_imp.g_varchar2_table(9) := '73C304024112982C881E54638CCF087ED65C5577971A7B410630D157A40D8077FADBDA6323364912752CCEB5260022A68B04C4755C7543BB3762C3E665F57FC8F3D64E032516490368A95AB3A8B9AAFE15DEE99FE523FE65031589F74120140242960A5F';
wwv_flow_imp.g_varchar2_table(10) := 'BEA0C6A21A93A1C408B9D34819803AE5E23BF9EB24792FF18E3F3F6436E81E04722420E7AB31D95C55FB941AA3396E64C56A91310076D905EDB1E2ED7C27BFCA0A724802044E2320EE688F15BDB669D99AD2D3DEB27441240C803F935DCE477C3EEA9393';
wwv_flow_imp.g_varchar2_table(11) := 'BFAC61E9D8415A590988199EEFBDFCF198CDBA82B685B904B2DA002449C137FABEC69FC97E878B29E4860904A240A0508D593E6B7DD4F664AD3500F58B172D550DDFE31B7D0FDA0E11F981407602F22B2D4BEBBEA3C672F6F7CD2FB5D2005E5AB4BAA03D';
wwv_flow_imp.g_varchar2_table(12) := '76EC193EEDFF9C7944C80004864E404A5ACE6379BD1AD343EF25BC2DAD34809113A63CC9257F861B2610C80702378F9A704183CE42728D659D01B454D53FCEA7FD4B732D00EB81403408883BD4D8B62D57AB0C80AF97EEE11B7F0FD80609F980401004D4';
wwv_flow_imp.g_varchar2_table(13) := 'D856633C88BE82EAC31A0368B9BDF61ABE5EFAE7A00A433F206023011EE3DFD8B2B4CE9A5F5BB7C200D45D52E991FAA8CF8A7C6C1C38C8296F08C492921AD4980FABA2C1F46BC50E773CD6F6089198417880800304F81ED7CC8FC7BCF9628D1B40CB92DA';
wwv_flow_imp.g_varchar2_table(14) := 'CBF9DAE87EF328900108E823A0C6FC963F6DB8425FC4EC918C1B802FE8314E2DC60D1308B84420964C268DFFA6A0510368AEAA5F20D4DF65734976D40A02DD04D4D80FFA866077D7393F19350022F94F39678A1541200F09F83275066CAC326306B07969';
wwv_flow_imp.g_varchar2_table(15) := 'EDAD5CF5026E9840C065020B9B97D67ECA1400630620A4B8C754D1880B02561190E26F4CE563C400B62DABBD900B567FA29B9F308180F304AEDFBC78CDB4E15218CAF6460CA0CB172B3859C10D1308800091A09877271978683700FEFC53EDF87719A815';
wwv_flow_imp.g_varchar2_table(16) := '2141C05A02BC532CEFDE37B4E6A8DD00362FA9ADE462D52580D642110C042C27304DED1BBA73D46E0031115377FF75D7897820603D0121BC217F1A30D4E2B41B009FE6682F72A870B01D086826A07DDFD06A00DBAAEA2631D02BB961020110C820C097C6';
wwv_flow_imp.g_varchar2_table(17) := '155B16FFE7D88CC5A1BED46A0009A21BB91AAE937F62020110C82420A417BB29736198AFB51A809402FFCD274C35D177E409F8E42D1A6C11C359DF1BCEC683DE56C8B983DE061B80804B0434EF23DA0C40AE5EEDF1B93FAEFF5D1ACCA875D004781FB942';
wwv_flow_imp.g_varchar2_table(18) := 'ED2B83DE70881B68338096B72E543BFF8821E689CD40C0150223B7FEFAC259BA8AD56600D2F771FDAF4B55C4893401E92773BE541E6EA1DA0C80A4D056D470A1607B10304A4078DAF6154F57A182E445BA62210E084499804FFEEFE9CA5F9B0190A009BA';
wwv_flow_imp.g_varchar2_table(19) := '8A421C108832014142DBC1529F01100C20CA8312B96B2590D3C132888CB418C0EAD5AB559C922012461F20E0008173747D14A876CCD079FEC1B629A3384801374C2000020313886FDD3AB178E0D586BF86160318E579B1E1A78A1E40C01D02B15861A18E';
wwv_flow_imp.g_varchar2_table(20) := '6AB518803726A6A5181DC0100304741018689F092A072D06D02505CE0082520CFD384140D73EA3C500FC4417AEFF9D18B628322802BAF6192D0690249C01043530D08F1B0474ED335A0C208E4B0037462DAA0C8CC099F699C08270475A0C4090879B8084';
wwv_flow_imp.g_varchar2_table(21) := '0708E44E20AFCE00883A73AF1C6B820008904F27B5DC38D77206003D410004EC240003B05317640502590904BD1006103451F407021122000388905848150482260003089A28FA03810811800144482CA4EA368130AA87018441157D82404408C0002222';
wwv_flow_imp.g_varchar2_table(22) := '14D204813008C000C2A08A3E41202204600011110A69BA4D20ACEA6100619145BF20100102308000443A99ECA2D693ED74A0E328EDEF38125A3B7CA2953A12F85E450092A18B6E0230806E1043793AE927E8B7AD1FD1CEA31FD2876D07D8008ED0413681';
wwv_flow_imp.g_varchar2_table(23) := 'B0DADEE3876957EB1E7AF3D0AE54DCE33083A1C8866D7A118001F4823198D9F6AE0E7A9777FC13899383D92CB07555DCDD6C06EAAC23B04ED1919504C24C0A063004BA093F491FB4ED2729657AEBA2914534A6646CA86DE459EAAFABA743A6660EF025C7';
wwv_flow_imp.g_varchar2_table(24) := 'AE637BC8977EEA357E80C06008C0000643AB7BDD8F8E1FE41DEEE39D7FE4989154FAC9ABA9FCA6EB68CEA2F250DB551CE7EA5B6EA04B2AAFA47871517736441D5D9DB4FBD85ECE0926908682999C08C00072C2746AA5241F69DB4F76A4174CBF72368DC8';
wwv_flow_imp.g_varchar2_table(25) := '72644EAF10F04CAC204625179C47A5372EA0B3CF2F49F7AE2E09D49980CA2FBD10332030000118C0008032DF4EF2E97FEF65A34BC6F57EA96DBE201EA3CBAE9D47E75E70EADFC87526BA5237096102DA64083D50D80160008324ECD3C7A7FE3D9BA91DB1';
wwv_flow_imp.g_varchar2_table(26) := '67DEC4F3ECCACBFB9880FA48527D52001330A146F462C200A2A7D96919F76702EA66E5692B630108F4220003E80523CAB3CA04CE9B3A315D42EA4C803F1D8009A49160260B0118401628515D34ABFC32EA6D025DC904A91B833081682AAA236B18800ECA';
wwv_flow_imp.g_varchar2_table(27) := '1A6328139878D1E474C41E13506704E9859801816E0230806E10F9F434A3F412CA3481775B3FA2239D6DF954266A0980000C2000883676A14C60F2CCA9E9D4D46F2DEE693F48EF1C799FDE6BDB47FB3B0E730BEF8B4B617D29EA40C7D1D417AF70469396';
wwv_flow_imp.g_varchar2_table(28) := '765833308061E1B37BE3697366D1A50BE652BC289E4E54DD0F50BFC874B0A335D42F2E85F585A8031D47525FBC525FC0522D5FBF1095162CE4191840C8804D777FCEC4F154FAC96BA864D2B9A653093CBE3A0B505F883A74A235F0BE5DE91006E080D205';
wwv_flow_imp.g_varchar2_table(29) := '450574C9D57368FE6716D1DC85E574F1BC4B68EAEC693465D645916CE74D9940F1E253FF6F76DFF1C3D49934F3ADCCA80F1F1840D4151C44FECA08468F1F4BE74F9F4C532F9F41175E3133926D56C5E554F9E9EBE99C09E3D3D5E32C208D625033308041';
wwv_flow_imp.g_varchar2_table(30) := 'E1C2CA3611987AE98C743AED5D27D2F3519FD1993F0C40276D43B14EB475D0913D87F2AE9D3C7E6AA7573737BBFC8421C2D10D0B0388AE7667CC3C7132416F6EDE41AFFCE025DAF2E246FAE5C66D79D77EB5697B1F06F802541F1C39BD8001E484295A2B';
wwv_flow_imp.g_varchar2_table(31) := 'B51E38425B7FFC321D787F2F25BB92D14A1ED96A250003D08A3BFC6047F71D4A1DE9BB4EE0AE78F8B4838FA0BB4718806EE221C63BB6FF08BDF1CA6BE4274EFD69B0B2AA4FD02DDFFA335AFCF4BD79D942C4E944D730803C91F9D8A156DAF1F2B6F4CE2F';
wwv_flow_imp.g_varchar2_table(32) := '621E7DE2AF17D3B4CFCEA5C27123F3A44A941134011840D0440DF47774DF61FAE52FB69EDAF93D8F167DE9362A9933C5403608192502308061AAB57D430B196DFFDF423B7EBE357DB34F08410BEFB98DC6975E38CCCAB0B96E0226E2C1008649FDD8C1A3';
wwv_flow_imp.g_varchar2_table(33) := '64B41D3EDAA782EBBEF8593A173B7F1F2678D13F011840FF6C22F5CE98F3C6D14D8FDE49E72F9819A9BC91AC5902308061F22FBD7D11996A654B6EA06BBEF0E9D4CDBE1BBFBE9C464F2F196635D8DC35023080612A3EFD96ABC8549B76F33C9AB47076EA';
wwv_flow_imp.g_varchar2_table(34) := '669F575C30CC4AB0B94902A662C3004C91475C10B080000CC002119002089822000330451E7141C0020230000B44400A6E1330593D0CC0247DC40601C304600086054078103049000660923E62838061023000C30220BCDB044C570F0330AD00E2838041';
wwv_flow_imp.g_varchar2_table(35) := '02300083F0111A044C138001985600F141C02001188041F808ED36011BAA8701D8A0027200014304600086C0232C08D840000660830AC801040C11800118028FB06E13B0A57A18802D4A200F103040000660003A4282802D046000B628813C40C0000118';
wwv_flow_imp.g_varchar2_table(36) := '8001E808E936019BAA8701D8A406720101CD0460009A81231C08D844000660931AC805043413800168068E706E13B0AD7A18806D8A201F10D0480006A011364281806D046000B629827C40402301188046D808E536011BAB8701D8A80A7202014D046000';
wwv_flow_imp.g_varchar2_table(37) := '9A40230C08D848000660A32AC809043411800168028D306E13B0B57A1880ADCA202F10D0400006A00132428080AD046000B62A83BC40400301188006C808E136019BAB8701D8AC0E7203819009C00042068CEE41C0660230009BD5416E201032011840C8';
wwv_flow_imp.g_varchar2_table(38) := '80D1BDDB046CAF1E063048850A44ACCF167E47A2CF6BBCD0472071FC649F6099DAF479132FB212800164C5D2FFC2022F4631CF4BAFD0F6DEC1F43C66F41268DB7D281D50E9A25A7A01667222706A24E7B43A565204C6158D564FA9B6EDA99F50C7DED6D4';
wwv_flow_imp.g_varchar2_table(39) := '3C7EE823D0B1A795B63DF99374C0B1BD34492FC4CC8004600003223A7D8592E271D473B4D9BF730F3D7F6F2DBD706F03BDF2F873681A18BCF057F5F4FC7DB57470D7DE94384A8B92E2B1A9799B7E44211718C01054F284A089A34A480891DEFAD8DEC3F4';
wwv_flow_imp.g_varchar2_table(40) := 'FE8E9D681A181CDB7724CD5D084193468F27A5497A216672260003C81955DF1547C547D0B4B193A8A820DEF70DBCD246A0B8A030A5C1C882626D31F32D100C60188A167A0534EDAC49349D8D401D854A468C25B470198C1F312E75C457CC2F3A6B22290D';
wwv_flow_imp.g_varchar2_table(41) := '8621A1F39BC20002180285B1389D55388ACEE5C189362E540EE3D964156BC53C00E942EB222A1D7B51491479820008044F0006103C53F4080291210003888C5448140482270003089E297A749C4094CA870144492DE40A0201138001040C14DD81409408';
wwv_flow_imp.g_varchar2_table(42) := 'C000A2A4167205818009C00002068AEEDC2610B5EA610051530CF982408004600001C244573770E0310000076C49444154201035023080A829867C4120400230800061A22BB70944B17A2D0690A0C26414E12067103045204EF1BE7FF030A444B418408C';
wwv_flow_imp.g_varchar2_table(43) := '240C202401D16D7E12E8127AF6192D06A0AB98FC1C0AA8CA4502BA0E9A5A0C4057312E0E14D46C0781A0B3F00AE289A0FBCCD69F1603D0554CB602B10C04A248209E4F9700B1B64447144540CE20608A807F2C993F37010BE3A38E9B0289B820104502BA';
wwv_flow_imp.g_varchar2_table(44) := 'F6192D970097ADBF5DB95967148540CE2030108110DEEFECDE6742E8BA6F975A0C408594447BD4331A0880C09909E8DC57B41900970C036008984060200282E8B7A4E9A1D100240C4093A808137502FAF6156D06E091F766D46541FE209049208CD782BC';
wwv_flow_imp.g_varchar2_table(45) := '3C3C0390FE6B84070880C0C00434EE2BDEC0D904B386F06230806050A2973C27A0735FD16600A5B377BDC5BAF9DC30810008F44FE078F7BED2FF1A01BEA3CD00C4EAD53E097A3BC0DCD11508182510467049B423B5AF84D179963EB519402AB694B80C48';
wwv_flow_imp.g_varchar2_table(46) := '81C00F10E88780145AF711AD0620496CE8A76C2C060110500484CC630388F9CF738D921B26100081D309C838D10F4E5F1CDE12AD6700F39F5EF53E97F23A374C201069022125FFFA558D351F86D477D66EB51A80CA409078413DA3810008F4256062DFD0';
wwv_flow_imp.g_varchar2_table(47) := '6E00444918405FDDF10A0452049232F95C6A46E30FED0620CEF237F24D805D1A6B442810880001B1BB63EF075B7427AADD00CAFEEBEE2E2EF2096E9840209204C2485A926CB861C36A2D7F07B077FEDA0D40058F7BB2819FF944807F6202011048C49289';
wwv_flow_imp.g_varchar2_table(48) := '7A13188C18C0556B57EE2249FF6BA260C40401DB08F0D1FF4765EBEFDE6D222F2306A00A15C27F5C3DA38180EB043C92DF34C5C098019437AEDAC067012F9A2A1C714160280402DF46D28BA97D21F08E73EBD09801A8F424D103EA190D045C25E015785F';
wwv_flow_imp.g_varchar2_table(49) := '3659BB5103A86CAAD9CED73FFF6D120062838029026AEC973DBD6287A9F82AAE510350091424E97E3E136853F36820E01081F6982CB8CF74BDC60DA074FDCA773C410F990681F82030108120DFE783DEFD654D77FD26C83E87D29771035049BF9B18F36F';
wwv_flow_imp.g_varchar2_table(50) := '0CE4176A1E0D041C20B0B1B2B1E63F6CA8D30A03B87DFDEDC982A45CC126804B011B460572089340BB276377861960307D5B61002AE1EE4B81BB78DEE7860904F29180CF07B9CFDB70EADF03D71A03500995AFAB798624FD9D9A4703019B0804918B1074';
wwv_flow_imp.g_varchar2_table(51) := '1F9FFA7F3F88BE82EAC32A0350455534D53C4E82D47705D44B3410C80F0242FC0B1FE08CFDC65F7F10AD330095A83726713791F831E10102F941E0FBE5B377DF6B6329561A80FACAB0D7DE752B917896F00081081350BFECE3B527EED0F9A7BE0783CB4A';
wwv_flow_imp.g_varchar2_table(52) := '03500594FDF0EEE3E58D2BFE84483C467880804102430F2DBE5ED158739B1ACB43EF23DC2DAD350055B620212B1AAB1F9292D4C72649B50C0D042240E02449BA83C7EE836A0CDB9CAFD506D003AEB2A9E6498FC4357C73F0D73DCBF00C02561290B4833F';
wwv_flow_imp.g_varchar2_table(53) := 'EABB866F663F6D657E19497919AFAD7D59D658BDB9BDC89BCB70BFCA497671C3040236115063F2516F6CA2943FEAD3FEB7FD860A223206A00ABCE189152718EE6A29939793143F54CBD040204C0239F42DF9A0F4BD58525E5AD158F3B0BA819DC336D6AC';
wwv_flow_imp.g_varchar2_table(54) := '122903E8A156D9F485B72A9AAA6F16BEBC96976DE48609040C10101B044975C45F5CBA7EE53B06121876C8481A404FD5E5DF5DB9915DF75A5FFA57B30B3FC5CB3BB9610281300974F2BDA8A7D5C1A7A2B1FA86F2C695AF86192CECBE236D003D70E637AD';
wwv_flow_imp.g_varchar2_table(55) := 'DAC49706CB3D91B880487E999BF1AF59F6E486E7BC21B0530AF1801A6315EB6AEE50079F7CA82C2F0CA04788B275771FA8685CF90D6E33A5273E4592BECDEFBDC70D13080C9A006FC06347FEBB10FE8D158D35332AD755FFA31A63BC3C6FA6BC3280DEAA';
wwv_flow_imp.g_varchar2_table(56) := '54AEAD7EB1A2A9E62F58B8A97C97662E9F153CC4A76E3FE375DAB96102816C04DABBC7C8C3E479F3D4D8E183C917CBD7ADCADB5F4BCF5B03E8AD6E6553CD7616F2B18A75350B59D4D1C2133348FA7F4C423EA27E5593A47C8DD7D7FA5F59391E2673043E';
wwv_flow_imp.g_varchar2_table(57) := '549AA7B4E731403C163C199BA9C646F71879B462ED0A3526CC65A829B2130690C9B27C6DF5CE8AA655CF56AC5BF9F7958D2B6FAD685AA9DC7E320F0071F6D1F6E2F809EF6C4A7A1389C4D4A2787C7ADCF366F94971992FFC3949294A7DCF2F43B38F414A';
wwv_flow_imp.g_varchar2_table(58) := '1BD64869A53453DA290D95964A53A5ADD298DB64A5794A7B1E03153C16CA2CF8F35C64E0E1A4019C89F3C5FFF3979DF39E5B71A462FD8A3D158DD5EFCD796AF9BBF3D6AE787BFEFAEA5FCD5FB7EAF5AB9BAAB7CD5FBB6A2B9A7D0C52DAB0464A2BA599D2';
wwv_flow_imp.g_varchar2_table(59) := '4E69A8B4549A2A6DCFA47DEFF75C998701B8A234EA04812C04600059A0601108B8420006E08AD2A81304B2108001648182456E1370A97A18804B6AA35610C8200003C800829720E0120118804B6AA35610C8200003C80082976E1370AD7A18806B8AA35E';
wwv_flow_imp.g_varchar2_table(60) := '10E8450006D00B066641C035023000D71447BD20D08B000CA0170CCCBA4DC0C5EA61002EAA8E9A41A09B000CA01B049E40C045023000175547CD20D04D0006D00D024F6E1370B57A1880ABCAA36E1060023000868009045C250003705579D40D024C0006';
wwv_flow_imp.g_varchar2_table(61) := 'C01030B94DC0E5EA61002EAB8FDA9D270003707E080080CB0460002EAB8FDA9D270003707E08B80DC0F5EA7F070000FFFFBDE30AAD00000006494441540300CE3FEAC4375F4D390000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6027813575618803)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000100494441547801EC943B0AC24010867F13DF2F2C442B9F88202A8860A34710B1F51A1EC843D87B020B7B41143BC14A254441B39A2E09D1918D9266023F2C1B66';
wwv_flow_imp.g_varchar2_table(2) := 'E6E3637795E56426FC8C029F3F0660036C800D90068EC6055A3660CB49D16108F193278C0488E7D228B56BB694074D9C42D71784E1198204709BA00655D4FA2D8852D266C669CAB4E7566FDD9302100F03FBF50EE97A1EB94EF96D62858C7596EB9A0410';
wwv_flow_imp.g_varchar2_table(3) := '1105BA7AB7E516057AD321AAE3EEC7E41B45D7A1D64D12C06CE21C541975104C84AD7DA4D7248074E72F0B19800D90060ECB0DB6F39554CC5AEA2C9200A9B30A6DB1938A59EB19806AE0F53F69C0EB00AA9E01D8001BF8BB01EA1A3E010000FFFF9B8294';
wwv_flow_imp.g_varchar2_table(4) := 'D800000006494441540300838CE00188D853250000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6028472306618803)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD598C1CF79D1FF05FF7909C21393C2492BA298B92AD9B224552B7B45ED996EDC481D736B089770D6C02246FC126C881CDC33E7891970001';
wwv_flow_imp.g_varchar2_table(2) := '82204090B7207949366B600324400E78BD1B6FD65AC3F25AB60E4BB2E443B24889A4780C6F72CEAD1A49D6C5EEE999E9A3AA7E1F8A2D925DD555FFEFE7D73DF39DEE39DA4F7DF53F2EB830701F701F701F701F701FC8751F68875F040810204080403281';
wwv_flow_imp.g_varchar2_table(3) := '080520DDC8052640800001020A80FB00010204081048275006F60C40A9E042800001020492092800C9062E2E010204086417783BBF02F0B683FF13204080008154020A40AA710B4B80000102D905DECDAF00BC2BE14F02040810209048400148346C5109';
wwv_flow_imp.g_varchar2_table(4) := '10204020BBC07BF91580F72CFC8D0001020408A4115000D28C5A5002040810C82EF0FEFC0AC0FB35FC9D000102040824115000920C5A4C02040810C82EF0C1FC0AC0073DFC8B0001020408A4105000528C594802040810C82EF0E1FC0AC08745FC9B0001';
wwv_flow_imp.g_varchar2_table(5) := '02040824105000120C594402040810C82EF0D1FC0AC0474D5C4380000102041A2FA000347EC40212204080407681CBE557002EA7E23A0204081020D0700105A0E103168F00010204B20B5C3EBF02707917D7122040800081460B28008D1EAF7004081020';
wwv_flow_imp.g_varchar2_table(6) := '905DA0537E05A0938CEB09102040804083051480060F573402040810C82ED039BF02D0D9C6160204081020D0580105A0B1A3158C00010204B20B74CBAF0074D3B18D00010204083454400168E860C52240800081EC02DDF32B00DD7D6C2540800001028D';
wwv_flow_imp.g_varchar2_table(7) := '1450001A3956A10810204020BBC052F91580A5846C2740800001020D1450001A3854910810204020BBC0D2F91580A58DEC4180000102041A27A000346EA402112040804076815EF22B00BD28D9870001020408344C400168D840C52140800081EC02BDE5';
wwv_flow_imp.g_varchar2_table(8) := '57007A73B217010204081068948002D0A8710A4380000102D9057ACDAF00F42A653F0204081020D0200105A041C3148500010204B20BF49E5F01E8DDCA9E0408102040A031020A4063462908010204086417584E7E0560395AF62540800001020D115000';
wwv_flow_imp.g_varchar2_table(9) := '1A3248310810204020BBC0F2F22B00CBF3B237010204081068848002D088310A4180000102D905969B5F0158AE98FD09102040804003041480060C510402040810C82EB0FCFC0AC0F2CDDC820001020408D45E4001A8FD08052040800081EC022BC9AF00';
wwv_flow_imp.g_varchar2_table(10) := 'AC44CD6D081020408040CD0514809A0FD0F20910204020BBC0CAF22B002B73732B0204081020506B0105A0D6E3B37802040810C82EB0D2FC0AC04AE5DC8E0001020408D4584001A8F1F02C9D00010204B20BAC3CBF02B0723BB7244080000102B5155000';
wwv_flow_imp.g_varchar2_table(11) := '6A3B3A0B2740800081EC02ABC9AF00AC46CF6D0910204080404D0514809A0ECEB20910204020BBC0EAF22B00ABF3736B0204081020504B0105A09663B36802040810C82EB0DAFC0AC06A05DD9E0001020408D4504001A8E1D02C9900010204B20BAC3EBF';
wwv_flow_imp.g_varchar2_table(12) := '02B07A4347204080000102B51350006A37320B2640800081EC02FDC8AF00F443D131081020408040CD0414809A0DCC720910204020BB407FF22B00FD7174140204081020502B0105A056E3B25802040810C82ED0AFFC0A40BF241D870001020408D44840';
wwv_flow_imp.g_varchar2_table(13) := '01A8D1B02C9500010204B20BF42FBF02D03F4B47224080000102B51150006A332A0B2540800081EC02FDCCAF00F453D3B10810204080404D0414809A0CCA320910204020BB407FF32B00FDF574340204081020500B0105A01663B24802040810C82ED0EF';
wwv_flow_imp.g_varchar2_table(14) := 'FC0A40BF451D8F0001020408D4404001A8C1902C9100010204B20BF43FBF02D07F5347244080000102951750002A3F220B2440800081EC0283C8AF000C42D531091020408040C50514808A0FC8F20810204020BBC060F22B008371755402040810205069';
wwv_flow_imp.g_varchar2_table(15) := '0105A0D2E3B13802040810C82E30A8FC0AC0A0641D97000102040854584001A8F0702C8D00010204B20B0C2EBF0230385B47264080000102951550002A3B1A0B2340800081EC0283CCAF000C52D7B1091020408040450514808A0EC6B20810204020BBC0';
wwv_flow_imp.g_varchar2_table(16) := '60F32B0083F57574020408102050490105A09263B12802040810C82E30E8FC0AC0A0851D9F000102040854504001A8E0502C8900010204B20B0C3EBF0230786367204080000102951350002A37120B2240800081EC02C3C8AF000C43D939081020408040';
wwv_flow_imp.g_varchar2_table(17) := 'C50414808A0DC4720810204020BBC070F22B00C3717616020408102050290105A052E3B01802040810C82E30ACFC0AC0B0A49D87000102040854484001A8D0302C8500010204B20B0C2FBF02303C6B67224080000102951150002A330A0B2140800081EC';
wwv_flow_imp.g_varchar2_table(18) := '02C3CCAF000C53DBB9081020408040450414808A0CC2320810204020BBC070F32B00C3F57636020408102050090105A01263B00802040810C82E30ECFC0AC0B0C59D8F000102040854404001A8C0102C8100010204B20B0C3FBF02307C73672440800001';
wwv_flow_imp.g_varchar2_table(19) := '0223175000463E020B2040800081EC02A3C8AF008C42DD390910204080C088051480110FC0E90910204020BBC068F22B00A371775602040810203052010560A4FC4E4E80000102D90546955F011895BCF3122040800081110A280023C4776A02040810C8';
wwv_flow_imp.g_varchar2_table(20) := '2E30BAFC0AC0E8EC9D9900010204088C4C40011819BD131320408040768151E6570046A9EFDC04081020406044020AC088E09D9600010204B20B8C36BF02305A7F672740800001022311500046C2EEA404081020905D60D4F91580514FC0F90910204080';
wwv_flow_imp.g_varchar2_table(21) := 'C00804148011A03B25010204086417187D7E0560F433B00202040810203074010560E8E44E4880000102D905AA905F01A8C214AC8100010204080C5940011832B8D3112040804076816AE45700AA3107AB2040800001024315500086CAED640408102090';
wwv_flow_imp.g_varchar2_table(22) := '5DA02AF91580AA4CC23A0810204080C01005148021623B15010204086417A84E7E05A03AB3B0120204081020303401056068D44E4480000102D905AA945F01A8D234AC8500010204080C4940011812B4D3102040804076816AE55700AA350FAB21408000';
wwv_flow_imp.g_varchar2_table(23) := '01024311500086C2EC2404081020905DA06AF91580AA4DC47A0810204080C01004148021203B05010204086417A85E7E05A07A33B12202040810203070010560E0C44E4080000102D905AA985F01A8E254AC8900010204080C5840011830B0C313204080';
wwv_flow_imp.g_varchar2_table(24) := '4076816AE65700AA3917AB2240800001020315500006CAEBE004081020905DA0AAF91580AA4EC6BA0810204080C00005148001E23A34010204086417A86E7E05A0BAB3B1320204081020303001056060B40E4C80000102D905AA9C5F01A8F274AC8D0001';
wwv_flow_imp.g_varchar2_table(25) := '0204080C4840011810ACC3122040804076816AE75700AA3D1FAB2340800001020311500006C2DAEC832EC442CC2FCCC7CCFC6C5C9A9B8E8B892ED373338BB967E7E7160D160A8B664F5B3A0204562A50F5DB2900559F5085D657BEC33F3773214E5C3C1D';
wwv_flow_imp.g_varchar2_table(26) := '6F9C3B16AF9F391AAF9E3E1CAF25BABC7AFACDC5BC07CF1E8D37CF1D8F63174EC599E9F3315714A20A8DCA52081020B0A48002B02451EE1DCA776C87CF9F88974FFE327E7EEA8D78BD78C7F7D6F9A9383B7D21CA8F8617161622D365BEC85B7EF47F7176';
wwv_flow_imp.g_varchar2_table(27) := '7AF11DFFF1A2001C3AFB56FC74EAE0A2CF91C2AA7C4624F7BD467A020422AA6FA000547F46235BE174F1147FF991EED4C533C5D3DD6FBFA3F78CF7E5C75196A0B2109D2CAC0E16CF8CBC75616AD1ECF27BBB96000102A3175000463F83CAADA078571F47';
wwv_flow_imp.g_varchar2_table(28) := 'CF9F2C3EA23D1417662E556E7D555F50F90C41F9CCC0CF4F1D8AD3D3E7AABE5CEB23406000027538A4025087290D718DE5D3D7AF9C7C7DF1757E1FEDAF0EBE2C02E5E7099497799F23B03A4CB72640A0EF020A40DF49EB7BC0C5D7FBCF1DF7D4751F4758';
wwv_flow_imp.g_varchar2_table(29) := 'BE3470EAD2D93874EED8E2570FF4F1D00E4580406505EAB13005A01E731ACA2A8F15AF5B979FDC369493253BC9B9E90BF18B536F2C7EE264B2E8E2122050510105A0A28319F6B22ECC5E8AA9E223D55ECEDB6AB5624D7B2C26D68DC7E4C60D31B969536C';
wwv_flow_imp.g_varchar2_table(30) := 'DADCECCBE4A6C9D838B931D6AE5913ED227F2F4E1FDE677E6121CA2F232CAD3FBCCDBF0910688E405D9228007599D400D7395FBC3E7DF8FCF1C52FE75BEA34EBD74EC4C7AEDB19B7DF7E5BDC71EFEEB8F3FEBDB1FB917B63F763FB1B7BB9EB81BD71D7BE';
wwv_flow_imp.g_varchar2_table(31) := '22EBFE7BE28EFBEE898FEFBE2DAEBF79676CDD71454C6C988856BBB514DBAFB6CF1725A0FCCA0A25E05724FE4280C08804148011C157E9B447CE9F8C4BB3335D97D46EB5E2A69B6E8A3D9FBE3F6E78F0D6D87AC775B1F186ADB1EECA0D31B6715DB4278A';
wwv_flow_imp.g_varchar2_table(32) := '8F8C1B7A59B3793CD66EDF18E3C565F37557C6559FB82176DD7B5BDCFD6BFBE3C0DF78341EF8DC638B85A0786AA0ABE1BB1BE7E6E7E397678E8412F0AE883F093449A03E591480FACC6A202B2D3FEBBFFCEE7EDD0EDE6EB7E3E63DC547BD7B6F8E35C53B';
wwv_flow_imp.g_varchar2_table(33) := 'FB6EFB66DCB666C3BAC54270C7237B637CCBFA881E9E10283F39B07C26E07CF1D24BF845800081110828002340AFD229CF4C9F8BD9F9B9AE4BBA7AE7B571CD2D37446BCCDDA51BD4B6ABB6C5FEC71F2CAC7646AC59BA05CC15CF041C2C9E09284B58B7E3';
wwv_flow_imp.g_varchar2_table(34) := 'DA4680407D04EAB4D2769D166BADFD17989E9BED7AD0F59B37C4F577DCD4751F1BDF13688F8DC5C78B674BF63E7A20D64D8CBFB7A1C3DFCACF09287F968297033A00B99A00818109280003A3ADC781CB1FF0D36DA5DBAFBE2A2636164F6B77DBC9B68F08';
wwv_flow_imp.g_varchar2_table(35) := '4C6EDB12773CBC272626273EB2EDC357942F07943F4FC0CB011F96F16F027513A8D77A15807ACDABAFAB5D8885257F8ADD966D5BFB7ACE4C07DB74C5E6B875FFDDB16EE3D22560B67819E6752F0764BA7BC84A60E4020AC0C84730DA05CC15EF783AAEA0';
wwv_flow_imp.g_varchar2_table(36) := 'B8774C6CDAD071B30D4B0B6CDEBE35EE79785F8CAF1F5F72E7F29980F2E500CF042C496507029514A8DBA28A37F1755BB2F5F65360BE7816A0D3F1C6DA63D16EB53B6D767D8F02139B37C41D0FED2D5E0E58FAA594B204BC71F62D5F22D8A3ADDD081058';
wwv_flow_imp.g_varchar2_table(37) := 'B980B7EE2BB7ABFD2D1716225AC57FD1E157B9ADD56A75D8EAEAE5084C5EB1296EDB7F57ACDBD0DBCB01E5F709F0D501CB11B62F81510BD4EFFC0A40FD6666C53515D854BC1C70F7C37B637CDDBA251394CF04FCF2F4E1F072C092547620406085020AC0';
wwv_flow_imp.g_varchar2_table(38) := '0AE1DC8CC04A04366C998CDBCB6F18B461E9CF0928BF44F0D0D9A35E0E5809B4DB1018B2401D4FA700D4716AD65C6B814D576E8E3BF7DF13E33D9480B979DF36B8D6C3B67802151650002A3C1C4B6BAEC0C6ABB6C41DF7172560BCB797037CDBE0E6DE17';
wwv_flow_imp.g_varchar2_table(39) := '246B82403D332800F59C9B553740A0FC6641773E726FAC5DBF7409289F09F06D831B3074110854484001A8D0302C259FC0C62B36C5DD07F6F4F47240F939016F7F9F808BF9A02426506181BA2E4D01A8EBE4ACBB3102E5CB01B7DF5F948089A59F0928BF';
wwv_flow_imp.g_varchar2_table(40) := '3AE0D0D9B7E2FCAC12D0983B8020044624A0008C08DE6909BC5F60D3B6CD71D7C3FB62A287EF1350BE1CF0FA99A34509B8F4FE43F83B01022311A8EF491580FACECECA1B26B0E18AC9B8EBC03DD1CB0F5F2A9F09287F76C0D9990B0D5310870081610928';
wwv_flow_imp.g_varchar2_table(41) := '00C392761E023D08ACDFB1396EBFEFEE18EFF1E580F2AB03CE4C9FEFE1C8762140601002753EA60250E7E9597B2305CAAF0EB8FB91FDD1CB0F102A7F9443F939016F9E3B16D3F3B38DF4108A0081C10828008371755402AB1258BF7563DCB16F774C6C58';
wwv_flow_imp.g_varchar2_table(42) := 'FA070895273A75E95C1C3A7B344E4F9F2B3AC14279950B01020317A8F70914807ACFCFEA1B8699535100001000494441542C3079CDD6B86DDF9DB1AE876F1654325C9A9D8937CE1E8BC3E74EC4DCC27C79950B0102043A0A28001D696C20307A814D575F';
wwv_flow_imp.g_varchar2_table(43) := '11F7945F1D30B1F4CF0E7877B5A72E9D8D9F4D1D8CF29304DF3C773C8E5D3815E575E5270C9E9FBDB4F8D503FEACB7C385628EE54F8B9CF1B2CFBB77FB91FC59F7932A00759FA0F5375E60E2CAC9B8FDC0EE58BF7143CF59CB6F1A746EE6E2E23BFE6317';
wwv_flow_imp.g_varchar2_table(44) := 'A6A22C0207CF1C8D5F9E39BC580CCA72E072A4B61687CEBE553CD3733C0E9F3FB1783971F17451EC2E465908CAD9F77C47B1636A010520F5F885AF8BC0E4D55B63F783F7C6E4A6C9D52D7921A2FC124297855A3BCCCECFC5C5D9E938377D21A62E9E89A3';
wwv_flow_imp.g_varchar2_table(45) := 'E74FC62F4F1F299EF939143F3B7530DE2A4A9F22B0BA87CAD2B7AEFF1E0A40FD6728411281755BD7C73D8FDF1757ECB832496231572230373F1FC78B977D5E3BF3E6E2B3022B3986DBE41068E7882925816608B4D78EC51D0FEF89EB6ED91931D66A4628';
wwv_flow_imp.g_varchar2_table(46) := '290622507E52E8EBC5CB3E278B9707067282E4076D427C05A00953942195407BCD58DCBCF7B6D8F3C881D8B6635B841E107E5D5EA07CA9E748F1F2C0ABA7DF5CFCFC80CBEFE5DAAC020A40D6C9CB5D7B814D3BB6C4ED8FED8DBB1FDB1F9BB66D89B1310F';
wwv_flow_imp.g_varchar2_table(47) := 'E7DA0F754001CACF17283F4F60DE9787F649B81987F116A319739422A940ABD58AAD3BAE887B8A12B0FB917D71FDAE1B62BCFC81425E1E487A8FE81CFBCCF4F93871F14CE71D6C4927A000A41BB9C04D1468151FFD4FEED81ABBF6DD1EFB3FF560EC39B0';
wwv_flow_imp.g_varchar2_table(48) := '373E76CB4D71EDD5D7C4B6AD57C6D64D5B6272C3C6989CD8B0789958371E6BD6AE71A9B3C1D858B4DACB7BFDE7D8C5A928BF7F40F8B52A81A6DC580168CA24E520F08E407B7C4D6CBA615BECDCFBF1B8E5D1BBE38E4FED8BBB9FB82F763F717FDCF6E97D';
wwv_flow_imp.g_varchar2_table(49) := '8B97BB8A7FEFF96C51145CA2AE0E7B3FFF50ECFDF40371E7FD7BE2964FDC12EBC727DEB90774F9632116BF7FC0ECFC5C979D6CCA22D0CE12544E026905CA0F128BCBD89AB1583F31E1D210838922C7C6CD9371E5CE1D71EDDD37C59E4FDE1737DE786394';
wwv_flow_imp.g_varchar2_table(50) := 'CF0675BBAF979F0F70FCE2A96EBBD8D655A0391B1580E6CC52120204B20A142F05ACD9341E37DE776B7C62CF6D517EB968378AF3B317FDBC886E4049B6290049062D2601023904AEDA757D94976E6967E666E3DCCC856EBBD8D641A049572B004D9AA62C';
wwv_flow_imp.g_varchar2_table(51) := '04081028046EBCE5C6185F3F51FCEDF2BFE763C1F705B83C4DAA6B158054E3169600810C026BD78FC7F6EB76748EBA10313D37D379BB2D1D049A75B502D0AC794A4380008168B55A31B97D6BC49A76478DE9F9D98EDB6CC821D0F9DE9123BF9404081068';
wwv_flow_imp.g_varchar2_table(52) := '94C0C2DC7C5C3C733EA64F9F8F28FEDE295CF979009DB6B9FEF2024DBB560168DA44E569AC40F97DDD672E4DC7E9C327E2E82B87E2D5675E8997BFF77CBCF4E48FE285EFB83078FB3EF0E2779F8D9F7CFFC771F0B58351BCD4DFF1F1507E5BE0856E3B74';
wwv_flow_imp.g_varchar2_table(53) := 'BCA50D4D1150009A3249391A2B507E4477FC9537E2C53F7B3A7EF07F9E8C679F7C3A5E7EF6C538F8D3D7E2E8C1C371ECF0B13871C485C17BF78133274FC5CCF94B5D1F130BC5D685F27FC59F7EF722D0BC7D1480E6CD54A206099C79FD78BCF4ADA7E3C5';
wwv_flow_imp.g_varchar2_table(54) := '675F881353276376CE77706BD07845213052010560A4FC4E4EA0B3C0B1170FC6CB3F7C218E9F9DEABC932D04080C45A0892751009A3855996A2D50BED6FFF3BF7A295E7AE1A5B830D3FD69DC5A07B5780204462AA0008C94DFC9097C50607E6E3E5EFADE';
wwv_flow_imp.g_varchar2_table(55) := '73F146F9095C1FDCE45F04088C4CA0992756009A3957A96A283057BEF37FEAB9387EE8680D576FC90408D44D4001A8DBC4ACB7910273B373F1DC5FFC559C78E3AD46E6138A409D059ABA7605A0A99395AB360233172EC5F34F3E1D678F9FEE69CDAD562B';
wwv_flow_imp.g_varchar2_table(56) := 'B6EFBC3AEEFCCCFE78F41FFCCDF8F43FFFCD78E2F7BFEAC260F13EF0B9AF7F2D1EFF275F89BB3F735F4FF7273BE51568E78D2E3981D10BCCCECCC54B4F3D1F678E9DEA69311B2637C683BFF3D978E49FFE46DCF5F73E19D73E7E7B5C79EFCED87AE7752E';
wwv_flow_imp.g_varchar2_table(57) := '0C16EF039B6FBD3AB61FB8296EFDDB0FC4F8E6CE3F10A8A73B9C9D22A2B9080A4073672B59C505E66666E3F9FFFFFD3875ECE4D22B2D3EEADFFD8587E2F3FFEEEFC70D9FBD2BD65D3519D10ABF087414688FAF8D892DC5FDA4E31E3664175000B2DF03E4';
wwv_flow_imp.g_varchar2_table(58) := '1F89C0F4B94BF1E25F3E1367A7CE2E7DFE76ABF8A8FF89C58FE8C626D62CBDBF3D081402E5B7F96D17F79DE2AF7EAF42A0C93755009A3C5DD92A29307369365EFEFEF331D5C347FEAD763BF6FEAD47E286CFDC15ED2E3FD9AD92412D8A00814A0B280095';
wwv_flow_imp.g_varchar2_table(59) := '1E8FC5354DE0E2B98BF1CCB79F8AA9E33D3CED5F84BFEF4BBF169FF83BF747CB47728586DF04862DD0ECF32900CD9EEFAAD2CDC77CB4D78DADEA186EFC9EC0C9D78F16AFF9FF202E9E3DFFDE951DFE567EE4FFC06F7D3A6EFC8DBD1DF670350102045627';
wwv_flow_imp.g_varchar2_table(60) := 'A000ACCEAFD1B79E9F2F2AC0F99946671C54B885B98558989B8FB9E9D9387EF858BCF0BD67E3C73F782E2E9EBFB0E429CB77FE07BEF858ECFCFCEE6879DA7F492F3B10189440D38FAB00347DC2ABC9371FF1CC0F9E899FFCE0F978E5872FBE7D79FA8578';
wwv_flow_imp.g_varchar2_table(61) := 'C5A5BB4161F5D31FBE102F7CF747F1F4B7BE1B2FFEE58FE2C4C1A311452958721CAD887BBFF050DCF49BFBBDF35F12CB0E0408AC464001588D5E82DB5E9C3A1B6FBD7A388EFCE2501C79B5B8BCF6461C71E96E505ABDF6669C3C72222E5DB814B1D0E31D';
wwv_flow_imp.g_varchar2_table(62) := 'A578E7BFEF4B8FC5AEAF1CE8F106762340607002CD3FB202D0FC19F72761F94EAC7846205C624983D26A99EAC5FBFED8FBB90763D717F7F9BC8B65DAD99D0081950928002B73732B027D1358D31E8BBD9F7F283EFEB587BDF3EF9BAA0311589D40865B2B';
wwv_flow_imp.g_varchar2_table(63) := '0019A62C636505D6AF1D8F077FFB3371F3571F8C96476365E76461049A28E04D4E13A72A53E505C6DAEDD879C3CEB8FF779E886B3E7B67B4D7962F02547ED916482089408E980A408E394B59018156AB15E5D3FDDBB66F8B7BBFF068ECFBBD2FC4559FBA';
wwv_flow_imp.g_varchar2_table(64) := '355A63DEF957603C9640209D8002906EE4020F53A0DD6AC5C6B513B1F3DAEBE3DE271E8ACFFCFE6FC7E3FFF6EFC6AEAF1E8875DB360C7329CE4580408F0259765300B24C7A8539F77CF99178E2EB5F8B5FFFDD2FC7277FF74B2E3D1AFC7AB1DFE3FFE8CB';
wwv_flow_imp.g_varchar2_table(65) := 'F1F83FFE4A3CFACFBE14BBFFE113B1EBB7EE8B4DB7EF08AFF5AFF0CEE8660408F4554001E82B67B30EB666C3BAF8F8170FC4D65BAF8E1D0FEE8AAB1EBCD9A547831DC57EDB1FD81557DEF7B1D8BCFBBAD8B8EB4A9FE1DFAC8787348D15C8134C01C833EB';
wwv_flow_imp.g_varchar2_table(66) := '65276D472B66CF5C5AF6EDDC8000010204AA2FD0AEFE12AD705402AD562B1666E646757AE7254080C0D005329D5001C8346D590910204080C03B020AC03B10FE2040800081EC02B9F22B00B9E62D2D0102040810581450001619FC8F00010204B20B64CB';
wwv_flow_imp.g_varchar2_table(67) := 'AF00649BB8BC0408102040A01050000A04BF0910204020BB40BEFC0A40BE994B4C8000010204420170272040800081F402190114808C53979900010204D20B2800E9EF0200081020905D20677E0520E7DCA52640800081E4020A40F23B80F8040810C82E';
wwv_flow_imp.g_varchar2_table(68) := '9035BF029075F27213204080406A010520F5F885274080407681BCF91580BCB3979C00010204120B280089872F3A010204B20B64CEAF00649EBEEC0408102090564001483B7AC1091020905D20777E0520F7FCA52740800081A4020A40D2C18B4D800081';
wwv_flow_imp.g_varchar2_table(69) := 'EC02D9F32B00D9EF01F213204080404A010520E5D885264080407601F91500F70102040810209050400148387491091020905D40FE0805C0BD80000102040824145000120E5D64020408E41690BE1450004A05170204081020904C400148367071091020';
wwv_flow_imp.g_varchar2_table(70) := '905D40FEB7051480B71DFC9F0001020408A4125000528D5B58020408641790FF5D0105E05D097F12204080008144020A40A2618B4A800081EC02F2BF27A000BC67E16F0408102040208D80029066D48212204020BB80FCEF175000DEAFE1EF0408102040';
wwv_flow_imp.g_varchar2_table(71) := '208980029064D06212204020BB80FC1F1450003EE8E15F0408102040208580029062CC4212204020BB80FC1F1650003E2CE2DF0408102040208180029060C82212204020BB80FC1F1550003E6AE21A0204081020D0780105A0F1231690000102D905E4BF';
wwv_flow_imp.g_varchar2_table(72) := '9C8002703915D7112040800081860B28000D1FB078040810C82E20FFE5051480CBBBB8960001020408345A400168F47885234080407601F93B0928009D645C4F80000102041A2CA0003478B8A211204020BB80FC9D051480CE36B6102040800081C60A28';
wwv_flow_imp.g_varchar2_table(73) := '008D1DAD60040810C82E207F370105A09B8E6D0408102040A0A1020A4043072B16010204B20BC8DF5D4001E8EE632B010204081068A48002D0C8B10A45800081EC02F22F25A0002C25643B010204081068A08002D0C0A18A44800081EC02F22F2DA0002C';
wwv_flow_imp.g_varchar2_table(74) := '6D640F0204081020D0380105A071231588000102D905E4EF454001E845C93E0408102040A061020A40C3062A0E010204B20BC8DF9B8002D09B93BD081020408040A3041480468D5318020408641790BF570105A05729FB112040800081060928000D1AA6';
wwv_flow_imp.g_varchar2_table(75) := '28040810C82E207FEF020A40EF56F62440800001028D1150001A334A41081020905D40FEE5082800CBD1B22F010204081068888002D090418A41800081EC02F22F4F4001589E97BD09102040804023041480468C51080204086417907FB9020AC072C5EC';
wwv_flow_imp.g_varchar2_table(76) := '4F80000102041A20A0003460882210204020BB80FCCB175000966FE6160408102040A0F6020A40ED472800010204B20BC8BF12010560256A6E4380000102046A2EA000D47C80964F800081EC02F2AF4C400158999B5B1120408000815A0B2800B51E9FC5';
wwv_flow_imp.g_varchar2_table(77) := '13204020BB80FC2B155000562AE7760408102040A0C6020A408D8767E9040810C82E20FFCA05148095DBB9250102040810A8AD800250DBD15938010204B20BC8BF1A010560357A6E4B80000102046A2AA000D47470964D800081EC02F2AF4E4001589D9F';
wwv_flow_imp.g_varchar2_table(78) := '5B1320408000815A0A2800B51C9B4513204020BB80FCAB155000562BE8F60408102040A086020A400D8766C9040810C82E20FFEA051480D51B3A020102040810A89D800250BB915930010204B20BC8DF0F0105A01F8A8E4180000102046A26A000D46C60';
wwv_flow_imp.g_varchar2_table(79) := '964B800081EC02F2F7474001E88FA3A31020408000815A092800B51A97C512204020BB80FCFD125000FA25E9380408102040A046020A408D8665A9040810C82E207FFF041480FE593A120102040810A88D8002509B515928010204B20BC8DF4F0105A09F';
wwv_flow_imp.g_varchar2_table(80) := '9A0D3BD6C2FC7C2C342C933804D208CC2FC4FC9C47709A79AF20A802B002B4A6DCA4D58AE21D7CE737108B6F3C8A7D9A92570E02990416CA023033D731F242F1E82FDF0674DCA1821B2CA9BF020A407F3D6B77B4B156E7BBC0DCCC6C2CCC767E0352BBB0';
wwv_flow_imp.g_varchar2_table(81) := '164C2091C0ECE98B317371BA63E26E8FFD8E37B2A151029DDFFA372AA630971368452BD6B6D75C6ED3E275E54708D3A72E2CFEDDFF0810A897C0B943533173FE52C745978FFDF26D40C71D2AB7C182FA2DA000F45BB466C71B1F5BDB79C5C5AB03A75F3F';
wwv_flow_imp.g_varchar2_table(82) := 'DE79BB2D0408545660EA953763AE7816AFD302BB3EF63BDDC8F58D1250001A35CEE587191F5B17AD56ABE30D7FFE9D1FC7CC9467013A02D940A08202978E9D8B9F7DE7B98E2B6BB55A513EF63BEE50C10D96D47F8176FF0FE9887512283F0AE8F65AE0D1';
wwv_flow_imp.g_varchar2_table(83) := '9F1F8A5FFCCFA7EB14C95A09A416989F9E8BD7BFF57C4C1D9FEAE8503EE6CBC77EC71D6C4821A000A41873E790D597E6FE00000BF049444154EBD78CC758BBFBDDE0B96F3E1507FF77E78F263A1FDD160204862D70E84F7E1CCFFEAFEF763DED58BB1DE5';
wwv_flow_imp.g_varchar2_table(84) := '63BFEB4E95DA68318310E8FE967F106774CC4A09B45BED98181BEFBAA6F98585F8DE7FFD563CFB1FBE15170E9DEABAAF8D04088C46E0FCA1A978F6DFFF493CF5DFFE2CE6E6E7BB2EA27CCC978FFDAE3BD9D8780105A0F1235E3AE0B689CD119D3F0D20CA';
wwv_flow_imp.g_varchar2_table(85) := '5F6509F8C993CFC69FFEEB6FC4CBDFF85E9CFCF11B71F1C899983E7E3ECAD71BA78F9E0D1706EE03C3BB0F5C7AEB5C5C387C264EFFEC68BCF2DFBF1FDFFE377F1C3FF9EE7331BFC43BFF56AB15DBD66F291FD6B5B958E860041480C1B8D6EAA8EBC6D6C6';
wwv_flow_imp.g_varchar2_table(86) := '8EF55B7B5AF3856367E299FFF164FCE9BFFAA3F8BFBFF79FE2FF7DFD0FE3CFFFE08FE2CFFFE5375C18B80F0CE93EF0EDE23CDFFE833F8C6FFE8BFF1CDFFCFA7F891FFDF15FC4B923BD3D3B7755F1585FD7E5CB7F7B7A4360A7460828008D18E3EA435C59';
wwv_flow_imp.g_varchar2_table(87) := '3C0BB071ED44CF075A285E1698999D8DD3274FC5A9935331E5C2C07D6068F781F231777AEA744CCFCE44F958ECF5813BB96E7D5C513CD67BDDBF1AFB59C5A004148041C9D6ECB8ADE235806B366E8BF2D9809A2DDD720910E841A07C6C5FBDE1CA1EF6B4';
wwv_flow_imp.g_varchar2_table(88) := '4B16010520CBA47BC8597E67B0EB26B72FF955013D1CCA2E0408544860ACDD8EF2B15D3EC62BB4AC9E9662A7C109280083B3ADE59127C6D6C527B6EE8C6DEB97FEC4C05A06B4680299045A11DB8BD7FCCBC774F9D8CE145DD6A5051480A58D52EEB163FD';
wwv_flow_imp.g_varchar2_table(89) := '1571D3E66B63C3323E2F202594D0042A2A503E7677158FE1EDB5FE8CFF8AE23664590A404306398818E5470C374C5EB5F811C4DAB135D16EB5228ADFE1170102D513281E9BE563B47CAC961FF5978FDDF1E219BDEA2DD48AAA22A000546512155D47F906';
wwv_flow_imp.g_varchar2_table(90) := 'A5FC08E2962DD7C7AE2DD7C5CEA210ECD8B035CACF265E37B6365AAD960B03F78111DD07CAC760F9582C1F93E563B37C8C968FD5F2315B3E762BFA66A5E765D971B0020AC0607D1B75F4F2138836AE5D1FDB26B6C4751B77C4CE4D57152F135C131FDBEC';
wwv_flow_imp.g_varchar2_table(91) := 'C2C07D60D8F7819B8AC75DF9182C1F8BE563B27C6C968FD1F08B408F02ED1EF7B31B810F08941F5D946F6CC68BA718CB970A5CD6050306C3BC0F948FBDF231583E163FF0E06CCC3F0419B4407BD027707C020408102040A07A020A40F566624504081048';
wwv_flow_imp.g_varchar2_table(92) := '2F0060F0020AC0E08D9D810001020408544E4001A8DC482C88000102D905E41F868002300C65E7204080000102151350002A3610CB214080407601F98723A0000CC7D959081020408040A50414804A8DC362081020905D40FE61092800C392761E020408';
wwv_flow_imp.g_varchar2_table(93) := '102050210105A042C3B0140204086417907F78020AC0F0AC9D89000102040854464001A8CC282C84000102D905E41FA68002304C6DE7224080000102151150002A3208CB204080407601F9872BA0000CD7DBD9081020408040250414804A8CC122081020';
wwv_flow_imp.g_varchar2_table(94) := '905D40FE610B2800C316773E020408102050010105A00243B0040204086417907FF8020AC0F0CD9D9100010204088C5C400118F9082C80000102D905E41F858002300A75E724408000010223165000463C00A7274080407601F94723A0008CC6DD590910';
wwv_flow_imp.g_varchar2_table(95) := '204080C04805148091F23B39010204B20BC83F2A01056054F2CE4B80000102044628A0008C10DFA9091020905D40FED1092800A3B377660204081020303201056064F44E4C800081EC02F28F52400118A5BE73132040800081110928002382775A020408';
wwv_flow_imp.g_varchar2_table(96) := '6417907FB4020AC068FD9D9D00010204088C4440011809BB9312204020BB80FCA3165000463D01E7274080000102231050004680EE94040810C82E20FFE8051480D1CFC00A0810204080C0D0051480A1933B21010204B20BC85F050105A00A53B0060204';
wwv_flow_imp.g_varchar2_table(97) := '0810203064010560C8E04E47800081EC02F257434001A8C61CAC8200010204080C554001182AB79311204020BB80FC55115000AA3209EB204080000102431450008688ED54040810C82E207F75041480EACCC24A0810204080C0D0041480A1513B110102';
wwv_flow_imp.g_varchar2_table(98) := '04B20BC85F250105A04AD3B0160204081020302401056048D04E43800081EC02F2574B4001A8D63CAC8600010204080C454001180AB39310204020BB80FC55135000AA3611EB214080000102431050008680EC14040810C82E207FF5041480EACDC48A08';
wwv_flow_imp.g_varchar2_table(99) := '10204080C0C005148081133B01010204B20BC85F450105A08A53B12602040810203060010560C0C00E4F800081EC02F257534001A8E65CAC8A00010204080C5440011828AF8313204020BB80FC55155000AA3A19EB224080000102031450000688EBD004';
wwv_flow_imp.g_varchar2_table(100) := '0810C82E207F75051480EACEC6CA0810204080C0C004148081D13A30010204B20BC85F650105A0CAD3B1360204081020302001056040B00E4B800081EC02F2575B4001A8F67CAC8E00010204080C4440011808AB8312204020BB80FC55175000AA3E21EB';
wwv_flow_imp.g_varchar2_table(101) := '234080000102031050000680EA90040810C82E207FF5051480EACFC80A091020408040DF051480BE933A20010204B20BC85F070105A00E53B2460204081020D0670105A0CFA00E47800081EC02F2D7434001A8C79CAC920001020408F4554001E82BA783';
wwv_flow_imp.g_varchar2_table(102) := '11204020BB80FC75115000EA3229EB2440800001027D145000FA88E950040810C82E207F7D041480FACCCA4A091020408040DF041480BE513A10010204B20BC85F270105A04ED3B2560204081020D0270105A04F900E43800081EC02F2D74B4001A8D7BC';
wwv_flow_imp.g_varchar2_table(103) := 'AC960001020408F4454001E80BA38310204020BB80FC75135000EA3631EB2540800001027D105000FA80E810040810C82E207FFD041480FACDCC8A0910204080C0AA05148055133A00010204B20BC85F470105A08E53B3660204081020B04A0105609580';
wwv_flow_imp.g_varchar2_table(104) := '6E4E800081EC02F2D7534001A8E7DCAC9A0001020408AC4A400158159F1B13204020BB80FC75155000EA3A39EB264080000102AB1050005681E7A6040810C82E207F7D051480FACECECA0910204080C08A05148015D3B921010204B20BC85F670105A0CE';
wwv_flow_imp.g_varchar2_table(105) := 'D3B3760204081020B04201056085706E46800081EC02F2D75B4001A8F7FCAC9E0001020408AC48400158119B1B11204020BB80FC75175000EA3E41EB2740800001022B1050005680E626040810C82E207FFD051480FACF50020204081020B06C010560D9';
wwv_flow_imp.g_varchar2_table(106) := '646E40800081EC02F23741400168C21465204080000102CB14500096096677020408641790BF19020A4033E62805010204081058968002B02C2E3B13204020BB80FC4D1150009A3249390810204080C0320414806560D995000102D905E46F8E8002D09C';
wwv_flow_imp.g_varchar2_table(107) := '594A4280000102047A1650007AA6B223010204B20BC8DF240105A049D394850001020408F428A000F4086537020408641790BF59020A40B3E6290D0102040810E8494001E889C94E040810C82E207FD3041480A64D541E0204081020D0838002D003925D';
wwv_flow_imp.g_varchar2_table(108) := '081020905D40FEE6092800CD9BA9440408102040604901056049223B10204020BB80FC4D1450009A3855990810204080C012020AC012403613204020BB80FCCD1450009A3957A9081020408040570105A02B8F8D040810C82E207F53051480A64E562E02';
wwv_flow_imp.g_varchar2_table(109) := '04081020D0454001E8826313010204B20BC8DF5C0105A0B9B3958C0001020408741450003AD2D840800081EC02F23759400168F274652340800001021D0414800E30AE264080407601F99B2DA000347BBED2112040800081CB0A280097657125010204B2';
wwv_flow_imp.g_varchar2_table(110) := '0BC8DF740105A0E913968F00010204085C464001B80C8AAB081020905D40FEE60B2800CD9FB1840408102040E023020AC047485C41800081EC02F267105000324C59460204081020F0210105E04320FE49800081EC02F2E710500072CC594A0204081020';
wwv_flow_imp.g_varchar2_table(111) := 'F0010105E0031CFE41800081EC02F267115000B24C5A4E0204081020F03E0105E07D18FE4A800081EC02F2E7115000F2CC5A520204081020F02B0105E05714FE42800081EC02F267125000324D5B560204081020F08E8002F00E843F081020905D40FE5C';
wwv_flow_imp.g_varchar2_table(112) := '020A40AE794B4B8000010204160514804506FF234080407601F9B3092800D9262E2F01020408102804148002C16F0204086417903F9F8002906FE6121320408000815000DC09081020905E004046010520E3D4652640800081F4020A40FABB00000204B2';
wwv_flow_imp.g_varchar2_table(113) := '0BC89F534001C83977A90910204020B9800290FC0E203E0102D905E4CF2AA000649DBCDC04081020905A4001483D7EE10910C82E207F5E010520EFEC252740800081C4020A40E2E18B4E80407601F9330B280099A72F3B01020408A4155000D28E5E7002';
wwv_flow_imp.g_varchar2_table(114) := '04B20BC89F5BE0AF010000FFFF0CDD0FD40000000649444154030001CD3AB47E0CA0F40000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6028198359618803)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(6030449885618812)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(6030867939618821)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(6029144424618804)
,p_version_scn=>'SH256:zBoHxELbCF64JiYwSzQdItfu58AlSVUWmbfwVhVGpyo'
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/alunos_nome
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6076004317619307)
,p_lov_name=>'ALUNOS.NOME'
,p_static_id=>'alunos-nome'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ALUNOS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NOME'
,p_default_sort_column_name=>'NOME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:kZdvGAaJvkS8tlfR6IEyxiHFcO1-FM6Dur9Qm6ffcX8'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6146494849619471)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_static_id=>'desktop-theme-styles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:BV99rFiD2E3hUCMQwqdJUP9mSBtytAbj6XTz8AGFmsA'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6154341999619515)
,p_lov_name=>'FEEDBACK_RATING'
,p_static_id=>'feedback-rating'
,p_lov_query=>'.'||wwv_flow_imp.id(6154341999619515)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:QHID2_AL91pivdhRvWMf8rTxRdNvsqexHwq5MFyhCN4'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6155492775619517)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_static_id=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6155085360619517)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_static_id=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6154663424619515)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_static_id=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6166154226619551)
,p_lov_name=>'FEEDBACK_STATUS'
,p_static_id=>'feedback-status'
,p_lov_query=>'.'||wwv_flow_imp.id(6166154226619551)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:PpuBEbIoOUhSzFsElNFuOJRnL162R3kqFnYCQDsmzNw'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6166440405619551)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
,p_static_id=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6166889633619553)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
,p_static_id=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6167231926619553)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
,p_static_id=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6167614883619554)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
,p_static_id=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/planos_nome
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6076759400619314)
,p_lov_name=>'PLANOS.NOME'
,p_static_id=>'planos-nome'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PLANOS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NOME'
,p_default_sort_column_name=>'NOME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:O42nroZ_0wW3oF3bAd4IPqhLO0_9NmjTCVHVQBSjhtA'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6147019259619492)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_static_id=>'user-theme-preference'
,p_lov_query=>'.'||wwv_flow_imp.id(6147019259619492)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:DLn_dOJ7xpnm9CVvk5HeeBDxUDGi5ktqZfERlWXvyAE'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6147300602619493)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
,p_static_id=>'yes'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(6031050198618825)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(6025218310618681)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260611112205Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6189024510619629)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6068023786619270)
,p_short_name=>'Alunos'
,p_static_id=>'alunos'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112210Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6105977407619376)
,p_short_name=>'Avaliacoes Fisicas'
,p_static_id=>'avaliacoes-fisicas'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6052764903618931)
,p_short_name=>'Dashboard'
,p_static_id=>'dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6025442805618684)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260611112205Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112205Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6090152602619339)
,p_short_name=>'Matriculas'
,p_static_id=>'matriculas'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6074050025619293)
,p_short_name=>'Planos'
,p_static_id=>'planos'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(6026141612618698)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260611112205Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6024505243618662)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6029144424618804)
,p_build_option_name=>'Feature: Feedback'
,p_static_id=>'feature-feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:4w9c61-62VcsI0g96MpTWgQTDraGR_8MLzAozytdVqo'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6029795984618804)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_static_id=>'feature-theme-style-selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:QRbJopHL0jPGfJBmzVDfxlGvtK3A5q4-lkLWnG9Vv6I'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(6024858717618670)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260611112204Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112204Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'GymManager Pro'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6041237387618909)
,p_plug_name=>'GymManager Pro'
,p_static_id=>'gymmanager-pro'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6143014479619454)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6140201534619448)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2888245825625742894
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260612072450Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6052111349618926)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6025218310618681)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6404011558195033)
,p_plug_name=>'IMC dos Alunos'
,p_static_id=>'imc-dos-alunos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260611191759Z')
,p_updated_on=>wwv_flow_imp.dz('20260611194654Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6404163747195034)
,p_region_id=>wwv_flow_imp.id(6404011558195033)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260611191759Z')
,p_updated_on=>wwv_flow_imp.dz('20260611192710Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6404208864195035)
,p_chart_id=>wwv_flow_imp.id(6404163747195034)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'IMC dos Alunos'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    a.nome as label,',
'    round(avg(fn_calcular_imc(af.peso,af.altura)),2) as value',
'from alunos a',
'join avaliacoes_fisicas af',
'    on af.aluno_id = a.id',
'group by a.nome',
'order by value desc'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260611191759Z')
,p_updated_on=>wwv_flow_imp.dz('20260611192710Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6404393383195036)
,p_chart_id=>wwv_flow_imp.id(6404163747195034)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260611191759Z')
,p_updated_on=>wwv_flow_imp.dz('20260611191759Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6404455326195037)
,p_chart_id=>wwv_flow_imp.id(6404163747195034)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260611191759Z')
,p_updated_on=>wwv_flow_imp.dz('20260611191759Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6457532955558612)
,p_plug_name=>unistr('IMC M\00E9dio')
,p_static_id=>unistr('imc-m\00E9dio')
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
unistr('    ''IMC M\00E9dio'' titulo,'),
'    round(avg(fn_calcular_imc(peso,altura)),2) valor',
'from avaliacoes_fisicas'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260611193537Z')
,p_updated_on=>wwv_flow_imp.dz('20260611194727Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6457651828558613)
,p_region_id=>wwv_flow_imp.id(6457532955558612)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>'&TITULO.'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>'&VALOR.'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260611194727Z')
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6457160954558608)
,p_plug_name=>unistr('Matr\00EDculas Ativas')
,p_static_id=>unistr('matr\00EDculas-ativas')
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
unistr('    ''Matr\00EDculas Ativas'' titulo,'),
'    count(*) valor',
'from matriculas',
'where upper(status) = ''ATIVO'''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260611193537Z')
,p_updated_on=>wwv_flow_imp.dz('20260611194727Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6457238618558609)
,p_region_id=>wwv_flow_imp.id(6457160954558608)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>'&TITULO.'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>'&VALOR.'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260611194727Z')
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6404556281195038)
,p_plug_name=>unistr('Matr\00EDculas por Status')
,p_static_id=>unistr('matr\00EDculas-por-status')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260611192756Z')
,p_updated_on=>wwv_flow_imp.dz('20260611194654Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6404603405195039)
,p_region_id=>wwv_flow_imp.id(6404556281195038)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260611192756Z')
,p_updated_on=>wwv_flow_imp.dz('20260611192802Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6404723216195040)
,p_chart_id=>wwv_flow_imp.id(6404603405195039)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>unistr('Matr\00EDculas por Status')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    status as label,',
'    count(*) as value',
'from matriculas',
'group by status'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20260611192756Z')
,p_updated_on=>wwv_flow_imp.dz('20260611192802Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6457388278558610)
,p_plug_name=>unistr('Matr\00EDculas Vencidas')
,p_static_id=>unistr('matr\00EDculas-vencidas')
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
unistr('    ''Matr\00EDculas Vencidas'' titulo,'),
'    count(*) valor',
'from matriculas',
'where data_fim < sysdate'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260611193537Z')
,p_updated_on=>wwv_flow_imp.dz('20260611194727Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6457463748558611)
,p_region_id=>wwv_flow_imp.id(6457388278558610)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>'&TITULO.'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>'&VALOR.'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260611194727Z')
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6403580066195028)
,p_plug_name=>'Alunos por Plano'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260611191520Z')
,p_updated_on=>wwv_flow_imp.dz('20260611194654Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6403634142195029)
,p_region_id=>wwv_flow_imp.id(6403580066195028)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260611191520Z')
,p_updated_on=>wwv_flow_imp.dz('20260611192710Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6403762349195030)
,p_chart_id=>wwv_flow_imp.id(6403634142195029)
,p_static_id=>'new'
,p_seq=>10
,p_name=>unistr('Matr\00EDculas')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    p.nome as label,',
'    count(*) as value',
'from matriculas m',
'join planos p',
'    on p.id = m.plano_id',
'where upper(m.status) like ''ATIV%''',
'group by p.nome',
'order by 2 desc'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260611191520Z')
,p_updated_on=>wwv_flow_imp.dz('20260611192710Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6403887890195031)
,p_chart_id=>wwv_flow_imp.id(6403634142195029)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260611191520Z')
,p_updated_on=>wwv_flow_imp.dz('20260611191520Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6403923075195032)
,p_chart_id=>wwv_flow_imp.id(6403634142195029)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260611191520Z')
,p_updated_on=>wwv_flow_imp.dz('20260611191520Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6405230118195045)
,p_plug_name=>'Total de Alunos'
,p_static_id=>'new_1'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''Total de Alunos'' titulo,',
'    count(*) valor',
'from alunos'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260611193103Z')
,p_updated_on=>wwv_flow_imp.dz('20260611194727Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6457074972558607)
,p_region_id=>wwv_flow_imp.id(6405230118195045)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>'&TITULO.'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>'&VALOR.'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260611194727Z')
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6457707059558614)
,p_plug_name=>unistr('Evolu\00E7\00E3o F\00EDsica')
,p_static_id=>'new_2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>100
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260612072057Z')
,p_updated_on=>wwv_flow_imp.dz('20260612072450Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6457892064558615)
,p_region_id=>wwv_flow_imp.id(6457707059558614)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260612072057Z')
,p_updated_on=>wwv_flow_imp.dz('20260612072450Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6457921642558616)
,p_chart_id=>wwv_flow_imp.id(6457892064558615)
,p_static_id=>'new'
,p_seq=>10
,p_name=>unistr('Evolu\00E7\00E3o F\00EDsica')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    nome label,',
'    imc value',
'from vw_evolucao_aluno',
'order by imc desc'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260612072057Z')
,p_updated_on=>wwv_flow_imp.dz('20260612072450Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6458021736558617)
,p_chart_id=>wwv_flow_imp.id(6457892064558615)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260612072057Z')
,p_updated_on=>wwv_flow_imp.dz('20260612072057Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6458131592558618)
,p_chart_id=>wwv_flow_imp.id(6457892064558615)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260612072057Z')
,p_updated_on=>wwv_flow_imp.dz('20260612072057Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Alunos'
,p_alias=>'ALUNOS1'
,p_step_title=>'Alunos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260611112208Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6062490763619228)
,p_plug_name=>'Alunos'
,p_static_id=>'alunos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ALUNOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6062512127619228)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP:P4_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>6062512127619228
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6065711839619262)
,p_db_column_name=>'DATA_CADASTRO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Data Cadastro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6065339235619260)
,p_db_column_name=>'DATA_NASCIMENTO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Nascimento'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6064572582619257)
,p_db_column_name=>'EMAIL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6063784401619243)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6064109399619256)
,p_db_column_name=>'NOME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6064987731619259)
,p_db_column_name=>'TELEFONE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Telefone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6106852238619392)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:EMAIL:TELEFONE:DATA_NASCIMENTO:DATA_CADASTRO'
,p_sort_column_1=>'NOME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6067438144619268)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6025218310618681)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112210Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6066136750619262)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6062490763619228)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:4::'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112210Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6066513447619264)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6062490763619228)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112210Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6066995915619265)
,p_event_id=>wwv_flow_imp.id(6066513447619264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6062490763619228)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112210Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Alunos'
,p_alias=>'ALUNOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Alunos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6053861679618956)
,p_plug_name=>'Alunos'
,p_static_id=>'alunos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ALUNOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6058462892618967)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6058864895618968)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6058462892618967)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6059384253618971)
,p_button_id=>wwv_flow_imp.id(6058864895618968)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6060697314618975)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6058462892618967)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6059807561618973)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6058462892618967)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112210Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6060226289618975)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6058462892618967)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6056264609618964)
,p_name=>'P4_DATA_CADASTRO'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_item_source_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_prompt=>'Data Cadastro'
,p_source=>'DATA_CADASTRO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6055806191618962)
,p_name=>'P4_DATA_NASCIMENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_item_source_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_prompt=>'Data Nascimento'
,p_source=>'DATA_NASCIMENTO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6055013875618962)
,p_name=>'P4_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_item_source_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6054258770618956)
,p_name=>'P4_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_item_source_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_prompt=>'ID'
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6054657876618960)
,p_name=>'P4_NOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_item_source_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_prompt=>'Nome'
,p_source=>'NOME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6055421732618962)
,p_name=>'P4_TELEFONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_item_source_plug_id=>wwv_flow_imp.id(6053861679618956)
,p_prompt=>'Telefone'
,p_source=>'TELEFONE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6061875459618978)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6061875459618978
,p_created_on=>wwv_flow_imp.dz('20260611112208Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112208Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6061078434618976)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6053861679618956)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Alunos'
,p_static_id=>'initialize-form-alunos'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6061078434618976
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6061471393618978)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6053861679618956)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Alunos'
,p_static_id=>'process-form-alunos'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6061471393618978
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Planos'
,p_alias=>'PLANOS'
,p_step_title=>'Planos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260611112210Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6073408085619293)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6025218310618681)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6069401014619275)
,p_plug_name=>'Planos'
,p_static_id=>'planos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PLANOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6069546391619275)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6069546391619275
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6072313260619289)
,p_db_column_name=>'ATIVO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ativo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6071923651619287)
,p_db_column_name=>'DURACAO_MESES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Duracao Meses'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6070723279619282)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6071127777619285)
,p_db_column_name=>'NOME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6071531534619285)
,p_db_column_name=>'VALOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Valor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6116197879619417)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:VALOR:DURACAO_MESES:ATIVO'
,p_sort_column_1=>'NOME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6072715030619290)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6069401014619275)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Matriculas'
,p_alias=>'MATRICULAS1'
,p_step_title=>'Matriculas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611183631Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6089555477619339)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6025218310618681)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6084434634619325)
,p_plug_name=>'Matriculas'
,p_static_id=>'matriculas'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    m.id,',
'    a.nome as aluno,',
'    p.nome as plano,',
'    m.data_inicio,',
'    m.data_fim,',
'    m.status',
'from matriculas m',
'join alunos a',
'    on a.id = m.aluno_id',
'join planos p',
'    on p.id = m.plano_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183631Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6084502025619325)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>6084502025619325
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183631Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6401802639195011)
,p_db_column_name=>'ALUNO'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Aluno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611183611Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183611Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6401772462195010)
,p_db_column_name=>'DATA_FIM'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'Data Fim'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611183218Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183245Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6087061661619331)
,p_db_column_name=>'DATA_INICIO'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Data Inicio'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183245Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6085876414619328)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6401937189195012)
,p_db_column_name=>'PLANO'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Plano'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611183611Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183611Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6087868569619335)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183245Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6121024900619423)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ALUNO:PLANO:DATA_INICIO:DATA_FIM:STATUS'
,p_sort_column_1=>'ALUNO_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183631Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6088242752619337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6084434634619325)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6088628598619337)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6084434634619325)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6089057998619339)
,p_event_id=>wwv_flow_imp.id(6088628598619337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6084434634619325)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Matriculas'
,p_alias=>'MATRICULAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Matriculas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611183856Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6080347577619318)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6075133772619304)
,p_plug_name=>'Matriculas'
,p_static_id=>'matriculas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MATRICULAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6080770382619318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6080347577619318)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6081206682619320)
,p_button_id=>wwv_flow_imp.id(6080770382619318)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6082513840619321)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6080347577619318)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6081716668619320)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6080347577619318)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6082110317619321)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6080347577619318)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6075988599619306)
,p_name=>'P7_ALUNO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_item_source_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_prompt=>'Aluno'
,p_source=>'ALUNO_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ALUNOS.NOME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6077727848619315)
,p_name=>'P7_DATA_FIM'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_item_source_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_source=>'DATA_FIM'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183650Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6077368366619315)
,p_name=>'P7_DATA_INICIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_item_source_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_prompt=>'Data Inicio'
,p_source=>'DATA_INICIO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6075577612619304)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_item_source_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_prompt=>'ID'
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6076671157619314)
,p_name=>'P7_PLANO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_item_source_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_prompt=>'Plano'
,p_source=>'PLANO_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANOS.NOME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6078167143619317)
,p_name=>'P7_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_item_source_plug_id=>wwv_flow_imp.id(6075133772619304)
,p_source=>'STATUS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611183856Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6083758795619323)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6083758795619323
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6082976274619321)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6075133772619304)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Matriculas'
,p_static_id=>'initialize-form-matriculas'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6082976274619321
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6083383354619323)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6075133772619304)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Matriculas'
,p_static_id=>'process-form-matriculas'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6083383354619323
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Avaliacoes Fisicas'
,p_alias=>'AVALIACOES-FISICAS1'
,p_step_title=>'Avaliacoes Fisicas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6100266402619362)
,p_plug_name=>'Avaliacoes Fisicas'
,p_static_id=>'avaliacoes-fisicas'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'AVALIACOES_FISICAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6100381755619362)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>6100381755619362
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6102834285619370)
,p_db_column_name=>'ALTURA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Altura'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6102024795619367)
,p_db_column_name=>'ALUNO_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Aluno'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(6076004317619307)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6103690162619373)
,p_db_column_name=>'DATA_AVALIACAO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Data Avaliacao'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6101664742619365)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6103299360619371)
,p_db_column_name=>'PERCENTUAL_GORDURA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Percentual Gordura'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6102460977619368)
,p_db_column_name=>'PESO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Peso'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6130330644619432)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ALUNO_ID:PESO:ALTURA:PERCENTUAL_GORDURA:DATA_AVALIACAO'
,p_sort_column_1=>'ALUNO_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6105311030619375)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6025218310618681)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6104037005619375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6100266402619362)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6104446912619375)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6100266402619362)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6104891062619375)
,p_event_id=>wwv_flow_imp.id(6104446912619375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6100266402619362)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Avaliacoes Fisicas'
,p_alias=>'AVALIACOES-FISICAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Avaliacoes Fisicas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6091544513619350)
,p_plug_name=>'Avaliacoes Fisicas'
,p_static_id=>'avaliacoes-fisicas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'AVALIACOES_FISICAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6096135950619356)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6096559994619356)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6096135950619356)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6097055133619356)
,p_button_id=>wwv_flow_imp.id(6096559994619356)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6098357015619357)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6096135950619356)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6097567341619357)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6096135950619356)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6097929369619357)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6096135950619356)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6093175395619353)
,p_name=>'P9_ALTURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_item_source_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_prompt=>'Altura'
,p_source=>'ALTURA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6092330505619351)
,p_name=>'P9_ALUNO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_item_source_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_prompt=>'Aluno'
,p_source=>'ALUNO_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ALUNOS.NOME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6093925211619353)
,p_name=>'P9_DATA_AVALIACAO'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_item_source_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_prompt=>'Data Avaliacao'
,p_source=>'DATA_AVALIACAO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6091966910619351)
,p_name=>'P9_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_item_source_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_prompt=>'ID'
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6093597754619353)
,p_name=>'P9_PERCENTUAL_GORDURA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_item_source_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_prompt=>'Percentual Gordura'
,p_source=>'PERCENTUAL_GORDURA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6092720821619353)
,p_name=>'P9_PESO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_item_source_plug_id=>wwv_flow_imp.id(6091544513619350)
,p_prompt=>'Peso'
,p_source=>'PESO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6099517028619360)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6099517028619360
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6098754923619359)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6091544513619350)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Avaliacoes Fisicas'
,p_static_id=>'initialize-form-avaliacoes-fisicas'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6098754923619359
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6099116177619360)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6091544513619350)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Avaliacoes Fisicas'
,p_static_id=>'process-form-avaliacoes-fisicas'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6099116177619360
,p_created_on=>wwv_flow_imp.dz('20260611112211Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112211Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'GymManager Pro - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6034342901618856)
,p_plug_name=>'GymManager Pro'
,p_static_id=>'gymmanager-pro'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6035891352618881)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6034342901618856)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6035267596618875)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6034342901618856)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6035660146618879)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6034342901618856)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6034860674618873)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6034342901618856)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112206Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112206Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6039924359618895)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6039924359618895
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6039563296618893)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6039563296618893
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6036295072618884)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6036295072618884
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6037294503618889)
,p_page_process_id=>wwv_flow_imp.id(6036295072618884)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6037795274618890)
,p_page_process_id=>wwv_flow_imp.id(6036295072618884)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6036732085618889)
,p_page_process_id=>wwv_flow_imp.id(6036295072618884)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6038197862618890)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6038197862618890
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6039167651618892)
,p_page_process_id=>wwv_flow_imp.id(6038197862618890)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6038638944618892)
,p_page_process_id=>wwv_flow_imp.id(6038197862618890)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260611112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112207Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6031050198618825)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6030449885618812)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6188428022619628)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6025218310618681)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6190841976619637)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6191683784619640)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6192047372619640)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback'
,p_parent_plug_id=>wwv_flow_imp.id(6191683784619640)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(6029144424618804)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6194213367619662)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback-2'
,p_parent_plug_id=>wwv_flow_imp.id(6192047372619640)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6190098501619635)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6192433426619642)
,p_name=>'Report'
,p_static_id=>'report'
,p_parent_plug_id=>wwv_flow_imp.id(6192047372619640)
,p_template=>4073835273271169698
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value                              as feedback_status, ',
'       (select count(*)',
'          from apex_team_feedback f',
'         where f.application_id  = :APP_ID',
'           and f.feedback_status = l.return_value ) as feedback_count ',
'  from apex_application_lov_entries l',
' where l.application_id      = :APP_ID',
'   and l.list_of_values_name = ''FEEDBACK_STATUS''',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6193515932619659)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6193155959619656)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6191215950619640)
,p_plug_name=>'User Interface'
,p_static_id=>'user-interface'
,p_parent_plug_id=>wwv_flow_imp.id(6190841976619637)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(6189267857619629)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(6029795984618804)
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6031050198618825)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6030449885618812)
,p_required_patch=>wwv_flow_imp.id(6029795984618804)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6143409435619457)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6143540485619457)
,p_plug_name=>'Configure Appearance'
,p_static_id=>'configure-appearance'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6144508470619464)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6143409435619457)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6145078052619465)
,p_button_id=>wwv_flow_imp.id(6144508470619464)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6145510077619467)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6143409435619457)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6146095490619468)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260611112212Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112212Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6146345323619470)
,p_name=>'P10010_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6143540485619457)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6146977222619492)
,p_name=>'P10010_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6143540485619457)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_grid_label_column_span=>0
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6148421342619503)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_static_id=>'save-end-user-style-preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10010_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>6148421342619503
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6148081668619498)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_static_id=>'save-theme-style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10010_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10010_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>6148081668619498
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6031050198618825)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(6029144424618804)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6148963704619504)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6148821200619504)
,p_plug_name=>'Form on Feedback'
,p_static_id=>'form-on-feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6152035072619509)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6148963704619504)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6152596822619510)
,p_button_id=>wwv_flow_imp.id(6152035072619509)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6149013939619504)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6148963704619504)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6159425942619529)
,p_branch_action=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6153071694619510)
,p_name=>'P10020_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6148821200619504)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6156124789619520)
,p_name=>'P10020_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6148821200619504)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6153452151619510)
,p_name=>'P10020_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6148821200619504)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6154257996619515)
,p_name=>'P10020_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(6148821200619504)
,p_prompt=>'Experience'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6153820180619510)
,p_name=>'P10020_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6148821200619504)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from sys.dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6158926409619528)
,p_validation_name=>'At least One Feedback Required'
,p_static_id=>'at-least-one-feedback-required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_FEEDBACK is null and :P10020_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6156584037619523)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_static_id=>'submit-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'SUBMIT_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6149013939619504)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>6156584037619523
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6157503782619525)
,p_page_process_id=>wwv_flow_imp.id(6156584037619523)
,p_page_id=>10020
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6157011710619525)
,p_page_process_id=>wwv_flow_imp.id(6156584037619523)
,p_page_id=>10020
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10020_FEEDBACK'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6158003320619525)
,p_page_process_id=>wwv_flow_imp.id(6156584037619523)
,p_page_id=>10020
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10020_PAGE_ID'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6158547152619526)
,p_page_process_id=>wwv_flow_imp.id(6156584037619523)
,p_page_id=>10020
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10020_RATING'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6031050198618825)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(6029144424618804)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6149493357619504)
,p_plug_name=>'Feedback Submitted'
,p_static_id=>'feedback-submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6149364103619504)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6149493357619504)
,p_button_name=>'CLOSE'
,p_static_id=>'close'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'w40p'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6160623655619534)
,p_button_id=>wwv_flow_imp.id(6149364103619504)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6031050198618825)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(6030449885618812)
,p_required_patch=>wwv_flow_imp.id(6029144424618804)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6150742090619504)
,p_plug_name=>'Manage Feedback'
,p_static_id=>'manage-feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6173319786619578)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RP:P10024_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>6173319786619578
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6175387601619589)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6175738173619590)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6176119648619592)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6174553624619587)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6179389742619601)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6174988486619589)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6176521253619593)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6154341999619515)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6176900700619593)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6177780551619596)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6177399728619595)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(6166154226619551)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6178571621619600)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6178987811619601)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6178124781619598)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6183953573619610)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6184679452619612)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6150742090619504)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6150620583619504)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6150742090619504)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6185349587619614)
,p_event_id=>wwv_flow_imp.id(6150620583619504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6150742090619504)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112214Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112214Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6031050198618825)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(6030449885618812)
,p_required_patch=>wwv_flow_imp.id(6029144424618804)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_last_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6150117147619504)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6150006675619504)
,p_plug_name=>'Form Items Region'
,p_static_id=>'form-items-region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6162374644619537)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6150117147619504)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6162810369619539)
,p_button_id=>wwv_flow_imp.id(6162374644619537)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6150472868619504)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6150117147619504)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10024_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6150215306619504)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6150117147619504)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6165273883619545)
,p_name=>'P10024_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6150006675619504)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6166091879619551)
,p_name=>'P10024_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6150006675619504)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6164451394619543)
,p_name=>'P10024_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6150006675619504)
,p_prompt=>'Filed'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6163697870619540)
,p_name=>'P10024_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6150006675619504)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6164063965619542)
,p_name=>'P10024_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6150006675619504)
,p_prompt=>'Page'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6164863230619543)
,p_name=>'P10024_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6150006675619504)
,p_prompt=>'Rating'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6165667331619546)
,p_name=>'P10024_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6150006675619504)
,p_prompt=>'Response'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6168318675619556)
,p_name=>'P10024_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6150006675619504)
,p_prompt=>'User Agent'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6171949511619565)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6150472868619504)
,p_internal_uid=>6171949511619565
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6172375371619565)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6172375371619565
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6171052845619564)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_static_id=>'delete-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'DELETE_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6150472868619504)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>6171052845619564
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6171556660619565)
,p_page_process_id=>wwv_flow_imp.id(6171052845619564)
,p_page_id=>10024
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10024_ID'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6168735128619557)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_static_id=>'load-data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10024_ID )',
'loop',
'   :P10024_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10024_FILED           := l_feedback.filed;',
'   :P10024_RATING_ICON     := l_feedback.rating_icon;',
'   :P10024_FEEDBACK        := l_feedback.feedback;',
'   :P10024_RESPONSE        := l_feedback.public_response;',
'   :P10024_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10024_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6168735128619557
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6169119724619560)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_static_id=>'reply-to-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'REPLY_TO_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6150215306619504)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>6169119724619560
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6169663912619560)
,p_page_process_id=>wwv_flow_imp.id(6169119724619560)
,p_page_id=>10024
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10024_ID'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6170608772619562)
,p_page_process_id=>wwv_flow_imp.id(6169119724619560)
,p_page_id=>10024
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10024_RESPONSE'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6170178864619562)
,p_page_process_id=>wwv_flow_imp.id(6169119724619560)
,p_page_id=>10024
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10024_FEEDBACK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260611112213Z')
,p_updated_on=>wwv_flow_imp.dz('20260611112213Z')
,p_created_by=>'CLEVER'
,p_updated_by=>'CLEVER'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
