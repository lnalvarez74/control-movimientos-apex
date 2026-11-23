--------------------------------------------------------------------------------
-- © 2026 Vamilco. Todos los derechos reservados.
--------------------------------------------------------------------------------
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
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.1'
,p_default_workspace_id=>31778597970006507055
,p_default_application_id=>145169
,p_default_id_offset=>0
,p_default_owner=>'WKSP_LAB74'
);
end;
/
 
prompt APPLICATION 145169 - Control de Movimientos
--
-- Application Export:
--   Application:     145169
--   Name:            Control de Movimientos
--   Date and Time:   20:34 Lunes Noviembre 23, 2026
--   Exported By:     LNAA061974@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     29
--       Items:                   83
--       Validations:              3
--       Processes:               25
--       Regions:                 71
--       Buttons:                 44
--       Dynamic Actions:         15
--     Shared Components:
--       Logic:
--         Items:                  1
--         Processes:              1
--         App Settings:           1
--         Build Options:          6
--       Navigation:
--         Lists:                  6
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  14
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          1
--   Version:         26.2.1
--   Instance ID:     63113759365424
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_LAB74')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Control de Movimientos')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'CONTROL_DE_MOVIMIENTOS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'89BB34FBA34A58A92100A6F308E732F4195CAD2F4C65B0A083F46BAC8EAA7471'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'es'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(36592893445437560223)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>unistr('GESTI\00D3N DE PAGOS 2026')
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>unistr('Versi\00F3n 1.0')
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(36592899879886560250)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Control de Movimientos'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261123203212Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461368203212
,p_version_scn=>'15861451088327'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>36593163113834565512
,p_copyright_banner=>unistr('\00A9 2026 Vamilco. Todos los derechos reservados.')
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>true
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(36592894362028560226)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(36592895110057560233)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/credenciales_de_notificaciones_push_de_aplicación_145169
begin
wwv_imp_workspace.create_credential(
 p_id=>36593163113834565512
,p_name=>unistr('Credenciales de notificaciones push de aplicaci\00F3n 145169')
,p_static_id=>unistr('credenciales-de-notificaciones-push-de-aplicaci\00F3n-145169')
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592888287993560216)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592888538176560217)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592888959041560217)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592889303536560218)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592889892489560218)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592890259767560219)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592890544626560219)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592890893738560220)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592891146109560220)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592891737285560221)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592892048795560221)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'N')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592892397905560221)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592892623691560222)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36592892984717560222)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/barra_de_navegación
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(36592895110057560233)
,p_name=>unistr('Barra de Navegaci\00F3n')
,p_static_id=>unistr('barra-de-navegaci\00F3n')
,p_version_scn=>'SH256:1fWbJBZTFIKQl0yB_bArh7BYHtEGgoGM4jPiFOSHc6o'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593140969811565455)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Instalar Aplicaci\00F3n')
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593141141084565456)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593142250037565457)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Cerrar sesi\00F3n')
,p_static_id=>unistr('cerrar-sesi\00F3n')
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(36593141141084565456)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593162899320565510)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>unistr('Configuraci\00F3n')
,p_static_id=>unistr('configuraci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(36593141141084565456)
,p_required_patch=>wwv_flow_imp.id(36593156201766565490)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593141784498565457)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(36593141141084565456)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/configuración_de_usuario
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(36593159875541565500)
,p_name=>unistr('Configuraci\00F3n de usuario')
,p_static_id=>unistr('configuraci\00F3n-de-usuario')
,p_required_patch=>wwv_flow_imp.id(36593156201766565490)
,p_version_scn=>'SH256:p7i3N6MUA6-BI5b1x3a7daxsdbSrOwNaAYldDqZgrFc'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593160390163565501)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Notificaciones push'
,p_static_id=>'notificaciones-push'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure si desea recibir notificaciones push en este dispositivo.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(36593155983813565490)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/control_de_acceso
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(36593148139871565466)
,p_name=>'Control de Acceso'
,p_static_id=>'control-de-acceso'
,p_required_patch=>wwv_flow_imp.id(36592897601643560242)
,p_version_scn=>'SH256:L1K7j7p2IZglELWD-YaZIgVinqWnOc5lu35kYzvToaY'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593149108448565467)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Control de Acceso'
,p_static_id=>'control-de-acceso'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>unistr('Cambiar configuraci\00F3n de control de acceso y desactivar control de acceso')
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593148630071565467)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Usuarios'
,p_static_id=>'usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>unistr('Definir nivel de acceso para los usuarios autenticados de esta aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/informes_de_actividades
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(36593144806642565462)
,p_name=>'Informes de Actividades'
,p_static_id=>'informes-de-actividades'
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_version_scn=>'SH256:0f2cal1NsMJLjl4McwqsdGX3UPrZ739YWyclPNBQuHQ'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593147869949565466)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Log de automatizaciones'
,p_static_id=>'log-de-automatizaciones'
,p_list_item_link_target=>'f?p=&APP_ID.:10025:&APP_SESSION.::&DEBUG.:RR,10025::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>unistr('Informe de mensajes y ejecuciones de automatizaci\00F3n registrados por esta aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593146325352565464)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Log de errores de la aplicaci\00F3n')
,p_static_id=>unistr('log-de-errores-de-la-aplicaci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:10022::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>unistr('Informe de errores registrados por esta aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593145328861565463)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Panel de Control'
,p_static_id=>'panel-de-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>unistr('Ver m\00E9tricas de actividad de la aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593146883315565464)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Rendimiento de P\00E1gina')
,p_static_id=>unistr('rendimiento-de-p\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10023:&APP_SESSION.::&DEBUG.:10023::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>unistr('Informe de actividad y rendimiento por p\00E1gina de aplicaci\00F3n')
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593145823490565463)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Usuarios Principales'
,p_static_id=>'usuarios-principales'
,p_list_item_link_target=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:10021::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>unistr('Informe de vistas de p\00E1gina agregadas por usuarios')
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593147324882565465)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Vistas de P\00E1gina')
,p_static_id=>unistr('vistas-de-p\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RR,10024::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>unistr('Informe de cada vista de p\00E1gina por usuario, incluida la fecha de acceso y el tiempo transcurrido')
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/interfaz_de_usuario
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(36593144070422565461)
,p_name=>'Interfaz de Usuario'
,p_static_id=>'interfaz-de-usuario'
,p_required_patch=>wwv_flow_imp.id(36592898440538560242)
,p_version_scn=>'SH256:gaZcxByK6LyF0HrZ0nQsC2OWYnD5XqsF446v7ZSECRU'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593144541690565462)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Selecci\00F3n de estilo de tema')
,p_static_id=>unistr('selecci\00F3n-de-estilo-de-tema')
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>unistr('Definir la interfaz de usuario por defecto de la aplicaci\00F3n')
,p_required_patch=>wwv_flow_imp.id(36592898440538560242)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/menú_de_navegación
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(36592894362028560226)
,p_name=>unistr('Men\00FA de Navegaci\00F3n')
,p_static_id=>unistr('men\00FA-de-navegaci\00F3n')
,p_version_scn=>'SH256:XnM2DsSFIk_Xi4zpA7eDWqKKHZtWuGEomw9URqHIq_M'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194014Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36593142814382565459)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>unistr('Administraci\00F3n')
,p_static_id=>unistr('administraci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(36592899789914560250)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4896760875778973611)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Informe'
,p_static_id=>'informe'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-presentation'
,p_parent_list_item_id=>wwv_flow_imp.id(4294359580940861046)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20261016194014Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194014Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(36592908102162560268)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Inicio'
,p_static_id=>'inicio'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4818005589144947417)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Registros'
,p_static_id=>'registros'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-edit'
,p_parent_list_item_id=>wwv_flow_imp.id(36592908102162560268)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261016164149Z')
,p_updated_on=>wwv_flow_imp.dz('20261016164149Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4294359580940861046)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Tablero'
,p_static_id=>'tablero'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_parent_list_item_id=>wwv_flow_imp.id(36592908102162560268)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20261015181405Z')
,p_updated_on=>wwv_flow_imp.dz('20261015181405Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3188290076738409550)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Tasa BCV'
,p_static_id=>'tasa-bcv'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(36592908102162560268)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20261013232613Z')
,p_updated_on=>wwv_flow_imp.dz('20261013232613Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/apex_data_pkg_cat_categorias_718982_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B030414000008080006A4775DE24342A2730100008A060000130000004341545F43415445474F524941532E6A736F6E7D94CB6E83301045F77C45C43A8BA4D0577613308925B09131DDB45545A81559E25101E926EABFD7EDAA52B92C9046968E07DF';
wwv_flow_imp.g_varchar2_table(2) := '39F6D5F3ED64DAD1DF3D7B5757BFBFD5D564CEFD602B7F77B3F5D67ED7B7A7C1FC5DF64929CE442C0BDFFBF2D6FFB19B79AC608752F198628005F3584642331171290017CE7311E514714D0BE42DEAA85794EEE9E5B2D9C45B9E32C509EC70077688E5EA';
wwv_flow_imp.g_varchar2_table(3) := '4045C2F5027B3FCFE6E53EE5D1424E0FF39C6279C90A0DA7F2086292192F5C440C70C1061F91A52CD26AE96703A010CB73000079A8601210C09B8429C516F20F803747C751E604D7842201DE24A9EB8718600A174599A199054091A3145291E290038A68';
wwv_flow_imp.g_varchar2_table(4) := '45A2C8A5D20C70C0919C72B6700B42A008A53CFB8911DFC010E8F1C48E3C2A5330F1103822B54289803EA26F6D57810B0306D67E5CCC38F5238810BC7D66F8B4B5451450F1603A3354CD3C0324D4A6EEFAA63F5B702CE061E272E86A6B867E1E0326466E';
wwv_flow_imp.g_varchar2_table(5) := 'E9324EF6D498790E9898B9DA558DF90DE4D57DDF504B030414000008080006A4775DAE649A7E0C0100004B0200001B0000004341545F43415445474F524941535F70726F66696C652E6A736F6E8D914F4B033110C5EFFD1421E78DD45641BCAD5AA5A016';
wwv_flow_imp.g_varchar2_table(6) := '4A3DA994989DED46F267C9A41629FDEE26B3D2456CD14302796F7EC39BC976C018AFB501113F5BE0EC929D155942ED56490C7E93B55A1A84625F0A4EF92A15648B97F7E3D1D3E2F682939F00816040451FC8D6112C765E03325328B413B50E187FB757F8';
wwv_flow_imp.g_varchar2_table(7) := '91BB1B8F5011FEC23BB6F641A58C415BB169524F6CA5A2B831ACBF516FD6D661D2D2EB391DC6B67427CF494BC57C7AB3BC2E1793BBD97C5A5263B22B19E57EFE512F83D2561AA11AD9CD72720011061C613DF773FE6AA96484950F5AF6B846F18EDEED87';
wwv_flow_imp.g_varchar2_table(8) := '277D571C49FD387BB89A4FFE4C7E7A3CDDF9F0703AE7ED5B80FF274CF72B6DBB95217D51FEC0BC71361E0E765F504B0102140014000008080006A4775DE24342A2730100008A060000130000000000000000002000B681000000004341545F4341544547';
wwv_flow_imp.g_varchar2_table(9) := '4F524941532E6A736F6E504B0102140014000008080006A4775DAE649A7E0C0100004B0200001B0000000000000000002000B681A40100004341545F43415445474F524941535F70726F66696C652E6A736F6E504B050600000000020002008A000000E9';
wwv_flow_imp.g_varchar2_table(10) := '0200000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16570627803825732705)
,p_file_name=>'APEX$DATA$PKG/CAT_CATEGORIAS$718982.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261123203212Z')
,p_updated_on=>wwv_flow_imp.dz('20261123203212Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_cat_origenes_402410_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B030414000008080006A4775D0B9FE5F24800000078000000110000004341545F4F524947454E45532E6A736F6EABE652CA2C49CD2D56B28AE6AA06B253E2F38B32D353F394AC0CB97494F2F273938A52E1424A2EA9792545F90AC199C5403D894A5C';
wwv_flow_imp.g_varchar2_table(2) := 'B55C3AA89A8CB068722B4D2D4A44D6130BC400504B030414000008080006A4775D689CA63A040100003E020000190000004341545F4F524947454E45535F70726F66696C652E6A736F6E8D515D4B0331107CEFAF0879BE885605F14DB14A415B28FAA452';
wwv_flow_imp.g_varchar2_table(3) := '626EAF17C9C7914D2D52FADFDD6CE58AD88A0F59C8CCCE3093AC0742C8C63A50F9B303292EC5595520B46141608AAB8235DA2154FD2A04136B5A2894BCBA3F1D3E3DDE5E48E649A0101C981C13D33683C72DD7822E2A5436A8C626CCBFED0D7E14771711';
wwv_flow_imp.g_varchar2_table(4) := '6A96BFC8ADB689C950C664BD5AB5E4899D361C37A7E5B734BAA50F4818DD9EE908B1E6495CD09E97E5F8663E9D8DEF46137665AED659F7E5873B188CF5DA29D3EA6D91A33D12E520B06CA7FB59BE9EC76417B4D4F316D53BC6D0D7667C531DC83B993E5C';
wwv_flow_imp.g_varchar2_table(5) := 'CF467F673E399CEBFC787FAE10FD5B827F66A3F9CA2FDCE944DF523E0DB9F460F305504B0102140014000008080006A4775D0B9FE5F24800000078000000110000000000000000002000B681000000004341545F4F524947454E45532E6A736F6E504B01';
wwv_flow_imp.g_varchar2_table(6) := '02140014000008080006A4775D689CA63A040100003E020000190000000000000000002000B681770000004341545F4F524947454E45535F70726F66696C652E6A736F6E504B0506000000000200020086000000B20100000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16570628078248732708)
,p_file_name=>'APEX$DATA$PKG/CAT_ORIGENES$402410.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261123203212Z')
,p_updated_on=>wwv_flow_imp.dz('20261123203212Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_cat_proyectos_615984_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B030414000008080006A4775DF76EF734BF00000041020000120000004341545F50524F594543544F532E6A736F6E8DCFC90AC2400C06E0FB3C4598B354DCC55B1CA7363A5D6C555C11AD3DF4A0955A0429BEBBF52632C21C02E10FF9484AC6D322B9';
wwv_flow_imp.g_varchar2_table(2) := 'DCF960CBCAAA3F1F6E79F64CE222E3831EABF16B7639E5C957C8179E0FB6922B5E4D8F71913E3E61C4D98BD57E81BE1688DC09A09A59304615C0C6220B50867E600036B420794B0B3EAA6F93200F0DA0E6BFCB767514B8767D03A3A535044608F390AAE7';
wwv_flow_imp.g_varchar2_table(3) := '0C8CB6D6707114523425184A148E01D3D133241CA924080C0312262F75B5CE125D52BAFD7D556F504B030414000008080006A4775D981703D21C010000D40200001A0000004341545F50524F594543544F535F70726F66696C652E6A736F6EA5925F4BC3';
wwv_flow_imp.g_varchar2_table(4) := '3014C5DFF729429F1BD9A60FC3B739270CD4CAA882A88C98DEDA48FE94DC6C638C7D7793545AC48E813E249073EEB9FC2E37FB012149292450B7AB212197E4220D120AFDE1456BB6412B994448DB52D0DC14BE2058C9F4F67CFC98DF4C92E8FB004590C0';
wwv_flow_imp.g_varchar2_table(5) := '9DB1D1160E14365E052CA4900A4D4B61D1FD6ECF7113BA4B8350C4F86BD2644B63B967B442D16DE57B62CD78C47576FD1D3572AD347ACDBF5EFC21641F6FEF69A66271B2B85E3D2CB3E7F92CCF62DFE816CCB176FC712703178A49CA2BD68C72D613A112';
wwv_flow_imp.g_varchar2_table(6) := '748C75B99FE317ABDA9A5D10BAB440FA8946B7A347FD901E61BECFEEAE96F353DCA3E36CA3E1B01F4E1BF56EE1DF80D359BE78FA0B573F15E34E6C4EC2F8FB2DEEBD66D67F96F095C2EEC96470F802504B0102140014000008080006A4775DF76EF734BF';
wwv_flow_imp.g_varchar2_table(7) := '00000041020000120000000000000000002000B681000000004341545F50524F594543544F532E6A736F6E504B0102140014000008080006A4775D981703D21C010000D40200001A0000000000000000002000B681EF0000004341545F50524F59454354';
wwv_flow_imp.g_varchar2_table(8) := '4F535F70726F66696C652E6A736F6E504B0506000000000200020088000000430200000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16570628316565732710)
,p_file_name=>'APEX$DATA$PKG/CAT_PROYECTOS$615984.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261123203212Z')
,p_updated_on=>wwv_flow_imp.dz('20261123203212Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_movimientos_financieros_717819_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B030414000008080006A4775DC595DE30F80C00004CD900001C0000004D4F56494D49454E544F535F46494E414E434945524F532E6A736F6ED59D5B6FDBC612C7DFF329083DB58043ECFDE2375AA61D06126950B4D193730E02D5517B0C3876603B01';
wwv_flow_imp.g_varchar2_table(2) := '8AA2DFFD2CA534816D954B72B8EB4990040A61F9921F6667E63F97FDF3D5ECEA61F3F17E76F8EF577FBAD71FDE7FBCFD72F5F16A73F3703B3B944CBE3A98FDB6B9FCDFFAD1F319234CBDA6E435950D2187DBDF33F791EEED9FEE6EFFD85CB61F44770F6E';
wwv_flow_imp.g_varchar2_table(3) := 'EFAE7EDFDCECFE79797B73B9F9B4FD0C6FB379513655922D2EB23A3BAEBEBEFD72FDB0F9DDBD65BD7BC3C7DB9BCD07F77A76749FCE76FF7EB87DFFABFB76A91084A6C67E7BF8F9FEC3ECF0E6F3F5B57BF2B0BE5FBF5F7FBABEBA5CB7EFB696B887B7BFDE';
wwv_flow_imp.g_varchar2_table(4) := '6FEEBEAC2FAFDCE7BCFFF6A197779BF587DBF79BEB6F3F157D4D7843CD2117878CA5D25AA515D9FD7C5FBFFCFA7EF3EDFDBB47575FD6DFBFF8EDC3FAFAFD6FEBCB87CF77DF9FDE6D1E3637EDD77E7F757F7D373B248F9FB5EF6F1FDD6CDC677BB85BDFDC';
wwv_flow_imp.g_varchar2_table(5) := 'FFB6B9BBBAFBFAF6BF5E1DEC83A342C129AB65516649BE3C5BE48ECD6A281CCB88202C5532341D0746518B938E0E45679E95CDC57324827532D154139112150189E6142712130A49B6CC8E1679D21E69C541324FB374301F4A18B13CB52C0220C3094E40';
wwv_flow_imp.g_varchar2_table(6) := '3614A055B6D8E7633C4C5E736AB452291511A05882D36A38E986C2D88F110348101CC571C2A1A1E034F9AAAAABA4748CAA325B3C67D36D3A8C73A248CA4D78389448A496C342C1E9779CAD9E3031D4D0544430174A19C349847713E1E4C738CB208E8652';
wwv_flow_imp.g_varchar2_table(7) := '2370C211A1E080F31917D0529BB208B1196502A9E978A480F1748EAAB2B59B6299BBE8D9799BF19C28519AD23406264E90629A4E14608F31D5595116799DCCDF6417F9BBC126D466E931B8689CA90D9F4E0E98940BB5260A172191DACB749AC0132EA7D9';
wwv_flow_imp.g_varchar2_table(8) := 'AA2AF6C4CDBA9387B2949954C538C22452E58C4FA7023C41020ED2AC88622CD2E03CC484470A184FE6ABFB1F2ED150616414268A1B9C4C3C0AC07826475939DF0384D947409E26996D0CD63BC98411B1488978D2FEF14406E631E7ABE3C76C1EFDDF6CC1';
wwv_flow_imp.g_varchar2_table(9) := '484D7A7299FDC4244916C52A6F9A83A47DFDB67A53D4F9EA209132A98B26FB79D68B9B2048B534E1110706C8351387CEBD4F3888682318D538B9787481705CBA4335DAE63431B8B4FC3172F12802E3B99C2DB2B271E7DC229F377531CF064705C62896F6';
wwv_flow_imp.g_varchar2_table(10) := '2CDA80D8604D3785470618CF26620C0D222314CEA280F00801E3C98C8EA1797F0D00844432A40EC6A301008C253F39C9EB5555FEA38B11DDD6C2B86586A534061D8BB32C203C72C0783A27E78BD3AAF63279564693BDA54C10102571C6C972BA86802740';
wwv_flow_imp.g_varchar2_table(11) := '9C6369065735B71E38020E4D70CA6572BA16802738F28B6A71DE14EEF46A8AC1589C033636253D5B00616434CE00594E57FF7F426699D54D51263F1DE7AB65B6C8DFB938ACFE793022EE522B96B21871B2E138E57F192CE7EFA79E3DF3F75AB254F66CD2';
wwv_flow_imp.g_varchar2_table(12) := '841131488FB360D9FE595D2DB3629FBF7F64263D543326F7AA66201E56E0EC3297D3D5FD7FC482B2F32C48A3304F861F8E8B4F158B525096BB2666845C3CF93D804B31CFEABD6D7F1EC5A57FBE02224291762E494F7A3F9EC80F524F96D4E2145EA427B5';
wwv_flow_imp.g_varchar2_table(13) := '1F4F067D3D593289536E519EEC1E602D50314CC439C738D2445F7912FDF164CAB3E12A18D571FC3C5738937BE549EE0167D7519DBDC94A9F337926B8443AB8B65E1E2390E97AFB616D17CFC8B8589532DDB71E0983637146C56ABADEFE205218ED2F2283';
wwv_flow_imp.g_varchar2_table(14) := 'F848A49ABE0A96E58F1B55528AF2BE552F10104571CA2E2A587A3F4E989486A954F79CE68311D1484D04D0C1CF1E13793200E38EB022730E6659D5835348E78CA9E2511AC6A5E6484331400F7F379979F63673D9CA981624C5A5D15126C79540DA2EAE00';
wwv_flow_imp.g_varchar2_table(15) := '8DFCDD5C468EF34764220D4EBFA201C57B8FAD54CBBC9E17D9A2D8C660597252FC725A8DDC866135D75AA786F74305A9BC282571F6916B40611FE2707C0A99B3226D52D1333A03A1D10CA7C7D180E4DF73B29D2FF38B6C91B83473EC22196598913AB511';
wwv_flow_imp.g_varchar2_table(16) := '8235A591569135400C08693B523BAF98CA088BB194419A6A6A801410328E6692B9D82006194B919E6A0011201C192E5DD012433C5356230D04005A80C7DB2CE7C9BC2A574D7D3E6FF7FCE47BB44D4F770CB72A8E76A609D24A800654FCBBF1E48B64795E';
wwv_flow_imp.g_varchar2_table(17) := '1E57C9B17B757A9E954D9E3042C53F4506BE3E0023B44C4904A940538173FA42037A01A648499FEA9CAF29A394B3DED134080A234873D2E97482FD959BEAA8CEEBE1EB648C124CC738D918D28958E3110BC683810404D6ECC2FBD05438C5190E18C0C4BF';
wwv_flow_imp.g_varchar2_table(18) := '874A7551AC9ACCDB22BB4F858E1202708D33DD341E3D603C925D33C03239C9DD1936F8048BD413A085C4A9401B8F0C309ECBB82A1A2756A424C6E18575B98FF164FF515C4A8F167F4EE8F44C90E69706B0E5BF9B499D9D642E7599BFA9CEDF794B687D06';
wwv_flow_imp.g_varchar2_table(19) := '2FC4DEC10B101525909E5D804D7EDD544EF2BACE9BDC994BD2E48E4DD2BAEF649ED58B7D31F260487C170B4C4B693BE5899112609CBF9B52515EE4F56A2BCA24FF7AA2D224D48CAC0E48A5A9D17D5764028A379450A41B180C60DCBF1BD9B8957F54935D';
wwv_flow_imp.g_varchar2_table(20) := 'D7F53820B33FD6C9FD26F9B4FEFD3F9F0999F3F6EF239EB82F9350A252C548F2933B3793EBAB87BBDBFB7E4B9A28E114677BBA016C03E886075E3AC3A3EC0570682C4E19C74ED75AF004CDDFBD9D6D5BC1887A681C2C02696E6AA76B23786A31D5BBE125';
wwv_flow_imp.g_varchar2_table(21) := '50DDDEA6140187443A8D663D52C1781C6FAB375999BCCB964775568EA84D5315633393F3494857675BC02E002F99326B1C9CD3F3BC9D141CCC663BBF17030D5221DA02960278F4B545FE4BB14AAA262BFC19EA8B71D148676E2C6005603797FCB8D84D0A';
wwv_flow_imp.g_varchar2_table(22) := '167551FAD3D2972383F472400B5800D84BD3A9B3A5E3B3A8CEF60E7222713506E990AD0DA61AF418B2C5119F598A340A08A60E2C5B81AD4CCE8A323F1E91C60819630DB003A371CA363658E63FC18936A0D00681E3B24C9407DAEEC80802678216B5FE12';
wwv_flow_imp.g_varchar2_table(23) := 'F53E79EDA828B3729EF7D3CDDC2F94351E4582A9004100516DF6D6DF26008453A651C4A30B0CE84C7BEE77C6B745DB6D5B74F8AE684A19CE05688A4C374A30857EB6DDAF15BEA783524E502E0D5264BAF9818905B401111A8C0CCED94245A69B1F784101';
wwv_flow_imp.g_varchar2_table(24) := '0D844648A468A61B217829010DC445E2BC925E91E966075E4E408391314803E6E926055E564003D151588332C0E6403C021A088D2628C7A114F54801A044269280060383B3EFC97D67884FB4389DEA941A9C979C291A2CFD1FD9A96E854C49F815028E88';
wwv_flow_imp.g_varchar2_table(25) := 'C6296952C0EC00F7980BE8C666B1BB812534178BF3C25345011304DD5CF2E3D376C17672B2A846CCDAC4F2FB16E73D4D8A02A6083CF6F24F8BCF3D86C25A471C9E08230AA7A44C011304DD4496D9795D1D24A7D9AAA9CA83E45BCC3C585EE62CC61661CA';
wwv_flow_imp.g_varchar2_table(26) := '28D2FC9F02960A76233A6E479F4FAB553BD7915D64E783AD478B28E719A34805000AD82AD88DA6C98E16C562B12785F16C4261868A9E770381903089D45A008B02BA91CCF391D705B48DC63C253A0295ED1186900AF324FCE3A964F362C49A474AA9A022';
wwv_flow_imp.g_varchar2_table(27) := '65E1EFA0A74C0A9CAE9F017604046142183131BC89C2B9A356314F7E0F38BA9CA36FC70487A7F886F318957DA6094E77C2000DFF48327C483319DBDEA085910BA0DB1F49860FE262916A940CD0ED1F26C38FD4136BB8456A29802EFF1E193E5203D96D36';
wwv_flow_imp.g_varchar2_table(28) := 'C58803D0D6DF8D63A7B460E581744DB362805EFE01EACAD13E758593EEA36B80BC026383F3EE3FC500EDFCBDE4957CC47E66CE898E117A198373E7BCE2803EFE6E2ADF97CEEC495464B7ADD056BE4D45CF841E04C6E29CB4541CD0BF1F0C8CA052899446';
wwv_flow_imp.g_varchar2_table(29) := 'E182737796E29EBCFE45B848C68C4E654F5112C2C512A452310F96DB8F5DF2A399487B8AF7202294A11CAC543C5C56BF9A57CBA3BD0B7E7D9734B509646A7A8A60302C06A9A1044BEAC7190A6BE3D5083C18C71917F36029FDC8463025544AC25FF6E388';
wwv_flow_imp.g_varchar2_table(30) := 'E0BCBB54F16059FD32DBFAF745BEFAB676CCA594D95BDF39D6675326ED3DE07A56D5C9A0194ACB71AEFB551CD0B38F44D087145AAC403AB2C701DDFA48047D18179C17342A0168D5FFA15BF6ACE438EBF602D0A3FFB2823E0C87C529200B4F763F1E4770';
wwv_flow_imp.g_varchar2_table(31) := '411FC4432175F002308B8F48D007B1C13AF7250073F9E1047D974E3211A3CBC56E17C161E40298CA0FA7504A23441AA143CF1A9C8BAC95004CE48713F4A552268D30F5650DCEBD894A0006F2C361E1C6881817FA526B910E4A8860A97D1717EFA8B7E451';
wwv_flow_imp.g_varchar2_table(32) := 'FA8CADB3179C588265F6002C8C08C153137E528211A270165B64B0CC1EC065BB1B27C6AC042394E1CCEF65B0FC7E7459B26FF50BC603E9F9254326F8D5A228F75849371117ADD25485BF22CE3D44BA4B54064BF2476960B41D508C8083E3BC1641C96079';
wwv_flow_imp.g_varchar2_table(33) := 'FDC882A4603CA5E1EF4B764424D2430B50B2979D44E655B915C28AAF1595723E26FC62865B1BE18A3117E7E15C22AE24A088DF4D689CCD2823E3F040BA9952024AF8D35B4C8FF2BDEA5DBDCF4FF279535C54BD4AF78C4881533D9680FC3E84C5C4F0F88A';
wwv_flow_imp.g_varchar2_table(34) := 'E06C789180D67CE3B196FAAC6A5B5D063B151715AA548BD167D86C59AC9655B2ACCAA64ACEB2D5F7BB122D4FF2E3F3BFABD57DB02115FA15A077BF1BDB3813A23655E1FBC6188A2B78FEEBFEFC1F504B030414000008080006A4775D768EFF3B60020000';
wwv_flow_imp.g_varchar2_table(35) := '800D0000240000004D4F56494D49454E544F535F46494E414E434945524F535F70726F66696C652E6A736F6EBD97ED6FA2301CC7DFEFAF30BC96653EDD83EF3AAC9344C1009A2CE78574B568EF809AB6BA2CCBFEF7FDA817BDCB814B708104127F0FCDA7';
wwv_flow_imp.g_varchar2_table(36) := 'DF7E8BF4F5A6D5B2129E325BBFEC98D51AB6FAED22A478BE81A014CF452C21A962ED5329CBA958434191B2D0B4D75D44E36F96C94383AD58CAA816D2A4B966993AE6B68C145DCAE6B99D70A9F4FFC3537528464F85626BD3BEB28EBD8990141825CFECE7';
wwv_flow_imp.g_varchar2_table(37) := '2D8CA976841A5C2DF77F5A45BACF720531F8F503EE56EBD53C219793CC145BEE289EF94B77E6622FF2CDC826BF269A9C04E89EC38CF28CA436DD92E3646E4B5AEC94E5A6EDDCF7AF00EB3813079E71966B71EEE7CAFEA5447E9ABE89BFB52BB8C7D899A0';
wwv_flow_imp.g_varchar2_table(38) := '8FD17BD5785FCBE91206932B0504C533A2ED8CA8DFA6F2112E7B36B347A39515ADACC9A4DB1FCEDC6118D69D13ACC53CF01FB1D3E04AECA47829025730FB81FB80BDC68885E41B28AAC9EBF89E83E79502772E200D06E54C54E494EDAE92D041117E001D';
wwv_flow_imp.g_varchar2_table(39) := '51632A52A2D906A42475A967BE874755BC1764EC9523652267EB6B60223FBE0F9B910F58B5889FD475B48B70D424EE5EADEBF2462844319A4F5D0755AEF827336BA2484C7629A7A4BE2BFCFB10074BE4B860D52A6B5C70EAE0EEAE1C4E3C29260F8472F0';
wwv_flow_imp.g_varchar2_table(40) := '6C6D13380146233FC6D30AB07E3558A753CE45257C4F8898A535FEB36EC7E3EF57EE3E14E246F71F51EC3A6277D9909B8FC0FC50DBC9911FA1693C464EB4089ADA814293344E08D57B599B3BC011F68AFD17BBE13468065C320D1FCCB03763AE52F909E4';
wwv_flow_imp.g_varchar2_table(41) := '4DB9E42FF0FA4EF130183B0A90178E71E0362479CEC0DE5A925C254CF20F3587E74F7342D91109C79AE2D0A3CC7BADF7E5E6ED1D504B0102140014000008080006A4775DC595DE30F80C00004CD900001C0000000000000000002000B681000000004D4F';
wwv_flow_imp.g_varchar2_table(42) := '56494D49454E544F535F46494E414E434945524F532E6A736F6E504B0102140014000008080006A4775D768EFF3B60020000800D0000240000000000000000002000B681320D00004D4F56494D49454E544F535F46494E414E434945524F535F70726F66';
wwv_flow_imp.g_varchar2_table(43) := '696C652E6A736F6E504B050600000000020002009C000000D40F00000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16570628638324732720)
,p_file_name=>'APEX$DATA$PKG/MOVIMIENTOS_FINANCIEROS$717819.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261123203212Z')
,p_updated_on=>wwv_flow_imp.dz('20261123203212Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_tasa_cambio_historico_523966_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B030414000008080006A4775D00F1203DD60300006B1C00001A000000544153415F43414D42494F5F484953544F5249434F2E6A736F6EC558CB6E5B390CDDE733BC6E08919248D1CB797C411F9BC120081ACF4C80693C68B22BFAEFA5DBDA9275B9B0';
wwv_flow_imp.g_varchar2_table(2) := '7C85CC2240706DE59CF01E1D1EF2CBCDE6F165F7E979B3FDE3E68BFDFEB0D926BC79B3F96BF7F19FFBCD764381F816C32DA67781B7216C316CECE34FFBA7DDC3FDDDFEF3E3DFBB27FBDAFBB7BF358F1F76CF2F8F4F7B7BFEE1F7B787E72FF7CFF6C78A08';
wwv_flow_imp.g_varchar2_table(3) := '68A07878F0F8DFFEEEC7D3CD2FBF7E387CE7E3E7DDFDC3FE6EF7AF8F0A8854288660F85F6FDEFCE41AD9231BC3F158BA9E6C51A09C07C836A890D4C8A68EAC942559BCA5D331BA9AAC620161A64BC99EA102A13DCC1D59B7B098D7732DA2804479400515';
wwv_flow_imp.g_varchar2_table(4) := '158A3205ECB86270C9CA04B2E520BCAC03642B2A8440220BB2E4922D13EED738D98A0A5C3273E8C8926B0674BA96B8822C0391E0E5641B54082597587A3370EE975D4B3C1E8BAF6906151538D9F9DE0C92A359BC0DF8FACE75860A56D5927BCD2647B376';
wwv_flow_imp.g_varchar2_table(5) := '8CE690CD92D300D98A0ACA2186DEB992635D76ECA41EB99EAC46334B19A96C4505136C24EDC816B7B244FF4B4FA0C6BA62284B9FF5A381CE7003BBD3CC17CBE00C15B2F514EE2B8BAE1BD051EA4157908D109507DCA041054B41F6D27BEBF27D566774B0';
wwv_flow_imp.g_varchar2_table(6) := '624D330C348506150AC665E8CA0E59937A99405679281B9CA182AA8AF43E9B7D3738FD8F2B64A002D9EEF400D98A0A982D08709F10DDCAE284CA2AB2F52191CBC936A8F64E7226E9ADCBED6027A9AF70832BACABA25A072B292E7CD6AD2CC5F5D9E00AB2';
wwv_flow_imp.g_varchar2_table(7) := '15D54C2FA448BD75B9E1BB46F6351111CD8078C40D421311D524B488883ED96366A7578D8815D5DA2D27ED2322F94D81675476986C45052D6877BFB72E3F22F284D435EEB315F590D730F632C8EE708B332671B53C2B61806C830A54F2F79E703EDCBA95';
wwv_flow_imp.g_varchar2_table(8) := 'C50993820604461921DB4C0ACA68F1BB27EB76B0BA1AB9BEB26A6EC994063A58830A87D1B6F44D41FCCAFE500FD9FD5B413641202C03642B2A2899EBF59515377CD7099E5790CD204978806C45B5CAC6EF93F87953F0A2777C47D1CC6ED5F51203D4CBA9';
wwv_flow_imp.g_varchar2_table(9) := '1E5153DE06B137A251FB80E89A2C4E31D9E10D4763B29248A5E74AEEEE68C6006631C42075A0B0ED00266C8EBA685FEEEEA8E689356487DB5745852898177378F42B2BEBF3612902315C9CB8CE406DA4F156477E61CB0CAEC5247BF99470866AFAC931F6';
wwv_flow_imp.g_varchar2_table(10) := '1E9BFCF96B42962D8A8061681BD36459921275B18D717341C83372410253C280C736A810340A2F265B7FCF7552CF9AD5D170E2AAA810828D347D3C64BF7B9D3C24AF083109522A2321A6A242CACAA19FBFD89F6CE304B2E321A6A202A6448BD511FB5976';
wwv_flow_imp.g_varchar2_table(11) := '8266AF20DB68961549FA6151FC78386129A7A63CB1AC3F40B659CA596C4FF9B88DF9D37EBE01504B030414000008080006A4775D0B67091B8B0100009205000022000000544153415F43414D42494F5F484953544F5249434F5F70726F66696C652E6A73';
wwv_flow_imp.g_varchar2_table(12) := '6F6EAD94D16A83301486EFFB14E27553565BD8D63BA9BA0AB58EDA5D8C754888B1CD161349D29551F6EE8BE9A88C6907B682819C73FEC3F7277A0E3DCBB2734231509F25B6AD8935EE572149D8460705DF57B11C5289FBA752CC10CF744195B2DDF9C879';
wwv_flow_imp.g_varchar2_table(13) := '5A0577B6C96B01909862A4B83069A270218FB92D86954A02C2404E84547FDB23F95175A75CE2CCC8D7F6519B738134A32005D86F754F5942647095D8FD4839DD154CEA98DEBDE8D7B20E66D539060B536C879E6967821954F0E4DAA9C31891025280B6F0';
wwv_flow_imp.g_varchar2_table(14) := 'E860D02001143323AB75BF5D67B58848F026393B1935F1AF7E0B61E04F676E0BE4A81DE4B69923C7DA46DD4D9F62011528A07C37E967FD8028029EB7B6576B7B3673C693289C244957FA285EF89E9BC6CBF0C15FB4B818B6BB18DE34DB2838C3194CB920';
wwv_flow_imp.g_varchar2_table(15) := '1B5D78199BE727AB70115F1D2EC35211C6BBD2ADDCA4EDDAAFFC6D2A286167CAF0314ECFA09E393EA7E5F81429797A09D374E9BB5E9CFAF316A6F1992B1D363321A147154F31EDF0EB0C82E0FE3F2B7A7D3543AB84424FBA6A0E4A83EAF4BEBE01504B01';
wwv_flow_imp.g_varchar2_table(16) := '02140014000008080006A4775D00F1203DD60300006B1C00001A0000000000000000002000B68100000000544153415F43414D42494F5F484953544F5249434F2E6A736F6E504B0102140014000008080006A4775D0B67091B8B01000092050000220000';
wwv_flow_imp.g_varchar2_table(17) := '000000000000002000B6810E040000544153415F43414D42494F5F484953544F5249434F5F70726F66696C652E6A736F6E504B0506000000000200020098000000D90500000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16570628992929732723)
,p_file_name=>'APEX$DATA$PKG/TASA_CAMBIO_HISTORICO$523966.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261123203212Z')
,p_updated_on=>wwv_flow_imp.dz('20261123203212Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000959494441547801EC9CCB6F157514C7CFDC222F214020BC7C95472B26066E34218231C2C68D91A51B17505DBB76E10258F817B871A31716AE4D706762408D9010';
wwv_flow_imp.g_varchar2_table(2) := '178585680B422260450C102850683BFEBE33779A727BA5BD73CE3C7E33DF9B7BEE746E67CEE37B3EF39B5F7FED6D43F8A0020A050890423C9E2A428048814A0102A4928F27132032A0528000A9E4E3C904880CA814480D902A2A4FAE8C0204A832AD2CA6';
wwv_flow_imp.g_varchar2_table(3) := '1002548CEE95894A802AD3CA620A2140C5E85E99A804A832AD2CA61002548CEE95899A3F40F348B7FBF8D5B5BB8E5F1A8435BFBAB877676BF4BDC49AAD91437531D48CFA61D002066DE6912FF76F170E50B375A1BFD91A3DE2ECA4B3F0D1F4839BC1F4F4';
wwv_flow_imp.g_varchar2_table(4) := 'EF3009C29F5D82271213095A7531D48CFA61D002066D9AAD91CBCE5ACD58B37D52F0C3E5997F06AEF87DCDD608440845165D76191C7656B8182E070F9E41BF48704844A099BBE84600140CEFB9B7F37D36F20CD78CAE9A110073526211840FAD02018082';
wwv_flow_imp.g_varchar2_table(5) := 'B90B12308D1ED17AECE5FC5C008AC11975A30DAE1A14DC4B8A3C76E10A44DA1E6E46B7B97C40CA1CA0666BD48D360067E132F048AD020948D943941940EDC931E0E1DC46CB43FAF3DBA3D105778B4BEFE469676602901B751C34D1E4D86D9F16BE97EFF1';
wwv_flow_imp.g_varchar2_table(6) := 'D8740A6034EAC3643B9349B6394018795CA11879DC86CF72280088C48D46F623913940228BDC5A4D39646316B31500447DE61776637608EDD7EED6850479DBD20A99D9F9815BB41D31BDC0CD0072F060FD81F064D67C2BC741F4EB202B6F6600898407AD';
wwv_flow_imp.g_varchar2_table(7) := '92A29FCC15386C15C104A0A6FB25A708EEB1C287170A04B89599FC54660290D3CC8C68E7CBFA497FDD1530E9991A208E3EDDBB53FE77310A8DAAE7AC6A804402CE7DC4DB877A14320048D4140B1F052910AA7FC5A10228BE7D15543BC31A28A0BF8DA900';
wwv_flow_imp.g_varchar2_table(8) := '32A8802E8A57407507D102F476F1F53303A502AA1E6A0152D1AB2C3CF3D3EB1140370F5202C4C543FF210BFA359FF6480D103E66E2BF78AC000A4CC8C45A6CD3586A8082A9705D9A803CA75A0AA406A85A32D4BB1ACD604080EACD8EBAFAD4004D0761EA';
wwv_flow_imp.g_varchar2_table(9) := 'FBA63A6B3A305540D3CBD400358400FD6F176BF48DD400D548A3CA97AA190C0850E5F1C8B6400294ADBE95F74E802ADFE26C0B2440D9EA5B79EF04A8F22DCEB6400294ADBE3D7AF7EF702F019ABC775B1EDDBC56197B7CFB864C3F1CF78F1E97B177004D';
wwv_flow_imp.g_varchar2_table(10) := '8C5D76E05C95C97BB72A6300E86154D735D712BF9E5E0104A1A7DC95BA71DD1AD9BB7387BCB37BE78C6D7F6173A4FC47FB77CAE71FBC656A9F1ED81DF946DCD9312DBF5EB97C597441A0C62898272F5E01940CF3DBFB5F92AD1B56CBFA55CB676CF9E2BE';
wwv_flow_imp.g_varchar2_table(11) := '48F2E6E655B26BE3B3A6B671E592C8F78A65CB66E2CD8E6DF1F59E5707A218498DD18E072F0D0F729C9362FF9AA573DEF3FD0D40E8630D5E0274E3CE7DE9B4F1FB0F23FDC7EE4EC8B9B171531BBE7E27F28D97CEB896FBF0EF9B7909D07767CF4BA75DFA';
wwv_flow_imp.g_varchar2_table(12) := 'EB9F48FBCF4E9C958FBFFEC9D4BE3C793EF27DF1CFEB73E276E6A1D98F82A47B29EC2C2F01C284B9D33009858AAF6FDD24EFBE36606AF029EE81189D712DF75D08EF9E5E02F4C68E17A5D3B66C8AFF44FBD09EEDF2C9FE6DA6069FE8EC86B56BE6C4EDCC';
wwv_flow_imp.g_varchar2_table(13) := '43B38F18BE59C3B784996FB9142040E5EA8777D91020EF5A56AE840950B9FAE15D3604C8BB96D926ACF5E62540E3139332C7DA0B8910646CFCB1989A5B9C845FD89CB8DD7249F91EFCFB665E02F4CD8FBF48A7250B8958447CFF8BEFC5D2B03889C66221';
wwv_flow_imp.g_varchar2_table(14) := 'B133AEE53E62F8665E02D46DF10E8B7C101F8B7E5C488412F9989700755BACE342623EC07446F112A0CE22B85F9C0204A838ED2B11990055A28D0514D10E4980DA4270934E0102944E379ED556C04B80BA2EE67121B1DDD27C375E02D46DF18E0B89F982';
wwv_flow_imp.g_varchar2_table(15) := '9344F312202E2426ED2B7EEB25405C482C1E9C24032F014A92E7B678057A07A8F89C994189142040256A868FA910201FBB56A29C0950899AE1632A5E02C485C4F2A0E625405C4824402A05B890A892CFF4E41C4720BBBCB99068A7A5D6939700698BE6F9';
wwv_flow_imp.g_varchar2_table(16) := '760A10203B2D6BE98900D5B2ED764513203B2D6BE9C94B806EDC7B54B966616DCBC7A2BC02A8B1F4D948E333E72E54EA7F24FEF1F76D39F3EBA5A8B6A4C668C783171F009A91F199D5EBA5CF4174F7FE8339FFAB30F98B447C0C191F6FB6B4ACFF47E2E9';
wwv_flow_imp.g_varchar2_table(17) := 'F3BFC9D8CD5B516DA871A6600FBEF00A20E8B964E31659EA0C422F5AB146AA62A809B5A1469FCC3B80202E867900B478DD735215434DA8CD37F31220DF44AE72BE04A8CADDCDA136029483C8550E4180AADCDD1C6AAB344039E857FB1004A8F608E80448';
wwv_flow_imp.g_varchar2_table(18) := '0DD0B404FFEA42F3EC2A28901AA02A14CF1A62053483416A801A2147A0587EFF5F35BD4C0D90FFB2B1020B05520314F605372D12A08FE215D0F4323540C5979D610674BD60055203B44496F0A7B005CB5CEE0335BD4C0DD0D983CF13A07273B1E0EC34BD';
wwv_flow_imp.g_varchar2_table(19) := '4C0D503BBB53ED2D37DE2A101ED3A4AE05E8074D709E5B0A05543DD402C411A8140C68929852F55009D0E4154DEA3CB7780586875E51F55005503BB88AE0E225B4CCC0375FBAF90FAA55010407CE8E3AE3D34B0582E3DAB4D5000D0F0D6004826973E1F9';
wwv_flow_imp.g_varchar2_table(20) := 'B92A105E69F74E15550D501C3D54931CFBE16B8E0A98DC398C00C24C3E544DC672148EA19C02C34383AAF51FE7227A9A00D49E4C9B101D65C597AC1530EB950940A836263A34A11AFE68992970CACD7D8E58793703284E680A6473421D8BD1CB6B4EC746';
wwv_flow_imp.g_varchar2_table(21) := '13E7FD96C14C018A6F6593439609D297A50281796F4C0142A93144A179A2F04D5329B0DFDDBACCEF0EE600A1C4783E34B94524E44F6610A4508B7A90093C282B1380E0381E89A670BFC5BC086FD1F257C04D9807B76431F224A5640610020022973C66FC';
wwv_flow_imp.g_varchar2_table(22) := '0EA2E84AC0DBB4CC1588B43EEAB4C7059C69B44C014A3277853888301A457323F3FB701287DB049C68D4719A67AF482E00A18C78341A3CE6607257054182261616FB0038E1909B7BE276950B38715C91DC004A0262EB0A6D838489B6B4810AB9080971E6';
wwv_flow_imp.g_varchar2_table(23) := 'B5103F98601477D302C1E438707A3A706C7E35316FF88E030A0128C9211E950630D173400DBA2B682058DC58B62E6C345E864918BC099B1639E07EA2734B0318B9AA6FA83731D40F2D606EF46EC33200708EB87D8094C859C8B65080BA558C4F089C3BB8';
wwv_flow_imp.g_varchar2_table(24) := '6D0436FCE1F6D3B0F34303DFBAAB0C90D5C2506F62A81F5AC0BAE955F47BA503A8684118BF370508506F7AF1E80E0508508720DCED4D0102D49B5ED539DAA812026424645DDD10A0BA76DEA86E026424645DDD10A0BA76DEA86E026424645DDD10A0BA76';
wwv_flow_imp.g_varchar2_table(25) := 'DEA86E026424647DDC3C5929017A520FEEF5A80001EA51301EFEA402FF010000FFFF01A88936000000064944415403008C6543B7D1A051CF0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(36592896509843560239)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20261016185318Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000888494441547801EC9C4F6B5C5518878F7192D44E850AA5062C685D74A5285250374510C56D772EFC00EEFD1CFD0CDD74E5A6B82BD48514942A2EAC168416AC42';
wwv_flow_imp.g_varchar2_table(2) := '942AAD2DDAD4364D53E704E6E638E6E69E49CE9FF77DCF53BCCE99B977CE79DFE7779E4C20975978FDECF5271C3068750F2C38FE41A0610208D070F8B4EE1C02B00B9A2680004DC74FF30D0B40F810E05720F640E304F804687C03B4DE3E02B4BE031AEF';
wwv_flow_imp.g_varchar2_table(3) := '1F011ADF00ADB78F002DEE007AEE0820408782418B0410A0C5D4E9B92380001D0A062D1240801653A7E78E0002742818B44060B647049825C2F3A60820405371D3EC2C01049825C2F3A60820405371D3EC2C01049825C2F3A60834244053B9D26C240104';
wwv_flow_imp.g_varchar2_table(4) := '8804C56536092080CD5CE92A9200024482E2329B0410C066AE74154900012241A9BE8CE27B0920402F1A4EB44000015A48991E7B0920402F1A4EB44000015A48991E7B0920402F1A4E582030D403020C11E2BC690208603A5E9A1B2280004384386F9A00';
wwv_flow_imp.g_varchar2_table(5) := '02988E97E6860820C01021CE9B26605800D3B9D15C220208900824D3E82480003A73A3EA440410201148A6D149000174E646D5890820402290A2A6A198680208108D8A0B2D1240008BA9D2533401048846C58516092080C554E9299A000244A3E2420D04';
wwv_flow_imp.g_varchar2_table(6) := 'E6AD1101E625C6F5A6082080A93869665E0208302F31AE374500014CC54933F3124080798971BD2902860430950BCD142280008540B38C4C0208203317AA2A4400010A81661999041040662E545588000214029D751926DF330104D8333ADE6881802901';
wwv_flow_imp.g_varchar2_table(7) := '36EEDD75EBB77E750F56AFB9FB3F5FE548C8C0337D78F386F38C2D6CFC690F260478B2F1C8F970D66FAD4E02BAE33637D6A7FDF198888067FAF8C1DAE407CCEA166BCF3CD1D455A7312180DFF83E9CAA241B5ADCB3F6CC2DB4AC5E00FF91EC039986F1DA';
wwv_flow_imp.g_varchar2_table(8) := '89E3EEF4A993EEA3F7DEDAF1182F8DA697BA4B9F7C20EAE80A9B0CFAEAAFF5BA67EAD93E7BF0994975CE79E68FEEFEB135AEF9BFFDAEAD5E80C7F7EE740C7C40AFBEF8BC1B2F6F6FF2EE24837D11F04C3DDB978FAD74F36C4E7E25EA9E281DE817200861';
wwv_flow_imp.g_varchar2_table(9) := 'E5E811A531E829DB4B30ADD67F0A4CC75A1FD50B10823F3832D54ED81AE34C04D83199C032AD0E0208A02327AACC4440B100FF2772FE8BAFDDB98B97773DD6D637BA379E3A73C1493ABAC22683A13E6A9E9F9467E63F5302984985468A11408062A85948';
wwv_flow_imp.g_varchar2_table(10) := '220153029C7EE7CD1DFFF815FEF1883F84EDFC07C290D1D058E246DE6B4DA604D82B04DED72E0104D0983D3527238000C9503291460208A031356A4E46000192A164228D041040636AD49C8C00022443C9442508A45E03015213653E55041040555C149B';
wwv_flow_imp.g_varchar2_table(11) := '9A0002A426CA7CAA082080AAB82836350153027CFECDF7EEB32FAFEC7A84B7437F78F62B27E908C31DEAA3E6F9B04EED6345020CA3FEFBFE3F6EE80867F9EDCFBF9CA423AC6DA88F9AE7C33AB58F4D09A03D0CEA2F4FC09400EFBFFDC6D67702F9EFB0E9';
wwv_flow_imp.g_varchar2_table(12) := '3BC2DBA13FFDF85D27E908E3EFAB5FC2EB619DDAC7A604182F2F6E7D27D07879D4FBE8827F2BE34527E9084AEBAD7FB7DE4A9D0BEBD43E362580F630A8BF3C010428CF7CFE157947360208900D2D136B2080001A52A2C66C0410201B5A26D640000134A4';
wwv_flow_imp.g_varchar2_table(13) := '448DD908204036B44C9C8240EE3910203761E6174D000144C74371B90920406EC2CC2F9A802901B81D7AF75BC153DD422D7A47CF599C2901626E110EF948BA15DAD712D616D34BAD6BC23AB58F050BA01D2DF56B20604A006E873E39783B788ADBA9356C';
wwv_flow_imp.g_varchar2_table(14) := 'ECD81A4D0930E676E822B751C76E2E0DD799124003706A9445000164E541358509204061E051CB7151310208500C350B492480001253A1A6620410A0186A169248000124A6424DC508204031D42C1443A0F43508509A38EB89228000A2E2A098D2044C09';
wwv_flow_imp.g_varchar2_table(15) := 'C0EDD0DC0E3DAF40A60488B93D3804E46F41967484B5C5F452EB9AB04EED635302680F83FACB131024C0FE9BE776686E879E7717991280DBA1FBBF157BBCCB3766CF7B6EDE4D26F97A530248064D6D32092080CC5CA8AA10010428049A656412400009B9';
wwv_flow_imp.g_varchar2_table(16) := '5043350208500D3D0B4B2080001252A0866A0410A01A7A16964040BD000BA3A56D8E9B8FB7C78CB210587BB8D1CDFB1FF6DDABBA06EA05786AB4D811FFE9E6ED6ECC200F819071C87EAFABD57E9F7A01160E8C3B8657AEDD7057576FBBF0A7547792C1BE';
wwv_flow_imp.g_varchar2_table(17) := '09FCF0CBEFCE339E4E14B29FBEA6ED51BD008B878FBAF0A3F8BB1FAFBBF397BE75E72E5EDEF1585BDFFE083F75E6829374849BA7AFFE9AAF879BFFE9C90F1ECF3EAC59E358BD001EFAF2CA71E703F1638EFC043C6BCF3CFF4AF957302180FF5DD407B274';
wwv_flow_imp.g_varchar2_table(18) := 'E4D89608E127427E84EDAC303AF49C3B30F961E3595BE9DA8400D33046870E3B1FCE816327DCC1975EE148CC60E9C80BCEC2EFFDD3FDE21F2B0AE097E780405D020850973FAB57268000950360F9BA0410A02E7F56AF4C00012A07C0F2750920400DFEAC';
wwv_flow_imp.g_varchar2_table(19) := '29860002888982426A1040801AD459530C010410130585D420800035A8B3A618020820268A360A91D62502484B847A8A124080A2B8594C1A0104909608F5142580004571B398340208202D11EA294AA0A00045FB62310844114080284C5C64950002584D';
wwv_flow_imp.g_varchar2_table(20) := '96BEA208204014262EB24A0001AC264B5F510410200AD33E2FE2ED62092080D86828AC04010428419935C4124000B1D150580902085082326B8825800062A3B15198F42E10407A42D49795000264C5CBE4D2092080F484A82F2B0104C88A97C9A5134000';
wwv_flow_imp.g_varchar2_table(21) := 'E909515F56021905C85A3793432009010448829149B4124000ADC9517712020890042393682580005A93A3EE2404102009C6994978AA860002A8898A42731040801C5499530D010450131585E620800039A832A71A0208A0262A1D856AAB1201B42546BD';
wwv_flow_imp.g_varchar2_table(22) := '49092040529C4CA68D0002684B8C7A93124080A438994C1B0104D09618F52625905080A4753119048A104080229859442A0104909A0C75152180004530B388540208203519EA2A4200015260660EB50410406D74149E820002A4A0C81C6A092080DAE828';
wwv_flow_imp.g_varchar2_table(23) := '3C05010448419139D4124000B5D1C9285C7B15FF020000FFFF86D4B6AA000000064944415403005BF453E6C05C711B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(36592896895568560239)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20261016185318Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D5B8F1CC515C76B7617877B1664F916086BC3AEB10278085214250F012951DE12E53D91B1F8043CE7C1E613E413A005F10150DE91200F49';
wwv_flow_imp.g_varchar2_table(2) := 'C403024748C6BB8ABD91880D110916D860ECDD9DD4E9CBECCC786E3BDD7DEAD4D46F35357D9BAE3AE777AAFE555D3DD3BBE0F883000492258000241B7A1C8780730800B5000209134000120E3EAEA74D40BC47008402090289124000120D3C6E43400820';
wwv_flow_imp.g_varchar2_table(3) := '00428104814409200089061EB7D326507A8F009424584220410208408241C765089404108092044B08244800014830E8B89C36815EEF11805E1AAC4320310208406201C75D08F41240007A69B00E81C408200089051C77D32630E83D023048846D082444';
wwv_flow_imp.g_varchar2_table(4) := '00014828D8B80A81410208C02011B6219010010420A160E36ADA0486798F000CA3C23E08244200014824D0B80981610410806154D807814408200089041A37D32630CA7B04601419F64320010208C090209F7CFD938724BDF0D6D6D1329D7EF39F6BA478';
wwv_flow_imp.g_varchar2_table(5) := '1894712B9712CF21A14E7E57B202D05EBFB8D25EDF78B9BDBE79BEBDBEB1DE5EDF7CB7BDBE71A5BDBED9B96F61F12B493BDB77AE96A9B5BB7B89140F83326EE552E229B16DE7319658FB986F48923AF062AA4A908400F4377669E89B1DE796AE38D75A77';
wwv_flow_imp.g_varchar2_table(6) := 'CE9D73AEF5B273CE5782D68AE36FCE0964319658FB98B724491D1041F0E2BF21291385798230CE97857107633E96377AE9DD37DF757D8DDDF9E03BFE203040A0E5C53F4B9928B4FD48B09D8F16FC0871736EEBCCC20085A837F71AFD86EFDDA58797DEDD';
wwv_flow_imp.g_varchar2_table(7) := 'CD6DF01C7F0D131041C8EA503142D83CDF7081EAD9CF8500E40D7FC30FE5CA469F054E1D2605CE3381AC4E9DCB47051BFE3261732E3A96A805206FF8DD21BE1FBACD7305C4371B0444085A52D7FCA8209B4F322D04939845290079C3EFF6F85107605280';
wwv_flow_imp.g_varchar2_table(8) := '386E9A80D43D2F043222B8E8E7104CDB3AD4B8E804A0ED6FDBB97C524F5478A853EC84802E0119112C7A21D88C6E8E604117D4ECA5E5BDBE0CF7B34999D933E24C083442A0252380628E209ED1401402E07B7D3FD4CA26F8FCB291E89129046A22204260';
wwv_flow_imp.g_varchar2_table(9) := '6334308D43E605A0BDBE21437D7F2F7F1A77F80C042C101011707E3460FF92C0B400F8C6EF6FED65DFD6B310556C80C07E09981701B302D05E97EBFD96F4FEFB85CEE7216089801701B96365C9A43D5B4C0A407B3D03C6F5FE5E9C588B9A404B7E70A47A';
wwv_flow_imp.g_varchar2_table(10) := '87605A5CE604A09DDDE6A3E79F36807C2E1A027E24606F4EC09400F8C62FBDFEB968428AA110D81F017322604600E43EBF67C96CBF87C06B9E0974CE1475DD84936604C0B9253FE36F82094640A04102AD95A6EBFA7E8C5FD8CF879BFAAC1FFACB04890C';
wwv_flow_imp.g_varchar2_table(11) := 'FF9B2A827C216089C08B459D0F6E5370012886435CF707AF0A18A04B402E053683777AC105C031F4D7AD77946684805C0A84FF5DCB42481A7E18240A2829A419940D815004E452A0D6FABF5F47820A803796A1BF87C02B690241DB403001A0F74FBAD2E3';
wwv_flow_imp.g_varchar2_table(12) := 'FC1E81A0A3806002E05CE7CC1E03D62090348173A1BC0F28002D7EE8132AEA946B8C4067A50E8366C9238800B4F3DFF8CF622FE740600E09B456DAD96F60F45D0B2200DECD60431E5F362F08182410E692585D00DA59EFDF0A36E43118794C828027908D';
wwv_flow_imp.g_varchar2_table(13) := '02D46F09AA0B8073347EC71F048613985900866737796F00010833D4998C824F402038815F685B1040001801680799F2A22130DF2380FCFA3F9A60602804D409B4D7757F20A43D02501FE2A847900221508DC0BEEF9055294E5B00D4873855E0702E04F4';
wwv_flow_imp.g_varchar2_table(14) := '09E87E29485900B8FED7AF50940881D104D404A078F0C7684B380201087802BADF07501300E71619FEFBF0F282409D04AAE6A528008E09C0AAD1E2FC5408A875969A02904AF0F013025509A875968A02D0E2FBFF55AB05E743A066028A02A07B7BA3664E';
wwv_flow_imp.g_varchar2_table(15) := '6407014502D3B5953A0C521400460075048C3C5220A0D75614052085C0E12304EA2170F2F54F1EAA27A7F1B9A808C00B6F6D1D1D6F06472100815E020F1EB8F7C1DEEDA6D65504A029E3C91702A912A8CB6F04A02E92E403810809200011060D93215017';
wwv_flow_imp.g_varchar2_table(16) := '011501D8DEDD5199D0A80B0AF940203401AD36A32200A161523E04E689409DBE200075D2242F0844460001882C60980B813A09200075D2242F0844460001882C60989B3681BABD4700EA264A7E10888800021051B030150275134000EA264A7E10888800';
wwv_flow_imp.g_varchar2_table(17) := '021051B030356D024D788F003441953C21100901042092406126049A2080003441953C21100901042092406166DA049AF21E01688A2CF94220020208404D41DABE71DD917418ECDEBAE93ADB776A8A5CDAD9200015E22F95F0BBCFAEB86FB63E76B7BFF8';
wwv_flow_imp.g_varchar2_table(18) := '94A4C4E09667FEEDA7979CB09718540861F2A72200335601E985A412EEF8DE68C62C38AD2201612F31905854CCCAF4E94D1A8700CC40577A1DE985064F3D72F011372AF57EF68513479DC574ECD1875DF9F7D0FDF78DF465948F5AFBC5B6D24E59DEFEE2';
wwv_flow_imp.g_varchar2_table(19) := 'DF5C1208881912023003B43BD7FFD377D6F3CF9C72BFFFD54FDD2F9F3F39343DF3C4DE53D1A5E1FFE977A79DC57474F981AE5FCF3EF5C4505F46F9A8B9FFB73F3FED7EF6DCD3AE1482DDEDDB7EFEE5CBAEEDAC4C4F0001989E55F793DB37F62ADBE9B5E3';
wwv_flow_imp.g_varchar2_table(20) := 'EE4747BFDF3DC68A0E81138797DD89C78E740B1B14E5EE0156C6124000C6E2B9FBA00CFF7BF71E3974B07793754502CF3E71B8AFB4C1D8F41D8C74A369B311807D12EEF8E166EF29F72F81B09747C8F5C1D884B42596B2A9BDB1440A3B21D0000104A001';
wwv_flow_imp.g_varchar2_table(21) := 'A8640981580820001523F5F78F37DC3B1F5E1A9BDEBF78A55BCAB5EB37DDAB6F5F30993EB87CAD6BE7E5AB9F8FF56992CF5AC7BB06CFE18A864B084045CA9F7DF1A59B94BEFEE6DB6E2957FFF79593866631758DF42B937CB272DC9BCAAB020104A0023C';
wwv_flow_imp.g_varchar2_table(22) := '4E8540EC0410808A116C9F5ACDBE94225F4C19959E7BF2F16E29F26DBB3FFEE627CE6212DB4A439F7AFCD844BF46F9ABB9BFB497E56C041080D9B875CF3A7EF851977D29E5F0F2C8E5A1E5BDFF8D2ADFB6FBF5EAA3CE6212DB4AC70E3DF2F0487F26F9AB';
wwv_flow_imp.g_varchar2_table(23) := '79BCB477DE965AFE20005AA4290702060920000683824910D02280006891A61C0818248000180C0A26A54D40D37B044093366541C0180104C058403007029A0410004DDA940501630410006301C19CB409687B8F006813A73C0818228000180A06A64040';
wwv_flow_imp.g_varchar2_table(24) := '9B0002A04D9CF220608800025031183C0F60FCB3109A7E2E40C5F0993A3D8431084045EAD3FC2E9EE7014C7E66C2341C877DA662F8923F1D0148BE0A002065020840C5E83FB5F24327FF1B605C92DFD697C5C86FEE5F79E9396731896DA59DF25F7EC6F9';
wwv_flow_imp.g_varchar2_table(25) := '64E558692FCBD9082000B371EB9EF5ECCA5127CFA71F97560E2D773F2FBFB93FF3E363CE6212DB4A434F1C3B3CD1AF713E6B1D2BED8D7D19CA7E04201479CA8580010208808120600204421140004291A75C081820800018080226A44D20A4F7084048FA';
wwv_flow_imp.g_varchar2_table(26) := '940D81C0041080C001A078088424800084A44FD910084C0001081C008A4F9B4068EF1180D011A07C080424800004844FD110084D0001081D01CA87404002084045F83C0F80E701CC5A852C9C8700548CC2B0DFA80FEEE379003C0FA062356BEC7404A031';
wwv_flow_imp.g_varchar2_table(27) := 'B4640C01FB0410808A31E27900C7273E0FA1C96707540C5FF2A7230015AB00CF0308FBDC808AE10B76BA958211002B91C00E080420800004804E9110B0420001B01209EC80400002084000E8149936014BDE230096A2812D10502680002803A738085822';
wwv_flow_imp.g_varchar2_table(28) := '8000588A06B64040990002A00C9CE2D22660CD7B04C05A44B007028A04100045D81405016B0410006B11C11E08281240002AC2E679003C0F60DA2A64F1730840C5A80CFEF67FD836CF03E0790015AB5963A723008DA1256308D8278000548C11CF03E079';
wwv_flow_imp.g_varchar2_table(29) := '0015AB50D0D311808AF8791E00CF0398A60A59FD0C02603532D805010502088002648A808055020880D5C8601704140820000A9029226D0296BD47002C4707DB20D0300104A061C0640F01CB041000CBD1C13608344C0001681830D9A74DC0BAF708C03E';
wwv_flow_imp.g_varchar2_table(30) := '23D45A3AD07FC6EE4EFF365B6A046E7EB7DD57D6C2BD0FF46DB331990002309951DF275A4BF7B8851E11B8FCD97FFB8EB3A147A0977D6F4CF42C88BF2404608618F6F6341736AEB8CB9F5F7737EF7466C88953662520CC857D797E6F4CCA7D2C27134000';
wwv_flow_imp.g_varchar2_table(31) := '2633BAEB13F72C1FEA1B05FCED1F9FB8B7DF7BDFBDF3E1F0DFC6BF7FF14A378F6BD76FBA57DFBE60327D70F95AD7CECB573F1FE9CF283FB5F6FFF9AF179C302F8D95DEFFC0C11F949B669631188200CC1025B90C587C70B94F04249B61CF02907D3C0FA0';
wwv_flow_imp.g_varchar2_table(32) := 'DEE701F4F214EE347EA1305B420066E3E66414F0BD23C7DD22134F3312AC7E9AB0BFEFB1938EE1FFEC2C1180D9D93919098808DCBFF28CBBD78BC181838F39920E0369F8C25E62502184C99F8A00D45405A4175AF29705A465A7C1C07AC3AFA95A359E0D';
wwv_flow_imp.g_varchar2_table(33) := '02D038620A80805D020880DDD86019041A278000348E980220609700026037365816298198CC4600628A16B642A066020840CD40C90E0231114000628A16B642A066020840CD40C92E6D02B1798F00C41631EC85408D0410801A6192150462238000C416';
wwv_flow_imp.g_varchar2_table(34) := '31EC85408D0410801A619255DA0462F41E0188316AD80C819A08A808C0D2C2E2D735D94B361080408D045404A0467BC90A024910D0EA34118024AA134E364D20D6FC1180582387DD10A881808A00DCB87DEB460DB69205049221A0D56654042099A8E128';
wwv_flow_imp.g_varchar2_table(35) := '042223A02200975E799ABB0091550CCC9D9E40139FD46A332A029003EA6CE54BDE210081F104F4DA8AA200B41080F151E728040A027A6D4551000ADF584000021308CCE508C0FD6582D71C864074046237587304F05EECB0B01F024A04D43A4B4501D866';
wwv_flow_imp.g_varchar2_table(36) := '0E40A9F6504CEC0476D43A4B4501883D28D80F011D021F9D3DA5D659AA0940E1949AB2E9848A525226D090EFAA6D444D0072587AB39B7979BC43203602BA6D4459005A6FC6160EEC85803201B50940F14B5900980814E824088C26A037012836A80A00F3';
wwv_flow_imp.g_varchar2_table(37) := '00829C340F049AF1A1F346D1469AC97E48AEAA025094AF3AC429CA6401810808B4FEA56D640801509DE5D4064A7910A84040BD6DA80BC0476757C549491538712A04E68D4067AB681BAA8EA90B40EE5D87BB013908DE2324D090C9AF3594EFD86C030980';
wwv_flow_imp.g_varchar2_table(38) := 'EE4CE758021C8480090261DA44100128663AB90C3051F130223C818EFAEC7FE9731001280A0F32E429CA66010143045AC12E8983094031E1C128C05035C494C9041AF8C47B455B6820EBC959061380DCB4EDB3F9927708244B20E84838A8003017906CA5';
wwv_flow_imp.g_varchar2_table(39) := 'C7F18C805CFB67B7C5B3AD106F41052077985140CE81F7F408EC04EDFD85777001C847011D2E05241A24D3046A36EEB5BCEED79CEB3EB30B2E0062EF4767D7DEF04B26043D045E49109089BFF3163C35210039082E05720EBCCF3F013B75DD8C00E4C321';
wwv_flow_imp.g_varchar2_table(40) := '2E05E6BFF227EFE14B795DB7C1C18C00088EE25220F8C488D84282402F817AD63B6743DEF31FE683290110033D20B93642040406698E08C82DBF6CAECB944FE60420A7B32D938288400E83F7F809F849BF359377BA4C0A407E8D8408C45FEFF1C039E9F9';
wwv_flow_imp.g_varchar2_table(41) := '575FB24AC2A400082C11012E0784042934810AE5FB7BFD367BFED227B302501A988B0077074A1E2CA321E067FB57653ECBB4C1E60540E8E57707B68FFB75BE2CE421F0324DC0D7D1EDE3BEE3F24BD37666C64521006269714920D7524C0E0A109245027E';
wwv_flow_imp.g_varchar2_table(42) := 'C8BFEA7B7EBDFFED5715423402503AEA95D50FAB6434D0913B05E56E96106884C09499FADE5F43DA3600000230494441543EEBF57DDD9CF20C231F8B4E00845B3E1A90C915844078908211281B7E54BD7E2FAD2805A07400212849B0D425908D3E7DA38F';
wwv_flow_imp.g_varchar2_table(43) := '6BB83F8C51D402503AD42F044EE608BC3297475942A00E029D2D9F8B5CE3B7FCA4B4B9AFF47ADB667ACD8500949EE742B07ADECF13F8C942B93C400C4A362CF74FC0B9BCD1FB337D6FBF2633FBD15DE37BDBC7BEE64A007A3DBD5B0CE4BB041D99386474';
wwv_flow_imp.g_varchar2_table(44) := 'D00B8AF51E029DAC97F73BCA9E3E6BF4BE4399DB3A33B702E083D87DE562B0F64631742B460732422845A1530843472A40F73C56E691401663DFA03B1273B95C94E47BF85519DA970D7EEE7AFA51914C4200069DCF05E1D49617844214D6E49ACE578235';
wwv_flow_imp.g_varchar2_table(45) := 'A900AD6F77771E96B4B874CFB1327516164E92E26150C6AD5CFA5EDC37F06E2397584BCCE57251921784C15A92C67692023029B4975E79FA6B491FFC61E55A992E9C797283140F83326EE57252CC078FA7B28D00A41269FC84C0100208C01028EC82402A';
wwv_flow_imp.g_varchar2_table(46) := '04108054228D9F10184200011802855D691348C97B0420A568E32B04060820000340D884404A04108094A28DAF10182080000C0061336D02A9798F00A41671FC85400F0104A00706AB10488D0002905AC4F117023D0410801E18ACA64D2045EF118014A3';
wwv_flow_imp.g_varchar2_table(47) := '8ECF102808200005081610489100029062D4F11902050104A000C1226D02A97A8F00A41A79FC86802780007808BC20902A010420D5C8E337043C0104C043E095368194BD4700528E3EBE274F000148BE0A002065020840CAD1C7F7E4092000C95781B401';
wwv_flow_imp.g_varchar2_table(48) := 'A4EEFDFF010000FFFFA52DF4EB000000064944415403000E8A051E3D674B2D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(36592897132598560239)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20261016185319Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000F8494441547801EC54B10AC230147C04548A8B54A4E260E9E0E02014FFC6C94F1327FF460405870EA50ED22A15110A22DACA5BBA34E1C0281D4CE1A0DCE5A5F7';
wwv_flow_imp.g_varchar2_table(2) := 'EE3511FE2228EA84A09A1F63C02460123009C0041AB79846CD8CC622A599272A609E75191A590AAF3968C0122FB8896A8155DC5552C943038EDDA189EB90EFF6683E1D54C03CEB32706DF925C50B34A0A8FB1A0D0D24972B6DA38436D19996EB6305CCB3';
wwv_flow_imp.g_varchar2_table(3) := '2E03D722A7D000C7C8F172D4B58C80BBE0EEB8D3FF4C00CD505787FF80194118A71F1FC3DDE104270447F0B487143CDAB4CFBBB40AF30A98675D8656DFD3370077D05C0013D0DC1F961B03260193C0CF1340E7F00D0000FFFF2AEC729D00000006494441';
wwv_flow_imp.g_varchar2_table(4) := '5403002DBD4770C681D9300000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(36592896209513560238)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20261016185317Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD4FAF1DE57D07F089B1E1821D05D43890949250D19045032C9C0AB5C81B449B5DC58E455E00FBBC8EBC063659B1A9D8A58D94052A166A2B';
wwv_flow_imp.g_varchar2_table(2) := '2A286AD2B44AD2069C10234AB0B11D70A1F7B9C6F8DF3D3373CECC33F33CCFEF837C8C7DE7CC3CCFF7F33B73FDF5B997E4C8132FFCE7A71E0CBC06BC06BC06BC06BC0662BD068E74FE214080000102048209749D02106EE40213204080000105C06B8000';
wwv_flow_imp.g_varchar2_table(3) := '0102040884134881BD0390143C08102040804030010520D8C0C52540800081E80257F32B00571DFC4C800001020442092800A1C62D2C010204084417B8965F01B826E1DF0408102040209080021068D8A212204080407481EBF91580EB167E4580000102';
wwv_flow_imp.g_varchar2_table(4) := '04C208280061462D28010204084417B831BF0270A3865F13204080008120020A4090418B4980000102D1056ECEAF00DCECE1770408102040208480021062CC42122040804074815BF32B00B78AF83D01020408100820A0000418B28804081020105DE0F6';
wwv_flow_imp.g_varchar2_table(5) := 'FC0AC0ED263E4280000102049A1750009A1FB18004081020105DE0B0FC0AC0612A3E4680000102041A1750001A1FB07804081020105DE0F0FC0AC0E12E3E4A80000102049A1650009A1EAF7004081020105D60537E0560938C8F13204080008186051480';
wwv_flow_imp.g_varchar2_table(6) := '86872B1A010204084417D89C5F01D86CE3080102040810685640016876B48211204080407481BEFC0A409F8E630408102040A0510105A0D1C18A4580000102D105FAF32B00FD3E8E1220408000812605148026C72A1401020408441718CAAF000C09394E';
wwv_flow_imp.g_varchar2_table(7) := '80000102041A1450001A1CAA4804081020105D6038BF02306CE4190408102040A0390105A0B9910A4480000102D105C6E45700C628790E0102040810684C4001686CA0E21020408040748171F91580714E9E4580000102049A1250009A1AA73004081020';
wwv_flow_imp.g_varchar2_table(8) := '105D606C7E0560AC94E7112040800081860414808686290A010204084417189F5F01186FE5990408102040A0190105A099510A4280000102D105B6C9AF006CA3E5B90408102040A0110105A091418A4180000102D105B6CBAF006CE7E5D90408102040A0';
wwv_flow_imp.g_varchar2_table(9) := '090105A089310A4180000102D105B6CDAF006C2BE6F90408102040A0010105A081218A4080000102D105B6CFAF006C6FE60C020408102050BD800250FD08052040800081E802BBE457007651730E0102040810A85C4001A87C80B64F80000102D10576CB';
wwv_flow_imp.g_varchar2_table(10) := 'AF00ECE6E62C020408102050B5800250F5F86C9E00010204A20BEC9A5F01D855CE790408102040A0620105A0E2E1D93A010204084417D83DBF02B0BB9D33091020408040B5020A40B5A3B37102040810882E3025BF023045CFB90408102040A0520105A0';
wwv_flow_imp.g_varchar2_table(11) := 'D2C1D93601020408441798965F0198E6E76C020408102050A5800250E5D86C9A00010204A20B4CCDAF004C15743E0102040810A8504001A87068B64C80000102D105A6E75700A61BBA020102040810A84E4001A86E64364C80000102D105E6C8AF00CCA1';
wwv_flow_imp.g_varchar2_table(12) := 'E81A0408102040A0320105A0B281D92E0102040844179827BF02308FA3AB102040800081AA041480AAC665B304081020105D60AEFC0AC05C92AE4380000102042A1250002A1A96AD12204080407481F9F22B00F359BA120102040810A8464001A8665436';
wwv_flow_imp.g_varchar2_table(13) := '4A80000102D105E6CCAF00CCA9E95A0408102040A0120105A09241D9260102040844179837BF0230AFA7AB1120408000812A0414802AC6649304081020105D60EEFC0AC0DCA2AE4780000102042A1050002A18922D12204080407481F9F32B00F39BBA22';
wwv_flow_imp.g_varchar2_table(14) := '0102040810285E4001287E44364880000102D10572E4570072A8BA260102040810285C4001287C40B64780000102D105F2E45700F2B8BA2A0102040810285A4001287A3C364780000102D10572E5570072C9BA2E010204081028584001287838B6468000';
wwv_flow_imp.g_varchar2_table(15) := '0102D105F2E55700F2D9BA32010204081028564001287634364680000102D10572E6570072EABA36010204081028544001287430B64580000102D105F2E65700F2FABA3A01020408102852400128722C364580000102D10572E75700720BBB3E01020408';
wwv_flow_imp.g_varchar2_table(16) := '1028504001287028B64480000102D105F2E75700F21B5B8100010204081427A0001437121B2240800081E8024BE457009650B6060102040810284C4001286C20B64380000102D10596C9AF002CE36C1502040810205094800250D4386C8600010204A20B';
wwv_flow_imp.g_varchar2_table(17) := '2C955F01584ADA3A0408102040A0200105A0A061D80A010204084417582EBF02B09CB59508102040804031020A4031A3B01102040810882EB0647E0560496D6B112040800081420414804206611B04081020105D60D9FC0AC0B2DE562340800001024508';
wwv_flow_imp.g_varchar2_table(18) := '2800458CC1260810204020BAC0D2F91580A5C5AD4780000102040A1050000A18822D10204080407481E5F32B00CB9B5B910001020408AC2EA000AC3E021B2040800081E8026BE45700D650B726010204081058594001587900962740800081E802EBE457';
wwv_flow_imp.g_varchar2_table(19) := '00D671B72A0102040810585540015895DFE204081020105D60ADFC0AC05AF2D62540800001022B0A28002BE25B9A00010204A20BAC975F0158CFDECA04081020406035010560357A0B1320408040748135F32B006BEA5B9B0001020408AC24A000AC046F';
wwv_flow_imp.g_varchar2_table(20) := '5902040810882EB06E7E05605D7FAB1320408000815504148055D82D4A80000102D105D6CEAF00AC3D01EB1320408000811504148015D02D4980000102D105D6CFAF00AC3F033B2040800001028B0B28008B935B9000010204A20B94905F0128610AF640';
wwv_flow_imp.g_varchar2_table(21) := '8000010204161650001606B71C0102040844172823BF0250C61CEC8200010204082C2AA0002CCA6D3102040810882E504A7E05A09449D8070102040810585040015810DB5204081020105DA09CFC0A4039B3B0130204081020B0988002B018B585081020';
wwv_flow_imp.g_varchar2_table(22) := '4020BA4049F9158092A6612F040810204060210105602168CB10204080407481B2F22B0065CDC36E0810204080C022020AC022CC162140800081E802A5E557004A9B88FD1020408000810504148005902D4180000102D105CACBAF009437133B22408000';
wwv_flow_imp.g_varchar2_table(23) := '0102D9051480ECC4162040800081E80225E657004A9C8A3D112040800081CC020A406660972740800081E80265E65700CA9C8B5D112040800081AC020A40565E172740800081E802A5E657004A9D8C7D1120408000818C020A40465C972640800081E802';
wwv_flow_imp.g_varchar2_table(24) := 'E5E65700CA9D8D9D1120408000816C020A40365A172640800081E80225E757004A9E8EBD1120408000814C020A402658972540800081E80265E75700CA9E8FDD1120408000812C020A401656172540800081E802A5E757004A9F5041FBBB72E1FDEEA377';
wwv_flow_imp.g_varchar2_table(25) := 'DFEEFEF0DB5F7697DFFA7977F1576F7A30F01A58F93590EEC5744F7EFCFEEFBA4F2E7FD87D7AE5E3823E6BD84AC9020A40C9D329646FE90FFDF487FD47EFBED55DB9F0BFDDFFED7F92F9E4CA4785ECCE3608C41648F762BA275301B8BC5FCE2FBDF51F07';
wwv_flow_imp.g_varchar2_table(26) := '455D1158FB7551FEFA0A40F9335A6D87E9134AFA833FFDA1BFDA262C4C80C0D602E99E4D4520BD6BA7086CCD17E6040520CCA8C7074D9F30AEBDA538FE2CCF2440A03481F4AE5D7AA47BBAB4BDB5BE9F1AF22900354C69C13DA64F14E90FFFF496E282CB';
wwv_flow_imp.g_varchar2_table(27) := '5A8A00814C02E95E4EF774BAB7332DE1B2950A2800950E2EC7B6D32788F4B661FA9A628EEBBB260102EB08A47B5A0958D2BE8EB514803AE6B4C82ED35B858B2C6411020416174825207D5F4F2AFA8B2F6EC12205148022C7B2FCA6D22786F456E1F22B5B';
wwv_flow_imp.g_varchar2_table(28) := '910081A504D23707A6C752EB455DA796DC0A402D93CAB8CFF437825400C62C71E4E89DDD23DF78A8FBCBC7BED53D7BFA54F7BD679E9CF4387962AFEBFBE7E5EF7FB7F358CFA06F36E9D8D4F93B7FDAFD93EEC1BFFE8BC7BAC7BFF970F7C57BEE4E23197C';
wwv_flow_imp.g_varchar2_table(29) := 'A47B3DDDF3834FF484E6051480E6473C1C70ECDF08BE7AFFFDDD334F3EDE3DF9675FEBFEF4FE7BBBE3771D1DBEB8671020904D20DD835FF9D23DDDB7BF7E7FF7B77FF578F7C89F7C6DD45A63EFF95117F3A45B04EAF9AD0250CFACB2ED34FD8D60E8E28F';
wwv_flow_imp.g_varchar2_table(30) := '3EFA68F7F4630F7727EFBE63E8A98E1320B092C093DF7AE8E0DDB9A1E5D33DEF5D8021A5F68F2B00EDCFB837E1984F025F3AF9D5EE3B0FDDD77B1D070910284320BD3B97BE2430B49B4FFDAF790E11ED74BCA69314809AA69561AF436F05A6AFF93FF9E8';
wwv_flow_imp.g_varchar2_table(31) := '831956764902047209A42F090C7D4F806FFACDA55FCF7515807A669565A7E9FF3CA4EFC25FBCEF8FBCEDDF07E418814205BEFDC8D77B773674EFF79EECE00681BA3EAC00D435AFD977FBE9C0FF73587A3B71F6455D900081EC0227F6EEEC5D63E8DEEF3D';
wwv_flow_imp.g_varchar2_table(32) := 'D9C12604148026C6B87B88F43F0ED277F6913BC7FDA7457DD7708C0081E505D27F1DD0B7EAD0BDDF77AE63870BD4F65105A0B6892DBCDF2FDF73C7C22B5A8E00010204961050009650B60601020408342E505F3C05A0BE99D9310102040810982CA0004C';
wwv_flow_imp.g_varchar2_table(33) := '26740102040810882E50637E05A0C6A9D93301020408109828A0004C04743A010204084417A833BF0250E7DCEC9A00010204084C12500026F1399900010204A20BD49A5F01A875720BEDFBEFFFF19FBB1FFEF8D56C8F73172EF72639FD831F751EEB19F4';
wwv_flow_imp.g_varchar2_table(34) := '0E67FF60CED7866B4FBFEFF647E407818D020AC0461A070810204080C09040BDC715807A6767E704081020406067010560673A27122040804074819AF32B00354FCFDE0910204080C08E020AC08E704E2340800081E80275E75700EA9E9FDD1320408000';
wwv_flow_imp.g_varchar2_table(35) := '819D0414809DD89C4480000102D1056ACFAF00D43EC1CCFBFF9BA7BED37DEF9927B33D4E9ED8EB4DF0F2F7BFDB79AC67D03B9CFD83395F1BAE3DFDBEDB1F911F04360A28001B691C2040800001029B04EAFFB80250FF0C252040800001025B0B28005B93';
wwv_flow_imp.g_varchar2_table(36) := '398100010204A20BB4905F0168618A321020408000812D0514802DC13C9D00010204A20BB4915F0168638E52102040800081AD041480ADB83C9900010204A20BB4925F01686592721020408000812D0414802DB03C9500010204A20BB4935F0168679692';
wwv_flow_imp.g_varchar2_table(37) := '102040800081D1020AC0682A4F2440800081E8022DE557005A9AA62C040810204060A480023012CAD30810204020BA405BF91580B6E6290D01020408101825A0008C62F22402040810882ED05A7E05A0B589CA4380000102044608280023903C85000102';
wwv_flow_imp.g_varchar2_table(38) := '04A20BB4975F01686FA6121120408000814101056090C8130810204020BA408BF9158016A72A1301020408101810500006801C2640800081E8026DE65700DA9CAB540408102040A0574001E8E5719000010204A20BB49A5F016875B2721120408000811E';
wwv_flow_imp.g_varchar2_table(39) := '0105A007C72102040810882ED06E7E05A0DDD94A468000010204360A28001B691C2040800081E8022DE757005A9EAE6C040810204060838002B001C6870910204020BA40DBF91580B6E72B1D0102040810385440013894C5070910204020BA40EBF91580';
wwv_flow_imp.g_varchar2_table(40) := 'D6273C31DF99D7DEEC5E7AE5F56C8F73172EF7EEF0B917CE741EEB19F40E67FF60CED7866B4FBFEFF647E407818D020AC0461A0792C0F98B97BA9C8FB446DFE3EC7B1F741EEB19F4CD261DCBF9DA70EDE9F75E9A91C7AE02ED9FA700B43F630909102040';
wwv_flow_imp.g_varchar2_table(41) := '80C06D020AC06D243E4080000102D10522E45700224C59460204081020708B8002700B88DF1220408040748118F91580187396920001020408DC24A000DCC4E13704081020105D204A7E0520CAA477CCF9D4A927BA674F9FCAF6387962AF77672F3EFF74';
wwv_flow_imp.g_varchar2_table(42) := 'E7B19E41EF70F60FE67C6DB8F6F4FB6E7F447E10D828A0006CA47120091CDF3BD61DBFEB68814081BD0000100049444154B64737F0CF03C78F751EEB190C8C27DBEB22E76B2ED2B587E6E7F86102713EA600C499B5A40408102040E0730105E0730ABF20';
wwv_flow_imp.g_varchar2_table(43) := '40800081E80291F22B0091A62D2B0102040810F84C4001F80CC2BF0810204020BA40ACFC0A40AC794B4B80000102040E04148003063F1120408040748168F91580681397970001020408EC0B2800FB087E1020408040748178F915807833979800010204';
wwv_flow_imp.g_varchar2_table(44) := '08740A8017010102040884178808A000449CBACC04081020105E400108FF120040800081E80231F32B0031E72E35010204080417500082BF00C4274080407481A8F91580A893979B00010204420B2800A1C72F3C010204A20BC4CDAF00C49DBDE4040810';
wwv_flow_imp.g_varchar2_table(45) := '2010584001083C7CD1091020105D20727E0520F2F4652740800081B0020A40D8D10B4E800081E802B1F32B00B1E72F3D0102040804155000820E5E6C0204084417889E5F0188FE0A909F00010204420A280021C72E34010204A20BC8AF00780D10204080';
wwv_flow_imp.g_varchar2_table(46) := '008180020A40C0A18B4C800081E802F2779D02E055408000010204020A280001872E32010204620B489F041480A4E041800001020482092800C1062E2E010204A20BC87F554001B8EAE0E70D02675E7BB37BE995D7B33DCE5DB8BC61E5AB1F7EEE85339D';
wwv_flow_imp.g_varchar2_table(47) := 'C77A0657A7B0F9E79CAF0DD79E7EDF6D9E9C23047C13A0D7C080C0F98B97BA9C8F81E5BBB3EF7DE0B1A2C1D07C72BE365C7BFABD3734BF98C7A5BE26E01D806B12FE4D80000102040209280081862D2A010204A20BC87F5D4001B86EE157040810204020';
wwv_flow_imp.g_varchar2_table(48) := '8C80021066D48212204020BA80FC370A2800376AF83501020408100822A0000419B498040810882E20FFCD020AC0CD1E7E778BC053A79EE89E3D7D2ADBE3E489BD5B56BCF9B72F3EFF74E7B19EC1CDD3B8FD77395F1BAE3DFDBEBB7D623E42E0BA800270';
wwv_flow_imp.g_varchar2_table(49) := 'DDC2AF0E1138BE77AC3B7ED7D16C8F6EE09F078E1FEB3CD63318184FB6D745CED75CA46B0FCD2FD671696F1550006E15F17B02040810201040400108306411091020105D40FEDB051480DB4D7C840001020408342FA000343F6201091020105D40FEC304';
wwv_flow_imp.g_varchar2_table(50) := '1480C3547C8C0001020408342EA000343E60F1081020105D40FEC3051480C35D7C940001020408342DA000343D5EE1081020105D40FE4D020AC026191F2740800001020D0B28000D0F57340204084417907FB38002B0D9C6110204081020D0AC8002D0EC';
wwv_flow_imp.g_varchar2_table(51) := '6805234080407401F9FB0414803E1DC7081020408040A3020A40A383158B000102D105E4EF175000FA7D1C2540800001024D0A28004D8E55280204084417907F4840011812729C00010204083428A00034385491081020105D40FE61010560D8C8330810';
wwv_flow_imp.g_varchar2_table(52) := '2040804073020A4073231588000102D105E41F23A0008C51F21C0204081020D0988002D0D840C5214080407401F9C7092800E39C3C8B00010204083425A00034354E61081020105D40FEB1020AC05829CF2340800001020D0928000D0D53140204084417';
wwv_flow_imp.g_varchar2_table(53) := '907FBC800230DECA3309102040804033020A4033A31484000102D105E4DF464001D846CB7309102040804023020A4023831483000102D105E4DF4E4001D8CE2BDCB3CFBCF666F7D22BAF677B9CBB70B9D7F4B917CE741EEB19F40E67FF60CED7866B4FBF';
wwv_flow_imp.g_varchar2_table(54) := 'EFF647E407818D020AC0461A0792C0F98B97BA9C8FB446DFE3EC7B1F741EEB19F4CD261DCBF9DA70EDE9F75E9A519C87A4DB0A2800DB8A793E0102040810684040016860882210204020BA80FCDB0B2800DB9B39830001020408542FA000543F42010810';
wwv_flow_imp.g_varchar2_table(55) := '20105D40FE5D0414805DD49C4380000102042A1750002A1FA0ED13204020BA80FCBB092800BBB98539EBA9534F74CF9E3E95ED71F2C45EAFE58BCF3FDD79AC67D03B9CFD83395F1BAE3DFDBEDB1F911F04360A28001B691C4802C7F78E75C7EF3A9AEDD1';
wwv_flow_imp.g_varchar2_table(56) := '0DFCF3C0F1639DC77A0603E3C9F6BAC8F99A8B74EDA1F9B5715C8A5D0514805DE59C4780000102042A1650002A1E9EAD13204020BA80FCBB0B2800BBDB39930001020408542BA000543B3A1B274080407401F9A708280053F49C4B80000102042A155000';
wwv_flow_imp.g_varchar2_table(57) := '2A1D9C6D13204020BA80FCD3041480697ECE264080000102550A2800558ECDA6091020105D40FEA9020AC05441E71320408000810A0514800A8766CB040810882E20FF74010560BAA12B102040800081EA041480EA4666C3040810882E20FF1C020AC01C';
wwv_flow_imp.g_varchar2_table(58) := '8AAE4180000102042A1350002A1B98ED12204020BA80FCF3082800F338BA0A0102040810A84A4001A86A5C364B800081E802F2CF25A000CC25E93A0408102040A0220105A0A261D92A010204A20BC83F9F8002309FA52B1120408000816A0414806A4665';
wwv_flow_imp.g_varchar2_table(59) := 'A3040810882E20FF9C020AC09C9AAE4580000102042A1150002A19946D12204020BA80FCF30A2800F37A5677B52347EFECDDF387973FEE3DEE200102650A7CF8872BBD1B1BBAF77B4F76B0090105A08931E60B71EEFCA57C1777650204B2097C78F9A36C';
wwv_flow_imp.g_varchar2_table(60) := 'D75EE7C2569D5B4001985BB4B2EB7DE1E8B1DE1D5FB8E493482F9083040A1578E7FDF3BD3B1BBAF77B4F76B0090105A08931EE1EE20B035F02F8CDD9B7BBA1B712775FDD990408E412F8C55BBFEDBDF491BDE3BDC74B3B683FF30B2800F39B5675C5A327';
wwv_flow_imp.g_varchar2_table(61) := 'EEEDDDEF27573EEA7EF2D3FD12F0F1A7BDCF739000817204FEEDBFDFE9CE5FECFFF2DD1D0A4039035B69270AC04AF0A52C9BFE1630F4CD40BF3FF79BEE57EF7E50CA96ED8300811E81DFFDFE62F7FACF7FD9F38CAE4BF77CBAF77B9F54D4419BC921A000';
wwv_flow_imp.g_varchar2_table(62) := 'E450ADEC9A770CBC0B90E2FCEB9B3FED7EF2EFBFF6E58084E141A05081577FF63FDD3FFCD31B83BB1B73CF0F5EC413AA175000AA1FE1F400474FDC77F03782A12B9D7DFBEDEEA5336F74E9EDC5F4B70CDF1B3024E63881FC02BF78E7FD837BF2A5575EEF';
wwv_flow_imp.g_varchar2_table(63) := 'FEEBD767472D78ECDEAF8C7A5E294FB28F3C020A401ED7AAAE9ABE1B78ECDF08D2F704A4B717D3DF32FEEEE57FE97EF8E357273DCE5DB8DC6B75FA073FEA3CD633E81DCEFEC1A9F377FEB4FB27F99D79E367076FF90F7DCD7F7F5C073FFCE17FC0E0A77D';
wwv_flow_imp.g_varchar2_table(64) := '0105601FC18FAE4B9F14D2D705591020D0AE40FAC6BF74AFD795D06E73091CC97561D7AD4FE0AE071E1EF5A580FA92D9310102A9E0A77B9C04816B020AC03509FFEED29702D22788F48902070102ED08A47BFACE2FFF7195816C3A9F800290CFB6CA2B2B';
wwv_flow_imp.g_varchar2_table(65) := '01558ECDA6096C14486FFBEF3DF8CDCE7FF6B79128EC010520ECE837074F25207DC218FB5F076CBE92230408AC2990BEDE9FDED55B730FD3D676764E010520A76EE5D74E6F19A64F1E8A40E583B4FD7002E99EBDFBC1470FBEB9375C7881470B2800A3A9';
wwv_flow_imp.g_varchar2_table(66) := '623E31BD1B908A407A4760EF81870F3EA1A4B714D3D714D323A68AD404CA1148F761BA27D31FFAE91EBDE71B7FDEA57B36DDBBE5EC72B79D382BAF800290D7B7A9ABA7AF215E7B4BF1A010EC7F5D317DB2F170BED7C07AAF81742FA677EAD21FFAE91E6D';
wwv_flow_imp.g_varchar2_table(67) := 'EA938E3059051480ACBC2E4E80000102BB09382BB78002905BD8F509102040804081020A408143B1250204084417903FBF800290DFD80A0408102040A0380105A0B891D810010204A20BC8BF848002B084B23508102040804061020A406103B11D020408';
wwv_flow_imp.g_varchar2_table(68) := '4417907F190105601967AB102040800081A2041480A2C66133040810882E20FF52020AC052D2D621408000010205092800050DC356081020105D40FEE5041480E5ACAD4480000102048A1150008A19858D10204020BA80FC4B0A28004B6A5B8B00010204';
wwv_flow_imp.g_varchar2_table(69) := '081422A000143208DB204080407401F99715500096F5B61A01020408102842400128620C3641800081E802F22F2DA0002C2D6E3D02040810205080800250C0106C81000102D105E45F5E400158DEDC8A04081020406075010560F511D800010204A20BC8';
wwv_flow_imp.g_varchar2_table(70) := 'BF868002B086BA350910204080C0CA020AC0CA03B03C010204A20BC8BF8E8002B08EBB550910204080C0AA020AC0AAFC16274080407401F9D7125000D692B72E0102040810585140015811DFD2040810882E20FF7A020AC07AF656264080000102AB0928';
wwv_flow_imp.g_varchar2_table(71) := '00ABD15B98000102D105E45F5340015853DFDA040810204060250105602578CB12204020BA80FCEB0A2800EBFA5B9D0001020408AC22A000ACC26E510204084417907F6D010560ED09589F0001020408AC20A000AC806E490204084417907F7D010560FD';
wwv_flow_imp.g_varchar2_table(72) := '19D8010102040810585C4001589CDC82040810882E207F09020A400953B0070204081020B0B08002B030B8E5081020105D40FE3204148032E6601704081020406051010560516E8B11204020BA80FCA5082800A54CC23E0810204080C082020AC082D896';
wwv_flow_imp.g_varchar2_table(73) := '224080407401F9CB115000CA99859D102040800081C5041480C5A82D44800081E802F29724A00094340D7B2140800001020B0928000B415B86000102D105E42F4B4001286B1E76438000010204161150001661B608010204A20BC85F9A800250DA44EC87';
wwv_flow_imp.g_varchar2_table(74) := '00010204082C20A0002C806C09020408441790BF3C0105A0BC99D8110102040810C82EA0006427B600010204A20BC85FA2800250E254EC890001020408641650003203BB3C010204A20BC85FA6800250E65CEC8A000102040864155000B2F2BA38010204';
wwv_flow_imp.g_varchar2_table(75) := 'A20BC85FAA800250EA64EC8B00010204086414500032E2BA34010204A20BC85FAE800250EE6CEC8C000102040864135000B2D1BA30010204A20BC85FB2800250F274EC8D00010204086412500032C1BA2C010204A20BC85FB6800250F67CEC8E00010204';
wwv_flow_imp.g_varchar2_table(76) := '0864115000B2B0BA28010204A20BC85FBA800250FA84EC8F00010204086410500032A0BA24010204A20BC85FBE800250FE8CEC900001020408CC2EA000CC4EEA82040810882E207F0D020A400D53B247020408102030B380023033A8CB11204020BA80FC';
wwv_flow_imp.g_varchar2_table(77) := '7508280075CCC92E0910204080C0AC020AC0AC9C2E46800081E802F2D722A000D43229FB244080000102330A28003362BA14010204A20BC85F8F800250CFACEC940001020408CC26A000CC46E942040810882E207F4D020A404DD3B25702040810203093';
wwv_flow_imp.g_varchar2_table(78) := '80023013A4CB10204020BA80FC7509280075CDCB6E0910204080C02C020AC02C8C2E42800081E802F2D726A000D43631FB254080000102330828003320BA04010204A20BC85F9F800250DFCCEC9800010204084C1650002613BA00010204A20BC85FA380';
wwv_flow_imp.g_varchar2_table(79) := '0250E3D4EC9900010204084C14500026023A9D000102D105E4AF534001A8736E764D80000102042609280093F89C4C800081E802F2D72AA000D43A39FB2640800001021304148009784E254080407401F9EB155000EA9D9D9D1320408000819D0514809D';
wwv_flow_imp.g_varchar2_table(80) := 'E99C48800081E802F2D72CA000D43C3D7B2740800001023B0A28003BC2398D000102D105E4AF5B4001A87B7E764F80000102047612500076627312010204A20BC85FBB800250FB04ED9F0001020408EC20A000EC80E614020408441790BF7E0105A0FE19';
wwv_flow_imp.g_varchar2_table(81) := '4A408000010204B6165000B6267302010204A20BC8DF828002D0C214652040800001025B0A28005B82793A010204A20BC8DF868002D0C61CA52040800001025B0928005B717932010204A20BC8DF8A8002D0CA24E52040800001025B0828005B60792A01';
wwv_flow_imp.g_varchar2_table(82) := '0204A20BC8DF8E8002D0CE2C25214080000102A3051480D1549E48800081E802F2B724A000B4344D590810204080C0480105602494A711204020BA80FC6D0928006DCD531A0204081020304A400118C5E449040810882E207F6B020A406B139587000102';
wwv_flow_imp.g_varchar2_table(83) := '04088C1050004620790A010204A20BC8DF9E8002D0DE4C2522408000010283020AC020912710204020BA80FC2DBFCB77AC0000023D494441540A28002D4E552602040810203020A0000C00394C800081E802F2B729A000B43957A9081020408040AF8002';
wwv_flow_imp.g_varchar2_table(84) := 'D0CBE320010204A20BC8DFAA8002D0EA64E52240800001023D020A400F8E43040810882E207FBB020A40BBB3958C00010204086C14500036D23840800081E802F2B72CA000B43C5DD90810204080C006010560038C0F13204020BA80FC6D0B28006DCF57';
wwv_flow_imp.g_varchar2_table(85) := '3A020408102070A8800270288B0F12204020BA80FCAD0B2800AD4F583E02040810207088800270088A0F11204020BA80FCED0B2800EDCF58420204081020709B8002701B890F10204020BA80FC11041480085396910001020408DC22A000DC02E2B70408';
wwv_flow_imp.g_varchar2_table(86) := '10882E207F0C010520C69CA5244080000102370928003771F80D010204A20BC81F454001883269390910204080C00D020AC00D187E49800081E802F2C7115000E2CC5A520204081020F0B98002F039855F10204020BA80FC9104148048D3969500010204';
wwv_flow_imp.g_varchar2_table(87) := '087C26A0007C06E15F040810882E207F2C010520D6BCA525408000010207020AC001839F081020105D40FE68020A40B489CB4B8000010204F60514807D043F081020105D40FE78020A40BC994B4C80000102043A05C08B80000102E1050044145000224E';
wwv_flow_imp.g_varchar2_table(88) := '5D6602040810082FA000847F0900204020BA80FC310514809873979A00010204820B2800C15F00E21320105D40FEA8020A40D4C9CB4D80000102A1051480D0E3179E0081E802F2C7155000E2CE5E7202040810082CA000041EBEE804084417903FB28002';
wwv_flow_imp.g_varchar2_table(89) := '1079FAB2132040804058010520ECE805274020BA80FCB105FE1F0000FFFFC9EC281D00000006494441540300B20432C3E90D82D80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(36592897488961560240)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20261016185319Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/derechos_de_administración
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(36592899789914560250)
,p_name=>unistr('Derechos de administraci\00F3n')
,p_static_id=>unistr('derechos-de-administraci\00F3n')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrador',
  'type', 'A')).to_clob
,p_error_message=>'Privilegios insuficientes. El usuario no es administrador.'
,p_version_scn=>'SH256:1r1APUvuRZ9HrBVSxH2yHFZfk2WGYX9Nzh-60nyJA4o'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/derechos_de_contribución
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(36592899996809560250)
,p_name=>unistr('Derechos de contribuci\00F3n')
,p_static_id=>unistr('derechos-de-contribuci\00F3n')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrador,Contribuyente',
  'type', 'A')).to_clob
,p_error_message=>'Privilegios insuficientes. El usuario no es contribuyente'
,p_version_scn=>'SH256:5fOxG7MHt22aYudBCPDD4b7jrQ3q3kk3UVO7tJnZJiQ'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/derechos_de_lector
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(36592899879886560250)
,p_name=>'Derechos de lector'
,p_static_id=>'derechos-de-lector'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if nvl(apex_app_setting.get_value(',
    '    p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
    '    -- allow user not in the ACL to access the application',
    '    return true;',
    'else',
    '    -- require user to have at least one role',
    '    return apex_acl.has_user_any_roles (',
    '        p_application_id => :APP_ID, ',
    '        p_user_name      => :APP_USER);',
    'end if;')))).to_clob
,p_error_message=>unistr('No tiene autorizaci\00F3n para ver esta aplicaci\00F3n porque no le han otorgado acceso o porque su cuenta se ha bloqueado. P\00F3ngase en contacto con el administrador de la aplicaci\00F3n.')
,p_version_scn=>'SH256:JgPIKNdO-5IjJcpHhJP1QO4dSfjaY1vV9bJhPuBdbCo'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrador
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(36592899312751560248)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrador'
,p_description=>'Rol asignado a los administradores de aplicaciones.'
,p_version_scn=>'SH256:eO-h9oc-zLoJ9j-kzI6Ff82D9PGD4-Y12bE0P0pL328'
);
end;
/
prompt --application/shared_components/security/app_access_control/contribuyente
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(36592899566145560249)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contribuyente'
,p_description=>'Rol asignado a los contribuyentes de aplicaciones.'
,p_version_scn=>'SH256:MLXDUxliNvGlJ9se_HSJks927VTzbPdta4wOcJ6QqcE'
);
end;
/
prompt --application/shared_components/security/app_access_control/lector
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(36592899606332560249)
,p_static_id=>'READER'
,p_name=>'Lector'
,p_description=>'Rol asignado a los lectores de aplicaciones.'
,p_version_scn=>'SH256:vc1cf1DsU5qX2sn4c9tnues0g54-8RVrp17-wPw79oI'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/app_tasa_actual
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(4791445857600600532)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_name=>'APP_TASA_ACTUAL'
,p_static_id=>'app-tasa-actual'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ''1 USD = '' || TO_CHAR(tasa, ''FM999,999.0000'') || '' VES ('' || TO_CHAR(fecha, ''DD/MM/YYYY'') || '')''',
'      INTO :G_TASA_ACTUAL',
'      FROM (',
'          SELECT tasa, fecha',
'            FROM tasa_cambio_historico',
'           WHERE TRUNC(fecha) <= TRUNC(SYSDATE)',
'           ORDER BY fecha DESC',
'      )',
'     WHERE ROWNUM = 1;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :G_TASA_ACTUAL := ''Tasa no disponible'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>'SH256:_N6xMnGJZkpomypFabppk8y2uXuR_JSOjD_aeI3ijDs'
,p_created_on=>wwv_flow_imp.dz('20261016155123Z')
,p_updated_on=>wwv_flow_imp.dz('20261016155123Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/logic/application_items/g_tasa_actual
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(4788842141487583965)
,p_name=>'G_TASA_ACTUAL'
,p_protection_level=>'I'
,p_version_scn=>'SH256:TFGtloSscwHQs0SY_M-TeU8kvBBvXSLoQjHN77p4K3E'
,p_created_on=>wwv_flow_imp.dz('20261016154838Z')
,p_updated_on=>wwv_flow_imp.dz('20261016154838Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(36592900780037560252)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ALL_USERS'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(36592897601643560242)
,p_comments=>unistr('Nivel de acceso por defecto proporcionado a miembros autenticados que no est\00E1n en la lista de control de acceso')
,p_version_scn=>'SH256:ji-ax8L-nyX8UWs2a1HeSMxBVPKWjVDpYNpwandhTu8'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908154722Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
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
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(36593123179104565413)
,p_lov_name=>'ACCESS_ROLES'
,p_static_id=>'access-roles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:hw1yHwou0QVtzlsCnrLSXndSn95AkdZHJv9ZCO7rHeg'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(36592909622519560273)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(36592909622519560273)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36592910345238560275)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36592909953135560274)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/cat_categorias_nombre_categoria
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3694707173263485925)
,p_lov_name=>'CAT_CATEGORIAS.NOMBRE_CATEGORIA'
,p_static_id=>'cat-categorias-nombre-categoria'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CAT_CATEGORIAS'
,p_return_column_name=>'ID_CATEGORIA'
,p_display_column_name=>'NOMBRE_CATEGORIA'
,p_default_sort_column_name=>'NOMBRE_CATEGORIA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:orAUpAWayAwouAK14uf_feNlaywH02xnKiEBEuoNC9Q'
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261014161857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/cat_origenes_nombre_origen
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3694706089720485923)
,p_lov_name=>'CAT_ORIGENES.NOMBRE_ORIGEN'
,p_static_id=>'cat-origenes-nombre-origen'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CAT_ORIGENES'
,p_return_column_name=>'ID_ORIGEN'
,p_display_column_name=>'NOMBRE_ORIGEN'
,p_default_sort_column_name=>'NOMBRE_ORIGEN'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:Ugv8GoNaHfpz--ue9cuMOMnmAxCC9rjVf7EUvoIMMoE'
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261014161857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/cat_proyectos_nombre_proyecto
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3694705382153485922)
,p_lov_name=>'CAT_PROYECTOS.NOMBRE_PROYECTO'
,p_static_id=>'cat-proyectos-nombre-proyecto'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CAT_PROYECTOS'
,p_return_column_name=>'ID_PROYECTO'
,p_display_column_name=>'NOMBRE_PROYECTO'
,p_default_sort_column_name=>'NOMBRE_PROYECTO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:JgZIHUEsAo0npXtGrk_QN-XcNEeWkXwz3ZuHd4xH4sI'
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261014161857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(36592913780674560282)
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
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(36593130381176565431)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(36593130381176565431)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:PdGDet-Sjbn1ghN1uE3WeFrc0VT9okucaEytJkuQ5OY'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36593130620312565432)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Direcciones de correo electr\00F3nico')
,p_lov_return_value=>'EMAIL'
,p_static_id=>'email'
);
end;
/
prompt --application/shared_components/user_interface/lovs/mi_lov_categorias
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3693355398220468828)
,p_lov_name=>'MI_LOV_CATEGORIAS'
,p_static_id=>'mi-lov-categorias'
,p_lov_query=>'SELECT nombre_categoria as d, id_categoria as r FROM cat_categorias ORDER BY 1;'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:crdLhqlVqj64zwsOcZ1ne7nk-UreARZXTps6GoApI94'
,p_created_on=>wwv_flow_imp.dz('20261014160843Z')
,p_updated_on=>wwv_flow_imp.dz('20261014160843Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/mi_lov_monedas
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3693827998186439708)
,p_lov_name=>'MI_LOV_MONEDAS'
,p_static_id=>'mi-lov-monedas'
,p_lov_query=>'.'||wwv_flow_imp.id(3693827998186439708)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:Z4JQVJf7w78tGXNa9FOng9Gjkde9vb1601FV-5EzE88'
,p_created_on=>wwv_flow_imp.dz('20261014161115Z')
,p_updated_on=>wwv_flow_imp.dz('20261014161115Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3693828118252439711)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Bol\00EDvares (Bs)')
,p_lov_return_value=>'Bs'
,p_static_id=>'bs'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3693828940341439713)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('Euro (\20AC)')
,p_lov_return_value=>'EUR '
,p_static_id=>'eur'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3693828560650439712)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('D\00F3lares ($)')
,p_lov_return_value=>'USD'
,p_static_id=>'usd'
);
end;
/
prompt --application/shared_components/user_interface/lovs/mi_lov_origenes
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3693169732119417677)
,p_lov_name=>'MI_LOV_ORIGENES'
,p_static_id=>'mi-lov-origenes'
,p_lov_query=>'SELECT nombre_origen as d, id_origen as r FROM cat_origenes ORDER BY 1;'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:QSlBA8x5287kS-sIWan1kr3fTxn70NMLiQZetfdN4QM'
,p_created_on=>wwv_flow_imp.dz('20261014160735Z')
,p_updated_on=>wwv_flow_imp.dz('20261014160735Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/mi_lov_proyectos
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3693025682438458186)
,p_lov_name=>'MI_LOV_PROYECTOS'
,p_static_id=>'mi-lov-proyectos'
,p_lov_query=>'SELECT nombre_proyecto as d, id_proyecto as r FROM cat_proyectos WHERE activo = ''S'' ORDER BY 1;'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>'SH256:VvqtURegu9-w2Pw35iPEIxTSjbIBMuNj658B04_QfdU'
,p_created_on=>wwv_flow_imp.dz('20261014160656Z')
,p_updated_on=>wwv_flow_imp.dz('20261014160656Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(36592931911407560492)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_static_id=>'timeframe-4-weeks'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>'SH256:MHjq8a1C6UKgUTdUiXoLyw_rytnwJPhwCeLln9D4WW8'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(36592914593656560333)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_static_id=>'user-theme-preference'
,p_lov_query=>'.'||wwv_flow_imp.id(36592914593656560333)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:TvW_XwifmieFngIROiUljFKz9lOlDpA-gKH3l8Pr99c'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36592914822894560333)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Permitir a los usuarios finales seleccionar el estilo de tema'
,p_lov_return_value=>'Yes'
,p_static_id=>'yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(36592981685167560671)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_static_id=>'view-as-report-chart'
,p_lov_query=>'.'||wwv_flow_imp.id(36592981685167560671)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:OVf7E07I5xwoiw3hLfblcBh8MNQ4rdXdAOKK9xmrqHQ'
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36592982321386560673)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Agregar p\00E1gina de gr\00E1ficos')
,p_lov_return_value=>'CHART'
,p_static_id=>'chart'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(36592981963916560672)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Agregar p\00E1gina de informe')
,p_lov_return_value=>'REPORT'
,p_static_id=>'report'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(36592901081211560258)
,p_group_name=>unistr('Administraci\00F3n')
,p_static_id=>unistr('administraci\00F3n')
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(36593155734592565489)
,p_group_name=>unistr('Configuraci\00F3n de usuario')
,p_static_id=>unistr('configuraci\00F3n-de-usuario')
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/ruta_de_navegación
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(36592893829076560225)
,p_name=>unistr('Ruta de Navegaci\00F3n')
,p_static_id=>unistr('ruta-de-navegaci\00F3n')
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20261021211129Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(36593143841863565460)
,p_short_name=>unistr('Administraci\00F3n')
,p_static_id=>unistr('administraci\00F3n')
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3754801249126150005)
,p_parent_id=>wwv_flow_imp.id(36592894008039560225)
,p_option_sequence=>20
,p_short_name=>'Control Fiscal y Retenciones'
,p_static_id=>'control-fiscal-y-retenciones'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261016163237Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4896763426792973646)
,p_parent_id=>wwv_flow_imp.id(4294360566938861057)
,p_short_name=>'Informe'
,p_static_id=>'informe'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20261016194014Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194014Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(36592894008039560225)
,p_short_name=>'Inicio'
,p_static_id=>'inicio'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3739108157580587298)
,p_parent_id=>wwv_flow_imp.id(36592894008039560225)
,p_short_name=>'Listado de Movimientos'
,p_static_id=>'listado-de-movimientos'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20261014191508Z')
,p_updated_on=>wwv_flow_imp.dz('20261016163043Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4768072881814186926)
,p_parent_id=>wwv_flow_imp.id(3739108157580587298)
,p_short_name=>'Movimientos'
,p_static_id=>'movimientos'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20261016144227Z')
,p_updated_on=>wwv_flow_imp.dz('20261021211129Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4294360566938861057)
,p_parent_id=>wwv_flow_imp.id(36592894008039560225)
,p_option_sequence=>30
,p_short_name=>'Tablero'
,p_static_id=>'tablero'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20261015181405Z')
,p_updated_on=>wwv_flow_imp.dz('20261016163301Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3188290985424409560)
,p_short_name=>'Tasa BCV'
,p_static_id=>'tasa-bcv'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20261013232614Z')
,p_updated_on=>wwv_flow_imp.dz('20261016163348Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
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
 p_id=>wwv_flow_imp.id(36592894742062560227)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2724749759807195308
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:tLb71oUMGdnhbZCarq05H-fMWk3KgVC_-1i4FLSPxxQ'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20261021211813Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
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
 p_id=>wwv_flow_imp.id(36592893159574560223)
,p_build_option_name=>'Comentado'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:4LvNpmB33VfUM8ZhOLd65d7e3f_PNzcovGdtUtYiwkM'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(36593156201766565490)
,p_build_option_name=>unistr('Funci\00F3n: Configuraci\00F3n de usuario')
,p_static_id=>unistr('funci\00F3n-configuraci\00F3n-de-usuario')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:eKjPrn5EAs_vGgsJKq5pbUDIAs7naPXnVG2_-l_6sqA'
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>unistr('La p\00E1gina de configuraci\00F3n de usuario es un caj\00F3n que enlaza con todas las p\00E1ginas de configuraci\00F3n de usuario.')
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(36592897601643560242)
,p_build_option_name=>unistr('Funci\00F3n: Control de Acceso')
,p_static_id=>unistr('funci\00F3n-control-de-acceso')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:CtGgqUAHSgikllniqwrIRHDGD-UbkGQnwQIoC-hGFIk'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>unistr('Incorpore la autenticaci\00F3n de usuarios basada en roles en la aplicaci\00F3n y gestione las asignaciones de nombres de usuario a roles de la aplicaci\00F3n.')
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(36592897771920560242)
,p_build_option_name=>unistr('Funci\00F3n: Generaci\00F3n de informes de actividades')
,p_static_id=>unistr('funci\00F3n-generaci\00F3n-de-informes-de-actividades')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:0mL89lrkX0Yx97TIC2jex8mn9qqxuVc0jQSWlKgOfdU'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>unistr('Incluya varios informes y gr\00E1ficos en la actividad del usuario final.')
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(36593155983813565490)
,p_build_option_name=>unistr('Funci\00F3n: Notificaciones push')
,p_static_id=>unistr('funci\00F3n-notificaciones-push')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:r9wB4pRh0LAtOSdrROs2ye4NOBSWCS1ZKFz09FAjOEk'
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Permite a los usuarios suscribirse a notificaciones push en sus dispositivos.'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(36592898440538560242)
,p_build_option_name=>unistr('Funci\00F3n: Selecci\00F3n de estilo de tema')
,p_static_id=>unistr('funci\00F3n-selecci\00F3n-de-estilo-de-tema')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:38ppRSgvwpuPupZ7t5VP_P2ni3aSA3trFtZQkIif7l4'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>unistr('Permita a los administradores seleccionar un esquema de colores por defecto (estilo de tema) para la aplicaci\00F3n. Los administradores tambi\00E9n pueden permitir a los usuarios finales seleccionar su propio estilo de tema. ')
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
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
prompt --application/shared_components/automations/auto_actualizar_tasa_bcv
begin
wwv_flow_imp_shared.create_automation(
 p_id=>wwv_flow_imp.id(3190623485915544636)
,p_name=>'Auto_Actualizar_Tasa_BCV'
,p_static_id=>'auto-actualizar-tasa-bcv'
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=DAILY;INTERVAL=1;BYHOUR=6;BYMINUTE=0'
,p_polling_status=>'DISABLED'
,p_result_type=>'ALWAYS'
,p_error_handling_type=>'ABORT'
,p_created_on=>wwv_flow_imp.dz('20261013234121Z')
,p_updated_on=>wwv_flow_imp.dz('20261123194841Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(3190623853135544641)
,p_automation_id=>wwv_flow_imp.id(3190623485915544636)
,p_name=>'Tasa_automatica'
,p_static_id=>unistr('nueva-acci\00F3n')
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_clob        CLOB;',
'    l_tasa_num    NUMBER;',
'    l_hoy         DATE := TRUNC(SYSDATE);',
'BEGIN',
unistr('    -- 1. Realizar petici\00F3n REST a DolarAPI'),
'    l_clob := apex_web_service.make_rest_request(',
'        p_url         => ''https://ve.dolarapi.com/v1/dolares/oficial'',',
'        p_http_method => ''GET''',
'    );',
'',
'    -- 2. Parsear el JSON recibido',
'    apex_json.parse(l_clob);',
'    l_tasa_num := apex_json.get_number(p_path => ''promedio'');',
'',
'    IF l_tasa_num IS NOT NULL THEN',
unistr('        -- 3. Guardar o actualizar en la tabla evitando duplicados del d\00EDa'),
'        MERGE INTO tasa_cambio_historico t',
'        USING (SELECT l_hoy AS fecha, ''USD'' as orig, ''VES'' as dest, ''BCV'' as tipo FROM dual) src',
'        ON (TRUNC(t.fecha) = src.fecha AND t.moneda_origen = src.orig AND t.moneda_destino = src.dest AND t.tipo_tasa = src.tipo)',
'        WHEN MATCHED THEN',
'            UPDATE SET t.tasa = l_tasa_num, t.creado_el = SYSTIMESTAMP',
'        WHEN NOT MATCHED THEN',
'            INSERT (fecha, moneda_origen, moneda_destino, tasa, tipo_tasa)',
'            VALUES (SYSDATE, ''USD'', ''VES'', l_tasa_num, ''BCV'');',
'',
'        COMMIT;',
'    END IF;',
'END;'))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20261013234121Z')
,p_updated_on=>wwv_flow_imp.dz('20261013234424Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authentications/cuentas_de_oracle_apex
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(36592893445437560223)
,p_name=>'Cuentas de Oracle APEX'
,p_static_id=>'cuentas-de-oracle-apex'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:IwbV_H8lwmiWIq-cMoIRBp7XvtrFXzfY0oTMSN2D56U'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153852Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
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
,p_name=>unistr('P\00E1gina Global')
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260908153852Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261016155232Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Inicio'
,p_alias=>'HOME'
,p_step_title=>'Control de Movimientos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261016162711Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592909059360560271)
,p_plug_name=>'INICIO  '
,p_static_id=>'primera-aplicacion-2026'
,p_title=>' '
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="vamilco-banner">',
'  <!-- Contenedor del logo con el color corporativo azul marino de Vamilco -->',
'  <div class="vamilco-logo-container">',
'    <img src="https://vamilco.net/wp-content/uploads/2024/05/logo-vamilco-diapo_1.png" alt="Vamilco Logo" class="vamilco-logo">',
'  </div>',
'',
'  <!-- Marquesina informativa estilizada -->',
'  <div class="marquee-container">',
'    <span class="marquee-text">',
unistr('      \D83D\DC4B \00A1Bienvenido a <strong>Control de Movimientos</strong>! &nbsp;&nbsp;|&nbsp;&nbsp; '),
'      <img src="https://www.bcv.org.ve/sites/default/files/bcv5_0.ico" alt="BCV" class="bcv-icon-inline">',
'      Tasa Oficial BCV: <strong>&G_TASA_ACTUAL.</strong>',
'    </span>',
'  </div>',
'</div>',
'',
'<style>',
'  /* Banner general */',
'  .vamilco-banner {',
'    display: flex;',
'    align-items: center;',
'    background-color: #ffffff;',
'    border: 1px solid #dce2e6;',
'    border-radius: 8px;',
'    padding: 5px 12px;',
'    box-shadow: 0 2px 6px rgba(0,0,0,0.06);',
'    margin-bottom: 15px;',
'    overflow: hidden;',
'  }',
'',
unistr('  /* C\00E1psula Azul Corporativo Vamilco (#1a2e5a / #1b365d) */'),
'  .vamilco-logo-container {',
'    flex-shrink: 0;',
'    background-color: #1b365d; /* Azul corporativo profundo */',
'    padding: 6px 16px;',
'    border-radius: 6px;',
'    margin-right: 15px;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'  }',
'',
'  .vamilco-logo {',
'    height: 24px;',
'    width: auto;',
'    object-fit: contain;',
'    display: block;',
'  }',
'',
'  /* Marquesina */',
'  .marquee-container {',
'    width: 100%;',
'    overflow: hidden;',
'    white-space: nowrap;',
'  }',
'',
'  .marquee-text {',
'    display: inline-block;',
'    padding-left: 100%;',
'    animation: marquee-anim 16s linear infinite;',
'    font-size: 14px;',
'    color: #2c3e50;',
'  }',
'',
'  /* Icono BCV compacto dentro del texto */',
'  .bcv-icon-inline {',
'    height: 16px;',
'    width: 16px;',
'    border-radius: 3px;',
'    vertical-align: middle;',
'    margin-right: 5px;',
'    margin-bottom: 2px;',
'  }',
'',
unistr('  /* Animaci\00F3n */'),
'  @keyframes marquee-anim {',
'    0%   { transform: translate(0, 0); }',
'    100% { transform: translate(-100%, 0); }',
'  }',
'',
unistr('  /* Pausa al pasar el rat\00F3n */'),
'  .vamilco-banner:hover .marquee-text {',
'    animation-play-state: paused;',
'  }',
'</style>'))
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20261016162711Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Formulario Nuevo'
,p_alias=>'FORMULARIO'
,p_step_title=>'Formulario'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260908193145Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908194738Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36678645225150636310)
,p_plug_name=>'Formulario'
,p_static_id=>'formulario'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908193442Z')
,p_updated_on=>wwv_flow_imp.dz('20260908194039Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36695337184028647087)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_static_id=>unistr('ruta-de-navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(36592893829076560225)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20260908193145Z')
,p_updated_on=>wwv_flow_imp.dz('20260908193145Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36678645531416636313)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36678645225150636310)
,p_button_name=>'Nuevo'
,p_static_id=>'nuevo'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_condition=>'P1_NEVO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260908194039Z')
,p_updated_on=>wwv_flow_imp.dz('20260908194738Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36678645439463636312)
,p_name=>'P1_NEVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36678645225150636310)
,p_prompt=>'Nuevo'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908194039Z')
,p_updated_on=>wwv_flow_imp.dz('20260908194233Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Tablero'
,p_alias=>'TABLERO'
,p_step_title=>'Tablero'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20261015181405Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261016191609Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4294365674085861286)
,p_plug_name=>unistr('Gr\00E1fico 2')
,p_static_id=>unistr('gr\00E1fico-2')
,p_title=>'KPI'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH totales AS (',
'    SELECT ',
'        COUNT(1) AS cant_mov,',
'        SUM(NVL(MONTO_BS, 0)) AS total_bs,',
'        SUM(NVL(MONTO_USD, 0)) AS total_usd,',
'        AVG(NULLIF(TASA_APLICADA, 0)) AS tasa_promedio',
'    FROM MOVIMIENTOS_FINANCIEROS',
unistr('    WHERE (ID_PROYECTO = :P3_ID_PROYECTO OR :P3_ID_PROYECTO IS NULL) -- <--- FILTRO DIN\00C1MICO'),
')',
'SELECT ',
'    ''Total Monto (Bs)'' AS titulo,',
'     TO_CHAR(total_bs, ''FM999G999G999G990D00'') AS valor,',
'    ''fa-money'' AS icono, ',
'    ''u-color-2'' AS color_badge, -- Clase verde nativa',
'    ''Monto acumulado bruto'' AS subtitulo',
'FROM totales',
'',
'UNION ALL',
'',
'SELECT ',
'    ''Total Monto (USD)'' AS titulo,',
'     TO_CHAR(total_usd, ''FM999G999G999G990D00'') AS valor,',
'    ''fa-usd'' AS icono, ',
'    ''u-color-1'' AS color_badge, -- Clase azul nativa',
'    ''Monto acumulado bruto'' AS subtitulo',
'FROM totales',
'',
'UNION ALL',
'',
'SELECT ',
'    ''Tasa de Cambio Promedio'' AS titulo,',
'    TO_CHAR(tasa_promedio, ''FM999G990D00'') AS valor,',
'    ''fa-line-chart'' AS icono, ',
'    ''u-color-3'' AS color_badge, -- Clase naranja nativa',
'    ''Basado en transacciones'' AS subtitulo',
'FROM totales',
'',
'UNION ALL',
'',
'SELECT ',
'    ''Total Movimientos'' AS titulo,',
'    TO_CHAR(cant_mov, ''FM999G999G990'') AS valor,',
'    ''fa-file-text-o'' AS icono, ',
unistr('    ''u-color-4'' AS color_badge, -- Clase gris/marr\00F3n nativa'),
'    ''Cantidad de registros'' AS subtitulo',
'FROM totales;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P3_ID_PROYECTO'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20261015181407Z')
,p_updated_on=>wwv_flow_imp.dz('20261015203144Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(3696386284883556823)
,p_region_id=>wwv_flow_imp.id(4294365674085861286)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'SUBTITULO'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="u-textCenter u-padding-md">',
'    <span class="u-typography-h2 u-color-black">',
'        <i class="fa &ICONO." style="margin-right: 14px;" aria-hidden="true"></i>&VALOR.',
'    </span>',
'</div>',
''))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20261015203144Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4294368781769861402)
,p_plug_name=>unistr('Gr\00E1fico 3')
,p_static_id=>unistr('gr\00E1fico-3')
,p_title=>'Proyectos / Centro de Costos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261015181409Z')
,p_updated_on=>wwv_flow_imp.dz('20261016190755Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(4294369099153861404)
,p_region_id=>wwv_flow_imp.id(4294368781769861402)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
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
,p_created_on=>wwv_flow_imp.dz('20261015181409Z')
,p_updated_on=>wwv_flow_imp.dz('20261016190653Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(4294370774831861406)
,p_chart_id=>wwv_flow_imp.id(4294369099153861404)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p.NOMBRE_PROYECTO AS PROYECTO,',
'    SUM(m.MONTO_USD)  AS TOTAL_USD',
'FROM ',
'    MOVIMIENTOS_FINANCIEROS m',
'JOIN ',
'    CAT_PROYECTOS p ON m.ID_PROYECTO = p.ID_PROYECTO',
'WHERE ',
unistr('    p.ACTIVO = ''S'' -- Opcional: Filtra solo proyectos activos (ajusta ''S'' o 1 seg\00FAn tu base de datos)'),
unistr('--AND (p.ID_PROYECTO = :P3_ID_PROYECTO OR :P3_ID_PROYECTO IS NULL) -- <--- FILTRO DIN\00C1MICO'),
'GROUP BY ',
'    p.ID_PROYECTO, ',
'    p.NOMBRE_PROYECTO',
'ORDER BY ',
'    TOTAL_USD DESC;',
''))
,p_items_value_column_name=>'TOTAL_USD'
,p_items_label_column_name=>'PROYECTO'
,p_color=>'#34aadc'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261015181409Z')
,p_updated_on=>wwv_flow_imp.dz('20261016190653Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(4294369533927861405)
,p_chart_id=>wwv_flow_imp.id(4294369099153861404)
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
,p_created_on=>wwv_flow_imp.dz('20261015181409Z')
,p_updated_on=>wwv_flow_imp.dz('20261015181409Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(4294370116161861406)
,p_chart_id=>wwv_flow_imp.id(4294369099153861404)
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
,p_created_on=>wwv_flow_imp.dz('20261015181409Z')
,p_updated_on=>wwv_flow_imp.dz('20261015181409Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4294359968208861049)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_static_id=>unistr('ruta-de-navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(36592893829076560225)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261015181405Z')
,p_updated_on=>wwv_flow_imp.dz('20261015181405Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696386355498556824)
,p_name=>'P3_ID_PROYECTO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(4294359968208861049)
,p_item_display_point=>'NEXT'
,p_prompt=>'Centro de Costo'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MI_LOV_PROYECTOS'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261015191458Z')
,p_updated_on=>wwv_flow_imp.dz('20261015201810Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3696386430827556825)
,p_name=>'Filtro'
,p_static_id=>'Filtro'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_ID_PROYECTO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261015194053Z')
,p_updated_on=>wwv_flow_imp.dz('20261016190712Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3696386574829556826)
,p_event_id=>wwv_flow_imp.id(3696386430827556825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4294365674085861286)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261015194053Z')
,p_updated_on=>wwv_flow_imp.dz('20261016182947Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4855381587225593302)
,p_event_id=>wwv_flow_imp.id(3696386430827556825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4294368781769861402)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016182947Z')
,p_updated_on=>wwv_flow_imp.dz('20261016182947Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Tasa BCV'
,p_alias=>'TASA-BCV'
,p_step_title=>'Tasa BCV'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261013232613Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261014001710Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1818285669632197830)
,p_plug_name=>'Nuevo'
,p_static_id=>'nuevo'
,p_title=>unistr('Hist\00F3rico de Tasas BCV')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id,',
'       fecha,',
'       moneda_origen,',
'       moneda_destino,',
'       tasa,',
'       tipo_tasa,',
'       creado_el',
'FROM tasa_cambio_historico',
'ORDER BY fecha DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Hist\00F3rico de Tasas BCV')
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
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013235921Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1818285711896197831)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>1818285711896197831
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233330Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1818286410575197838)
,p_db_column_name=>'CREADO_EL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Creado El'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1818285952159197833)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1818285815645197832)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1818286172252197835)
,p_db_column_name=>'MONEDA_DESTINO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Moneda Destino'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1818286083530197834)
,p_db_column_name=>'MONEDA_ORIGEN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Moneda Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1818286245090197836)
,p_db_column_name=>'TASA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Tasa'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1818286313148197837)
,p_db_column_name=>'TIPO_TASA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo Tasa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3189456801478497546)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:FECHA:MONEDA_ORIGEN:MONEDA_DESTINO:TASA:TIPO_TASA:CREADO_EL'
,p_created_on=>wwv_flow_imp.dz('20261013233330Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233330Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3188290409748409553)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_static_id=>unistr('ruta-de-navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(36592893829076560225)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261013232614Z')
,p_updated_on=>wwv_flow_imp.dz('20261013232614Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1818286579897197839)
,p_plug_name=>'Tasa_vig'
,p_static_id=>'tasa-vig'
,p_title=>'Tasa BCV Vigente'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''1 USD = '' || TO_CHAR(tasa, ''FM999,999.0000'') || '' VES'' AS titulo,',
'    ''Actualizado al: '' || TO_CHAR(fecha, ''DD/MM/YYYY'') AS subtitulo,',
'    ''Moneda Oficial BCV'' AS descripcion,',
'    ''fa-dollar-sign'' AS icono,',
'    ''success'' AS color_badge',
'FROM (',
'    SELECT tasa, fecha',
'    FROM tasa_cambio_historico',
'    WHERE TRUNC(fecha) <= TRUNC(SYSDATE)',
'    ORDER BY fecha DESC',
')',
'WHERE ROWNUM = 1;'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$BADGE'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'ICON', 'fa-money',
  'LABEL', 'TASA',
  'LABEL_DISPLAY', 'N',
  'STATE', 'SUBTITULO',
  'VALUE', 'TITULO')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261013235921Z')
,p_updated_on=>wwv_flow_imp.dz('20261014001710Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1818287013226197844)
,p_name=>'COLOR_BADGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLOR_BADGE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261013235921Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1818286816820197842)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261013235921Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1818286983887197843)
,p_name=>'ICONO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICONO'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261013235921Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1818286705168197841)
,p_name=>'SUBTITULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTITULO'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261013235921Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1818286616715197840)
,p_name=>'TITULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITULO'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261013235921Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1818285493743197828)
,p_button_sequence=>10
,p_button_name=>'BTN_ACTUALIZAR'
,p_static_id=>'btn-actualizar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Actualizar Tasa BCV Hoy'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1818285520417197829)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Actualizar Tasa API'
,p_static_id=>'actualizar-tasa-api'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_clob        CLOB;',
'    l_tasa_num    NUMBER;',
'    l_hoy         DATE := TRUNC(SYSDATE);',
'BEGIN',
unistr('    -- 1. Realizar petici\00F3n REST a DolarAPI'),
'    l_clob := apex_web_service.make_rest_request(',
'        p_url         => ''https://ve.dolarapi.com/v1/dolares/oficial'',',
'        p_http_method => ''GET''',
'    );',
'',
'    -- 2. Parsear el JSON recibido',
'    apex_json.parse(l_clob);',
'    l_tasa_num := apex_json.get_number(p_path => ''promedio'');',
'',
'    IF l_tasa_num IS NOT NULL THEN',
'        -- 3. Guardar o actualizar en la tabla',
'        MERGE INTO tasa_cambio_historico t',
'        USING (SELECT l_hoy AS fecha, ''USD'' as orig, ''VES'' as dest, ''BCV'' as tipo FROM dual) src',
'        ON (TRUNC(t.fecha) = src.fecha AND t.moneda_origen = src.orig AND t.moneda_destino = src.dest AND t.tipo_tasa = src.tipo)',
'        WHEN MATCHED THEN',
'            UPDATE SET t.tasa = l_tasa_num, t.creado_el = SYSTIMESTAMP',
'        WHEN NOT MATCHED THEN',
'            INSERT (fecha, moneda_origen, moneda_destino, tasa, tipo_tasa)',
'            VALUES (SYSDATE, ''USD'', ''VES'', l_tasa_num, ''BCV'');',
'',
'        COMMIT;',
'',
unistr('        apex_application.g_print_success_message := ''\00A1\00C9xito! Tasa oficial de DolarAPI ('' || l_tasa_num || '') registrada correctamente.'';'),
'    ELSE',
'        raise_application_error(-20001, ''No se pudo leer el valor de la tasa ("promedio") en la respuesta JSON.'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1818285493743197828)
,p_internal_uid=>1818285520417197829
,p_created_on=>wwv_flow_imp.dz('20261013233321Z')
,p_updated_on=>wwv_flow_imp.dz('20261013233321Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Registro de Movimiento'
,p_alias=>'MOVIMIENTOS-FINANCIEROS'
,p_page_mode=>'MODAL'
,p_step_title=>'Registro de Movimiento'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261014161856Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261016152817Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3696388088973556841)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016151928Z')
,p_updated_on=>wwv_flow_imp.dz('20261016152456Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3694704179723485919)
,p_plug_name=>'MOVIMIENTOS_FINANCIEROS'
,p_static_id=>'movimientos-financieros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MOVIMIENTOS_FINANCIEROS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3694702925982485769)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_static_id=>unistr('ruta-de-navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(36592893829076560225)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261014161856Z')
,p_updated_on=>wwv_flow_imp.dz('20261014161856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3694714112019485932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3696388088973556841)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(3696388198719556842)
,p_button_id=>wwv_flow_imp.id(3694714112019485932)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261016151929Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3694715679099485933)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3696388088973556841)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>':P6_ID_MOVIMIENTO is null or :P6_FECHA_MOVIMIENTO is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016152643Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3694714869921485933)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3696388088973556841)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Suprimir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P6_ID_MOVIMIENTO is not null and :P6_FECHA_MOVIMIENTO is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3694715294305485933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3696388088973556841)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>':P6_ID_MOVIMIENTO is not null and :P6_FECHA_MOVIMIENTO is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016152643Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694706681322485924)
,p_name=>'P6_CONCEPTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Concepto'
,p_source=>'CONCEPTO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694709795493485927)
,p_name=>'P6_CREADO_EL'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Creado El'
,p_source=>'CREADO_EL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694704822604485921)
,p_name=>'P6_FECHA_MOVIMIENTO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Nuevo'
,p_source=>'FECHA_MOVIMIENTO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694707098020485925)
,p_name=>'P6_ID_CATEGORIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Categoria'
,p_source=>'ID_CATEGORIA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT_CATEGORIAS.NOMBRE_CATEGORIA'
,p_lov_display_null=>'YES'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694704441549485920)
,p_name=>'P6_ID_MOVIMIENTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_source=>'ID_MOVIMIENTO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694705974987485923)
,p_name=>'P6_ID_ORIGEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Origen'
,p_source=>'ID_ORIGEN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT_ORIGENES.NOMBRE_ORIGEN'
,p_lov_display_null=>'YES'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694705284696485922)
,p_name=>'P6_ID_PROYECTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Centro de Costo'
,p_source=>'ID_PROYECTO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT_PROYECTOS.NOMBRE_PROYECTO'
,p_lov_display_null=>'YES'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694707774595485925)
,p_name=>'P6_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Moneda'
,p_source=>'MONEDA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MI_LOV_MONEDAS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696386752366556828)
,p_name=>'P6_MONTO_BASE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Monto Base'
,p_source=>'MONTO_BASE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016142229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694708175387485926)
,p_name=>'P6_MONTO_BS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Monto Bs'
,p_source=>'MONTO_BS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696386883360556829)
,p_name=>'P6_MONTO_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Monto Iva'
,p_source=>'MONTO_IVA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016142229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694708550253485926)
,p_name=>'P6_MONTO_USD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Monto Usd'
,p_source=>'MONTO_USD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696387261849556833)
,p_name=>'P6_NETO_TRANSFERIR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Neto Transferir'
,p_source=>'NETO_TRANSFERIR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016142229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694709332127485927)
,p_name=>'P6_OBSERVACIONES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Observaciones'
,p_source=>'OBSERVACIONES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696387053981556831)
,p_name=>'P6_RETENCION_ISLR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Retencion Islr'
,p_source=>'RETENCION_ISLR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016142229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696387141967556832)
,p_name=>'P6_RETENCION_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Retencion Iva'
,p_source=>'RETENCION_IVA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016142229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694708944242485927)
,p_name=>'P6_TASA_APLICADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Tasa Aplicada'
,p_source=>'TASA_APLICADA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151928Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696386997971556830)
,p_name=>'P6_TOTAL_FACTURA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_item_source_plug_id=>wwv_flow_imp.id(3694704179723485919)
,p_prompt=>'Total Factura'
,p_source=>'TOTAL_FACTURA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016142229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016151929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3694710103330485929)
,p_validation_name=>'P6_CREADO_EL must be timestamp'
,p_static_id=>'p6-creado-el-must-be-timestamp'
,p_validation_sequence=>100
,p_validation=>'P6_CREADO_EL'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>unistr('#LABEL# debe ser un registro de hora v\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(3694709795493485927)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261014161857Z')
,p_updated_on=>wwv_flow_imp.dz('20261014161857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3696384040646556801)
,p_name=>'Conversion'
,p_static_id=>'conversion'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_MONTO_USD'
,p_condition_element=>'P6_MONTO_BS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261014162755Z')
,p_updated_on=>wwv_flow_imp.dz('20261016152817Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3696384143592556802)
,p_event_id=>wwv_flow_imp.id(3696384040646556801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Get_Conversion'
,p_static_id=>'get-tasa'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_MONTO_BS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P6_MONTO_USD, P6_TASA_APLICADA',
  'sql_query', 'SELECT :P6_MONTO_USD * :P6_TASA_APLICADA FROM DUAL',
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261014162755Z')
,p_updated_on=>wwv_flow_imp.dz('20261016152817Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3696384238462556803)
,p_name=>'DA_BUSCAR_TASA'
,p_static_id=>'da-buscar-tasa'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_FECHA_MOVIMIENTO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261014164949Z')
,p_updated_on=>wwv_flow_imp.dz('20261014170606Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3696384379425556804)
,p_event_id=>wwv_flow_imp.id(3696384238462556803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Get_tasa'
,p_static_id=>'get-tasa'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P6_MONEDA,P6_TASA_APLICADA',
  'items_to_submit', 'P6_FECHA_MOVIMIENTO',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'BEGIN',
    unistr('    -- Busca la tasa exacta del d\00EDa o la \00FAltima disponible hacia atr\00E1s'),
    '    SELECT tasa , moneda_origen',
    '    INTO :P6_TASA_APLICADA, :P6_MONEDA',
    '    FROM tasa_cambio_historico',
    '    WHERE TRUNC(fecha) <= TO_DATE(:P6_FECHA_MOVIMIENTO, ''DD/MM/YYYY'') ',
    '      AND moneda_origen = ''USD''',
    '    ORDER BY TRUNC(fecha) DESC, id DESC ',
    '    FETCH FIRST 1 ROWS ONLY;',
    'EXCEPTION',
    '    WHEN NO_DATA_FOUND THEN',
    '        :P6_TASA_APLICADA := 1; -- Valor por defecto si no encuentra',
    '        :P6_MONEDA := ''Bs'';',
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261014164949Z')
,p_updated_on=>wwv_flow_imp.dz('20261014170606Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3696387602690556837)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3694704179723485919)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Cargar Registro Movimiento'
,p_static_id=>'cargar-registro-movimiento'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_internal_uid=>3696387602690556837
,p_created_on=>wwv_flow_imp.dz('20261016142827Z')
,p_updated_on=>wwv_flow_imp.dz('20261016142827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4770076238666277841)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Cerrar Recuadro de Di\00E1logo')
,p_static_id=>unistr('cerrar-recuadro-de-di\00E1logo')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4770076238666277841
,p_created_on=>wwv_flow_imp.dz('20261016145736Z')
,p_updated_on=>wwv_flow_imp.dz('20261016145736Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4772731608418330271)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3694704179723485919)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla MOVIMIENTOS'
,p_static_id=>'inicializar-pantalla-movimientos'
,p_internal_uid=>4772731608418330271
,p_created_on=>wwv_flow_imp.dz('20261016150621Z')
,p_updated_on=>wwv_flow_imp.dz('20261016152019Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4770061900380275706)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3694704179723485919)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla MOVIMIENTOS'
,p_static_id=>'procesar-pantalla-movimientos'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4770061900380275706
,p_created_on=>wwv_flow_imp.dz('20261016145715Z')
,p_updated_on=>wwv_flow_imp.dz('20261016150111Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Listado de Movimientos'
,p_alias=>'LISTADO-DE-MOVIMIENTOS'
,p_step_title=>'Listado de Movimientos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261014191507Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261016171531Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3739109370449587642)
,p_plug_name=>'Listado de Movimientos'
,p_static_id=>'listado-de-movimientos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    m.id_movimiento,',
'    m.fecha_movimiento,',
'    p.nombre_proyecto AS proyecto,',
'    o.nombre_origen AS origen,',
'    m.concepto,',
'    c.nombre_categoria AS categoria,',
'    m.moneda,',
'    m.monto_bs,',
'    m.monto_usd,',
'    m.tasa_aplicada,',
'    m.observaciones',
'FROM movimientos_financieros m',
'LEFT JOIN cat_proyectos p ON m.id_proyecto = p.id_proyecto',
'LEFT JOIN cat_origenes o ON m.id_origen = o.id_origen',
'LEFT JOIN cat_categorias c ON m.id_categoria = c.id_categoria',
'ORDER BY m.fecha_movimiento DESC, m.id_movimiento DESC;'))
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
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261016153348Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3739109471841587642)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>3739109471841587642
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261016153348Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739112642171587674)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014191511Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739112207841587672)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014191511Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739111003838587665)
,p_db_column_name=>'FECHA_MOVIMIENTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Movimiento'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014191955Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739110698478587657)
,p_db_column_name=>'ID_MOVIMIENTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Movimiento'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_ID_MOVIMIENTO:#ID_MOVIMIENTO#'
,p_column_linktext=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_column_link_attr=>'#ID_MOVIMIENTO#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261016153348Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739113093012587676)
,p_db_column_name=>'MONEDA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014191511Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739113476856587678)
,p_db_column_name=>'MONTO_BS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Monto Bs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014192628Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739113806256587680)
,p_db_column_name=>'MONTO_USD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Monto Usd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014192628Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739114636559587684)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014191511Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739111842186587670)
,p_db_column_name=>'ORIGEN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014191511Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739111474026587667)
,p_db_column_name=>'PROYECTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Proyecto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014191511Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3739114229128587682)
,p_db_column_name=>'TASA_APLICADA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Tasa Aplicada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014191511Z')
,p_updated_on=>wwv_flow_imp.dz('20261014192656Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3736910355534572984)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_MOVIMIENTO:FECHA_MOVIMIENTO:PROYECTO:ORIGEN:CONCEPTO:CATEGORIA:MONEDA:MONTO_BS:MONTO_USD:TASA_APLICADA:OBSERVACIONES'
,p_created_on=>wwv_flow_imp.dz('20261014192008Z')
,p_updated_on=>wwv_flow_imp.dz('20261014192008Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3696388618285556847)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3739109370449587642)
,p_button_name=>'BTN_CREAR'
,p_static_id=>'nuevo'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Crear Movimiento'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261016164424Z')
,p_updated_on=>wwv_flow_imp.dz('20261016170851Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3696388861248556849)
,p_name=>'Refrescar al cerrar modal'
,p_static_id=>'refrescar-al-cerrar-modal'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3739109370449587642)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261016171531Z')
,p_updated_on=>wwv_flow_imp.dz('20261016171531Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3696388903160556850)
,p_event_id=>wwv_flow_imp.id(3696388861248556849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3739109370449587642)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016171531Z')
,p_updated_on=>wwv_flow_imp.dz('20261016171531Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'MOVIMIENTOS'
,p_alias=>'MOVIMIENTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'MOVIMIENTOS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261016144227Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261016153733Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4768088852613187086)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4768073079444187058)
,p_plug_name=>'MOVIMIENTOS'
,p_static_id=>'movimientos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MOVIMIENTOS_FINANCIEROS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4768089230853187087)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4768088852613187086)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(4768089751846187088)
,p_button_id=>wwv_flow_imp.id(4768089230853187087)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4768091030852187090)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4768088852613187086)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_ID_MOVIMIENTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4768090211025187089)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4768088852613187086)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Suprimir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P8_ID_MOVIMIENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4768090674332187090)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4768088852613187086)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_ID_MOVIMIENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768077404311187072)
,p_name=>'P8_CONCEPTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Concepto'
,p_source=>'CONCEPTO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768080211214187075)
,p_name=>'P8_CREADO_EL'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Creado El'
,p_source=>'CREADO_EL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768073718217187064)
,p_name=>'P8_FECHA_MOVIMIENTO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Fecha Movimiento'
,p_source=>'FECHA_MOVIMIENTO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768077807163187072)
,p_name=>'P8_ID_CATEGORIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Id Categoria'
,p_source=>'ID_CATEGORIA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT_CATEGORIAS.NOMBRE_CATEGORIA'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768073362286187059)
,p_name=>'P8_ID_MOVIMIENTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_source=>'ID_MOVIMIENTO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768077089503187071)
,p_name=>'P8_ID_ORIGEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Id Origen'
,p_source=>'ID_ORIGEN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT_ORIGENES.NOMBRE_ORIGEN'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768076622736187070)
,p_name=>'P8_ID_PROYECTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Id Proyecto'
,p_source=>'ID_PROYECTO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT_PROYECTOS.NOMBRE_PROYECTO'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768078221464187073)
,p_name=>'P8_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Moneda'
,p_source=>'MONEDA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768081080912187077)
,p_name=>'P8_MONTO_BASE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_source=>'MONTO_BASE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144545Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768078612677187073)
,p_name=>'P8_MONTO_BS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Monto Bs'
,p_source=>'MONTO_BS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768081484353187078)
,p_name=>'P8_MONTO_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_source=>'MONTO_IVA'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144545Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768079018304187073)
,p_name=>'P8_MONTO_USD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Monto Usd'
,p_source=>'MONTO_USD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768083037102187079)
,p_name=>'P8_NETO_TRANSFERIR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_source=>'NETO_TRANSFERIR'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144545Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768079841094187074)
,p_name=>'P8_OBSERVACIONES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Observaciones'
,p_source=>'OBSERVACIONES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768082256344187079)
,p_name=>'P8_RETENCION_ISLR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_source=>'RETENCION_ISLR'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144545Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768082615421187079)
,p_name=>'P8_RETENCION_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_source=>'RETENCION_IVA'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144545Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768079485146187074)
,p_name=>'P8_TASA_APLICADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_prompt=>'Tasa Aplicada'
,p_source=>'TASA_APLICADA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4768081862944187078)
,p_name=>'P8_TOTAL_FACTURA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_item_source_plug_id=>wwv_flow_imp.id(4768073079444187058)
,p_source=>'TOTAL_FACTURA'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144545Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4768080635310187076)
,p_validation_name=>'P8_CREADO_EL must be timestamp'
,p_static_id=>'p8-creado-el-must-be-timestamp'
,p_validation_sequence=>110
,p_validation=>'P8_CREADO_EL'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>unistr('#LABEL# debe ser un registro de hora v\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(4768080211214187075)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3696388223926556843)
,p_name=>'Conversion'
,p_static_id=>'conversion'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_MONTO_USD'
,p_condition_element=>'P8_MONTO_BS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261016153031Z')
,p_updated_on=>wwv_flow_imp.dz('20261016153031Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3696388385303556844)
,p_event_id=>wwv_flow_imp.id(3696388223926556843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Get_Conversion'
,p_static_id=>'get-conversion'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_MONTO_BS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P8_MONTO_USD,P8_TASA_APLICADA',
  'sql_query', 'SELECT :P8_MONTO_USD * :P8_TASA_APLICADA FROM DUAL',
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261016153031Z')
,p_updated_on=>wwv_flow_imp.dz('20261016153031Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3696388493951556845)
,p_name=>'DA_BUSCAR_TASA'
,p_static_id=>'da-buscar-tasa'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_FECHA_MOVIMIENTO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261016153235Z')
,p_updated_on=>wwv_flow_imp.dz('20261016153235Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3696388534117556846)
,p_event_id=>wwv_flow_imp.id(3696388493951556845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Get_tasa'
,p_static_id=>'get-tasa'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'BEGIN',
    unistr('    -- Busca la tasa exacta del d\00EDa o la \00FAltima disponible hacia atr\00E1s'),
    '    SELECT tasa , moneda_origen',
    '    INTO :P8_TASA_APLICADA, :P8_MONEDA',
    '    FROM tasa_cambio_historico',
    '    WHERE TRUNC(fecha) <= TO_DATE(:P8_FECHA_MOVIMIENTO, ''DD/MM/YYYY'') ',
    '      AND moneda_origen = ''USD''',
    '    ORDER BY TRUNC(fecha) DESC, id DESC ',
    '    FETCH FIRST 1 ROWS ONLY;',
    'EXCEPTION',
    '    WHEN NO_DATA_FOUND THEN',
    '        :P8_TASA_APLICADA := 1; -- Valor por defecto si no encuentra',
    '        :P8_MONEDA := ''Bs'';',
    'END;')),
  'show_processing', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261016153235Z')
,p_updated_on=>wwv_flow_imp.dz('20261016153235Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4768092246877187092)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Cerrar Recuadro de Di\00E1logo')
,p_static_id=>unistr('cerrar-recuadro-de-di\00E1logo')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4768092246877187092
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144545Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4768091458146187090)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4768073079444187058)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla MOVIMIENTOS'
,p_static_id=>'inicializar-pantalla-movimientos'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>4768091458146187090
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4768091864435187092)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4768073079444187058)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla MOVIMIENTOS'
,p_static_id=>'procesar-pantalla-movimientos'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4768091864435187092
,p_created_on=>wwv_flow_imp.dz('20261016144229Z')
,p_updated_on=>wwv_flow_imp.dz('20261016144229Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Control Fiscal y Retenciones'
,p_alias=>'CONTROL-FISCAL-Y-RETENCIONES'
,p_step_title=>'Control Fiscal y Retenciones'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261014212347Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3754792773347149969)
,p_plug_name=>'Control Fiscal y Retenciones'
,p_static_id=>'control-fiscal-y-retenciones'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    m.id_movimiento,',
'    m.fecha_movimiento,',
'    p.nombre_proyecto AS proyecto,',
'    m.concepto,',
'    m.moneda,',
'    m.monto_usd,',
'    m.monto_bs,',
'    m.tasa_aplicada,',
'    -- Campos de control fiscal',
'    m.monto_base,',
'    m.monto_iva,',
'    m.total_factura,',
'    m.retencion_islr,',
'    m.retencion_iva,',
'    m.neto_transferir',
'FROM movimientos_financieros m',
'LEFT JOIN cat_proyectos p ON m.id_proyecto = p.id_proyecto',
'ORDER BY m.fecha_movimiento DESC, m.id_movimiento DESC;'))
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
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212347Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3754792837003149969)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP:P10_ID_MOVIMIENTO:\#ID_MOVIMIENTO#\'
,p_detail_link_text=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_internal_uid=>3754792837003149969
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212347Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754795246522149987)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205618Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754794423500149985)
,p_db_column_name=>'FECHA_MOVIMIENTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Movimiento'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205618Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754794061845149983)
,p_db_column_name=>'ID_MOVIMIENTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Movimiento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205618Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754795605528149989)
,p_db_column_name=>'MONEDA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014210857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754796870952149993)
,p_db_column_name=>'MONTO_BASE'
,p_display_order=>45
,p_column_identifier=>'H'
,p_column_label=>'Monto Base'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212324Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3696384501312556806)
,p_db_column_name=>'MONTO_BS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Monto Bs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014210857Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212347Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754797260775149995)
,p_db_column_name=>'MONTO_IVA'
,p_display_order=>55
,p_column_identifier=>'I'
,p_column_label=>'Monto Iva'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212325Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754796022969149990)
,p_db_column_name=>'MONTO_USD'
,p_display_order=>25
,p_column_identifier=>'F'
,p_column_label=>'Monto Usd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212347Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754798830471150000)
,p_db_column_name=>'NETO_TRANSFERIR'
,p_display_order=>95
,p_column_identifier=>'M'
,p_column_label=>'Neto Transferir'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212325Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754794843606149986)
,p_db_column_name=>'PROYECTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Proyecto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205618Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754798026911149997)
,p_db_column_name=>'RETENCION_ISLR'
,p_display_order=>75
,p_column_identifier=>'K'
,p_column_label=>'Retencion Islr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212325Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754798426021149998)
,p_db_column_name=>'RETENCION_IVA'
,p_display_order=>85
,p_column_identifier=>'L'
,p_column_label=>'Retencion Iva'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212325Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754796434129149991)
,p_db_column_name=>'TASA_APLICADA'
,p_display_order=>35
,p_column_identifier=>'G'
,p_column_label=>'Tasa Aplicada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014210857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3754797646668149996)
,p_db_column_name=>'TOTAL_FACTURA'
,p_display_order=>65
,p_column_identifier=>'J'
,p_column_label=>'Total Factura'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014212325Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3757116469870197127)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_MOVIMIENTO:FECHA_MOVIMIENTO:PROYECTO:CONCEPTO:MONEDA:MONTO_USD:TASA_APLICADA:MONTO_BASE:MONTO_IVA:TOTAL_FACTURA:RETENCION_ISLR:RETENCION_IVA:NETO_TRANSFERIR'
,p_created_on=>wwv_flow_imp.dz('20261014205646Z')
,p_updated_on=>wwv_flow_imp.dz('20261014210858Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3754801351053150005)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_static_id=>unistr('ruta-de-navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(36592893829076560225)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205618Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3754799621266150002)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3754792773347149969)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10::'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205618Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3754800038081150003)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_static_id=>unistr('editar-informe-cuadro-de-di\00E1logo-cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3754792773347149969)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205618Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3754800452447150003)
,p_event_id=>wwv_flow_imp.id(3754800038081150003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3754792773347149969)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205618Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205618Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Edicion_fiscal'
,p_alias=>'EDICION-FISCAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Edicion_fiscal'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261014220929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3754786852673149632)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205615Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3754776639524149619)
,p_plug_name=>'Edicion_fiscal'
,p_static_id=>'edicion-fiscal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MOVIMIENTOS_FINANCIEROS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220506Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3754787588017149666)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3754786852673149632)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205615Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(3754788058948149666)
,p_button_id=>wwv_flow_imp.id(3754787588017149666)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205615Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3754789362817149668)
,p_button_sequence=>25
,p_button_plug_id=>wwv_flow_imp.id(3754786852673149632)
,p_button_name=>'BTN_CALCULAR'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Calcular'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014214002Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3754788565596149667)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3754786852673149632)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Suprimir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10_ID_MOVIMIENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205615Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3754788981684149668)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3754786852673149632)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ID_MOVIMIENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205615Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754778238972149623)
,p_name=>'P10_CONCEPTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Concepto'
,p_source=>'CONCEPTO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696385595110556816)
,p_name=>'P10_CREADO_EL'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'CREADO_EL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014220505Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754777409411149622)
,p_name=>'P10_FECHA_MOVIMIENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Fecha Movimiento'
,p_source=>'FECHA_MOVIMIENTO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014211233Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696385388543556814)
,p_name=>'P10_ID_CATEGORIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'ID_CATEGORIA'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014220505Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754777086151149621)
,p_name=>'P10_ID_MOVIMIENTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'ID_MOVIMIENTO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696385212245556813)
,p_name=>'P10_ID_ORIGEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'ID_ORIGEN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014220505Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696385166859556812)
,p_name=>'P10_ID_PROYECTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'ID_PROYECTO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014220505Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220826Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754778659554149623)
,p_name=>'P10_MONEDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'MONEDA'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754779829835149625)
,p_name=>'P10_MONTO_BASE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Monto Base'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'MONTO_BASE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696384698194556807)
,p_name=>'P10_MONTO_BS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Monto Bs'
,p_source=>'MONTO_BS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014211233Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220929Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754780294243149625)
,p_name=>'P10_MONTO_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Monto Iva'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'MONTO_IVA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754779017559149624)
,p_name=>'P10_MONTO_USD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'MONTO_USD'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754781802496149627)
,p_name=>'P10_NETO_TRANSFERIR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Neto Transferir'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'NETO_TRANSFERIR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696385428152556815)
,p_name=>'P10_OBSERVACIONES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'OBSERVACIONES'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014220505Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754781006579149626)
,p_name=>'P10_RETENCION_ISLR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Retencion Islr'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'RETENCION_ISLR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754781434467149626)
,p_name=>'P10_RETENCION_IVA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Retencion Iva'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'RETENCION_IVA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754779443906149624)
,p_name=>'P10_TASA_APLICADA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_source=>'TASA_APLICADA'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754780672735149625)
,p_name=>'P10_TOTAL_FACTURA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_item_source_plug_id=>wwv_flow_imp.id(3754776639524149619)
,p_prompt=>'Total Factura'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'TOTAL_FACTURA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261014205614Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220827Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3696384906929556810)
,p_name=>'Retenciones'
,p_static_id=>'retenciones'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3754789362817149668)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20261014213829Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220009Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3696385056202556811)
,p_event_id=>wwv_flow_imp.id(3696384906929556810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Get_valores'
,p_static_id=>'get-valores'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'items_to_return', 'P10_MONTO_BASE, P10_MONTO_IVA, P10_TOTAL_FACTURA, P10_RETENCION_ISLR, P10_RETENCION_IVA, P10_NETO_TRANSFERIR',
  'items_to_submit', 'P10_MONTO_USD, P10_TASA_APLICADA',
  'language', 'PLSQL',
  'plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '    v_base    NUMBER;',
    '    v_iva     NUMBER;',
    '    v_total   NUMBER;',
    '    v_ret_islr NUMBER;',
    '    v_ret_iva  NUMBER;',
    'BEGIN',
    unistr('    -- C\00E1lculo base utilizando la tasa y el monto del movimiento'),
    '    v_base := (NVL(:P10_MONTO_USD, 0) * NVL(:P10_TASA_APLICADA, 0)) + 1.65;',
    '    v_iva  := v_base * 0.16;',
    '    v_total := v_base + v_iva;',
    '',
    unistr('    -- Retenciones est\00E1ndar sugeridas'),
    '    v_ret_islr := v_base * 0.02;',
    '    v_ret_iva  := v_iva * 0.75;',
    '',
    '    -- Devolvemos los valores calculados',
    '    :P10_MONTO_BASE      := ROUND(v_base, 2);',
    '    :P10_MONTO_IVA       := ROUND(v_iva, 2);',
    '    :P10_TOTAL_FACTURA   := ROUND(v_total, 2);',
    '    :P10_RETENCION_ISLR  := ROUND(v_ret_islr, 2);',
    '    :P10_RETENCION_IVA   := ROUND(v_ret_iva, 2);',
    '    :P10_NETO_TRANSFERIR := ROUND(v_total - v_ret_islr - v_ret_iva, 2);',
    'END;')),
  'show_processing', 'N',
  'suppress_change_event', 'N')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261014213829Z')
,p_updated_on=>wwv_flow_imp.dz('20261014220009Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3754790523094149669)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Cerrar Recuadro de Di\00E1logo')
,p_static_id=>unistr('cerrar-recuadro-de-di\00E1logo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3754790523094149669
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205615Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3754789705757149668)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3754776639524149619)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla Edicion_fiscal'
,p_static_id=>'inicializar-pantalla-edicion-fiscal'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>3754789705757149668
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205615Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3754790127392149669)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3754776639524149619)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla Edicion_fiscal'
,p_static_id=>'procesar-pantalla-edicion-fiscal'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3754790127392149669
,p_created_on=>wwv_flow_imp.dz('20261014205615Z')
,p_updated_on=>wwv_flow_imp.dz('20261014205615Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Informe'
,p_alias=>'INFORME'
,p_step_title=>'Informe'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261016194014Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103184129Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4896766587829973924)
,p_plug_name=>'Informe'
,p_static_id=>'informe'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    m.id_movimiento,',
'    m.fecha_movimiento,',
'    p.nombre_proyecto AS proyecto,',
'    o.nombre_origen AS origen,',
'    m.concepto,',
'    c.nombre_categoria AS categoria,',
'    m.moneda,',
'    m.monto_bs,',
'    m.monto_usd,',
'    m.tasa_aplicada,',
'    m.observaciones',
'FROM movimientos_financieros m',
'LEFT JOIN cat_proyectos p ON m.id_proyecto = p.id_proyecto',
'LEFT JOIN cat_origenes o ON m.id_origen = o.id_origen',
'LEFT JOIN cat_categorias c ON m.id_categoria = c.id_categoria',
'ORDER BY p.nombre_proyecto, o.nombre_origen, m.fecha_movimiento DESC;'))
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
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261103184129Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4896766600706973924)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>4896766600706973924
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261103184129Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896769875042973941)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194358Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896769414446973940)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896768268516973936)
,p_db_column_name=>'FECHA_MOVIMIENTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Movimiento'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896767851222973934)
,p_db_column_name=>'ID_MOVIMIENTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Movimiento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896770221753973942)
,p_db_column_name=>'MONEDA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896770679792973943)
,p_db_column_name=>'MONTO_BS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Monto Bs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896771080163973944)
,p_db_column_name=>'MONTO_USD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Monto Usd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896771841737973947)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896769013002973939)
,p_db_column_name=>'ORIGEN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896768601908973937)
,p_db_column_name=>'PROYECTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Proyecto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4896771489131973945)
,p_db_column_name=>'TASA_APLICADA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Tasa Aplicada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261016194017Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194017Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4896820284393977489)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_MOVIMIENTO:FECHA_MOVIMIENTO:PROYECTO:ORIGEN:CONCEPTO:CATEGORIA:MONEDA:MONTO_BS:MONTO_USD:TASA_APLICADA:OBSERVACIONES'
,p_break_on=>'PROYECTO'
,p_break_enabled_on=>'PROYECTO'
,p_created_on=>wwv_flow_imp.dz('20261016194053Z')
,p_updated_on=>wwv_flow_imp.dz('20261103184129Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(10733046387393361434)
,p_report_id=>wwv_flow_imp.id(4896820284393977489)
,p_group_by_columns=>'PROYECTO'
,p_function_01=>'SUM'
,p_function_column_01=>'MONTO_BS'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Suma  Monto Bs'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'MONTO_USD'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Suma  Monto Usd'
,p_function_format_mask_02=>'999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261103184129Z')
,p_updated_on=>wwv_flow_imp.dz('20261103184129Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4896269081426106914)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Resumen por Proyecto'
,p_report_seq=>10
,p_report_alias=>'resumen-por-proyecto'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_MOVIMIENTO:FECHA_MOVIMIENTO:PROYECTO:ORIGEN:CONCEPTO:CATEGORIA:MONEDA:MONTO_BS:MONTO_USD:TASA_APLICADA:OBSERVACIONES'
,p_break_on=>'PROYECTO'
,p_break_enabled_on=>'PROYECTO'
,p_created_on=>wwv_flow_imp.dz('20261016195504Z')
,p_updated_on=>wwv_flow_imp.dz('20261016195504Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(4896269387578106928)
,p_report_id=>wwv_flow_imp.id(4896269081426106914)
,p_group_by_columns=>'PROYECTO'
,p_function_01=>'SUM'
,p_function_column_01=>'MONTO_BS'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Suma  Monto Bs'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'MONTO_USD'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Suma  Monto Usd'
,p_function_format_mask_02=>'999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261016195504Z')
,p_updated_on=>wwv_flow_imp.dz('20261016195504Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4896761467820973614)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_static_id=>unistr('ruta-de-navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(36592893829076560225)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261016194014Z')
,p_updated_on=>wwv_flow_imp.dz('20261016194014Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'Inicio COPIA'
,p_alias=>'INICIO-COPIA'
,p_step_title=>'Inicio COPIA'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20261016160119Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261016160119Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41473588421421340708)
,p_plug_name=>'Empleados'
,p_static_id=>'employees2'
,p_title=>'Empleados'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>'SAMPLE_DATA'
,p_query_table=>'EMPLOYEES'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20261016160119Z')
,p_updated_on=>wwv_flow_imp.dz('20261016160119Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(4794944198155704453)
,p_region_id=>wwv_flow_imp.id(41473588421421340708)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DEPARTMENT'
,p_body_adv_formatting=>false
,p_body_column_name=>'JOB'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'EMAIL'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'INITIALS'
,p_icon_position=>'START'
,p_badge_column_name=>'SALARY'
,p_badge_label=>'Salary'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'#APEX_FILES#sample_data/employees/&AVATAR_IMAGE.'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_updated_on=>wwv_flow_imp.dz('20261016160119Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41387852450762264671)
,p_plug_name=>unistr('Primera Aplicaci\00F3n 2026')
,p_static_id=>'primera-aplicacion-2026'
,p_title=>unistr('Mi T\00EDtulo')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="marquee-container">',
unistr('  <span class="marquee-text">Bienvenidos GESTI\00D3N DE PAGOS 2026 &G_TASA_ACTUAL.</span>'),
'</div>',
'',
'<style>',
'  .marquee-container {',
'    width: 100%;',
'    overflow: hidden;',
'    white-space: nowrap;',
unistr('    background-color: #f4f5f7; /* Cambia seg\00FAn el tema */'),
'    padding: 8px 0;',
'    border-radius: 4px;',
'  }',
'',
'  .marquee-text {',
'    display: inline-block;',
'    padding-left: 100%;',
'    animation: marquee-anim 12s linear infinite;',
'    font-weight: bold;',
'  }',
'',
'  @keyframes marquee-anim {',
'    0%   { transform: translate(0, 0); }',
'    100% { transform: translate(-100%, 0); }',
'  }',
'</style>'))
,p_plug_query_num_rows=>15
,p_region_image=>'https://vamilco.net/wp-content/uploads/2024/05/logo-vamilco-diapo_1.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261016160119Z')
,p_updated_on=>wwv_flow_imp.dz('20261016160119Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>unistr('P\00E1gina de Conexi\00F3n')
,p_alias=>'LOGIN'
,p_step_title=>unistr('GESTI\00D3N DE PAGOS 2026: Conectar')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261021212056Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592901620992560260)
,p_plug_name=>'VALMICO'
,p_static_id=>'primera-aplicacion-2026'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20261021211416Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592903608953560264)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(36592901620992560260)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Conectar'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592902599491560263)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36592901620992560260)
,p_prompt=>unistr('Contrase\00F1a')
,p_placeholder=>unistr('Contrase\00F1a')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592903395166560264)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36592901620992560260)
,p_prompt=>'Recordarme'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592902956811560263)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36592901620992560260)
,p_prompt=>'Recordar nombre de usuario'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592902139648560262)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36592901620992560260)
,p_prompt=>'Nombre de Usuario'
,p_placeholder=>'Nombre de Usuario'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36592907729610560268)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('Borrar Cach\00E9 de P\00E1ginas')
,p_static_id=>unistr('borrar-cach\00E9-de-p\00E1ginas')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>36592907729610560268
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36592905970492560266)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Definir Cookie de Nombre de Usuario'
,p_static_id=>'definir-cookie-de-nombre-de-usuario'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>36592905970492560266
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(36592906996331560267)
,p_page_process_id=>wwv_flow_imp.id(36592905970492560266)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(36592906437013560267)
,p_page_process_id=>wwv_flow_imp.id(36592905970492560266)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36592904043408560264)
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
,p_internal_uid=>36592904043408560264
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(36592905094837560266)
,p_page_process_id=>wwv_flow_imp.id(36592904043408560264)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(36592905588198560266)
,p_page_process_id=>wwv_flow_imp.id(36592904043408560264)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(36592904503249560265)
,p_page_process_id=>wwv_flow_imp.id(36592904043408560264)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36592907390293560267)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtener Cookie de Nombre de Usuario'
,p_static_id=>'obtener-cookie-de-nombre-de-usuario'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>36592907390293560267
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>unistr('Administraci\00F3n')
,p_alias=>unistr('ADMINISTRACI\00D3N')
,p_step_title=>unistr('Administraci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593155375324565488)
,p_plug_name=>'Acciones de control de acceso'
,p_static_id=>'acciones-de-control-de-acceso'
,p_parent_plug_id=>wwv_flow_imp.id(36593151016785565472)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(36593148139871565466)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593149456969565468)
,p_plug_name=>'Columna 1'
,p_static_id=>'columna-1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3374665444246510938
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593150611508565471)
,p_plug_name=>'Columna 2'
,p_static_id=>'columna-2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3374665444246510938
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593151016785565472)
,p_plug_name=>'Control de Acceso'
,p_static_id=>'control-de-acceso'
,p_parent_plug_id=>wwv_flow_imp.id(36593150611508565471)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(36592897601643560242)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593151876609565472)
,p_plug_name=>unistr('Informaci\00F3n de ACL')
,p_static_id=>unistr('informaci\00F3n-de-acl')
,p_parent_plug_id=>wwv_flow_imp.id(36593151016785565472)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36593152297041565473)
,p_name=>'Informe de recuentos de usuarios'
,p_static_id=>'informe-de-recuentos-de-usuarios'
,p_parent_plug_id=>wwv_flow_imp.id(36593151016785565472)
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name,',
'       (select count(*)',
'          from apex_appl_acl_user_roles ur',
'         where r.role_id = ur.role_id) user_count,',
'       r.role_id',
'  from apex_appl_acl_roles r',
' where r.application_id = :APP_ID',
' group by r.role_name, r.role_id',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2103942766914282568
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No se ha encontrado ning\00FAn dato.')
,p_query_num_rows_type=>'SHOW_ALL'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593153750691565485)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593152912671565483)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593153352686565484)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593150255173565471)
,p_plug_name=>'Informes de Actividades'
,p_static_id=>'informes-de-actividades'
,p_parent_plug_id=>wwv_flow_imp.id(36593149456969565468)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(36593144806642565462)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593149898021565470)
,p_plug_name=>'Interfaz de Usuario'
,p_static_id=>'interfaz-de-usuario'
,p_parent_plug_id=>wwv_flow_imp.id(36593149456969565468)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(36593144070422565461)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(36592898440538560242)
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593143291024565459)
,p_plug_name=>unistr('Ruta de Navegaci\00F3n')
,p_static_id=>unistr('ruta-de-navegaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(36592893829076560225)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593151453109565472)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36593151016785565472)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Agregar Usuario'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-user-plus'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36593154419903565487)
,p_name=>'Informe de Refrescamiento'
,p_static_id=>'informe-de-refrescamiento'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36593151453109565472)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36593154851350565487)
,p_event_id=>wwv_flow_imp.id(36593154419903565487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36593152297041565473)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>unistr('Apariencia de la aplicaci\00F3n')
,p_alias=>unistr('APARIENCIA-DE-LA-APLICACI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Apariencia de la aplicaci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592898440538560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592910783174560276)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592910891386560276)
,p_plug_name=>'Configurar apariencia'
,p_static_id=>'configurar-apariencia'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592911868869560280)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36592910783174560276)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(36592912317720560281)
,p_button_id=>wwv_flow_imp.id(36592911868869560280)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592912870907560282)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36592910783174560276)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(36592913370773560282)
,p_branch_name=>unistr('Bifurcar a p\00E1gina de administraci\00F3n')
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592913659414560282)
,p_name=>'P10010_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36592910891386560276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estilo de tema de escritorio'
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
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'El estilo de tema por defecto se aplica a todos los usuarios.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592914428570560333)
,p_name=>'P10010_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36592910891386560276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Preferencia de tema de usuario final'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_grid_label_column_span=>0
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Si se activa, los usuarios finales pueden seleccionar su propio estilo con el enlace Personalizar.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36592915558782560335)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guardar estilo de tema'
,p_static_id=>'guardar-estilo-de-tema'
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
,p_process_success_message=>unistr('Se ha guardado la configuraci\00F3n de aspecto de la aplicaci\00F3n.')
,p_internal_uid=>36592915558782560335
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36592915977692560335)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guardar preferencia de estilo de usuario final'
,p_static_id=>'guardar-preferencia-de-estilo-de-usuario-final'
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
,p_process_success_message=>unistr('Se ha guardado la configuraci\00F3n de aspecto de la aplicaci\00F3n.')
,p_internal_uid=>36592915977692560335
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Panel de Control de Actividad'
,p_alias=>'PANEL-DE-CONTROL-DE-ACTIVIDAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Panel de Control de Actividad'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36592917041462560335)
,p_name=>unistr('Actividad m\00E1s reciente')
,p_static_id=>unistr('actividad-m\00E1s-reciente')
,p_template=>4075786578761660127
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10020_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se ha encontrado ninguna actividad'
,p_query_num_rows_type=>'SHOW_ALL'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36592928776874560488)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\00DAltima Actividad')
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36592928376052560487)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Nombre de Usuario'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36592916956169560335)
,p_name=>'Errores Recientes'
,p_static_id=>'errores-recientes'
,p_template=>4075786578761660127
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10020_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No se ha encontrado ning\00FAn dato.')
,p_query_num_rows_type=>'SHOW_ALL'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36592926029648560479)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Etiqueta'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36592926429405560480)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Valor'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592916358997560335)
,p_plug_name=>unistr('Eventos de p\00E1gina por hora')
,p_static_id=>unistr('eventos-de-p\00E1gina-por-hora')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(36592916455611560335)
,p_region_id=>wwv_flow_imp.id(36592916358997560335)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(36592918431597560337)
,p_chart_id=>wwv_flow_imp.id(36592916455611560335)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from sys.dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10020_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(36592919683780560340)
,p_chart_id=>wwv_flow_imp.id(36592916455611560335)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(36592919033609560339)
,p_chart_id=>wwv_flow_imp.id(36592916455611560335)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592917198697560335)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592916585183560335)
,p_plug_name=>unistr('P\00E1ginas con Mayor Actividad')
,p_static_id=>unistr('p\00E1ginas-con-mayor-actividad')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(36592916674464560335)
,p_region_id=>wwv_flow_imp.id(36592916585183560335)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(36592923430198560344)
,p_chart_id=>wwv_flow_imp.id(36592916674464560335)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10020_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(36592924003252560345)
,p_chart_id=>wwv_flow_imp.id(36592916674464560335)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(36592924650156560345)
,p_chart_id=>wwv_flow_imp.id(36592916674464560335)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592916793108560335)
,p_plug_name=>'Usuarios Principales'
,p_static_id=>'usuarios-principales'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(36592916855519560335)
,p_region_id=>wwv_flow_imp.id(36592916793108560335)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(36592920931006560342)
,p_chart_id=>wwv_flow_imp.id(36592916855519560335)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10020_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10020_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(36592921569206560343)
,p_chart_id=>wwv_flow_imp.id(36592916855519560335)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(36592922128021560343)
,p_chart_id=>wwv_flow_imp.id(36592916855519560335)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260908153853Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153853Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592930051543560490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36592916358997560335)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'Ver Detalles'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP,10021::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592930868502560491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36592916793108560335)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user-2'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'Ver Detalles'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP,10021::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592930429510560491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36592916585183560335)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_static_id=>'view-activity-details'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'Ver Detalles'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RP,10024::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592931255803560491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36592916956169560335)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_static_id=>'view-recent-errors'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'Ver Detalles'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP,10022::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592917281425560335)
,p_name=>'P10020_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36592917198697560335)
,p_prompt=>'Marco temporal'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36592917333140560335)
,p_name=>'Cambiar filtros'
,p_static_id=>'cambiar-filtros'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10020_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592932838726560495)
,p_event_id=>wwv_flow_imp.id(36592917333140560335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592916358997560335)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592933336731560496)
,p_event_id=>wwv_flow_imp.id(36592917333140560335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592916793108560335)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592933829195560496)
,p_event_id=>wwv_flow_imp.id(36592917333140560335)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592916585183560335)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592934332890560497)
,p_event_id=>wwv_flow_imp.id(36592917333140560335)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592916956169560335)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592934812000560497)
,p_event_id=>wwv_flow_imp.id(36592917333140560335)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592917041462560335)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Usuarios Principales'
,p_alias=>'USUARIOS-PRINCIPALES'
,p_page_mode=>'MODAL'
,p_step_title=>'Usuarios Principales'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592969499988560620)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592969612407560620)
,p_plug_name=>unistr('Gr\00E1fico de usuarios principales')
,p_static_id=>unistr('gr\00E1fico-de-usuarios-principales')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10021_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(36592969731205560620)
,p_region_id=>wwv_flow_imp.id(36592969612407560620)
,p_chart_type=>'donut'
,p_height=>'600'
,p_lazy_loading=>true
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(36592981083287560670)
,p_chart_id=>wwv_flow_imp.id(36592969731205560620)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10021_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10021_TIMEFRAME'
,p_series_type=>'donut'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592969322156560620)
,p_plug_name=>'Usuarios Principales'
,p_static_id=>'usuarios-principales'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10021_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
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
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36592970486819560621)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>36592970486819560621
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592974295681560649)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errores'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592972240372560639)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Actividad por Hora'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592973847673560647)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('B\00FAsqueda de IR')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592973097038560643)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mediana Transcurrida'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592974652257560651)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592972638875560641)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Eventos de P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592973493250560645)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Filas Recuperadas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592971828351560637)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36592977675529560661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592978316747560662)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36592969322156560620)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Restablecer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592970042801560621)
,p_name=>'P10021_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36592969499988560620)
,p_prompt=>'Marco temporal'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592969822017560620)
,p_name=>'P10021_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36592969499988560620)
,p_prompt=>'Ver como'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36592969557907560620)
,p_name=>'Informe de Refrescamiento'
,p_static_id=>'informe-de-refrescamiento'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10021_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592979667519560664)
,p_event_id=>wwv_flow_imp.id(36592969557907560620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592969322156560620)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592983029347560674)
,p_event_id=>wwv_flow_imp.id(36592969557907560620)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592969322156560620)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153857Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10022
begin
wwv_flow_imp_page.create_page(
 p_id=>10022
,p_name=>unistr('Log de errores de la aplicaci\00F3n')
,p_alias=>unistr('LOG-DE-ERRORES-DE-LA-APLICACI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Log de errores de la aplicaci\00F3n')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592961840915560599)
,p_plug_name=>unistr('Log de errores de la aplicaci\00F3n')
,p_static_id=>unistr('log-de-errores-de-la-aplicaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
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
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36592962445069560600)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>36592962445069560600
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592964518075560611)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592964910934560613)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592965775831560615)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Nombre del Componente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592965378164560614)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Contexto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592963756468560608)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592964166113560610)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36592968207290560619)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592968967552560620)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36592961840915560599)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Restablecer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>unistr('Rendimiento de P\00E1gina')
,p_alias=>unistr('RENDIMIENTO-DE-P\00C1GINA')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Rendimiento de P\00E1gina')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592947424420560547)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592947398765560547)
,p_plug_name=>unistr('Rendimiento de P\00E1gina')
,p_static_id=>unistr('rendimiento-de-p\00E1gina')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10023_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
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
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36592947913476560547)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>36592947913476560547
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592951591630560580)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Sesiones de Aplicaciones'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592954398809560589)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Tiempo Medio Transcurrido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592951167320560578)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Usuarios Distintos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592950756599560577)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errores'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592953508644560587)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>unistr('Vistas de p\00E1ginas completas')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592952358880560582)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('M\00E1ximo transcurrido')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592949995247560574)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mediana Transcurrida'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592953923152560588)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>unistr('M\00EDnimo transcurrido')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592949137699560571)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592949525315560573)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('Nombre de la P\00E1gina')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592951953392560581)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('Vistas de P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592953153861560585)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>unistr('Vistas de p\00E1ginas parciales')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592952705320560584)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total de Filas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592950363670560576)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Rendimiento Ponderado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36592959220253560595)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592959954540560596)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36592947398765560547)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Restablecer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592947243739560547)
,p_name=>'P10023_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36592947424420560547)
,p_prompt=>'Marco temporal'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36592947512489560547)
,p_name=>'Informe de Refrescamiento'
,p_static_id=>'informe-de-refrescamiento'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592961245603560598)
,p_event_id=>wwv_flow_imp.id(36592947512489560547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592947398765560547)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153856Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153856Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>unistr('Vistas de P\00E1gina')
,p_alias=>unistr('VISTAS-DE-P\00C1GINA')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Vistas de P\00E1gina')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592935523478560498)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592935449797560498)
,p_plug_name=>unistr('Vistas de P\00E1gina')
,p_static_id=>unistr('vistas-de-p\00E1gina')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10024_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
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
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36592936011320560498)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>36592936011320560498
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592939858292560531)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Nombre del Componente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592938676863560527)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Tiempo transcurrido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592941094499560535)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592940684218560534)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('B\00FAsqueda de IR')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592940226310560532)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('N\00FAmero de Filas')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592939085709560528)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592939458260560530)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Modo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592937431222560522)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('Nombre de la P\00E1gina')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592938264655560525)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Registro de hora'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36592937801798560524)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36592944794298560541)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36592945442660560544)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36592935449797560498)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Restablecer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36592935391813560498)
,p_name=>'P10024_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36592935523478560498)
,p_prompt=>'Marco temporal'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36592935652320560498)
,p_name=>'Informe de Refrescamiento'
,p_static_id=>'informe-de-refrescamiento'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10024_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36592946738628560546)
,p_event_id=>wwv_flow_imp.id(36592935652320560498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36592935449797560498)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153855Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153855Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10025
begin
wwv_flow_imp_page.create_page(
 p_id=>10025
,p_name=>'Log de automatizaciones'
,p_alias=>'LOG-DE-AUTOMATIZACIONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log de automatizaciones'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260908153857Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36592983616913560675)
,p_plug_name=>'Log de automatizaciones'
,p_static_id=>'log-de-automatizaciones'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
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
,p_created_on=>wwv_flow_imp.dz('20260908153943Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36592984223499560675)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>36592984223499560675
,p_created_on=>wwv_flow_imp.dz('20260908153943Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593092429623565355)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Automatizaci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593095322482565364)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Terminado'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593094175801565360)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Filas con errores'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593091661027565352)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153943Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593094979979565363)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Programado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593094534271565361)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mensaje'
,p_column_link=>'f?p=&APP_ID.:10026:&APP_SESSION.::&DEBUG.:RP,10026:P10026_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593092072096565354)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Iniciado'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593093319323565357)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593093767563565359)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Filas correctas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36593098723744565369)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593099496517565369)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36592983616913560675)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Restablecer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10026
begin
wwv_flow_imp_page.create_page(
 p_id=>10026
,p_name=>'Mensajes de Log'
,p_alias=>'MENSAJES-DE-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Mensajes de Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897771920560242)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593100195834565371)
,p_plug_name=>unistr('Ejecuci\00F3n de automatizaci\00F3n')
,p_static_id=>unistr('ejecuci\00F3n-de-automatizaci\00F3n')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36593102503943565374)
,p_name=>'Mensajes'
,p_static_id=>'mensajes'
,p_template=>2103954283454391425
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10026_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No se ha encontrado ning\00FAn dato.')
,p_query_num_rows_type=>'SHOW_ALL'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593103631626565385)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Mensaje'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593103215213565384)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Registro de hora'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593104002774565386)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo de Mensaje'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593104481557565387)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Valor de Clave Primaria '
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593100915173565372)
,p_name=>'P10026_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36593100195834565371)
,p_prompt=>unistr('Automatizaci\00F3n')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593100551118565371)
,p_name=>'P10026_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36593100195834565371)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593101322571565373)
,p_name=>'P10026_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36593100195834565371)
,p_prompt=>'Iniciado'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593101765982565373)
,p_name=>'P10026_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36593100195834565371)
,p_prompt=>'Estado'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36593102164002565373)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtener detalle de log'
,p_static_id=>'obtener-detalle-de-log'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10026_AUTOMATION_NAME,',
'       :P10026_START_TIMESTAMP,',
'       :P10026_STATUS',
'  from apex_automation_log',
' where id = :P10026_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>36593102164002565373
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Configurar Control de Acceso'
,p_alias=>'CONFIGURAR-CONTROL-DE-ACCESO'
,p_page_mode=>'MODAL'
,p_step_title=>'Configurar Control de Acceso'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897601643560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593106492210565390)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593106344927565390)
,p_plug_name=>unistr('Configuraci\00F3n de control de acceso')
,p_static_id=>unistr('configuraci\00F3n-de-control-de-acceso')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593107554046565392)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36593106492210565390)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593107923309565392)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36593106492210565390)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(36593108412074565393)
,p_button_id=>wwv_flow_imp.id(36593107923309565392)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(36593109035421565393)
,p_branch_name=>unistr('Bifurcar a p\00E1gina de administraci\00F3n')
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593109384031565393)
,p_name=>'P10030_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36593106344927565390)
,p_prompt=>unistr('Cualquier usuario autenticado puede acceder a esta aplicaci\00F3n')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('Seleccione <strong>No</strong> si se definen todos los usuarios en la lista de control de acceso. Seleccione <strong>S\00ED</strong> si los usuarios autenticados que no est\00E9n en la lista de control de acceso pueden tambi\00E9n utilizar esta aplicaci\00F3n.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36593109756370565394)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Definir control de acceso'
,p_static_id=>'definir-control-de-acceso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10030_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('La configuraci\00F3n de control de acceso se ha guardado.')
,p_internal_uid=>36593109756370565394
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Gestionar acceso de usuarios'
,p_alias=>'GESTIONAR-ACCESO-DE-USUARIOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Gestionar acceso de usuarios'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897601643560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593110168697565394)
,p_plug_name=>'Gestionar acceso de usuarios'
,p_static_id=>'gestionar-acceso-de-usuarios'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
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
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36593110990102565395)
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP:P10032_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_internal_uid=>36593110990102565395
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593114276251565403)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593113121857565399)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36593113898043565401)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre de Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36593115856806565405)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593116951557565406)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(36593110168697565394)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Agregar varios usuarios'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593117303234565407)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(36593110168697565394)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Usuario'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593116589560565406)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36593110168697565394)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Restablecer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36593110242851565394)
,p_name=>'Informe de Refrescamiento'
,p_static_id=>'informe-de-refrescamiento'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(36593110168697565394)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36593118054440565407)
,p_event_id=>wwv_flow_imp.id(36593110242851565394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36593110168697565394)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Gestionar acceso de usuarios'
,p_alias=>'GESTIONAR-ACCESO-DE-USUARIOS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Gestionar acceso de usuarios'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897601643560242)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593118658743565408)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593118587643565408)
,p_plug_name=>'Pantalla Basada en Gestionar acceso de usuarios'
,p_static_id=>'pantalla-basada-en-gestionar-acceso-de-usuarios'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593119669456565410)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36593118658743565408)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(36593120150756565411)
,p_button_id=>wwv_flow_imp.id(36593119669456565410)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593121403285565412)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(36593118658743565408)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Usuario'
,p_button_position=>'NEXT'
,p_button_condition=>'P10032_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593120615438565411)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36593118658743565408)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Suprimir'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10032_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593121011764565412)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(36593118658743565408)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'NEXT'
,p_button_condition=>'P10032_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593122258252565413)
,p_name=>'P10032_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36593118587643565408)
,p_item_source_plug_id=>wwv_flow_imp.id(36593118587643565408)
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593121840950565412)
,p_name=>'P10032_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36593118587643565408)
,p_item_source_plug_id=>wwv_flow_imp.id(36593118587643565408)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593123004297565413)
,p_name=>'P10032_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36593118587643565408)
,p_item_source_plug_id=>wwv_flow_imp.id(36593118587643565408)
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593122613568565413)
,p_name=>'P10032_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36593118587643565408)
,p_item_source_plug_id=>wwv_flow_imp.id(36593118587643565408)
,p_prompt=>'Nombre de Usuario'
,p_source=>'USER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10032_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(36593124257975565425)
,p_validation_name=>unistr('No se puede suprimir a s\00ED mismo como administrador')
,p_static_id=>unistr('no-se-puede-suprimir-a-s\00ED-mismo-como-administrador')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10032_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10032_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'No puede eliminar su propio rol de administrador.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36593125441343565427)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Cerrar Recuadro de Di\00E1logo')
,p_static_id=>unistr('cerrar-recuadro-de-di\00E1logo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>36593125441343565427
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36593124621758565426)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(36593118587643565408)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar pantalla Gestionar acceso de usuarios'
,p_static_id=>'inicializar-pantalla-gestionar-acceso-de-usuarios'
,p_internal_uid=>36593124621758565426
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36593125091370565427)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(36593118587643565408)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Procesar pantalla Gestionar acceso de usuarios'
,p_static_id=>'procesar-pantalla-gestionar-acceso-de-usuarios'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>36593125091370565427
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Agregar varios usuarios: paso 1'
,p_alias=>'AGREGAR-VARIOS-USUARIOS-PASO-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Agregar varios usuarios'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897601643560242)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593125858538565427)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593125909373565427)
,p_plug_name=>'Contenedor de asistente'
,p_static_id=>'contenedor-de-asistente'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593128011741565429)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36593125858538565427)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(36593128528646565430)
,p_button_id=>wwv_flow_imp.id(36593128011741565429)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593126062725565427)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36593125858538565427)
,p_button_name=>'NEXT'
,p_static_id=>'next'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Siguiente'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(36593129014378565430)
,p_branch_action=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(36593126062725565427)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593129805586565431)
,p_name=>'P10033_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36593125909373565427)
,p_prompt=>'Nombres de usuario'
,p_placeholder=>unistr('Introduzca aqu\00ED el nombre de usuario')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>unistr('Introduzca los nombres de usuario separados por comas, puntos y comas o espacios en blanco. Los nombres de usuario duplicados o existentes se ignorar\00E1n autom\00E1ticamente.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593129400132565430)
,p_name=>'P10033_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36593125909373565427)
,p_prompt=>'Roles'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593130228824565431)
,p_name=>'P10033_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36593125909373565427)
,p_prompt=>'Formato de nombre de usuario'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36593131367403565433)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crear recopilaciones'
,p_static_id=>'crear-recopilaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10033_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10033_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10033_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(36593126062725565427)
,p_internal_uid=>36593131367403565433
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Agregar varios usuarios: paso 2'
,p_alias=>'AGREGAR-VARIOS-USUARIOS-PASO-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Agregar varios usuarios'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36592901081211560258)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(36592899789914560250)
,p_required_patch=>wwv_flow_imp.id(36592897601643560242)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593126102407565427)
,p_plug_name=>'Botones'
,p_static_id=>'botones'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593126276864565427)
,p_plug_name=>'Contenedor de asistente'
,p_static_id=>'contenedor-de-asistente'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593126629572565427)
,p_plug_name=>'Elementos Ocultos'
,p_static_id=>'elementos-ocultos'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36593126491738565427)
,p_name=>'Excepciones'
,p_static_id=>'excepciones'
,p_parent_plug_id=>wwv_flow_imp.id(36593126276864565427)
,p_template=>2667762537863948531
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('No se ha encontrado ning\00FAn dato.')
,p_query_num_rows_type=>'SHOW_ALL'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593133664092565440)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Motivo'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36593133223381565439)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Nombre de Usuario'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593135833117565447)
,p_plug_name=>unistr('Existen usuarios v\00E1lidos - Informaci\00F3n de p\00E1gina')
,p_static_id=>unistr('existen-usuarios-v\00E1lidos-informaci\00F3n-de-p\00E1gina')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10034_VALID_COUNT),',
'           apex_escape.html(:P10034_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593136554380565448)
,p_plug_name=>unistr('No existen usuarios v\00E1lidos - Informaci\00F3n de p\00E1gina')
,p_static_id=>unistr('no-existen-usuarios-v\00E1lidos-informaci\00F3n-de-p\00E1gina')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>unistr('<p>No se han encontrado usuarios nuevos no v\00E1lidos</p>')
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593126596497565427)
,p_plug_name=>'&P10034_VALID_COUNT. usuarios que agregar'
,p_static_id=>'p10034-valid-count-usuarios-que-agregar'
,p_parent_plug_id=>wwv_flow_imp.id(36593126276864565427)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593137647816565449)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36593126102407565427)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(36593138167076565449)
,p_button_id=>wwv_flow_imp.id(36593137647816565449)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593137236200565449)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36593126102407565427)
,p_button_name=>'PREVIOUS'
,p_static_id=>'previous'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'Anterior'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593126783331565427)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36593126102407565427)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar usuarios'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593139480765565451)
,p_name=>'P10034_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36593126629572565427)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593138680222565450)
,p_name=>'P10034_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36593126629572565427)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10033_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593139016052565451)
,p_name=>'P10034_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36593126629572565427)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36593139860561565451)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Agregar usuarios a la lista de control de acceso'
,p_static_id=>'agregar-usuarios-a-la-lista-de-control-de-acceso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10033_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(36593126783331565427)
,p_process_success_message=>'Usuarios agregados.'
,p_internal_uid=>36593139860561565451
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36593140294734565452)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Cerrar Recuadro de Di\00E1logo')
,p_static_id=>unistr('cerrar-recuadro-de-di\00E1logo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>36593140294734565452
,p_created_on=>wwv_flow_imp.dz('20260908153944Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153944Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>unistr('Configuraci\00F3n')
,p_alias=>unistr('CONFIGURACI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Configuraci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36593155734592565489)
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(36593156201766565490)
,p_protection_level=>'C'
,p_help_text=>unistr('Esta p\00E1gina contiene una lista de valores aplicables al usuario de la aplicaci\00F3n actual.')
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593160941034565503)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593161359869565505)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user-2'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER and workspace_id = :WORKSPACE_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(36593161813335565508)
,p_region_id=>wwv_flow_imp.id(36593161359869565505)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593162358096565508)
,p_plug_name=>unistr('Configuraci\00F3n')
,p_static_id=>unistr('configuraci\00F3n')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(36593159875541565500)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Notificaciones push'
,p_alias=>'NOTIFICACIONES-PUSH'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Configuraci\00F3n - Notificaciones push')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36593155734592565489)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(36593155983813565490)
,p_protection_level=>'C'
,p_help_text=>unistr('Esta p\00E1gina contiene la configuraci\00F3n para controlar la suscripci\00F3n a notificaciones push para el usuario actual.')
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593157694268565496)
,p_plug_name=>'Notificaciones push'
,p_static_id=>'notificaciones-push'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>unistr('Las notificaciones push deben activarse para cada dispositivo en el que desea recibir las notificaciones. La primera vez que active notificaciones push, tendr\00E1 que otorgar permiso al explorador. Esta configuraci\00F3n se puede cambiar en cualquier moment')
||'o.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36593157271524565494)
,p_plug_name=>'Notificaciones push no soportadas'
,p_static_id=>'notificaciones-push-no-soportadas'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported u-DisplayNone'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>unistr('Las notificaciones push no est\00E1n soportadas actualmente en su explorador.')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36593156847137565493)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>unistr('Configuraci\00F3n')
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36593158142624565496)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36593157694268565496)
,p_prompt=>'Activar notificaciones push en este dispositivo'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36593158404745565496)
,p_name=>'Cambiar P20010_ENABLE_PUSH'
,p_static_id=>'cambiar-p20010-enable-push'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36593159328033565499)
,p_event_id=>wwv_flow_imp.id(36593158404745565496)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('Cancelar suscripci\00F3n a notificaciones push')
,p_static_id=>unistr('cancelar-suscripci\00F3n-a-notificaciones-push')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.unsubscribePushNotifications();')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36593158857743565497)
,p_event_id=>wwv_flow_imp.id(36593158404745565496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Suscribirse a notificaciones push'
,p_static_id=>'suscribirse-a-notificaciones-push'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.subscribePushNotifications();')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260908153945Z')
,p_updated_on=>wwv_flow_imp.dz('20260908153945Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(16567706084857153124)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261123202448Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261123203212Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_last_updated_by=>'LNAA061974@GMAIL.COM'
);
end;
/
prompt --application/deployment/install/install_ddl_control_movimientos
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'begin'||wwv_flow.LF||
'    --CAT_CATEGORIAS: 30/10000 filas exportadas, APEX$DATA$PKG/CAT_CATEGORIAS$718982'||wwv_flow.LF||
'    ape';
wwv_flow_imp.g_varchar2_table(2) := 'x_data_install.load_supporting_object_data(p_table_name => ''CAT_CATEGORIAS'', p_delete_after_install ';
wwv_flow_imp.g_varchar2_table(3) := '=> true );'||wwv_flow.LF||
'    --CAT_ORIGENES: 2/10000 filas exportadas, APEX$DATA$PKG/CAT_ORIGENES$402410'||wwv_flow.LF||
'    ape';
wwv_flow_imp.g_varchar2_table(4) := 'x_data_install.load_supporting_object_data(p_table_name => ''CAT_ORIGENES'', p_delete_after_install =>';
wwv_flow_imp.g_varchar2_table(5) := ' true );'||wwv_flow.LF||
'    --CAT_PROYECTOS: 8/10000 filas exportadas, APEX$DATA$PKG/CAT_PROYECTOS$615984'||wwv_flow.LF||
'    ape';
wwv_flow_imp.g_varchar2_table(6) := 'x_data_install.load_supporting_object_data(p_table_name => ''CAT_PROYECTOS'', p_delete_after_install =';
wwv_flow_imp.g_varchar2_table(7) := '> true );'||wwv_flow.LF||
'    --MOVIMIENTOS_FINANCIEROS: 136/10000 filas exportadas, APEX$DATA$PKG/MOVIMIENTOS_FINA';
wwv_flow_imp.g_varchar2_table(8) := 'NCIEROS$717819'||wwv_flow.LF||
'    apex_data_install.load_supporting_object_data(p_table_name => ''MOVIMIENTOS_FINAN';
wwv_flow_imp.g_varchar2_table(9) := 'CIEROS'', p_delete_after_install => true );'||wwv_flow.LF||
'    --TASA_CAMBIO_HISTORICO: 42/10000 filas exportadas, ';
wwv_flow_imp.g_varchar2_table(10) := 'APEX$DATA$PKG/TASA_CAMBIO_HISTORICO$523966'||wwv_flow.LF||
'    apex_data_install.load_supporting_object_data(p_tabl';
wwv_flow_imp.g_varchar2_table(11) := 'e_name => ''TASA_CAMBIO_HISTORICO'', p_delete_after_install => true );'||wwv_flow.LF||
'end;';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(16570629134826732724)
,p_install_id=>wwv_flow_imp.id(16567706084857153124)
,p_name=>'ddl_control_movimientos'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261123203212Z')
,p_updated_on=>wwv_flow_imp.dz('20261123203212Z')
,p_created_by=>'LNAA061974@GMAIL.COM'
,p_updated_by=>'LNAA061974@GMAIL.COM'
);
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
