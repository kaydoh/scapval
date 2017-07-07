<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsd="http://www.w3.org/2001/XMLSchema"
            queryBinding="xslt">
   <sch:title>Schematron validation for an OVAL Definition file</sch:title>
   <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
   <sch:ns prefix="oval" uri="http://oval.mitre.org/XMLSchema/oval-common-5"/>
   <sch:ns prefix="oval-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5"/>
   <sch:ns prefix="ind-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent"/>
   <sch:ns prefix="aix-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix"/>
   <sch:ns prefix="apache-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache"/>
   <sch:ns prefix="catos-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos"/>
   <sch:ns prefix="esx-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx"/>
   <sch:ns prefix="freebsd-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd"/>
   <sch:ns prefix="hpux-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux"/>
   <sch:ns prefix="ios-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios"/>
   <sch:ns prefix="linux-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux"/>
   <sch:ns prefix="macos-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos"/>
   <sch:ns prefix="pixos-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos"/>
   <sch:ns prefix="sp-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint"/>
   <sch:ns prefix="sol-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris"/>
   <sch:ns prefix="unix-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix"/>
   <sch:ns prefix="win-def"
           uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows"/>
   <sch:phase id="oval">
      <sch:active pattern="oval_none_exist_value_dep"/>
   </sch:phase>
   <sch:phase id="oval-def">
      <sch:active pattern="oval-def_empty_def_doc"/>
      <sch:active pattern="oval-def_required_criteria"/>
      <sch:active pattern="oval-def_test_type"/>
      <sch:active pattern="oval-def_setobjref"/>
      <sch:active pattern="oval-def_allowed-variable-datatypes"/>
      <sch:active pattern="oval-def_literal_component"/>
      <sch:active pattern="oval-def_arithmeticfunctionrules"/>
      <sch:active pattern="oval-def_beginfunctionrules"/>
      <sch:active pattern="oval-def_concatfunctionrules"/>
      <sch:active pattern="oval-def_endfunctionrules"/>
      <sch:active pattern="oval-def_escaperegexfunctionrules"/>
      <sch:active pattern="oval-def_splitfunctionrules"/>
      <sch:active pattern="oval-def_substringfunctionrules"/>
      <sch:active pattern="oval-def_timedifferencefunctionrules"/>
      <sch:active pattern="oval-def_regexcapturefunctionrules"/>
      <sch:active pattern="oval-def_definition_entity_rules"/>
      <sch:active pattern="oval-def_no_var_ref_with_records"/>
      <sch:active pattern="oval-def_definition_entity_type_check_rules"/>
      <sch:active pattern="oval-def_entityobjectbaserules"/>
      <sch:active pattern="oval-def_entitystatebaserules"/>
      <sch:active pattern="oval-def_state_record_fields"/>
   </sch:phase>
   <sch:phase id="ind-def">
      <sch:active pattern="ind-def_famtst"/>
      <sch:active pattern="ind-def_famstefamily"/>
      <sch:active pattern="ind-def_hashtst"/>
      <sch:active pattern="ind-def_hashobjfilepath"/>
      <sch:active pattern="ind-def_hashobjpath"/>
      <sch:active pattern="ind-def_hashobjfilename"/>
      <sch:active pattern="ind-def_hashstefilepath"/>
      <sch:active pattern="ind-def_hashstepath"/>
      <sch:active pattern="ind-def_hashstefilename"/>
      <sch:active pattern="ind-def_hashstemd5"/>
      <sch:active pattern="ind-def_hashstesha1"/>
      <sch:active pattern="ind-def_envtst"/>
      <sch:active pattern="ind-def_envobjname"/>
      <sch:active pattern="ind-def_envstename"/>
      <sch:active pattern="ind-def_envstevalue"/>
      <sch:active pattern="ind-def_ldap_test_dep"/>
      <sch:active pattern="ind-def_ldaptst"/>
      <sch:active pattern="ind-def_ldap_object_dep"/>
      <sch:active pattern="ind-def_ldapobjsuffix"/>
      <sch:active pattern="ind-def_ldapobjrelative_dn"/>
      <sch:active pattern="ind-def_ldapobjattribute"/>
      <sch:active pattern="ind-def_ldap_state_dep"/>
      <sch:active pattern="ind-def_ldapstesuffix"/>
      <sch:active pattern="ind-def_ldapsterelative_dn"/>
      <sch:active pattern="ind-def_ldapsteattribute"/>
      <sch:active pattern="ind-def_ldapsteobject_class"/>
      <sch:active pattern="ind-def_ldapsteldaptype"/>
      <sch:active pattern="ind-def_ldapsteldapvalue"/>
      <sch:active pattern="ind-def_ldap57_test"/>
      <sch:active pattern="ind-def_ldap57_object_suffix"/>
      <sch:active pattern="ind-def_ldap57_object_relative_dn"/>
      <sch:active pattern="ind-def_ldap57_object_attribute"/>
      <sch:active pattern="ind-def_ldap57_state_suffix"/>
      <sch:active pattern="ind-def_ldap57_state_relative_dn"/>
      <sch:active pattern="ind-def_ldap57_state_attribute"/>
      <sch:active pattern="ind-def_ldap57_state_object_class"/>
      <sch:active pattern="ind-def_ldap57_state_ldaptype"/>
      <sch:active pattern="ind-def_ldap57_state_value"/>
      <sch:active pattern="ind-def_sql_test_dep"/>
      <sch:active pattern="ind-def_sqltst"/>
      <sch:active pattern="ind-def_sql_object_dep"/>
      <sch:active pattern="ind-def_sqlobjdengine"/>
      <sch:active pattern="ind-def_sqlobjversion"/>
      <sch:active pattern="ind-def_sqlobjconnection_string"/>
      <sch:active pattern="ind-def_sqlobjsql"/>
      <sch:active pattern="ind-def_sql_state_dep"/>
      <sch:active pattern="ind-def_sqlsteengine"/>
      <sch:active pattern="ind-def_sqlsteversion"/>
      <sch:active pattern="ind-def_sqlsteconnection_string"/>
      <sch:active pattern="ind-def_sqlstesql"/>
      <sch:active pattern="ind-def_sqlsteresult"/>
      <sch:active pattern="ind-def_sql57_test"/>
      <sch:active pattern="ind-def_sql57_object_dengine"/>
      <sch:active pattern="ind-def_sql57_object_version"/>
      <sch:active pattern="ind-def_sql57_object_connection_string"/>
      <sch:active pattern="ind-def_sql57_object_sql"/>
      <sch:active pattern="ind-def_sql57_state_engine"/>
      <sch:active pattern="ind-def_sql57_state_version"/>
      <sch:active pattern="ind-def_sql57_state_connection_string"/>
      <sch:active pattern="ind-def_sql57_state_sql"/>
      <sch:active pattern="ind-def_sql57_state_result"/>
      <sch:active pattern="ind-def_txt54tst"/>
      <sch:active pattern="ind-def_txt54objfilepath"/>
      <sch:active pattern="ind-def_txt54objpath"/>
      <sch:active pattern="ind-def_txt54objfilename"/>
      <sch:active pattern="ind-def_txt54objpattern"/>
      <sch:active pattern="ind-def_txt54objinstance"/>
      <sch:active pattern="ind-def_txt54stefilepath"/>
      <sch:active pattern="ind-def_txt54stepath"/>
      <sch:active pattern="ind-def_txt54stefilename"/>
      <sch:active pattern="ind-def_txt54stepattern"/>
      <sch:active pattern="ind-def_txt54steinstance"/>
      <sch:active pattern="ind-def_txt54stetext"/>
      <sch:active pattern="ind-def_txt54stesubexpression"/>
      <sch:active pattern="ind-def_txttst_dep"/>
      <sch:active pattern="ind-def_txttst"/>
      <sch:active pattern="ind-def_txtobj_dep"/>
      <sch:active pattern="ind-def_txtobjpath"/>
      <sch:active pattern="ind-def_txtobjfilename"/>
      <sch:active pattern="ind-def_txtobjline"/>
      <sch:active pattern="ind-def_txtste_dep"/>
      <sch:active pattern="ind-def_txtstepath"/>
      <sch:active pattern="ind-def_txtstefilename"/>
      <sch:active pattern="ind-def_txtsteline"/>
      <sch:active pattern="ind-def_txtstesubexpression"/>
      <sch:active pattern="ind-def_vattst"/>
      <sch:active pattern="ind-def_varobjvar_ref"/>
      <sch:active pattern="ind-def_varstevar_ref"/>
      <sch:active pattern="ind-def_xmltst"/>
      <sch:active pattern="ind-def_xmlobjfilepath"/>
      <sch:active pattern="ind-def_xmlobjpath"/>
      <sch:active pattern="ind-def_xmlobjfilename"/>
      <sch:active pattern="ind-def_xmlobjxpath"/>
      <sch:active pattern="ind-def_xmlfilestefilepath"/>
      <sch:active pattern="ind-def_xmlstepath"/>
      <sch:active pattern="ind-def_xmlstefilename"/>
      <sch:active pattern="ind-def_xmlstexpath"/>
      <sch:active pattern="ind-def_xmlstevalue_of"/>
      <sch:active pattern="ind-def_ldaptype_timestamp_value_dep"/>
      <sch:active pattern="ind-def_ldaptype_email_value_dep"/>
   </sch:phase>
   <sch:phase id="aix-def">
      <sch:active pattern="aix-def_interimfixtst"/>
      <sch:active pattern="aix-def_interimfixobjvuid"/>
      <sch:active pattern="aix-def_interimfixstevuid"/>
      <sch:active pattern="aix-def_interimfixstelabel"/>
      <sch:active pattern="aix-def_interimfixsteabstract"/>
      <sch:active pattern="aix-def_interimfixstestate"/>
      <sch:active pattern="aix-def_filesettst"/>
      <sch:active pattern="aix-def_filesetobjflstinst"/>
      <sch:active pattern="aix-def_filesetsteflstinst"/>
      <sch:active pattern="aix-def_filesetstelevel"/>
      <sch:active pattern="aix-def_filesetstestate"/>
      <sch:active pattern="aix-def_filesetstedescription"/>
      <sch:active pattern="aix-def_fixtst"/>
      <sch:active pattern="aix-def_fixobjapar_number"/>
      <sch:active pattern="aix-def_fixsteapar_number"/>
      <sch:active pattern="aix-def_fixsteabstract"/>
      <sch:active pattern="aix-def_fixstesymptom"/>
      <sch:active pattern="aix-def_fixsteinstallation_status"/>
      <sch:active pattern="aix-def_osleveltst"/>
      <sch:active pattern="aix-def_oslevelstemaintenance_level"/>
   </sch:phase>
   <sch:phase id="apache-def">
      <sch:active pattern="apache-def_httpdtst"/>
      <sch:active pattern="apache-def_httpdstepath"/>
      <sch:active pattern="apache-def_httpdstebinaryname"/>
      <sch:active pattern="apache-def_httpdsteversion"/>
   </sch:phase>
   <sch:phase id="catos-def">
      <sch:active pattern="catos-def_linetst"/>
      <sch:active pattern="catos-def_lineobjshow_subcommand"/>
      <sch:active pattern="catos-def_linesteshow_subcommand"/>
      <sch:active pattern="catos-def_linesteconfig_line"/>
      <sch:active pattern="catos-def_moduletst"/>
      <sch:active pattern="catos-def_moduleobjmodule_number"/>
      <sch:active pattern="catos-def_modulestemodule_number"/>
      <sch:active pattern="catos-def_modulestetype"/>
      <sch:active pattern="catos-def_modulestemodel"/>
      <sch:active pattern="catos-def_modulestesoftware_major_release"/>
      <sch:active pattern="catos-def_modulestesoftware_individual_release"/>
      <sch:active pattern="catos-def_modulestesoftware_version_id"/>
      <sch:active pattern="catos-def_modulestehardware_major_release"/>
      <sch:active pattern="catos-def_modulestehardware_individual_release"/>
      <sch:active pattern="catos-def_modulestefirmware_major_release"/>
      <sch:active pattern="catos-def_modulestefirmware_individual_release"/>
      <sch:active pattern="catos-def_version55_test"/>
      <sch:active pattern="catos-def_ver55stedevice_series"/>
      <sch:active pattern="catos-def_ver55steimage_name"/>
      <sch:active pattern="catos-def_ver55stecatos_release"/>
      <sch:active pattern="catos-def_version_test_dep"/>
      <sch:active pattern="catos-def_version_test"/>
      <sch:active pattern="catos-def_version_object_dep"/>
      <sch:active pattern="catos-def_version_state_dep"/>
      <sch:active pattern="catos-def_verstedevice_series"/>
      <sch:active pattern="catos-def_versteimage_name"/>
      <sch:active pattern="catos-def_verstecatos_major_release"/>
      <sch:active pattern="catos-def_verstecatos_individual_release"/>
      <sch:active pattern="catos-def_verstecatos_version_id"/>
   </sch:phase>
   <sch:phase id="esx-def">
      <sch:active pattern="esx-def_patch56tst"/>
      <sch:active pattern="esx-def_patch56objpatch_name"/>
      <sch:active pattern="esx-def_patch56stepatch_name"/>
      <sch:active pattern="esx-def_patch56stekbid"/>
      <sch:active pattern="esx-def_patch56stebundleid"/>
      <sch:active pattern="esx-def_patch56steclassification"/>
      <sch:active pattern="esx-def_patch56stesupport_level"/>
      <sch:active pattern="esx-def_patch56stestatus"/>
      <sch:active pattern="esx-def_patchtst_dep"/>
      <sch:active pattern="esx-def_patchtst"/>
      <sch:active pattern="esx-def_patchobj_dep"/>
      <sch:active pattern="esx-def_patchobjpatch_number"/>
      <sch:active pattern="esx-def_patchste_dep"/>
      <sch:active pattern="esx-def_patchstepatch_number"/>
      <sch:active pattern="esx-def_patchstestatus"/>
      <sch:active pattern="esx-def_versiontst"/>
      <sch:active pattern="esx-def_versionsterelease"/>
      <sch:active pattern="esx-def_versionstebuild"/>
   </sch:phase>
   <sch:phase id="freebsd-def">
      <sch:active pattern="freebsd-def_portinfotst"/>
      <sch:active pattern="freebsd-def_portinfoobjpkginst"/>
      <sch:active pattern="freebsd-def_portinfostepkginst"/>
      <sch:active pattern="freebsd-def_portinfostename"/>
      <sch:active pattern="freebsd-def_portinfostecategory"/>
      <sch:active pattern="freebsd-def_portinfosteversion"/>
      <sch:active pattern="freebsd-def_portinfostevendor"/>
      <sch:active pattern="freebsd-def_portinfostedescription"/>
   </sch:phase>
   <sch:phase id="hpux-def">
      <sch:active pattern="hpux-def_getconf_test"/>
      <sch:active pattern="hpux-def_gcobjparameter_name"/>
      <sch:active pattern="hpux-def_gcobjpathname"/>
      <sch:active pattern="hpux-def_gcsteparameter_name"/>
      <sch:active pattern="hpux-def_gcstepathname"/>
      <sch:active pattern="hpux-def_gcsteoutput"/>
      <sch:active pattern="hpux-def_patch53_test"/>
      <sch:active pattern="hpux-def_patch53objswtype"/>
      <sch:active pattern="hpux-def_patch53objarea_patched"/>
      <sch:active pattern="hpux-def_patch53objpatch_base"/>
      <sch:active pattern="hpux-def_patch53steswtype"/>
      <sch:active pattern="hpux-def_patch53stearea_patched"/>
      <sch:active pattern="hpux-def_patch53stepatch_base"/>
      <sch:active pattern="hpux-def_patch_test_dep"/>
      <sch:active pattern="hpux-def_patch_test"/>
      <sch:active pattern="hpux-def_patch_object_dep"/>
      <sch:active pattern="hpux-def_patchobjpatch_name"/>
      <sch:active pattern="hpux-def_patch_state_dep"/>
      <sch:active pattern="hpux-def_patchstepatch_name"/>
      <sch:active pattern="hpux-def_patchsteswtype"/>
      <sch:active pattern="hpux-def_patchstearea_patched"/>
      <sch:active pattern="hpux-def_patchstepatch_base"/>
      <sch:active pattern="hpux-def_swlist_test"/>
      <sch:active pattern="hpux-def_swlistobjswlist"/>
      <sch:active pattern="hpux-def_swliststeswlist"/>
      <sch:active pattern="hpux-def_swliststebundle"/>
      <sch:active pattern="hpux-def_swliststefileset"/>
      <sch:active pattern="hpux-def_swliststeversion"/>
      <sch:active pattern="hpux-def_swliststetitle"/>
      <sch:active pattern="hpux-def_swliststevendor"/>
      <sch:active pattern="hpux-def_trusted_test"/>
      <sch:active pattern="hpux-def_trustobjusername"/>
      <sch:active pattern="hpux-def_truststeusername"/>
      <sch:active pattern="hpux-def_truststeuid"/>
      <sch:active pattern="hpux-def_truststepassword"/>
      <sch:active pattern="hpux-def_truststeaccount_owner"/>
      <sch:active pattern="hpux-def_truststeboot_auth"/>
      <sch:active pattern="hpux-def_truststeaudit_id"/>
      <sch:active pattern="hpux-def_truststeaudit_flag"/>
      <sch:active pattern="hpux-def_truststepw_change_min"/>
      <sch:active pattern="hpux-def_truststepw_max_size"/>
      <sch:active pattern="hpux-def_truststepw_expiration"/>
      <sch:active pattern="hpux-def_truststepw_life"/>
      <sch:active pattern="hpux-def_truststepw_change_s"/>
      <sch:active pattern="hpux-def_truststepw_change_u"/>
      <sch:active pattern="hpux-def_truststeacct_expire"/>
      <sch:active pattern="hpux-def_truststemax_llogin"/>
      <sch:active pattern="hpux-def_truststeexp_warning"/>
      <sch:active pattern="hpux-def_truststeusr_chg_pw"/>
      <sch:active pattern="hpux-def_truststegen_pw"/>
      <sch:active pattern="hpux-def_truststepw_restrict"/>
      <sch:active pattern="hpux-def_truststepw_null"/>
      <sch:active pattern="hpux-def_truststepw_gen_char"/>
      <sch:active pattern="hpux-def_truststepw_gen_let"/>
      <sch:active pattern="hpux-def_truststelogin_time"/>
      <sch:active pattern="hpux-def_truststepw_changer"/>
      <sch:active pattern="hpux-def_truststelogin_time_s"/>
      <sch:active pattern="hpux-def_truststelogin_time_u"/>
      <sch:active pattern="hpux-def_truststelogin_tty_s"/>
      <sch:active pattern="hpux-def_truststelogin_tty_u"/>
      <sch:active pattern="hpux-def_truststenum_u_logins"/>
      <sch:active pattern="hpux-def_truststemax_u_logins"/>
      <sch:active pattern="hpux-def_truststelock_flag"/>
   </sch:phase>
   <sch:phase id="ios-def">
      <sch:active pattern="ios-def_globaltst"/>
      <sch:active pattern="ios-def_globalobjglobal_command"/>
      <sch:active pattern="ios-def_globalsteglobal_command"/>
      <sch:active pattern="ios-def_interfacetst"/>
      <sch:active pattern="ios-def_interfaceobjname"/>
      <sch:active pattern="ios-def_interfacestename"/>
      <sch:active pattern="ios-def_interfacesteip_directed_broadcast_command"/>
      <sch:active pattern="ios-def_interfacesteno_ip_directed_broadcast_command"/>
      <sch:active pattern="ios-def_interfacesteproxy_arp_command"/>
      <sch:active pattern="ios-def_interfacesteshutdown_command"/>
      <sch:active pattern="ios-def_linetst"/>
      <sch:active pattern="ios-def_lineobjshow_subcommand"/>
      <sch:active pattern="ios-def_linesteshow_subcommand"/>
      <sch:active pattern="ios-def_linesteconfig_line"/>
      <sch:active pattern="ios-def_snmptst"/>
      <sch:active pattern="ios-def_snmpsteaccess_list"/>
      <sch:active pattern="ios-def_snmpstecommunity_name"/>
      <sch:active pattern="ios-def_tclshtst"/>
      <sch:active pattern="ios-def_tclshsteavailable"/>
      <sch:active pattern="ios-def_ver55tst"/>
      <sch:active pattern="ios-def_ver55stemajorversion"/>
      <sch:active pattern="ios-def_ver55steminorversion"/>
      <sch:active pattern="ios-def_ver55sterelease"/>
      <sch:active pattern="ios-def_ver55stetrain_identifier"/>
      <sch:active pattern="ios-def_ver55sterebuild"/>
      <sch:active pattern="ios-def_ver55stesubrebuild"/>
      <sch:active pattern="ios-def_ver55stemainlinerebuild"/>
      <sch:active pattern="ios-def_ver55steversionstring"/>
      <sch:active pattern="ios-def_vertst_dep"/>
      <sch:active pattern="ios-def_vertst"/>
      <sch:active pattern="ios-def_verobj_dep"/>
      <sch:active pattern="ios-def_verste_dep"/>
      <sch:active pattern="ios-def_verstemajor_release"/>
      <sch:active pattern="ios-def_verstetrain_number"/>
      <sch:active pattern="ios-def_verstetrain_identifier"/>
      <sch:active pattern="ios-def_versteversion_string"/>
   </sch:phase>
   <sch:phase id="linux-def">
      <sch:active pattern="linux-def_dpkginfo_test"/>
      <sch:active pattern="linux-def_dpkgobjname"/>
      <sch:active pattern="linux-def_dpkgstename"/>
      <sch:active pattern="linux-def_dpkgstearch"/>
      <sch:active pattern="linux-def_dpkgsteepoch"/>
      <sch:active pattern="linux-def_dpkgsterelease"/>
      <sch:active pattern="linux-def_dpkgsteversion"/>
      <sch:active pattern="linux-def_dpkgsteevr"/>
      <sch:active pattern="linux-def_inetlisteningservers_test"/>
      <sch:active pattern="linux-def_ilsobjprotocol"/>
      <sch:active pattern="linux-def_ilsobjlocal_address"/>
      <sch:active pattern="linux-def_ilsobjlocal_port"/>
      <sch:active pattern="linux-def_ilssteprotocol"/>
      <sch:active pattern="linux-def_ilsstelocal_address"/>
      <sch:active pattern="linux-def_ilsstelocal_port"/>
      <sch:active pattern="linux-def_ilsstelocal_full_address"/>
      <sch:active pattern="linux-def_ilssteprogram_name"/>
      <sch:active pattern="linux-def_ilssteforeign_address"/>
      <sch:active pattern="linux-def_ilssteforeign_port"/>
      <sch:active pattern="linux-def_ilssteforeign_full_address"/>
      <sch:active pattern="linux-def_ilsstepid"/>
      <sch:active pattern="linux-def_ilssteuser_id"/>
      <sch:active pattern="linux-def_rpminfo_test"/>
      <sch:active pattern="linux-def_rpmobjname"/>
      <sch:active pattern="linux-def_rpmstename"/>
      <sch:active pattern="linux-def_rpmstearch"/>
      <sch:active pattern="linux-def_rpmsteepoch"/>
      <sch:active pattern="linux-def_rpmsterelease"/>
      <sch:active pattern="linux-def_rpmsteversion"/>
      <sch:active pattern="linux-def_rpmsteevr"/>
      <sch:active pattern="linux-def_rpmstesignaturekeyid"/>
      <sch:active pattern="linux-def_slackwarepkginfo_test"/>
      <sch:active pattern="linux-def_spkginfoobjname"/>
      <sch:active pattern="linux-def_spkginfostename"/>
      <sch:active pattern="linux-def_spkginfosteversion"/>
      <sch:active pattern="linux-def_spkginfostearch"/>
      <sch:active pattern="linux-def_spkginfosterevision"/>
   </sch:phase>
   <sch:phase id="macos-def">
      <sch:active pattern="macos-def_accountinfo_test"/>
      <sch:active pattern="macos-def_accountobjusername"/>
      <sch:active pattern="macos-def_accountsteusername"/>
      <sch:active pattern="macos-def_accountstepassword"/>
      <sch:active pattern="macos-def_accountsteuid"/>
      <sch:active pattern="macos-def_accountstegid"/>
      <sch:active pattern="macos-def_accountsterealname"/>
      <sch:active pattern="macos-def_accountstehome_dir"/>
      <sch:active pattern="macos-def_accountstelogin_shell"/>
      <sch:active pattern="macos-def_inetlisteningservers_test"/>
      <sch:active pattern="macos-def_ilsobjprogram_name"/>
      <sch:active pattern="macos-def_ilssteprogram_name"/>
      <sch:active pattern="macos-def_ilsstelocal_address"/>
      <sch:active pattern="macos-def_ilsstelocal_full_address"/>
      <sch:active pattern="macos-def_ilsstelocal_port"/>
      <sch:active pattern="macos-def_ilssteforeign_address"/>
      <sch:active pattern="macos-def_ilssteforeign_full_address"/>
      <sch:active pattern="macos-def_ilssteforeign_port"/>
      <sch:active pattern="macos-def_ilsstepid"/>
      <sch:active pattern="macos-def_ilssteprotocol"/>
      <sch:active pattern="macos-def_ilssteuser_id"/>
      <sch:active pattern="macos-def_nvram_test"/>
      <sch:active pattern="macos-def_nvramobjnvram_var"/>
      <sch:active pattern="macos-def_nvramstenvram_var"/>
      <sch:active pattern="macos-def_nvramstenvram_value"/>
      <sch:active pattern="macos-def_pwpolicy_test"/>
      <sch:active pattern="macos-def_pwpobjtargetuser"/>
      <sch:active pattern="macos-def_pwpobjusername"/>
      <sch:active pattern="macos-def_pwpobjuserpass"/>
      <sch:active pattern="macos-def_pwpobjdirectory_node"/>
      <sch:active pattern="macos-def_pwpstetarget_user"/>
      <sch:active pattern="macos-def_pwpsteusername"/>
      <sch:active pattern="macos-def_pwpsteuserpass"/>
      <sch:active pattern="macos-def_pwpstedirectory_node"/>
      <sch:active pattern="macos-def_pwpstemaxChars"/>
      <sch:active pattern="macos-def_pwpstemaxFailedLoginAttempts"/>
      <sch:active pattern="macos-def_pwpsteminChars"/>
      <sch:active pattern="macos-def_pwpstepasswordCannotBeName"/>
      <sch:active pattern="macos-def_pwpsterequiresAlpha"/>
      <sch:active pattern="macos-def_pwpsterequiresNumeric"/>
   </sch:phase>
   <sch:phase id="pixos-def">
      <sch:active pattern="pixos-def_linetst"/>
      <sch:active pattern="pixos-def_lineobjshow_subcommand"/>
      <sch:active pattern="pixos-def_linesteshow_subcommand"/>
      <sch:active pattern="pixos-def_linesteconfig_line"/>
      <sch:active pattern="pixos-def_vertst"/>
      <sch:active pattern="pixos-def_verstepix_release"/>
      <sch:active pattern="pixos-def_verstepix_major_release"/>
      <sch:active pattern="pixos-def_verstepix_minor_release"/>
      <sch:active pattern="pixos-def_verstepix_build"/>
   </sch:phase>
   <sch:phase id="sp-def">
      <sch:active pattern="sp-def_webapptst"/>
      <sch:active pattern="sp-def_webappobjwebapplicationurl"/>
      <sch:active pattern="sp-def_webappstewebapplicationurl"/>
      <sch:active pattern="sp-def_webappsteallowparttopartcommunication"/>
      <sch:active pattern="sp-def_webappsteallowaccesstowebpartcatalog"/>
      <sch:active pattern="sp-def_webappsteblockedfileextention"/>
      <sch:active pattern="sp-def_webappstedefaultquotatemplate"/>
      <sch:active pattern="sp-def_webappsteexternalworkflowparticipantsenabled"/>
      <sch:active pattern="sp-def_webappsterecyclebinenabled"/>
      <sch:active pattern="sp-def_webappsteautomaticallydeleteunusedsitecollections"/>
      <sch:active pattern="sp-def_webappsteselfservicesitecreationenabled"/>
      <sch:active pattern="sp-def_webappstesecondstagerecyclebinquota"/>
      <sch:active pattern="sp-def_webappsterecyclebinretentionperiod"/>
      <sch:active pattern="sp-def_webappsteoutboundmailserverinstance"/>
      <sch:active pattern="sp-def_webappsteoutboundmailsenderaddress"/>
      <sch:active pattern="sp-def_webappsteoutboundmailreplytoaddress"/>
      <sch:active pattern="sp-def_webappstesecvalexpires"/>
      <sch:active pattern="sp-def_webappstetimeout"/>
      <sch:active pattern="sp-def_websteisadministrationwebapplication"/>
      <sch:active pattern="sp-def_webappsteapplicationpoolname"/>
      <sch:active pattern="sp-def_webappsteapplicationpoolusername"/>
      <sch:active pattern="sp-def_webappsteopenitems"/>
      <sch:active pattern="sp-def_webappsteaddlistitems"/>
      <sch:active pattern="sp-def_webappsteapproveitems"/>
      <sch:active pattern="sp-def_webappstedeletelistitems"/>
      <sch:active pattern="sp-def_webappstedeleteversions"/>
      <sch:active pattern="sp-def_webappsteeditlistitems"/>
      <sch:active pattern="sp-def_webappstemanagelists"/>
      <sch:active pattern="sp-def_webappsteviewversions"/>
      <sch:active pattern="sp-def_webappsteviewlistitems"/>
      <sch:active pattern="sp-def_webappstecancelcheckout"/>
      <sch:active pattern="sp-def_webappstecreatealerts"/>
      <sch:active pattern="sp-def_webappsteviewformpagess"/>
      <sch:active pattern="sp-def_webappsteviewpages"/>
      <sch:active pattern="sp-def_webappsteaddandcustomizepages"/>
      <sch:active pattern="sp-def_webappsteapplystylesheets"/>
      <sch:active pattern="sp-def_webappsteapplythemeandborder"/>
      <sch:active pattern="sp-def_webappstebrowsedirectories"/>
      <sch:active pattern="sp-def_webappstebrowseuserinfo"/>
      <sch:active pattern="sp-def_webappstecreategroups"/>
      <sch:active pattern="sp-def_webappstecreatesscsite"/>
      <sch:active pattern="sp-def_webappsteeditmyuserinfo"/>
      <sch:active pattern="sp-def_webappsteenumeratepermissions"/>
      <sch:active pattern="sp-def_webappstemanagealerts"/>
      <sch:active pattern="sp-def_webappstemanagepermissions"/>
      <sch:active pattern="sp-def_webappstemanagesubwebs"/>
      <sch:active pattern="sp-def_webappstemanageweb"/>
      <sch:active pattern="sp-def_webappsteopens"/>
      <sch:active pattern="sp-def_webappsteuseclientintegration"/>
      <sch:active pattern="sp-def_webappsteuseremoteapis"/>
      <sch:active pattern="sp-def_webappsteviewusagedata"/>
      <sch:active pattern="sp-def_webappstemanagepersonalviews"/>
      <sch:active pattern="sp-def_webappsteadddelprivatewebparts"/>
      <sch:active pattern="sp-def_webappsteupdatepersonalwebparts"/>
      <sch:active pattern="sp-def_grptst"/>
      <sch:active pattern="sp-def_grpobjsitecollectionurl"/>
      <sch:active pattern="sp-def_grpstesitecollectionurl"/>
      <sch:active pattern="sp-def_grpstegname"/>
      <sch:active pattern="sp-def_grpsteautoacceptrequesttojoinleave"/>
      <sch:active pattern="sp-def_grpsteallowmemberseditmembership"/>
      <sch:active pattern="sp-def_grpsteonlyallowmembersviewmembership"/>
      <sch:active pattern="sp-def_webtst"/>
      <sch:active pattern="sp-def_webobjwebcollectionurl"/>
      <sch:active pattern="sp-def_webobjsitecollectionurl"/>
      <sch:active pattern="sp-def_webstewebcollectionurl"/>
      <sch:active pattern="sp-def_webstesitecollectionurl"/>
      <sch:active pattern="sp-def_webstesecondarysitecolladmin"/>
      <sch:active pattern="sp-def_webstesecondsitecolladminenabled"/>
      <sch:active pattern="sp-def_websteallowanonymousaccess"/>
      <sch:active pattern="sp-def_listtst"/>
      <sch:active pattern="sp-def_listobjspsiteurl"/>
      <sch:active pattern="sp-def_liststesiteurl"/>
      <sch:active pattern="sp-def_liststeirmenabled"/>
      <sch:active pattern="sp-def_liststeenableversioning"/>
      <sch:active pattern="sp-def_liststenocrawl"/>
      <sch:active pattern="sp-def_avstst"/>
      <sch:active pattern="sp-def_avsobjwebservicename"/>
      <sch:active pattern="sp-def_avsobjfarmname"/>
      <sch:active pattern="sp-def_avsstewebservicename"/>
      <sch:active pattern="sp-def_avsstespfarmname"/>
      <sch:active pattern="sp-def_avssteallowdownload"/>
      <sch:active pattern="sp-def_avsstecleaningenabled"/>
      <sch:active pattern="sp-def_avsstedownloadscanenabled"/>
      <sch:active pattern="sp-def_avsstenumberofthreads"/>
      <sch:active pattern="sp-def_avssteskipsearchcrawl"/>
      <sch:active pattern="sp-def_avsstetimeout"/>
      <sch:active pattern="sp-def_avssteuploadscanenabled"/>
      <sch:active pattern="sp-def_avsstevendorupdatecount"/>
      <sch:active pattern="sp-def_siteadmintst"/>
      <sch:active pattern="sp-def_siteadminobjsitecollectionurl"/>
      <sch:active pattern="sp-def_siteadminstesitecollectionurl"/>
      <sch:active pattern="sp-def_siteadminstestoragemaxlevel"/>
      <sch:active pattern="sp-def_siteadminstestoragewarninglevel"/>
      <sch:active pattern="sp-def_sitetst"/>
      <sch:active pattern="sp-def_siteobjsitecollectionurl"/>
      <sch:active pattern="sp-def_sitestesitecollectionurl"/>
      <sch:active pattern="sp-def_sitestequotaname"/>
      <sch:active pattern="sp-def_sitesteurl"/>
      <sch:active pattern="sp-def_crtst"/>
      <sch:active pattern="sp-def_crobjsiteurl"/>
      <sch:active pattern="sp-def_crstespsiteurl"/>
      <sch:active pattern="sp-def_crstecrawlashttp"/>
      <sch:active pattern="sp-def_crsteenabled"/>
      <sch:active pattern="sp-def_crstefollowcomplexurls"/>
      <sch:active pattern="sp-def_crstepath"/>
      <sch:active pattern="sp-def_crstepriority"/>
      <sch:active pattern="sp-def_crstesuppressindexing"/>
      <sch:active pattern="sp-def_crsteaccountname"/>
      <sch:active pattern="sp-def_jobdeftst"/>
      <sch:active pattern="sp-def_jobdefobjwebappuri"/>
      <sch:active pattern="sp-def_jobdefstewebappuri"/>
      <sch:active pattern="sp-def_jobdefstedisplayname"/>
      <sch:active pattern="sp-def_jobdefsteisdisabled"/>
      <sch:active pattern="sp-def_jobdefsteretry"/>
      <sch:active pattern="sp-def_jobdefstetitle"/>
      <sch:active pattern="sp-def_bbtst"/>
      <sch:active pattern="sp-def_bbobjsitecollectionurl"/>
      <sch:active pattern="sp-def_bbobjbestbeturl"/>
      <sch:active pattern="sp-def_bbstesitecollectionurl"/>
      <sch:active pattern="sp-def_bbstebestbeturl"/>
      <sch:active pattern="sp-def_bbstetitle"/>
      <sch:active pattern="sp-def_bbstedescription"/>
      <sch:active pattern="sp-def_infopolicycolltst"/>
      <sch:active pattern="sp-def_infopolicycollobjsitecollectionurl"/>
      <sch:active pattern="sp-def_infopolicycollobjid"/>
      <sch:active pattern="sp-def_infopolicycollstesitecollectionurl"/>
      <sch:active pattern="sp-def_infopolicycollsteid"/>
      <sch:active pattern="sp-def_infopolicycollstename"/>
      <sch:active pattern="sp-def_infopolicycollstedescription"/>
      <sch:active pattern="sp-def_infopolicycollstelongdescription"/>
      <sch:active pattern="sp-def_diagnosticsservicetest"/>
      <sch:active pattern="sp-def_dsobjfarmname"/>
      <sch:active pattern="sp-def_dsstefarmname"/>
      <sch:active pattern="sp-def_dsstedisplayname"/>
      <sch:active pattern="sp-def_dsstelogcutinterval"/>
      <sch:active pattern="sp-def_dssteloglocation"/>
      <sch:active pattern="sp-def_dsstelogstokeep"/>
      <sch:active pattern="sp-def_dssterequired"/>
      <sch:active pattern="sp-def_dsstetypename"/>
      <sch:active pattern="sp-def_diagnostics_level_test"/>
      <sch:active pattern="sp-def_dlobjfarmname"/>
      <sch:active pattern="sp-def_dlstefarmname"/>
      <sch:active pattern="sp-def_dlsteeventseverity"/>
      <sch:active pattern="sp-def_dlstehidden"/>
      <sch:active pattern="sp-def_dlstelevelid"/>
      <sch:active pattern="sp-def_dlstelevelname"/>
      <sch:active pattern="sp-def_dlstetraceseverity"/>
      <sch:active pattern="sp-def_policyfeature_test"/>
      <sch:active pattern="sp-def_pfobjfarmname"/>
      <sch:active pattern="sp-def_pfstefarmname"/>
      <sch:active pattern="sp-def_pfsteconfigpage"/>
      <sch:active pattern="sp-def_pfstedefaultcustomdata"/>
      <sch:active pattern="sp-def_pfstedescription"/>
      <sch:active pattern="sp-def_pfsteglobalconfigpage"/>
      <sch:active pattern="sp-def_pfsteglobalcustomdata"/>
      <sch:active pattern="sp-def_pfstegroup"/>
      <sch:active pattern="sp-def_pfstename"/>
      <sch:active pattern="sp-def_pfstepublisher"/>
      <sch:active pattern="sp-def_pfstestate"/>
      <sch:active pattern="sp-def_policy_test"/>
      <sch:active pattern="sp-def_policyobjwebappuri"/>
      <sch:active pattern="sp-def_policyobjurlzone"/>
      <sch:active pattern="sp-def_policystewebappuri"/>
      <sch:active pattern="sp-def_policysteurlzone"/>
      <sch:active pattern="sp-def_policystedisplayname"/>
      <sch:active pattern="sp-def_policysteissystemuser"/>
      <sch:active pattern="sp-def_policysteusername"/>
      <sch:active pattern="sp-def_policystepolicyroletype"/>
   </sch:phase>
   <sch:phase id="sol-def">
      <sch:active pattern="sol-def_isainfotst"/>
      <sch:active pattern="sol-def_isastebits"/>
      <sch:active pattern="sol-def_isastekernel_isa"/>
      <sch:active pattern="sol-def_isasteapplication_isa"/>
      <sch:active pattern="sol-def_packagetst"/>
      <sch:active pattern="sol-def_packageobjpkginst"/>
      <sch:active pattern="sol-def_packagestepkginst"/>
      <sch:active pattern="sol-def_packagestename"/>
      <sch:active pattern="sol-def_packagestecategory"/>
      <sch:active pattern="sol-def_packagesteversion"/>
      <sch:active pattern="sol-def_packagestevendor"/>
      <sch:active pattern="sol-def_packagestedescription"/>
      <sch:active pattern="sol-def_patch54tst"/>
      <sch:active pattern="sol-def_patchtst_dep"/>
      <sch:active pattern="sol-def_patchtst"/>
      <sch:active pattern="sol-def_patch54objbase"/>
      <sch:active pattern="sol-def_patch54objversion"/>
      <sch:active pattern="sol-def_patchobj_dep"/>
      <sch:active pattern="sol-def_patchobjbase"/>
      <sch:active pattern="sol-def_patchstebase"/>
      <sch:active pattern="sol-def_patchsteversion"/>
      <sch:active pattern="sol-def_smftst"/>
      <sch:active pattern="sol-def_fmriobjbase"/>
      <sch:active pattern="sol-def_fmristebase"/>
      <sch:active pattern="sol-def_srvnamestebase"/>
      <sch:active pattern="sol-def_srvstatestebase"/>
      <sch:active pattern="sol-def_protocolstebase"/>
      <sch:active pattern="sol-def_srvexestebase"/>
      <sch:active pattern="sol-def_srvargsstebase"/>
      <sch:active pattern="sol-def_execasuserstebase"/>
   </sch:phase>
   <sch:phase id="unix-def">
      <sch:active pattern="unix-def_dnscachetst"/>
      <sch:active pattern="unix-def_dnscacheobjdomainname"/>
      <sch:active pattern="unix-def_dnscachestedomainname"/>
      <sch:active pattern="unix-def_dnscachestettl"/>
      <sch:active pattern="unix-def_dnscachesteipaddress"/>
      <sch:active pattern="unix-def_filetst"/>
      <sch:active pattern="unix-def_fileobjfilepath"/>
      <sch:active pattern="unix-def_fileobjpath"/>
      <sch:active pattern="unix-def_fileobjfilename"/>
      <sch:active pattern="unix-def_filestefilepath"/>
      <sch:active pattern="unix-def_filestepath"/>
      <sch:active pattern="unix-def_filestefilename"/>
      <sch:active pattern="unix-def_filestetype"/>
      <sch:active pattern="unix-def_filestegroup_id"/>
      <sch:active pattern="unix-def_filesteuser_id"/>
      <sch:active pattern="unix-def_filestea_time"/>
      <sch:active pattern="unix-def_filestec_time"/>
      <sch:active pattern="unix-def_filestem_time"/>
      <sch:active pattern="unix-def_filestesize"/>
      <sch:active pattern="unix-def_filestesuid"/>
      <sch:active pattern="unix-def_filestesgid"/>
      <sch:active pattern="unix-def_filestesticky"/>
      <sch:active pattern="unix-def_filesteuread"/>
      <sch:active pattern="unix-def_filesteuwrite"/>
      <sch:active pattern="unix-def_filesteuexec"/>
      <sch:active pattern="unix-def_filestegread"/>
      <sch:active pattern="unix-def_filestegwrite"/>
      <sch:active pattern="unix-def_filestegexec"/>
      <sch:active pattern="unix-def_filesteoread"/>
      <sch:active pattern="unix-def_filesteowrite"/>
      <sch:active pattern="unix-def_filesteoexec"/>
      <sch:active pattern="unix-def_filestehasextendedacl"/>
      <sch:active pattern="unix-def_recurse_value_file_dep"/>
      <sch:active pattern="unix-def_inetdtst"/>
      <sch:active pattern="unix-def_inetdobjprotocol"/>
      <sch:active pattern="unix-def_inetdobjservice_name"/>
      <sch:active pattern="unix-def_inetdsteprotocol"/>
      <sch:active pattern="unix-def_inetdsteservice_name"/>
      <sch:active pattern="unix-def_inetdsteserver_program"/>
      <sch:active pattern="unix-def_inetdsteserver_arguments"/>
      <sch:active pattern="unix-def_inetdsteendpoint_type"/>
      <sch:active pattern="unix-def_inetdsteexec_as_user"/>
      <sch:active pattern="unix-def_inetdstewait_status"/>
      <sch:active pattern="unix-def_interfacetst"/>
      <sch:active pattern="unix-def_interfaceobjname"/>
      <sch:active pattern="unix-def_interfacestename"/>
      <sch:active pattern="unix-def_interfacestetype"/>
      <sch:active pattern="unix-def_interfacestehardware_addr"/>
      <sch:active pattern="unix-def_interfacesteinet_addr"/>
      <sch:active pattern="unix-def_interfacestebroadcast_addr"/>
      <sch:active pattern="unix-def_interfacestenetmask"/>
      <sch:active pattern="unix-def_interfacesteflag"/>
      <sch:active pattern="unix-def_passwordtst"/>
      <sch:active pattern="unix-def_passwordobjusername"/>
      <sch:active pattern="unix-def_passwordsteusername"/>
      <sch:active pattern="unix-def_passwordstepassword"/>
      <sch:active pattern="unix-def_passwordsteuser_id"/>
      <sch:active pattern="unix-def_passwordstegroup_id"/>
      <sch:active pattern="unix-def_passwordstegcos"/>
      <sch:active pattern="unix-def_passwordstehome_dir"/>
      <sch:active pattern="unix-def_passwordstelogin_shell"/>
      <sch:active pattern="unix-def_processtst"/>
      <sch:active pattern="unix-def_processobjcommand"/>
      <sch:active pattern="unix-def_processstecommand"/>
      <sch:active pattern="unix-def_processsteexec_time"/>
      <sch:active pattern="unix-def_processstepid"/>
      <sch:active pattern="unix-def_processsteppid"/>
      <sch:active pattern="unix-def_processstepriority"/>
      <sch:active pattern="unix-def_processstescheduling_class"/>
      <sch:active pattern="unix-def_processstestart_time"/>
      <sch:active pattern="unix-def_processstetty"/>
      <sch:active pattern="unix-def_processsteuser_id"/>
      <sch:active pattern="unix-def_runleveltst"/>
      <sch:active pattern="unix-def_rlobjservice_name"/>
      <sch:active pattern="unix-def_rlobjrunlevel"/>
      <sch:active pattern="unix-def_rlsteservice_name"/>
      <sch:active pattern="unix-def_rlsterunlevel"/>
      <sch:active pattern="unix-def_rlstestart"/>
      <sch:active pattern="unix-def_rlstekill"/>
      <sch:active pattern="unix-def_sccstst"/>
      <sch:active pattern="unix-def_sccsobjfilepath"/>
      <sch:active pattern="unix-def_sccsobjpath"/>
      <sch:active pattern="unix-def_sccsobjfilename"/>
      <sch:active pattern="unix-def_sccsstefilepath"/>
      <sch:active pattern="unix-def_sccsstepath"/>
      <sch:active pattern="unix-def_sccsstefilename"/>
      <sch:active pattern="unix-def_sccsstemodule_name"/>
      <sch:active pattern="unix-def_sccsstemodule_type"/>
      <sch:active pattern="unix-def_sccssterelease"/>
      <sch:active pattern="unix-def_sccsstelevel"/>
      <sch:active pattern="unix-def_sccsstebranch"/>
      <sch:active pattern="unix-def_sccsstesequence"/>
      <sch:active pattern="unix-def_sccsstewhat_string"/>
      <sch:active pattern="unix-def_recurse_value_sccs_dep"/>
      <sch:active pattern="unix-def_shadowtst"/>
      <sch:active pattern="unix-def_shadowobjusername"/>
      <sch:active pattern="unix-def_shadowsteusername"/>
      <sch:active pattern="unix-def_shadowstepassword"/>
      <sch:active pattern="unix-def_shadowstechg_lst"/>
      <sch:active pattern="unix-def_shadowstechg_allow"/>
      <sch:active pattern="unix-def_shadowstechg_req"/>
      <sch:active pattern="unix-def_shadowsteexp_warn"/>
      <sch:active pattern="unix-def_shadowsteexp_inact"/>
      <sch:active pattern="unix-def_shadowsteexp_date"/>
      <sch:active pattern="unix-def_shadowsteflag"/>
      <sch:active pattern="unix-def_unametst"/>
      <sch:active pattern="unix-def_unamestemachine_class"/>
      <sch:active pattern="unix-def_unamestenode_name"/>
      <sch:active pattern="unix-def_unamesteos_name"/>
      <sch:active pattern="unix-def_unamesteos_release"/>
      <sch:active pattern="unix-def_unamesteos_version"/>
      <sch:active pattern="unix-def_unamesteprocessor_type"/>
      <sch:active pattern="unix-def_xinetdtst"/>
      <sch:active pattern="unix-def_xinetdobjprotocol"/>
      <sch:active pattern="unix-def_xinetdobjservice_name"/>
      <sch:active pattern="unix-def_xinetdsteprotocol"/>
      <sch:active pattern="unix-def_xinetdsteservice_name"/>
      <sch:active pattern="unix-def_xinetdsteflags"/>
      <sch:active pattern="unix-def_xinetdstenoaccess"/>
      <sch:active pattern="unix-def_xinetdsteonlyfrom"/>
      <sch:active pattern="unix-def_xinetdsteport"/>
      <sch:active pattern="unix-def_xinetdsteserver"/>
      <sch:active pattern="unix-def_xinetdsteserverarguments"/>
      <sch:active pattern="unix-def_xinetdstesockettype"/>
      <sch:active pattern="unix-def_xinetdstetype"/>
      <sch:active pattern="unix-def_xinetdsteuser"/>
      <sch:active pattern="unix-def_xinetdstewait"/>
      <sch:active pattern="unix-def_xinetdstedisabled"/>
   </sch:phase>
   <sch:phase id="win-def">
      <sch:active pattern="win-def_affected_platform"/>
      <sch:active pattern="win-def_attst"/>
      <sch:active pattern="win-def_atobjsecurity_principle"/>
      <sch:active pattern="win-def_atstesecurity_principle"/>
      <sch:active pattern="win-def_atsteseassignprimarytokenprivilege"/>
      <sch:active pattern="win-def_atsteseauditprivilege"/>
      <sch:active pattern="win-def_atstesebackupprivilege"/>
      <sch:active pattern="win-def_atstesechangenotifyprivilege"/>
      <sch:active pattern="win-def_atstesecreateglobalprivilege"/>
      <sch:active pattern="win-def_atstesecreatepagefileprivilege"/>
      <sch:active pattern="win-def_atstesecreatepermanentprivilege"/>
      <sch:active pattern="win-def_atstesecreatesymboliclinkprivilege"/>
      <sch:active pattern="win-def_atstesecreatetokenprivilege"/>
      <sch:active pattern="win-def_atstesedebugprivilege"/>
      <sch:active pattern="win-def_atsteseenabledelegationprivilege"/>
      <sch:active pattern="win-def_atsteseimpersonateprivilege"/>
      <sch:active pattern="win-def_atsteseincreasebasepriorityprivilege"/>
      <sch:active pattern="win-def_atsteseincreasequotaprivilege"/>
      <sch:active pattern="win-def_atsteseincreaseworkingsetprivilege"/>
      <sch:active pattern="win-def_atsteseloaddriverprivilege"/>
      <sch:active pattern="win-def_atsteselockmemoryprivilege"/>
      <sch:active pattern="win-def_atstesemachineaccountprivilege"/>
      <sch:active pattern="win-def_atstesemanagevolumeprivilege"/>
      <sch:active pattern="win-def_atsteseprofilesingleprocessprivilege"/>
      <sch:active pattern="win-def_atsteserelabelprivilege"/>
      <sch:active pattern="win-def_atsteseremoteshutdownprivilege"/>
      <sch:active pattern="win-def_atsteserestoreprivilege"/>
      <sch:active pattern="win-def_atstesesecurityprivilege"/>
      <sch:active pattern="win-def_atsteseshutdownprivilege"/>
      <sch:active pattern="win-def_atstesesyncagentprivilege"/>
      <sch:active pattern="win-def_atstesesystemenvironmentprivilege"/>
      <sch:active pattern="win-def_atstesesystemprofileprivilege"/>
      <sch:active pattern="win-def_atstesesystemtimeprivilege"/>
      <sch:active pattern="win-def_atstesetakeownershipprivilege"/>
      <sch:active pattern="win-def_atstesetcbprivilege"/>
      <sch:active pattern="win-def_atstesetimezoneprivilege"/>
      <sch:active pattern="win-def_atsteseundockprivilege"/>
      <sch:active pattern="win-def_atsteseunsolicitedinputprivilege"/>
      <sch:active pattern="win-def_atstesebatchlogonright"/>
      <sch:active pattern="win-def_atsteseinteractivelogonright"/>
      <sch:active pattern="win-def_atstesenetworklogonright"/>
      <sch:active pattern="win-def_atsteseremoteinteractivelogonright"/>
      <sch:active pattern="win-def_atsteseservicelogonright"/>
      <sch:active pattern="win-def_atstesedenybatchLogonright"/>
      <sch:active pattern="win-def_atstesedenyinteractivelogonright"/>
      <sch:active pattern="win-def_atstesedenynetworklogonright"/>
      <sch:active pattern="win-def_atstesedenyremoteInteractivelogonright"/>
      <sch:active pattern="win-def_atstesedenyservicelogonright"/>
      <sch:active pattern="win-def_at_resolve_group_value_dep"/>
      <sch:active pattern="win-def_activedirectory_test_dep"/>
      <sch:active pattern="win-def_adtst"/>
      <sch:active pattern="win-def_activedirectory_object_dep"/>
      <sch:active pattern="win-def_adobjnaming_context"/>
      <sch:active pattern="win-def_adobjrelative_dn"/>
      <sch:active pattern="win-def_adobjattribute"/>
      <sch:active pattern="win-def_activedirectory_state_dep"/>
      <sch:active pattern="win-def_adstenaming_context"/>
      <sch:active pattern="win-def_adsterelative_dn"/>
      <sch:active pattern="win-def_adsteattribute"/>
      <sch:active pattern="win-def_adsteobject_class"/>
      <sch:active pattern="win-def_adsteadstype"/>
      <sch:active pattern="win-def_adstevalue"/>
      <sch:active pattern="win-def_activedirectory57_test"/>
      <sch:active pattern="win-def_activedirectory57_object_naming_context"/>
      <sch:active pattern="win-def_activedirectory57_object_relative_dn"/>
      <sch:active pattern="win-def_activedirectory57_object_attribute"/>
      <sch:active pattern="win-def_activedirectory57_state_naming_context"/>
      <sch:active pattern="win-def_activedirectory57_state_relative_dn"/>
      <sch:active pattern="win-def_activedirectory57_state_attribute"/>
      <sch:active pattern="win-def_activedirectory57_state_object_class"/>
      <sch:active pattern="win-def_activedirectory57_state_adstype"/>
      <sch:active pattern="win-def_activedirectory57_state_value"/>
      <sch:active pattern="win-def_aeptst"/>
      <sch:active pattern="win-def_aepsteaccount_logon"/>
      <sch:active pattern="win-def_aepsteaccount_management"/>
      <sch:active pattern="win-def_aepstedetailed_tracking"/>
      <sch:active pattern="win-def_aepstedirectory_service_access"/>
      <sch:active pattern="win-def_aepstelogon"/>
      <sch:active pattern="win-def_aepsteobject_access"/>
      <sch:active pattern="win-def_aepstepolicy_change"/>
      <sch:active pattern="win-def_aepsteprivilege_use"/>
      <sch:active pattern="win-def_aepstesystem"/>
      <sch:active pattern="win-def_aepstst"/>
      <sch:active pattern="win-def_aepsstecredentialvalidation"/>
      <sch:active pattern="win-def_aepsstekerberosauthenticationservice"/>
      <sch:active pattern="win-def_aepsstekerberosserviceticketoperations"/>
      <sch:active pattern="win-def_aepsstekerberosticketevents"/>
      <sch:active pattern="win-def_aepssteotheraccountlogonevents"/>
      <sch:active pattern="win-def_aepssteapplicationgroupmanagement"/>
      <sch:active pattern="win-def_aepsstecomputeraccountmanagement"/>
      <sch:active pattern="win-def_aepsstedistributiongroupmanagement"/>
      <sch:active pattern="win-def_aepssteotheraccountmanagementevents"/>
      <sch:active pattern="win-def_aepsstesecuritygroupmanagement"/>
      <sch:active pattern="win-def_aepssteuseraccountmanagement"/>
      <sch:active pattern="win-def_aepsstedpapiactivity"/>
      <sch:active pattern="win-def_aepssteprocesscreation"/>
      <sch:active pattern="win-def_aepssteprocesstermination"/>
      <sch:active pattern="win-def_aepssterpcevents"/>
      <sch:active pattern="win-def_aepsstedirectoryserviceaccess"/>
      <sch:active pattern="win-def_aepsstedirectoryservicechanges"/>
      <sch:active pattern="win-def_aepsstedirectoryservicereplication"/>
      <sch:active pattern="win-def_aepsstedetaileddirectoryservicereplication"/>
      <sch:active pattern="win-def_aepssteaccountlockout"/>
      <sch:active pattern="win-def_aepssteipsecextendedmode"/>
      <sch:active pattern="win-def_aepssteipsecmainmode"/>
      <sch:active pattern="win-def_aepssteipsec_quick_mode"/>
      <sch:active pattern="win-def_aepsstelogoff"/>
      <sch:active pattern="win-def_aepsstelogon"/>
      <sch:active pattern="win-def_aepsstenetworkpolicyserver"/>
      <sch:active pattern="win-def_aepssteotherlogonlogoffevents"/>
      <sch:active pattern="win-def_aepsstespeciallogon"/>
      <sch:active pattern="win-def_aepssteapplicationgenerated"/>
      <sch:active pattern="win-def_aepsstecertificationservices"/>
      <sch:active pattern="win-def_aepsstedetailedfileshare"/>
      <sch:active pattern="win-def_aepsstefileshare"/>
      <sch:active pattern="win-def_aepsstefilesystem"/>
      <sch:active pattern="win-def_aepsstefilteringplatformconnection"/>
      <sch:active pattern="win-def_aepsstefilteringplatformpacketdrop"/>
      <sch:active pattern="win-def_aepsstehandlemanipulation"/>
      <sch:active pattern="win-def_aepsstekernelobject"/>
      <sch:active pattern="win-def_aepssteotherobjectaccessevents"/>
      <sch:active pattern="win-def_aepssteregistry"/>
      <sch:active pattern="win-def_aepsstesam"/>
      <sch:active pattern="win-def_aepssteauditpolicychange"/>
      <sch:active pattern="win-def_aepssteauthenticationpolicychange"/>
      <sch:active pattern="win-def_aepssteauthorizationpolicychange"/>
      <sch:active pattern="win-def_aepsstefilteringplatformpolicychange"/>
      <sch:active pattern="win-def_aepsstempssvcrulelevelpolicychange"/>
      <sch:active pattern="win-def_aepssteotherpolicychangeevents"/>
      <sch:active pattern="win-def_aepsstenonsensitiveprivilegeuse"/>
      <sch:active pattern="win-def_aepssteotherprivilegeuseevents"/>
      <sch:active pattern="win-def_aepsstesensitive_privilege_use"/>
      <sch:active pattern="win-def_aepssteipsecdriver"/>
      <sch:active pattern="win-def_aepssteothersystemevents"/>
      <sch:active pattern="win-def_aepsstesecuritystatechange"/>
      <sch:active pattern="win-def_aepsstesecuritysystemextension"/>
      <sch:active pattern="win-def_aepsstesystemintegrity"/>
      <sch:active pattern="win-def_dnscachetst"/>
      <sch:active pattern="win-def_dnscacheobjdomainname"/>
      <sch:active pattern="win-def_dnscachestedomainname"/>
      <sch:active pattern="win-def_dnscachestettl"/>
      <sch:active pattern="win-def_dnscachesteipaddress"/>
      <sch:active pattern="win-def_filetst"/>
      <sch:active pattern="win-def_fileobjfilepath"/>
      <sch:active pattern="win-def_fileobjpath"/>
      <sch:active pattern="win-def_fileobjfilename"/>
      <sch:active pattern="win-def_filestefilepath"/>
      <sch:active pattern="win-def_filestepath"/>
      <sch:active pattern="win-def_filestefilename"/>
      <sch:active pattern="win-def_filesteowner"/>
      <sch:active pattern="win-def_filestesize"/>
      <sch:active pattern="win-def_filestea_time"/>
      <sch:active pattern="win-def_filestec_time"/>
      <sch:active pattern="win-def_filestem_time"/>
      <sch:active pattern="win-def_filestems_checksum"/>
      <sch:active pattern="win-def_filesteversion"/>
      <sch:active pattern="win-def_filestetype"/>
      <sch:active pattern="win-def_filestedevelopment_class"/>
      <sch:active pattern="win-def_filestecompany"/>
      <sch:active pattern="win-def_filesteinternalname"/>
      <sch:active pattern="win-def_filestelanguage"/>
      <sch:active pattern="win-def_filesteoriginalfilename"/>
      <sch:active pattern="win-def_filesteproductname"/>
      <sch:active pattern="win-def_filesteproductversion"/>
      <sch:active pattern="win-def_fap53tst"/>
      <sch:active pattern="win-def_fap53objfilepath"/>
      <sch:active pattern="win-def_fap53objpath"/>
      <sch:active pattern="win-def_fap53objfilename"/>
      <sch:active pattern="win-def_fap53objtrustee_sid"/>
      <sch:active pattern="win-def_fap53stefilepath"/>
      <sch:active pattern="win-def_fap53stepath"/>
      <sch:active pattern="win-def_fap53stefilename"/>
      <sch:active pattern="win-def_fap53stetrustee_sid"/>
      <sch:active pattern="win-def_fap53stestandard_delete"/>
      <sch:active pattern="win-def_fap53stestandard_read_control"/>
      <sch:active pattern="win-def_fap53stestandard_write_dac"/>
      <sch:active pattern="win-def_fap53stestandard_write_owner"/>
      <sch:active pattern="win-def_fap53stestandard_synchronize"/>
      <sch:active pattern="win-def_fap53steaccess_system_security"/>
      <sch:active pattern="win-def_fap53stegeneric_read"/>
      <sch:active pattern="win-def_fap53stegeneric_write"/>
      <sch:active pattern="win-def_fap53stegeneric_execute"/>
      <sch:active pattern="win-def_fap53stegeneric_all"/>
      <sch:active pattern="win-def_fap53stefile_read_data"/>
      <sch:active pattern="win-def_fap53stefile_write_data"/>
      <sch:active pattern="win-def_fap53stefile_append_data"/>
      <sch:active pattern="win-def_fap53stefile_read_ea"/>
      <sch:active pattern="win-def_fap53stefile_write_ea"/>
      <sch:active pattern="win-def_fap53stefile_execute"/>
      <sch:active pattern="win-def_fap53stefile_delete_child"/>
      <sch:active pattern="win-def_fap53stefile_read_attributes"/>
      <sch:active pattern="win-def_fap53stefile_write_attributes"/>
      <sch:active pattern="win-def_fap53_resolve_group_value_dep"/>
      <sch:active pattern="win-def_faptst_dep"/>
      <sch:active pattern="win-def_faptst"/>
      <sch:active pattern="win-def_fapobj_dep"/>
      <sch:active pattern="win-def_fapobjpath"/>
      <sch:active pattern="win-def_fapobjfilename"/>
      <sch:active pattern="win-def_fapobjtrustee_name"/>
      <sch:active pattern="win-def_fapste_dep"/>
      <sch:active pattern="win-def_fapstepath"/>
      <sch:active pattern="win-def_fapstefilename"/>
      <sch:active pattern="win-def_fapstetrustee_name"/>
      <sch:active pattern="win-def_fapstestandard_delete"/>
      <sch:active pattern="win-def_fapstestandard_read_control"/>
      <sch:active pattern="win-def_fapstestandard_write_dac"/>
      <sch:active pattern="win-def_fapstestandard_write_owner"/>
      <sch:active pattern="win-def_fapstestandard_synchronize"/>
      <sch:active pattern="win-def_fapsteaccess_system_security"/>
      <sch:active pattern="win-def_fapstegeneric_read"/>
      <sch:active pattern="win-def_fapstegeneric_write"/>
      <sch:active pattern="win-def_fapstegeneric_execute"/>
      <sch:active pattern="win-def_fapstegeneric_all"/>
      <sch:active pattern="win-def_fapstefile_read_data"/>
      <sch:active pattern="win-def_fapstefile_write_data"/>
      <sch:active pattern="win-def_fapstefile_append_data"/>
      <sch:active pattern="win-def_fapstefile_read_ea"/>
      <sch:active pattern="win-def_fapstefile_write_ea"/>
      <sch:active pattern="win-def_fapstefile_execute"/>
      <sch:active pattern="win-def_fapstefile_delete_child"/>
      <sch:active pattern="win-def_fapstefile_read_attributes"/>
      <sch:active pattern="win-def_fapstefile_write_attributes"/>
      <sch:active pattern="win-def_fap_resolve_group_value_dep"/>
      <sch:active pattern="win-def_fer53tst"/>
      <sch:active pattern="win-def_fer53objfilepath"/>
      <sch:active pattern="win-def_fer53objpath"/>
      <sch:active pattern="win-def_fer53objfilename"/>
      <sch:active pattern="win-def_fer53objtrustee_sid"/>
      <sch:active pattern="win-def_fer53stefilepath"/>
      <sch:active pattern="win-def_fer53stepath"/>
      <sch:active pattern="win-def_fer53stefilename"/>
      <sch:active pattern="win-def_fer53stetrustee_sid"/>
      <sch:active pattern="win-def_fer53stestandard_delete"/>
      <sch:active pattern="win-def_fer53stestandard_read_control"/>
      <sch:active pattern="win-def_fer53stestandard_write_dac"/>
      <sch:active pattern="win-def_fer53stestandard_write_owner"/>
      <sch:active pattern="win-def_fer53stestandard_synchronize"/>
      <sch:active pattern="win-def_fer53steaccess_system_security"/>
      <sch:active pattern="win-def_fer53stegeneric_read"/>
      <sch:active pattern="win-def_fer53stegeneric_write"/>
      <sch:active pattern="win-def_fer53stegeneric_execute"/>
      <sch:active pattern="win-def_fer53stegeneric_all"/>
      <sch:active pattern="win-def_fer53stefile_read_data"/>
      <sch:active pattern="win-def_fer53stefile_write_data"/>
      <sch:active pattern="win-def_fer53stefile_append_data"/>
      <sch:active pattern="win-def_fer53stefile_read_ea"/>
      <sch:active pattern="win-def_fer53stefile_write_ea"/>
      <sch:active pattern="win-def_fer53stefile_execute"/>
      <sch:active pattern="win-def_fer53stefile_delete_child"/>
      <sch:active pattern="win-def_fer53stefile_read_attributes"/>
      <sch:active pattern="win-def_fer53stefile_write_attributes"/>
      <sch:active pattern="win-def_ffr53_resolve_group_value_dep"/>
      <sch:active pattern="win-def_fertst_dep"/>
      <sch:active pattern="win-def_fertst"/>
      <sch:active pattern="win-def_ferobj_dep"/>
      <sch:active pattern="win-def_fefobjpath"/>
      <sch:active pattern="win-def_fefobjfilename"/>
      <sch:active pattern="win-def_fefobjtrustee_name"/>
      <sch:active pattern="win-def_ferste_dep"/>
      <sch:active pattern="win-def_ferstepath"/>
      <sch:active pattern="win-def_ferstefilename"/>
      <sch:active pattern="win-def_ferstetrustee_name"/>
      <sch:active pattern="win-def_ferstestandard_delete"/>
      <sch:active pattern="win-def_ferstestandard_read_control"/>
      <sch:active pattern="win-def_ferstestandard_write_dac"/>
      <sch:active pattern="win-def_ferstestandard_write_owner"/>
      <sch:active pattern="win-def_ferstestandard_synchronize"/>
      <sch:active pattern="win-def_fersteaccess_system_security"/>
      <sch:active pattern="win-def_ferstegeneric_read"/>
      <sch:active pattern="win-def_ferstegeneric_write"/>
      <sch:active pattern="win-def_ferstegeneric_execute"/>
      <sch:active pattern="win-def_ferstegeneric_all"/>
      <sch:active pattern="win-def_ferstefile_read_data"/>
      <sch:active pattern="win-def_ferstefile_write_data"/>
      <sch:active pattern="win-def_ferstefile_append_data"/>
      <sch:active pattern="win-def_ferstefile_read_ea"/>
      <sch:active pattern="win-def_ferstefile_write_ea"/>
      <sch:active pattern="win-def_ferstefile_execute"/>
      <sch:active pattern="win-def_ferstefile_delete_child"/>
      <sch:active pattern="win-def_ferstefile_read_attributes"/>
      <sch:active pattern="win-def_ferstefile_write_attributes"/>
      <sch:active pattern="win-def_ffr_resolve_group_value_dep"/>
      <sch:active pattern="win-def_grouptst"/>
      <sch:active pattern="win-def_groupobjgroup"/>
      <sch:active pattern="win-def_groupstegroup"/>
      <sch:active pattern="win-def_groupsteuser"/>
      <sch:active pattern="win-def_groupstesubgroup"/>
      <sch:active pattern="win-def_groupsidtst"/>
      <sch:active pattern="win-def_groupsidobjgroup"/>
      <sch:active pattern="win-def_groupsidstegroup"/>
      <sch:active pattern="win-def_groupsidsteuser"/>
      <sch:active pattern="win-def_groupsidstesubgroup"/>
      <sch:active pattern="win-def_wininterfacetst"/>
      <sch:active pattern="win-def_wininterfaceobjname"/>
      <sch:active pattern="win-def_wininterfacestename"/>
      <sch:active pattern="win-def_wininterfacesteindex"/>
      <sch:active pattern="win-def_wininterfacestetype"/>
      <sch:active pattern="win-def_wininterfacestehardware_addr"/>
      <sch:active pattern="win-def_wininterfacesteinet_addr"/>
      <sch:active pattern="win-def_wininterfacestebroadcast_addr"/>
      <sch:active pattern="win-def_wininterfacestenetmask"/>
      <sch:active pattern="win-def_wininterfacesteaddr_type"/>
      <sch:active pattern="win-def_lptst"/>
      <sch:active pattern="win-def_lpsteforce_logoff"/>
      <sch:active pattern="win-def_lpstelockout_duration"/>
      <sch:active pattern="win-def_lpstelockout_observation_window"/>
      <sch:active pattern="win-def_lpstelockout_threshold"/>
      <sch:active pattern="win-def_metabasetst"/>
      <sch:active pattern="win-def_metabaseobjkey"/>
      <sch:active pattern="win-def_metabaseobjid"/>
      <sch:active pattern="win-def_metabasestekey"/>
      <sch:active pattern="win-def_metabasesteid"/>
      <sch:active pattern="win-def_metabasestename"/>
      <sch:active pattern="win-def_metabasesteuser_type"/>
      <sch:active pattern="win-def_metabasestedata_type"/>
      <sch:active pattern="win-def_metabasestedata"/>
      <sch:active pattern="win-def_pptst"/>
      <sch:active pattern="win-def_ppstemax_passwd_age"/>
      <sch:active pattern="win-def_ppstemin_passwd_age"/>
      <sch:active pattern="win-def_ppstemin_passwd_len"/>
      <sch:active pattern="win-def_ppstepassword_hist_len"/>
      <sch:active pattern="win-def_ppstepassword_complexity"/>
      <sch:active pattern="win-def_ppstereversible_encryption"/>
      <sch:active pattern="win-def_winporttst"/>
      <sch:active pattern="win-def_winportobjlocal_address"/>
      <sch:active pattern="win-def_winportobjlocal_port"/>
      <sch:active pattern="win-def_winportobjprotocol"/>
      <sch:active pattern="win-def_winportstelocal_address"/>
      <sch:active pattern="win-def_winportstelocal_port"/>
      <sch:active pattern="win-def_winportsteprotocol"/>
      <sch:active pattern="win-def_winportstepid"/>
      <sch:active pattern="win-def_pertst"/>
      <sch:active pattern="win-def_perobjprinter_name"/>
      <sch:active pattern="win-def_perobjtrustee_sid"/>
      <sch:active pattern="win-def_rersteprinter_name"/>
      <sch:active pattern="win-def_perstetrustee_sid"/>
      <sch:active pattern="win-def_perstestandard_delete"/>
      <sch:active pattern="win-def_perstestandard_read_control"/>
      <sch:active pattern="win-def_perstestandard_write_dac"/>
      <sch:active pattern="win-def_perstestandard_write_owner"/>
      <sch:active pattern="win-def_perstestandard_synchronize"/>
      <sch:active pattern="win-def_persteaccess_system_security"/>
      <sch:active pattern="win-def_perstegeneric_read"/>
      <sch:active pattern="win-def_perstegeneric_write"/>
      <sch:active pattern="win-def_perstegeneric_execute"/>
      <sch:active pattern="win-def_perstegeneric_all"/>
      <sch:active pattern="win-def_persteprinter_access_administer"/>
      <sch:active pattern="win-def_persteprinter_access_use"/>
      <sch:active pattern="win-def_perstejob_access_administer"/>
      <sch:active pattern="win-def_perstejob_access_read"/>
      <sch:active pattern="win-def_pef_resolve_group_value_dep"/>
      <sch:active pattern="win-def_processtst"/>
      <sch:active pattern="win-def_processobjcommand_line"/>
      <sch:active pattern="win-def_processstecommand_line"/>
      <sch:active pattern="win-def_processstepid"/>
      <sch:active pattern="win-def_processsteppid"/>
      <sch:active pattern="win-def_processstepriority"/>
      <sch:active pattern="win-def_processsteimage_path"/>
      <sch:active pattern="win-def_processstecurrent_dir"/>
      <sch:active pattern="win-def_regtst"/>
      <sch:active pattern="win-def_regobjhive"/>
      <sch:active pattern="win-def_regobjkey"/>
      <sch:active pattern="win-def_regobjname"/>
      <sch:active pattern="win-def_regstehive"/>
      <sch:active pattern="win-def_regstekey"/>
      <sch:active pattern="win-def_regstename"/>
      <sch:active pattern="win-def_regstetype"/>
      <sch:active pattern="win-def_regstevalue"/>
      <sch:active pattern="win-def_rap53tst"/>
      <sch:active pattern="win-def_rap53objhive"/>
      <sch:active pattern="win-def_rap53objkey"/>
      <sch:active pattern="win-def_rap53objtrustee_sid"/>
      <sch:active pattern="win-def_rap53stehive"/>
      <sch:active pattern="win-def_rap53stekey"/>
      <sch:active pattern="win-def_rap53stetrustee_sid"/>
      <sch:active pattern="win-def_rap53stestandard_delete"/>
      <sch:active pattern="win-def_rap53stestandard_read_control"/>
      <sch:active pattern="win-def_rap53stestandard_write_dac"/>
      <sch:active pattern="win-def_rap53stestandard_write_owner"/>
      <sch:active pattern="win-def_rap53stestandard_synchronize"/>
      <sch:active pattern="win-def_rap53steaccess_system_security"/>
      <sch:active pattern="win-def_rap53stegeneric_read"/>
      <sch:active pattern="win-def_rap53stegeneric_write"/>
      <sch:active pattern="win-def_rap53stegeneric_execute"/>
      <sch:active pattern="win-def_rap53stegeneric_all"/>
      <sch:active pattern="win-def_rap53stekey_query_value"/>
      <sch:active pattern="win-def_rap53stekey_set_value"/>
      <sch:active pattern="win-def_rap53stekey_create_sub_key"/>
      <sch:active pattern="win-def_rap53stekey_enumerate_sub_keys"/>
      <sch:active pattern="win-def_rap53stekey_notify"/>
      <sch:active pattern="win-def_rap53stekey_create_link"/>
      <sch:active pattern="win-def_rap53stekey_wow64_64key"/>
      <sch:active pattern="win-def_rap53stekey_wow64_32key"/>
      <sch:active pattern="win-def_rap53stekey_wow64_res"/>
      <sch:active pattern="win-def_rka53_resolve_group_value_dep"/>
      <sch:active pattern="win-def_raptst_dep"/>
      <sch:active pattern="win-def_raptst"/>
      <sch:active pattern="win-def_rapobj_dep"/>
      <sch:active pattern="win-def_rapobjhive"/>
      <sch:active pattern="win-def_rapobjkey"/>
      <sch:active pattern="win-def_rapobjtrustee_name"/>
      <sch:active pattern="win-def_rapste_dep"/>
      <sch:active pattern="win-def_rapstehive"/>
      <sch:active pattern="win-def_rapstekey"/>
      <sch:active pattern="win-def_rapstetrustee_name"/>
      <sch:active pattern="win-def_rapstestandard_delete"/>
      <sch:active pattern="win-def_rapstestandard_read_control"/>
      <sch:active pattern="win-def_rapstestandard_write_dac"/>
      <sch:active pattern="win-def_rapstestandard_write_owner"/>
      <sch:active pattern="win-def_rapstestandard_synchronize"/>
      <sch:active pattern="win-def_rapsteaccess_system_security"/>
      <sch:active pattern="win-def_rapstegeneric_read"/>
      <sch:active pattern="win-def_rapstegeneric_write"/>
      <sch:active pattern="win-def_rapstegeneric_execute"/>
      <sch:active pattern="win-def_rapstegeneric_all"/>
      <sch:active pattern="win-def_rapstekey_query_value"/>
      <sch:active pattern="win-def_rapstekey_set_value"/>
      <sch:active pattern="win-def_rapstekey_create_sub_key"/>
      <sch:active pattern="win-def_rapstekey_enumerate_sub_keys"/>
      <sch:active pattern="win-def_rapstekey_notify"/>
      <sch:active pattern="win-def_rapstekey_create_link"/>
      <sch:active pattern="win-def_rapstekey_wow64_64key"/>
      <sch:active pattern="win-def_rapstekey_wow64_32key"/>
      <sch:active pattern="win-def_rapstekey_wow64_res"/>
      <sch:active pattern="win-def_rka_resolve_group_value_dep"/>
      <sch:active pattern="win-def_rer53tst"/>
      <sch:active pattern="win-def_rer53objhive"/>
      <sch:active pattern="win-def_rer53objkey"/>
      <sch:active pattern="win-def_rer53objtrustee_sid"/>
      <sch:active pattern="win-def_rer53stehive"/>
      <sch:active pattern="win-def_rer53stekey"/>
      <sch:active pattern="win-def_rer53stetrustee_sid"/>
      <sch:active pattern="win-def_rer53stestandard_delete"/>
      <sch:active pattern="win-def_rer53stestandard_read_control"/>
      <sch:active pattern="win-def_rer53stestandard_write_dac"/>
      <sch:active pattern="win-def_rer53stestandard_write_owner"/>
      <sch:active pattern="win-def_rer53stestandard_synchronize"/>
      <sch:active pattern="win-def_rer53steaccess_system_security"/>
      <sch:active pattern="win-def_rer53stegeneric_read"/>
      <sch:active pattern="win-def_rer53stegeneric_write"/>
      <sch:active pattern="win-def_rer53stegeneric_execute"/>
      <sch:active pattern="win-def_rer53stegeneric_all"/>
      <sch:active pattern="win-def_rer53stekey_query_value"/>
      <sch:active pattern="win-def_rer53stekey_set_value"/>
      <sch:active pattern="win-def_rer53stekey_create_sub_key"/>
      <sch:active pattern="win-def_rer53stekey_enumerate_sub_keys"/>
      <sch:active pattern="win-def_rer53stekey_notify"/>
      <sch:active pattern="win-def_rer53stekey_create_link"/>
      <sch:active pattern="win-def_rer53stekey_wow64_64key"/>
      <sch:active pattern="win-def_rer53stekey_wow64_32key"/>
      <sch:active pattern="win-def_rer53stekey_wow64_res"/>
      <sch:active pattern="win-def_rke53_resolve_group_value_dep"/>
      <sch:active pattern="win-def_rertst_dep"/>
      <sch:active pattern="win-def_rertst"/>
      <sch:active pattern="win-def_rerobj_dep"/>
      <sch:active pattern="win-def_rerobjhive"/>
      <sch:active pattern="win-def_rerobjkey"/>
      <sch:active pattern="win-def_rerobjtrustee_name"/>
      <sch:active pattern="win-def_rerste_dep"/>
      <sch:active pattern="win-def_rerstehive"/>
      <sch:active pattern="win-def_rerstekey"/>
      <sch:active pattern="win-def_rerstetrustee_name"/>
      <sch:active pattern="win-def_rerstestandard_delete"/>
      <sch:active pattern="win-def_rerstestandard_read_control"/>
      <sch:active pattern="win-def_rerstestandard_write_dac"/>
      <sch:active pattern="win-def_rerstestandard_write_owner"/>
      <sch:active pattern="win-def_rerstestandard_synchronize"/>
      <sch:active pattern="win-def_rersteaccess_system_security"/>
      <sch:active pattern="win-def_rerstegeneric_read"/>
      <sch:active pattern="win-def_rerstegeneric_write"/>
      <sch:active pattern="win-def_rerstegeneric_execute"/>
      <sch:active pattern="win-def_rerstegeneric_all"/>
      <sch:active pattern="win-def_rerstekey_query_value"/>
      <sch:active pattern="win-def_rerstekey_set_value"/>
      <sch:active pattern="win-def_rerstekey_create_sub_key"/>
      <sch:active pattern="win-def_rerstekey_enumerate_sub_keys"/>
      <sch:active pattern="win-def_rerstekey_notify"/>
      <sch:active pattern="win-def_rerstekey_create_link"/>
      <sch:active pattern="win-def_rerstekey_wow64_64key"/>
      <sch:active pattern="win-def_rerstekey_wow64_32key"/>
      <sch:active pattern="win-def_rerstekey_wow64_res"/>
      <sch:active pattern="win-def_rke_resolve_group_value_dep"/>
      <sch:active pattern="win-def_svcertst"/>
      <sch:active pattern="win-def_svcerobjservice_name"/>
      <sch:active pattern="win-def_svcerobjtrustee_sid"/>
      <sch:active pattern="win-def_svcersteservice_name"/>
      <sch:active pattern="win-def_svcerstetrustee_sid"/>
      <sch:active pattern="win-def_svcerstestandard_delete"/>
      <sch:active pattern="win-def_svcerstestandard_read_control"/>
      <sch:active pattern="win-def_svcerstestandard_write_dac"/>
      <sch:active pattern="win-def_svcerstestandard_write_owner"/>
      <sch:active pattern="win-def_svcerstegeneric_read"/>
      <sch:active pattern="win-def_svcerstegeneric_write"/>
      <sch:active pattern="win-def_svcerstegeneric_execute"/>
      <sch:active pattern="win-def_svcersteservice_query_conf"/>
      <sch:active pattern="win-def_svcersteservice_change_conf"/>
      <sch:active pattern="win-def_svcersteservice_query_stat"/>
      <sch:active pattern="win-def_svcersteserviceenum_dependents"/>
      <sch:active pattern="win-def_svcersteservice_start"/>
      <sch:active pattern="win-def_svcersteservice_stop"/>
      <sch:active pattern="win-def_svcersteservice_pause"/>
      <sch:active pattern="win-def_svcersteservice_interrogate"/>
      <sch:active pattern="win-def_svcersteservice_user_defined"/>
      <sch:active pattern="win-def_srtst"/>
      <sch:active pattern="win-def_srobjnetname"/>
      <sch:active pattern="win-def_srstenetname"/>
      <sch:active pattern="win-def_srsteshared_type"/>
      <sch:active pattern="win-def_srstemax_uses"/>
      <sch:active pattern="win-def_srstecurrent_uses"/>
      <sch:active pattern="win-def_srstelocal_path"/>
      <sch:active pattern="win-def_srsteaccess_read_permission"/>
      <sch:active pattern="win-def_srsteaccess_write_permission"/>
      <sch:active pattern="win-def_srsteaccess_create_permission"/>
      <sch:active pattern="win-def_srsteaccess_exec_permission"/>
      <sch:active pattern="win-def_srsteaccess_delete_permission"/>
      <sch:active pattern="win-def_srsteaccess_atrib_permission"/>
      <sch:active pattern="win-def_srsteaccess_perm_permission"/>
      <sch:active pattern="win-def_srsteaccess_all_permission"/>
      <sch:active pattern="win-def_sidtst"/>
      <sch:active pattern="win-def_sidobjtrustee_name"/>
      <sch:active pattern="win-def_sidstetrustee_name"/>
      <sch:active pattern="win-def_sidstetrustee_sid"/>
      <sch:active pattern="win-def_sidstetrustee_domain"/>
      <sch:active pattern="win-def_sidsidtst"/>
      <sch:active pattern="win-def_sidsidobjtrustee_name"/>
      <sch:active pattern="win-def_sidsidstetrustee_sid"/>
      <sch:active pattern="win-def_sidsidstetrustee_name"/>
      <sch:active pattern="win-def_sidsidstetrustee_domain"/>
      <sch:active pattern="win-def_uactst"/>
      <sch:active pattern="win-def_uacsteadminapprovalmode"/>
      <sch:active pattern="win-def_uacstebehaviorelevationadmin"/>
      <sch:active pattern="win-def_uacsteelevationpromptstandard"/>
      <sch:active pattern="win-def_uacstedetectinstallations"/>
      <sch:active pattern="win-def_uacsteelevatesignedexecutables"/>
      <sch:active pattern="win-def_uacsteelevateuiaccess"/>
      <sch:active pattern="win-def_uacsterunadminsaam"/>
      <sch:active pattern="win-def_uacstesecuredesktop"/>
      <sch:active pattern="win-def_uacstevirtualizewritefailures"/>
      <sch:active pattern="win-def_usertst"/>
      <sch:active pattern="win-def_userobjuser"/>
      <sch:active pattern="win-def_usersteuser"/>
      <sch:active pattern="win-def_usersteenabled"/>
      <sch:active pattern="win-def_userstegroup"/>
      <sch:active pattern="win-def_usersid55tst"/>
      <sch:active pattern="win-def_usersid55objuser"/>
      <sch:active pattern="win-def_usersid55steuser"/>
      <sch:active pattern="win-def_usersid55steenabled"/>
      <sch:active pattern="win-def_usersid55stegroup"/>
      <sch:active pattern="win-def_usersidtst_dep"/>
      <sch:active pattern="win-def_usersidtst"/>
      <sch:active pattern="win-def_usersidobj_dep"/>
      <sch:active pattern="win-def_usersidobjuser"/>
      <sch:active pattern="win-def_usersidste_dep"/>
      <sch:active pattern="win-def_usersidsteuser"/>
      <sch:active pattern="win-def_usersidsteenabled"/>
      <sch:active pattern="win-def_usersidstegroup"/>
      <sch:active pattern="win-def_volumetst"/>
      <sch:active pattern="win-def_volobjrootpath"/>
      <sch:active pattern="win-def_volumesterootpath"/>
      <sch:active pattern="win-def_volumestefile_system"/>
      <sch:active pattern="win-def_volumestename"/>
      <sch:active pattern="win-def_volstevolume_max_component_length"/>
      <sch:active pattern="win-def_volsteserial_number"/>
      <sch:active pattern="win-def_volstefile_case_sensitive_search"/>
      <sch:active pattern="win-def_volstefile_case_preserved_names"/>
      <sch:active pattern="win-def_volstefile_unicode_on_disk"/>
      <sch:active pattern="win-def_volstefile_persistent_acls"/>
      <sch:active pattern="win-def_volstefile_file_compression"/>
      <sch:active pattern="win-def_volstefile_volume_quotas"/>
      <sch:active pattern="win-def_volstefile_supports_sparse_files"/>
      <sch:active pattern="win-def_volstefile_supports_reparse_points"/>
      <sch:active pattern="win-def_volstefile_supports_remote_storage"/>
      <sch:active pattern="win-def_volstefile_volume_is_compressed"/>
      <sch:active pattern="win-def_volstefile_supports_object_ids"/>
      <sch:active pattern="win-def_volstefile_supports_encryption"/>
      <sch:active pattern="win-def_volstefile_named_streams"/>
      <sch:active pattern="win-def_volstefile_read_only_volume"/>
      <sch:active pattern="win-def_wmitst_dep"/>
      <sch:active pattern="win-def_wmitst"/>
      <sch:active pattern="win-def_wmiobj_dep"/>
      <sch:active pattern="win-def_wmiobjnamespace"/>
      <sch:active pattern="win-def_wmiobjwql"/>
      <sch:active pattern="win-def_wmiste_dep"/>
      <sch:active pattern="win-def_wmistenamespace"/>
      <sch:active pattern="win-def_wmistewql"/>
      <sch:active pattern="win-def_wmisteresult"/>
      <sch:active pattern="win-def_wmi57tst"/>
      <sch:active pattern="win-def_wmi57objnamespace"/>
      <sch:active pattern="win-def_wmi57objwql"/>
      <sch:active pattern="win-def_wmi57stenamespace"/>
      <sch:active pattern="win-def_wmi57stewql"/>
      <sch:active pattern="win-def_wmi57steresult"/>
      <sch:active pattern="win-def_wuaupdatesearchertst"/>
      <sch:active pattern="win-def_wuaupdatesearcherobjsearchcriteria"/>
      <sch:active pattern="win-def_wuaupdatesearcherstesearchcriteria"/>
      <sch:active pattern="win-def_wuaupdatesearchersteupdateid"/>
      <sch:active pattern="win-def_ssr_stype_special_value_dep"/>
      <sch:active pattern="win-def_ssr_stype_temporary_value_dep"/>
   </sch:phase>
   <sch:pattern id="oval_none_exist_value_dep">
                                   <sch:rule context="oval-def:oval_definitions/oval-def:tests/child::*">
                                        <sch:report test="@check='none exist'">
                                             DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE:
                                        </sch:report>
                                   </sch:rule>
                              </sch:pattern>
   <sch:pattern id="oval-def_empty_def_doc">
                    <sch:rule context="oval-def:oval_definitions">
                        <sch:assert test="oval-def:definitions or oval-def:tests or oval-def:objects or oval-def:states or oval-def:variables">A valid OVAL Definition document must contain at least one definitions, tests, objects, states, or variables element. The optional definitions, tests, objects, states, and variables sections define the specific characteristics that should be evaluated on a system to determine the truth values of the OVAL Definition Document. To be valid though, at least one definitions, tests, objects, states, or variables element must be present.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_required_criteria">
                    <sch:rule context="oval-def:oval_definitions/oval-def:definitions/oval-def:definition[@deprecated='false' or not(@deprecated)]">
                        <sch:assert test="oval-def:criteria">A valid OVAL Definition document must contain a criteria unless the definition is a deprecated definition.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_test_type">
                    <sch:rule context="oval-def:oval_definitions/oval-def:tests/*[@check_existence='none_exist']">
                        <sch:assert test="not(*[local-name()='state'])">
            <sch:value-of select="@id"/> - No state should be referenced when check_existence has a value of 'none_exist'.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_setobjref">
                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])">
            <sch:value-of select="../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])">
            <sch:value-of select="../../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../../../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])">
            <sch:value-of select="../../../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_allowed-variable-datatypes">
                    <sch:rule context="oval-def:variables/child::*">
                        <sch:assert test="not(@datatype='record')">
            <sch:value-of select="@id"/> - The 'record' datatype is prohibited on variables.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_literal_component">
                    <sch:rule context="oval-def:literal_component">
                        <sch:assert test="not(@datatype='record')">
            <sch:value-of select="ancestor::*/@id"/> - The 'record' datatype is prohibited on variables.</sch:assert>
                    </sch:rule>
                    <!--
                        <sch:rule context="oval-def:literal_component/*/*[not(@datatype)]">
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='binary']">
                        <sch:assert test="matches(., '^[0-9a-fA-F]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of binary.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='boolean']">
                        <sch:assert test="matches(., '^true$|^false$|^1$|^0$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of boolean.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='evr_string']">
                        <sch:assert test="matches(., '^[^:\-]*:[^:\-]*-[^:\-]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of evr_string.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='fileset_revision']">
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='float']">
                        <sch:assert test="matches(., '^[+\-]?[0-9]+([\.][0-9]+)?([eE][+\-]?[0-9]+)?$|^NaN$|^INF$|^\-INF$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of float.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='ios_version']">
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='int']">
                        <sch:assert test="matches(., '^[+\-]?[0-9]+$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of int.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='string']">
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='version']">
                        </sch:rule>
                    -->
                </sch:pattern>
   <sch:pattern id="oval-def_arithmeticfunctionrules">
                    <sch:rule context="oval-def:arithmetic/oval-def:literal_component">
                        <sch:assert test="@datatype='float' or @datatype='int'">A literal_component used by an arithmetic function must have a datatype of float or int.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:arithmetic/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='float' or ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='int'">The variable referenced by the arithmetic function must have a datatype of float or int.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_beginfunctionrules">
                    <sch:rule context="oval-def:begin/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the begin function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:begin/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the begin function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_concatfunctionrules">
                        <sch:rule context="oval-def:concat/oval-def:literal_component">
                            <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the concat function must have a datatype of string.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:concat/oval-def:variable_component">
                            <sch:let name="var_ref" value="@var_ref"/>
                            <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the concat function must have a datatype of string.</sch:assert>
                        </sch:rule>
                    </sch:pattern>
   <sch:pattern id="oval-def_endfunctionrules">
                    <sch:rule context="oval-def:end/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the end function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:end/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the end function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_escaperegexfunctionrules">
                    <sch:rule context="oval-def:escape_regex/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the escape_regex function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:escape_regex/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the escape_regex function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_splitfunctionrules">
                    <sch:rule context="oval-def:split/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the split function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:split/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the split function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_substringfunctionrules">
                    <sch:rule context="oval-def:substring/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the substring function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:substring/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the substring function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_timedifferencefunctionrules">
                    <sch:rule context="oval-def:time_difference/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string' or @datatype='int'">A literal_component used by the time_difference function must have a datatype of string or int.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:time_difference/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref][@datatype='string' or not(@datatype)] or ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='int'">The variable referenced by the time_difference function must have a datatype of string or int.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_regexcapturefunctionrules">
                    <sch:rule context="oval-def:regex_capture/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the regex_capture function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:regex_capture/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the regex_capture function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_definition_entity_rules">
                    <sch:rule context="oval-def:objects/*/*[@var_ref]|oval-def:states/*/*[@var_ref]|oval-def:states/*/*/*[@var_ref]">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test=".=''">
            <sch:value-of select="../@id"/> - a var_ref has been supplied for the <sch:value-of select="name()"/> entity so no value should be provided</sch:assert>
                        <sch:assert test="( (not(@datatype)) and ('string' = ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype) ) or (@datatype = ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype)">
            <sch:value-of select="$var_ref"/> - inconsistent datatype between the variable and an associated var_ref</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[not(@datatype)]|oval-def:states/*/*[not(@datatype)]|oval-def:states/*/*/*[not(@datatype)]">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='case insensitive equals' or @operation='case insensitive not equal' or @operation='pattern match'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given the lack of a declared datatype (hence a default datatype of string).</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='binary']|oval-def:states/*/*[@datatype='binary']|oval-def:states/*/*/*[@datatype='binary']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of binary.</sch:assert>
                        <!--<sch:assert test="matches(., '^[0-9a-fA-F]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of binary.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='boolean']|oval-def:states/*/*[@datatype='boolean']|oval-def:states/*/*/*[@datatype='boolean']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of boolean.</sch:assert>
                        <!--<sch:assert test="matches(., '^true$|^false$|^1$|^0$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of boolean.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='evr_string']|oval-def:states/*/*[@datatype='evr_string']|oval-def:states/*/*/*[@datatype='evr_string']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of evr_string.</sch:assert>
                        <!--<sch:assert test="matches(., '^[^:\-]*:[^:\-]*-[^:\-]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of evr_string.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='fileset_revision']|oval-def:states/*/*[@datatype='fileset_revision']|oval-def:states/*/*/*[@datatype='fileset_revision']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of fileset_revision.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='float']|oval-def:states/*/*[@datatype='float']|oval-def:states/*/*/*[@datatype='float']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of float.</sch:assert>
                        <!--<sch:assert test="matches(., '^[+\-]?[0-9]+([\.][0-9]+)?([eE][+\-]?[0-9]+)?$|^NaN$|^INF$|^\-INF$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of float.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='ios_version']|oval-def:states/*/*[@datatype='ios_version']|oval-def:states/*/*/*[@datatype='ios_version']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of ios_version.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='int']|oval-def:states/*/*[@datatype='int']|oval-def:states/*/*/*[@datatype='int']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of int.</sch:assert>
                        <!--<sch:assert test="matches(., '^[+\-]?[0-9]+$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of int.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='string' or not(@datatype)]|oval-def:states/*/*[@datatype='string' or not(@datatype)]|oval-def:states/*/*/*[@datatype='string' or not(@datatype)]">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='case insensitive equals' or @operation='case insensitive not equal' or @operation='pattern match'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='version']|oval-def:states/*/*[@datatype='version']|oval-def:states/*/*/*[@datatype='version']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of version.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='record']|oval-def:states/*/*[@datatype='record']|oval-def:states/*/*/*[@datatype='record']">
                        <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of record.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_no_var_ref_with_records">
                    <sch:rule context="oval-def:objects/*/*[@datatype='record']|oval-def:states/*/*[@datatype='record']">
                        <sch:assert test="not(@var_ref)">
            <sch:value-of select="../@id"/> - The use of var_ref is prohibited when the datatype is 'record'.</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_definition_entity_type_check_rules">
                    <sch:rule context="oval-def:objects/*/*[not(@xsi:nil='true') and not(@var_ref) and @datatype='int']|oval-def:states/*/*[not(@xsi:nil='true') and not(@var_ref) and @datatype='int']">
                        <sch:assert test="(not(contains(.,'.'))) and (number(.) = floor(.))">
            <sch:value-of select="../@id"/> - The datatype for the <sch:value-of select="name()"/> entity is 'int' but the value is not an integer.</sch:assert>
						   <!--  Must test for decimal point because number(x.0) = floor(x.0) is true -->
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_entityobjectbaserules">
                    <sch:rule context="oval-def:objects/*/*[@var_ref]|oval-def:objects/*/*/*[@var_ref]">
                        <sch:report test="not(@var_check)">
            <sch:value-of select="../@id"/> - a var_ref has been supplied for the <sch:value-of select="name()"/> entity so a var_check should also be provided</sch:report>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@var_check]|oval-def:objects/*/*/*[@var_check]">
                            <sch:assert test="@var_ref">
            <sch:value-of select="../@id"/> - a var_check has been supplied for the <sch:value-of select="name()"/> entity so a var_ref should also be provided</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_entitystatebaserules">
                    <sch:rule context="oval-def:states/*/*[@var_ref]|oval-def:states/*/*/*[@var_ref]">
                        <sch:report test="not(@var_check)">
            <sch:value-of select="../@id"/> - a var_ref has been supplied for the <sch:value-of select="name()"/> entity so a var_check should also be provided</sch:report>
                    </sch:rule>
                    <sch:rule context="oval-def:states/*/*[@var_check]|oval-def:states/*/*/*[@var_check]">
                        <sch:assert test="@var_ref">
            <sch:value-of select="../@id"/> - a var_check has been supplied for the <sch:value-of select="name()"/> entity so a var_ref should also be provided</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="oval-def_state_record_fields">
                    <sch:rule context="oval-def:states/*/*/*">
                        <sch:assert test="not(@datatype='record')">
                            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> field of an <sch:value-of select="name(../..)"/> should not be 'record'.
                        </sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="ind-def_famtst">
                              <sch:rule context="ind-def:family_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:family_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a family_test must reference a family_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:family_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:family_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a family_test must reference a family_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_famstefamily">
                                                            <sch:rule context="ind-def:family_state/ind-def:family">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the family entity of a family_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_hashtst">
                              <sch:rule context="ind-def:filehash_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:filehash_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a filehash_test must reference a filesha1_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:filehash_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:filehash_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a filehash_test must reference a filesha1_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_hashobjfilepath">
                                                                                    <sch:rule context="ind-def:filehash_object/ind-def:filepath">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a filehash_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])">
            <sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="ind-def_hashobjpath">
                                                                                  <sch:rule context="ind-def:filehash_object/ind-def:path">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a filehash_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="ind-def_hashobjfilename">
                                                                                  <sch:rule context="ind-def:filehash_object/ind-def:filename">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filehash_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="ind-def_hashstefilepath">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:filepath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_hashstepath">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_hashstefilename">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_hashstemd5">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:md5">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the md5 entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_hashstesha1">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:sha1">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sha1 entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_envtst">
                              <sch:rule context="ind-def:environmentvariable_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:environmentvariable_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an environmentvariable_test must reference a environmentvariable_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:environmentvariable_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:environmentvariable_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an environmentvariable_test must reference a environmentvariable_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_envobjname">
                                                                        <sch:rule context="ind-def:environmentvariable_object/ind-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of an environmentvariable_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_envstename">
                                                            <sch:rule context="ind-def:environmentvariable_state/ind-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of an environmentvariable_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_envstevalue">
                                                            <sch:rule context="ind-def:environmentvariable_state/ind-def:value">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldap_test_dep">
                              <sch:rule context="ind-def:ldap_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_ldaptst">
                              <sch:rule context="ind-def:ldap_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:ldap_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an ldap_test must reference an ldap_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:ldap_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an ldap_test must reference an ldap_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_ldap_object_dep">
                              <sch:rule context="ind-def:ldap_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_ldapobjsuffix">
                                                                        <sch:rule context="ind-def:ldap_object/ind-def:suffix">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the suffix entity of an ldap_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_ldapobjrelative_dn">
                                                                        <sch:rule context="ind-def:ldap_object/ind-def:relative_dn">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an ldap_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_ldapobjattribute">
                                                                        <sch:rule context="ind-def:ldap_object/ind-def:attribute">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an ldap_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_ldap_state_dep">
                              <sch:rule context="ind-def:ldap_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_ldapstesuffix">
                                                            <sch:rule context="ind-def:ldap_state/ind-def:suffix">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the suffix entity of an ldap_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldapsterelative_dn">
                                                            <sch:rule context="ind-def:ldap_state/ind-def:relative_dn">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an ldap_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldapsteattribute">
                                                            <sch:rule context="ind-def:ldap_state/ind-def:attribute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an ldap_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldapsteobject_class">
                                                            <sch:rule context="ind-def:ldap_state/ind-def:object_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the object_class entity of an ldap_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldapsteldaptype">
                                                            <sch:rule context="ind-def:ldap_state/ind-def:ldaptype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ldaptype entity of an ldap_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldapsteldapvalue">
                                                            <sch:rule context="ind-def:ldap_state/ind-def:value">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldap57_test">
                              <sch:rule context="ind-def:ldap57_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:ldap57_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an ldap57_test must reference an ldap57_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:ldap57_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an ldap57_test must reference an ldap57_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_ldap57_object_suffix">
                                                                        <sch:rule context="ind-def:ldap57_object/ind-def:suffix">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the suffix entity of an ldap57_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_ldap57_object_relative_dn">
                                                                        <sch:rule context="ind-def:ldap57_object/ind-def:relative_dn">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an ldap57_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_ldap57_object_attribute">
                                                                        <sch:rule context="ind-def:ldap57_object/ind-def:attribute">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an ldap57_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_ldap57_state_suffix">
                                                            <sch:rule context="ind-def:ldap57_state/ind-def:suffix">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the suffix entity of an ldap57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldap57_state_relative_dn">
                                                            <sch:rule context="ind-def:ldap57_state/ind-def:relative_dn">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an ldap57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldap57_state_attribute">
                                                            <sch:rule context="ind-def:ldap57_state/ind-def:attribute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an ldap57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldap57_state_object_class">
                                                            <sch:rule context="ind-def:ldap57_state/ind-def:object_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the object_class entity of an ldap57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldap57_state_ldaptype">
                                                            <sch:rule context="ind-def:ldap57_state/ind-def:ldaptype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ldaptype entity of an ldap57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldap57_state_value">
                                                            <sch:rule context="ind-def:ldap57_state/ind-def:value">
                                                                  <sch:assert test="@datatype='record'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sql_test_dep">
                              <sch:rule context="ind-def:sql_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_sqltst">
                              <sch:rule context="ind-def:sql_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:sql_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a sql_test must reference a sql_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:sql_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:sql_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a sql_test must reference a sql_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_sql_object_dep">
                              <sch:rule context="ind-def:sql_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_sqlobjdengine">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:engine">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the engine entity of an sql_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the engine entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_sqlobjversion">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:version">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of an sql_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the version entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_sqlobjconnection_string">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:connection_string">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the connection_string entity of an sql_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the connection_string entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_sqlobjsql">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:sql">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sql entity of a sql_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the sql entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_sql_state_dep">
                              <sch:rule context="ind-def:sql_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_sqlsteengine">
                                                            <sch:rule context="ind-def:sql_state/ind-def:engine">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the engine entity of an sql_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sqlsteversion">
                                                            <sch:rule context="ind-def:sql_state/ind-def:version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of an sql_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sqlsteconnection_string">
                                                            <sch:rule context="ind-def:sql_state/ind-def:connection_string">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the connection_string entity of an sql_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sqlstesql">
                                                            <sch:rule context="ind-def:sql_state/ind-def:sql">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sql entity of a sql_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sqlsteresult">
                                                            <sch:rule context="ind-def:sql_state/ind-def:result">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sql57_test">
                              <sch:rule context="ind-def:sql57_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:sql57_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a sql57_test must reference a sql57_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:sql57_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:sql57_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a sql57_test must reference a sql57_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_sql57_object_dengine">
                                                                        <sch:rule context="ind-def:sql57_object/ind-def:engine">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the engine entity of an sql57_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the engine entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_sql57_object_version">
                                                                        <sch:rule context="ind-def:sql57_object/ind-def:version">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of an sql57_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the version entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_sql57_object_connection_string">
                                                                        <sch:rule context="ind-def:sql57_object/ind-def:connection_string">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the connection_string entity of an sql57_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the connection_string entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_sql57_object_sql">
                                                                        <sch:rule context="ind-def:sql57_object/ind-def:sql">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sql entity of a sql57_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the sql entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_sql57_state_engine">
                                                            <sch:rule context="ind-def:sql57_state/ind-def:engine">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the engine entity of an sql57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sql57_state_version">
                                                            <sch:rule context="ind-def:sql57_state/ind-def:version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of an sql57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sql57_state_connection_string">
                                                            <sch:rule context="ind-def:sql57_state/ind-def:connection_string">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the connection_string entity of an sql57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sql57_state_sql">
                                                            <sch:rule context="ind-def:sql57_state/ind-def:sql">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sql entity of a sql57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_sql57_state_result">
                                                            <sch:rule context="ind-def:sql57_state/ind-def:result">
                                                                  <sch:assert test="@datatype='record'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txt54tst">
                              <sch:rule context="ind-def:textfilecontent54_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent54_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a textfilecontent54_test must reference a textfilecontent54_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:textfilecontent54_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent54_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a textfilecontent54_test must reference a textfilecontent54_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_txt54objfilepath">
                                                                                    <sch:rule context="ind-def:textfilecontent54_object/ind-def:filepath">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a textfilecontent54_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])">
            <sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="ind-def_txt54objpath">
                                                                                  <sch:rule context="ind-def:textfilecontent54_object/ind-def:path">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent54_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="ind-def_txt54objfilename">
                                                                                  <sch:rule context="ind-def:textfilecontent54_object/ind-def:filename">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent54_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="ind-def_txt54objpattern">
                                                                        <sch:rule context="ind-def:textfilecontent54_object/ind-def:pattern">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pattern entity of a textfilecontent54_object should be 'string'</sch:assert>
                                                                              <sch:assert test="@operation='pattern match'">
            <sch:value-of select="../@id"/> - operation attribute for the pattern entity of a textfilecontent54_object should be 'pattern match'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_txt54objinstance">
                                                                        <sch:rule context="ind-def:textfilecontent54_object/ind-def:instance">
                                                                              <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the instance entity of a textfilecontent54_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_txt54stefilepath">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:filepath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a textfilecontent54_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txt54stepath">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txt54stefilename">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent54_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txt54stepattern">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:pattern">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pattern entity of a textfilecontent54_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txt54steinstance">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:instance">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the instance entity of a textfilecontent54_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txt54stetext">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:text">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the text entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txt54stesubexpression">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:subexpression">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txttst_dep">
                              <sch:rule context="ind-def:textfilecontent_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_txttst">
                              <sch:rule context="ind-def:textfilecontent_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a textfilecontent_test must reference a textfilecontent_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:textfilecontent_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a textfilecontent_test must reference a textfilecontent_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_txtobj_dep">
                              <sch:rule context="ind-def:textfilecontent_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_txtobjpath">
                                                                        <sch:rule context="ind-def:textfilecontent_object/ind-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_txtobjfilename">
                                                                        <sch:rule context="ind-def:textfilecontent_object/ind-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_txtobjline">
                                                                        <sch:rule context="ind-def:textfilecontent_object/ind-def:line">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the line entity of a textfilecontent_object should be 'string'</sch:assert>
                                                                              <sch:assert test="@operation='pattern match'">
            <sch:value-of select="../@id"/> - operation attribute for the line entity of a textfilecontent_object should be 'pattern match'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_txtste_dep">
                              <sch:rule context="ind-def:textfilecontent_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_txtstepath">
                                                            <sch:rule context="ind-def:textfilecontent_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txtstefilename">
                                                            <sch:rule context="ind-def:textfilecontent_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txtsteline">
                                                            <sch:rule context="ind-def:textfilecontent_state/ind-def:line">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the line entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_txtstesubexpression">
                                                            <sch:rule context="ind-def:textfilecontent_state/ind-def:subexpression">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_vattst">
                              <sch:rule context="ind-def:variable_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:variable_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a variable_test must reference a variable_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:variable_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:variable_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a variable_test must reference a variable_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_varobjvar_ref">
                                                                        <sch:rule context="ind-def:variable_object/ind-def:var_ref">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the var_ref entity of a variable_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@var_ref)">
            <sch:value-of select="../@id"/> - var_ref attribute for the var_ref entity of a variable_object is prohibited.</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_varstevar_ref">
                                                            <sch:rule context="ind-def:variable_state/ind-def:var_ref">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the var_ref entity of a variable_state should be 'string'</sch:assert>
                                                                  <sch:assert test="not(@var_ref)">
            <sch:value-of select="../@id"/> - var_ref attribute for the var_ref entity of a variable_state is prohibited.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_xmltst">
                              <sch:rule context="ind-def:xmlfilecontent_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:xmlfilecontent_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a xmlfilecontent_test must reference a xmlfilecontent_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:xmlfilecontent_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:xmlfilecontent_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a xmlfilecontent_test must reference a xmlfilecontent_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ind-def_xmlobjfilepath">
                                                                                    <sch:rule context="ind-def:xmlfilecontent_object/ind-def:filepath">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a xmlfilecontent_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])">
            <sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="ind-def_xmlobjpath">
                                                                                  <sch:rule context="ind-def:xmlfilecontent_object/ind-def:path">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a xmlfilecontent_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="ind-def_xmlobjfilename">
                                                                                  <sch:rule context="ind-def:xmlfilecontent_object/ind-def:filename">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a xmlfilecontent_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="ind-def_xmlobjxpath">
                                                                        <sch:rule context="ind-def:xmlfilecontent_object/ind-def:xpath">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the xpath entity of a xmlfilecontent_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the xpath entity of a xmlfilecontent_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ind-def_xmlfilestefilepath">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:filepath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_xmlstepath">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_xmlstefilename">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_xmlstexpath">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:xpath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the xpath entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_xmlstevalue_of">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:value_of">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the value_of entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ind-def_ldaptype_timestamp_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/ind-def:ldaptype|oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/ind-def:ldaptype">
                                                      <sch:report test=".='LDAPTYPE_TIMESTAMP'">
                                                            DEPRECATED ELEMENT VALUE IN: ldap_state ELEMENT VALUE: <sch:value-of select="."/> 
                                                      </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
   <sch:pattern id="ind-def_ldaptype_email_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/ind-def:ldaptype|oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/ind-def:ldaptype">
                                                      <sch:report test=".='LDAPTYPE_EMAIL'">
                                                            DEPRECATED ELEMENT VALUE IN: ldap_state ELEMENT VALUE: <sch:value-of select="."/> 
                                                      </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
   <sch:pattern id="aix-def_interimfixtst">
                              <sch:rule context="aix-def:interim_fix_test/aix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:interim_fix_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a <sch:name path=".."/> must reference a interim_fix_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="aix-def:interim_fix_test/aix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:interim_fix_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a <sch:name path=".."/> must reference a interim_fix_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="aix-def_interimfixobjvuid">
                                                                        <sch:rule context="aix-def:interim_fix_object/aix-def:vuid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:name/> entity of a <sch:name path=".."/> should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="aix-def_interimfixstevuid">
                                                            <sch:rule context="aix-def:interim_fix_state/aix-def:vuid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:name/> entity of a <sch:name path=".."/> should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_interimfixstelabel">
                                                            <sch:rule context="aix-def:interim_fix_state/aix-def:label">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:name/> entity of a <sch:name path=".."/> should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_interimfixsteabstract">
                                                            <sch:rule context="aix-def:interim_fix_state/aix-def:abstract">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:name/> entity of a <sch:name path=".."/> should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_interimfixstestate">
                                                            <sch:rule context="aix-def:interim_fix_state/aix-def:state">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:name/> entity of a <sch:name path=".."/> should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_filesettst">
                        <sch:rule context="aix-def:fileset_test/aix-def:object">
                            <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:fileset_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a fileset_test must reference a fileset_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:fileset_test/aix-def:state">
                            <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:fileset_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a fileset_test must reference a fileset_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
   <sch:pattern id="aix-def_filesetobjflstinst">
                                                                        <sch:rule context="aix-def:fileset_object/aix-def:flstinst">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the flstinst entity of a fileset_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="aix-def_filesetsteflstinst">
                                                            <sch:rule context="aix-def:fileset_state/aix-def:flstinst">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the flstinst entity of a fileset_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_filesetstelevel">
                                                            <sch:rule context="aix-def:fileset_state/aix-def:level">
                                                                  <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the level entity of a fileset_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_filesetstestate">
                                                            <sch:rule context="aix-def:fileset_state/aix-def:state">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the state entity of a fileset_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_filesetstedescription">
                                                            <sch:rule context="aix-def:fileset_state/aix-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the description entity of a fileset_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_fixtst">
                        <sch:rule context="aix-def:fix_test/aix-def:object">
                            <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:fix_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a fix_test must reference a fix_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:fix_test/aix-def:state">
                            <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:fix_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a fix_test must reference a fix_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
   <sch:pattern id="aix-def_fixobjapar_number">
                                                                        <sch:rule context="aix-def:fix_object/aix-def:apar_number">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the apar_number entity of a fix_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="aix-def_fixsteapar_number">
                                                            <sch:rule context="aix-def:fix_state/aix-def:apar_number">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the apar_number entity of a fix_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_fixsteabstract">
                                                            <sch:rule context="aix-def:fix_state/aix-def:abstract">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the abstract entity of a fix_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_fixstesymptom">
                                                            <sch:rule context="aix-def:fix_state/aix-def:symptom">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the symptom entity of a fix_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_fixsteinstallation_status">
                                                            <sch:rule context="aix-def:fix_state/aix-def:installation_status">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the installation_status entity of a fix_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="aix-def_osleveltst">
                        <sch:rule context="aix-def:oslevel_test/aix-def:object">
                            <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:oslevel_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a oslevel_test must reference a oslevel_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:oslevel_test/aix-def:state">
                            <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:oslevel_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a oslevel_test must reference a oslevel_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
   <sch:pattern id="aix-def_oslevelstemaintenance_level">
                                                            <sch:rule context="aix-def:oslevel_state/aix-def:maintenance_level">
                                                                  <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the maintenance_level entity of an oslevel_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="apache-def_httpdtst">
                              <sch:rule context="apache-def:httpd_test/apache-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/apache-def:httpd_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a httpd_test must reference a httpd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="apache-def:httpd_test/apache-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/apache-def:httpd_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a httpd_test must reference a httpd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="apache-def_httpdstepath">
                                                            <sch:rule context="apache-def:httpd_state/apache-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a httpd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="apache-def_httpdstebinaryname">
                                                            <sch:rule context="apache-def:httpd_state/apache-def:binary_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the binary_name entity of a httpd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="apache-def_httpdsteversion">
                                                            <sch:rule context="apache-def:httpd_state/apache-def:version">
                                                                  <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a httpd_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="catos-def_linetst">
                    <sch:rule context="catos-def:line_test/catos-def:object">
                        <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:line_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="catos-def:line_test/catos-def:state">
                        <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:line_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="catos-def_lineobjshow_subcommand">
                                                <sch:rule context="catos-def:line_object/catos-def:show_subcommand">
                                                    <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_object should be 'string'</sch:assert>
                                                </sch:rule>
                                            </sch:pattern>
   <sch:pattern id="catos-def_linesteshow_subcommand">
                                        <sch:rule context="catos-def:line_state/catos-def:show_subcommand">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="catos-def_linesteconfig_line">
                                        <sch:rule context="catos-def:line_state/catos-def:config_line">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the config_line entity of a line_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="catos-def_moduletst">
                            <sch:rule context="catos-def:module_test/catos-def:object">
                                  <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:module_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a module_test must reference a module_object</sch:assert>
                            </sch:rule>
                            <sch:rule context="catos-def:module_test/catos-def:state">
                                  <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:module_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a module_test must reference a module_state</sch:assert>
                            </sch:rule>
                      </sch:pattern>
   <sch:pattern id="catos-def_moduleobjmodule_number">
                                                                    <sch:rule context="catos-def:module_object/catos-def:module_number">
                                                                          <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the module_number entity of a module_object should be 'int'</sch:assert>
                                                                    </sch:rule>
                                                              </sch:pattern>
   <sch:pattern id="catos-def_modulestemodule_number">
                                                          <sch:rule context="catos-def:module_state/catos-def:module_number">
                                                                <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the module_number entity of a module_state should be 'int'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestetype">
                                                          <sch:rule context="catos-def:module_state/catos-def:type">
                                                                <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the type entity of a module_state should be 'string'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestemodel">
                                                          <sch:rule context="catos-def:module_state/catos-def:model">
                                                                <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the model entity of a module_state should be 'string'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestesoftware_major_release">
                                                          <sch:rule context="catos-def:module_state/catos-def:software_major_release">
                                                                <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the software_major_release entity of a module_state should be 'version'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestesoftware_individual_release">
                                                          <sch:rule context="catos-def:module_state/catos-def:software_individual_release">
                                                                <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the software_individual_release entity of a module_state should be 'int'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestesoftware_version_id">
                                                          <sch:rule context="catos-def:module_state/catos-def:software_version_id">
                                                                <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the software_version_id entity of a module_state should be 'string'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestehardware_major_release">
                                                          <sch:rule context="catos-def:module_state/catos-def:hardware_major_release">
                                                                <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the hardware_major_release entity of a module_state should be 'version'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestehardware_individual_release">
                                                          <sch:rule context="catos-def:module_state/catos-def:hardware_individual_release">
                                                                <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the hardware_individual_release entity of a module_state should be 'int'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestefirmware_major_release">
                                                          <sch:rule context="catos-def:module_state/catos-def:firmware_major_release">
                                                                <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the firmware_major_release entity of a module_state should be 'version'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_modulestefirmware_individual_release">
                                                          <sch:rule context="catos-def:module_state/catos-def:firmware_individual_release">
                                                                <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the firmware_individual_release entity of a module_state should be 'int'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_version55_test">
                        <sch:rule context="catos-def:version55_test/catos-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:version55_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a version55_test must reference a version55_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="catos-def:version55_test/catos-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:version55_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a version55_test must reference a version55_state</sch:assert>
                        </sch:rule>
                  </sch:pattern>
   <sch:pattern id="catos-def_ver55stedevice_series">
                                        <sch:rule context="catos-def:version55_state/catos-def:swtich_series">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the swtich_series entity of a version55_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="catos-def_ver55steimage_name">
                                        <sch:rule context="catos-def:version55_state/catos-def:image_name">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the image_name entity of a version55_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="catos-def_ver55stecatos_release">
                                        <sch:rule context="catos-def:version55_state/catos-def:catos_release">
                                            <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the catos_release entity of a version55_state should be 'version'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="catos-def_version_test_dep">
                          <sch:rule context="catos-def:version_test">
                                <sch:report test="true()">
                                      DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                </sch:report>
                          </sch:rule>
                    </sch:pattern>
   <sch:pattern id="catos-def_version_test">
                          <sch:rule context="catos-def:version_test/catos-def:object">
                                <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:version_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                          </sch:rule>
                          <sch:rule context="catos-def:version_test/catos-def:state">
                                <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:version_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                          </sch:rule>
                    </sch:pattern>
   <sch:pattern id="catos-def_version_object_dep">
                          <sch:rule context="catos-def:version_object">
                                <sch:report test="true()">
                                      DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                </sch:report>
                          </sch:rule>
                    </sch:pattern>
   <sch:pattern id="catos-def_version_state_dep">
                          <sch:rule context="catos-def:version_state">
                                <sch:report test="true()">
                                      DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                </sch:report>
                          </sch:rule>
                    </sch:pattern>
   <sch:pattern id="catos-def_verstedevice_series">
                                                          <sch:rule context="catos-def:version_state/catos-def:swtich_series">
                                                                <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the swtich_series entity of a version_state should be 'string'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_versteimage_name">
                                                          <sch:rule context="catos-def:version_state/catos-def:image_name">
                                                                <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the image_name entity of a version_state should be 'string'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_verstecatos_major_release">
                                                          <sch:rule context="catos-def:version_state/catos-def:catos_major_release">
                                                                <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the catos_major_release entity of a version_state should be 'version'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_verstecatos_individual_release">
                                                          <sch:rule context="catos-def:version_state/catos-def:catos_individual_release">
                                                                <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the catos_individual_release entity of a version_state should be 'int'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="catos-def_verstecatos_version_id">
                                                          <sch:rule context="catos-def:version_state/catos-def:catos_version_id">
                                                                <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the catos_version_id entity of a version_state should be 'string'</sch:assert>
                                                          </sch:rule>
                                                    </sch:pattern>
   <sch:pattern id="esx-def_patch56tst">
                              <sch:rule context="esx-def:patch56_test/esx-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:patch56_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a patch56_test must reference a patch56_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="esx-def:patch56_test/esx-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:patch56_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a patch56_test must reference a patch56_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="esx-def_patch56objpatch_name">
                                                                        <sch:rule context="esx-def:patch56_object/esx-def:patch_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_name entity of a patch56_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="esx-def_patch56stepatch_name">
                                                            <sch:rule context="esx-def:patch56_state/esx-def:patch_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_name entity of a patch56_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_patch56stekbid">
                                                            <sch:rule context="esx-def:patch56_state/esx-def:knowledge_base_id">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the knowledge_base_id entity of a patch56_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_patch56stebundleid">
                                                            <sch:rule context="esx-def:patch56_state/esx-def:bundle_id">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the bundle_id entity of a patch56_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_patch56steclassification">
                                                            <sch:rule context="esx-def:patch56_state/esx-def:classification">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the classification entity of a patch56_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_patch56stesupport_level">
                                                            <sch:rule context="esx-def:patch56_state/esx-def:support_level">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the support_level entity of a patch56_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_patch56stestatus">
                                                            <sch:rule context="esx-def:patch56_state/esx-def:status">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the status entity of a patch56_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_patchtst_dep">
                              <sch:rule context="esx-def:patch_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="esx-def_patchtst">
                              <sch:rule context="esx-def:patch_test/esx-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:patch_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a patch_test must reference a patch_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="esx-def:patch_test/esx-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:patch_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a patch_test must reference a patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="esx-def_patchobj_dep">
                              <sch:rule context="esx-def:patch_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="esx-def_patchobjpatch_number">
                                                                        <sch:rule context="esx-def:patch_object/esx-def:patch_number">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_number entity of a patch_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="esx-def_patchste_dep">
                              <sch:rule context="esx-def:patch_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="esx-def_patchstepatch_number">
                                                            <sch:rule context="esx-def:patch_state/esx-def:patch_number">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_number entity of a patch_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_patchstestatus">
                                                            <sch:rule context="esx-def:patch_state/esx-def:status">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the status entity of a patch_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_versiontst">
                              <sch:rule context="esx-def:version_test/esx-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:version_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="esx-def:version_test/esx-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:version_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="esx-def_versionsterelease">
                                                            <sch:rule context="esx-def:version_state/esx-def:release">
                                                                  <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the release entity of an version_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="esx-def_versionstebuild">
                                                            <sch:rule context="esx-def:version_state/esx-def:build">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the build entity of an version_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="freebsd-def_portinfotst">
                              <sch:rule context="freebsd-def:portinfo_test/freebsd-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/freebsd-def:portinfo_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a portinfo_test must reference an portinfo_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="freebsd-def:portinfo_test/freebsd-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/freebsd-def:portinfo_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a portinfo_test must reference an portinfo_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="freebsd-def_portinfoobjpkginst">
                                                                        <sch:rule context="freebsd-def:portinfo_object/freebsd-def:pkginst">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a portinfo_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="freebsd-def_portinfostepkginst">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:pkginst">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="freebsd-def_portinfostename">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="freebsd-def_portinfostecategory">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:category">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the category entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="freebsd-def_portinfosteversion">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="freebsd-def_portinfostevendor">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:vendor">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="freebsd-def_portinfostedescription">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the description entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_getconf_test">
                              <sch:rule context="hpux-def:getconf_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:getconf_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an getconf_test must reference an getconf_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:getconf_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:getconf_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an getconf_test must reference an getconf_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="hpux-def_gcobjparameter_name">
                                                                        <sch:rule context="hpux-def:getconf_object/hpux-def:parameter_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the parameter_name entity of a getconf_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="hpux-def_gcobjpathname">
                                                                        <sch:rule context="hpux-def:getconf_object/hpux-def:pathname">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pathname entity of a getconf_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="hpux-def_gcsteparameter_name">
                                                            <sch:rule context="hpux-def:getconf_state/hpux-def:parameter_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the parameter_name entity of a getconf_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_gcstepathname">
                                                            <sch:rule context="hpux-def:getconf_state/hpux-def:pathname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pathname entity of a getconf_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_gcsteoutput">
                                                            <sch:rule context="hpux-def:getconf_state/hpux-def:output">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the output entity of a getconf_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_patch53_test">
                              <sch:rule context="hpux-def:patch53_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:patch53_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an patch53_test must reference an patch53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:patch53_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:patch53_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an patch53_test must reference an patch53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="hpux-def_patch53objswtype">
                                                                        <sch:rule context="hpux-def:patch53_object/hpux-def:swtype">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="hpux-def_patch53objarea_patched">
                                                                        <sch:rule context="hpux-def:patch_object/hpux-def:area_patched">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="hpux-def_patch53objpatch_base">
                                                                        <sch:rule context="hpux-def:patch_object/hpux-def:patch_base">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="hpux-def_patch53steswtype">
                                                            <sch:rule context="hpux-def:patch53_state/hpux-def:swtype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_patch53stearea_patched">
                                                            <sch:rule context="hpux-def:patch53_state/hpux-def:area_patched">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_patch53stepatch_base">
                                                            <sch:rule context="hpux-def:patch53_state/hpux-def:patch_base">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_patch_test_dep">
                              <sch:rule context="hpux-def:patch_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="hpux-def_patch_test">
                              <sch:rule context="hpux-def:patch_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:patch_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an patch_test must reference an patch_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:patch_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:patch_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an patch_test must reference an patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="hpux-def_patch_object_dep">
                              <sch:rule context="hpux-def:patch_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="hpux-def_patchobjpatch_name">
                                                                        <sch:rule context="hpux-def:patch_object/hpux-def:patch_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_name entity of a patch_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="hpux-def_patch_state_dep">
                              <sch:rule context="hpux-def:patch_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="hpux-def_patchstepatch_name">
                                                            <sch:rule context="hpux-def:patch_state/hpux-def:patch_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_name entity of a patch_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_patchsteswtype">
                                                            <sch:rule context="hpux-def:patch_state/hpux-def:swtype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_patchstearea_patched">
                                                            <sch:rule context="hpux-def:patch_state/hpux-def:area_patched">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_patchstepatch_base">
                                                            <sch:rule context="hpux-def:patch_state/hpux-def:patch_base">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_swlist_test">
                              <sch:rule context="hpux-def:swlist_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:swlist_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an swlist_test must reference an swlist_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:swlist_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:swlist_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an swlist_test must reference an swlist_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="hpux-def_swlistobjswlist">
                                                                        <sch:rule context="hpux-def:swlist_object/hpux-def:swlist">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the swlist entity of a swlist_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="hpux-def_swliststeswlist">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:swlist">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the swlist entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_swliststebundle">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:bundle">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the bundle entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_swliststefileset">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:fileset">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the fileset entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_swliststeversion">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:version">
                                                                  <sch:assert test="@datatype='fileset_revision'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a swlist_state should be 'fileset_revision'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_swliststetitle">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:title">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the title entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_swliststevendor">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:vendor">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_trusted_test">
                              <sch:rule context="hpux-def:trusted_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:trusted_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an trusted_test must reference an trusted_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:trusted_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:trusted_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an trusted_test must reference an trusted_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="hpux-def_trustobjusername">
                                                                        <sch:rule context="hpux-def:trusted_object/hpux-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of a trusted_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="hpux-def_truststeusername">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststeuid">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:uid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the uid entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepassword">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:password">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the password entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststeaccount_owner">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:account_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the account_owner entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststeboot_auth">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:boot_auth">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the boot_auth entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststeaudit_id">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:audit_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the audit_id entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststeaudit_flag">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:audit_flag">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the audit_flag entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_change_min">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_min">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_change_min entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_max_size">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_max_size">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_max_size entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_expiration">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_expiration">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_expiration entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_life">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_life">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_life entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_change_s">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_s">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_change_s entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_change_u">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_u">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_change_u entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststeacct_expire">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:acct_expire">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the acct_expire entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststemax_llogin">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:max_llogin">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the max_llogin entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststeexp_warning">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:exp_warning">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the exp_warning entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststeusr_chg_pw">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:usr_chg_pw">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the usr_chg_pw entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststegen_pw">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:gen_pw">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the gen_pw entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_restrict">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_restrict">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_restrict entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_null">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_null">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_null entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_gen_char">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_gen_char">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_gen_char entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_gen_let">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_gen_let">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_gen_let entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststelogin_time">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the login_time entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststepw_changer">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_changer">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pw_changer entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststelogin_time_s">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_time_s">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the login_time_s entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststelogin_time_u">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_time_u">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the login_time_u entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststelogin_tty_s">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_tty_s">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the login_tty_s entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststelogin_tty_u">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_tty_u">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the login_tty_u entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststenum_u_logins">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:num_u_logins">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the num_u_logins entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststemax_u_logins">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:max_u_logins">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the max_u_logins entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="hpux-def_truststelock_flag">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:lock_flag">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the lock_flag entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_globaltst">
                              <sch:rule context="ios-def:global_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:global_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a global_test must reference a global_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:global_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:global_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a global_test must reference a global_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ios-def_globalobjglobal_command">
                                                                        <sch:rule context="ios-def:global_object/ios-def:global_command">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the global_command entity of a global_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ios-def_globalsteglobal_command">
                                                            <sch:rule context="ios-def:global_state/ios-def:global_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the global_command entity of a global_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_interfacetst">
                              <sch:rule context="ios-def:interface_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:interface_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:interface_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:interface_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ios-def_interfaceobjname">
                                                                        <sch:rule context="ios-def:interface_object/ios-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ios-def_interfacestename">
                                                            <sch:rule context="ios-def:interface_state/ios-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_interfacesteip_directed_broadcast_command">
                                                            <sch:rule context="ios-def:interface_state/ios-def:ip_directed_broadcast_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ip_directed_broadcast_command entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_interfacesteno_ip_directed_broadcast_command">
                                                            <sch:rule context="ios-def:interface_state/ios-def:no_ip_directed_broadcast_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the no_ip_directed_broadcast_command entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_interfacesteproxy_arp_command">
                                                            <sch:rule context="ios-def:interface_state/ios-def:proxy_arp_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the proxy_arp_command entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_interfacesteshutdown_command">
                                                            <sch:rule context="ios-def:interface_state/ios-def:shutdown_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the shutdown_command entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_linetst">
                              <sch:rule context="ios-def:line_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:line_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:line_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:line_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ios-def_lineobjshow_subcommand">
                                                                        <sch:rule context="ios-def:line_object/ios-def:show_subcommand">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="ios-def_linesteshow_subcommand">
                                                            <sch:rule context="ios-def:line_state/ios-def:show_subcommand">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_linesteconfig_line">
                                                            <sch:rule context="ios-def:line_state/ios-def:config_line">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the config_line entity of a line_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_snmptst">
                              <sch:rule context="ios-def:snmp_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:snmp_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a snmp_test must reference a snmp_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:snmp_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:snmp_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a snmp_test must reference a snmp_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ios-def_snmpsteaccess_list">
                                                            <sch:rule context="ios-def:snmp_state/ios-def:access_list">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_list entity of a snmp_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_snmpstecommunity_name">
                                                            <sch:rule context="ios-def:snmp_state/ios-def:community_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the community_name entity of a snmp_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_tclshtst">
                              <sch:rule context="ios-def:tclsh_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:tclsh_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a tclsh_test must reference a tclsh_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:tclsh_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:tclsh_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a tclsh_test must reference a tclsh_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ios-def_tclshsteavailable">
                                                            <sch:rule context="ios-def:tclsh_state/ios-def:available">
                                                                  <sch:assert test="not(@datatype) or @datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the available entity of a tclsh_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="ios-def_ver55tst">
                              <sch:rule context="ios-def:version55_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:version55_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a version55_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:version55_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:version55_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a version55_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="ios-def_ver55stemajorversion">
                                                  <sch:rule context="ios-def:version55_state/ios-def:major_version">
                                                      <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the major_version entity of a version55_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
   <sch:pattern id="ios-def_ver55steminorversion">
                                                  <sch:rule context="ios-def:version55_state/ios-def:minor_version">
                                                      <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the minor_version entity of a version55_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
   <sch:pattern id="ios-def_ver55sterelease">
                                                  <sch:rule context="ios-def:version55_state/ios-def:release">
                                                      <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the release entity of a version55_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
   <sch:pattern id="ios-def_ver55stetrain_identifier">
                                                  <sch:rule context="ios-def:version_state/ios-def:train_identifier">
                                                      <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the train_identifier entity of a version_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
   <sch:pattern id="ios-def_ver55sterebuild">
                                                  <sch:rule context="ios-def:version55_state/ios-def:rebuild">
                                                      <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the rebuild entity of a version55_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
   <sch:pattern id="ios-def_ver55stesubrebuild">
                                                  <sch:rule context="ios-def:version55_state/ios-def:subrebuild">
                                                      <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the subrebuild entity of a version55_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
   <sch:pattern id="ios-def_ver55stemainlinerebuild">
                                                  <sch:rule context="ios-def:version55_state/ios-def:mainline_rebuild">
                                                      <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the mainline_rebuild entity of a version55_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
   <sch:pattern id="ios-def_ver55steversionstring">
                                                  <sch:rule context="ios-def:version55_state/ios-def:version_string">
                                                      <sch:assert test="not(@datatype) or @datatype='ios_version'">
            <sch:value-of select="../@id"/> - datatype attribute for the version_string entity of a version55_state should be 'ios_version'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
   <sch:pattern id="ios-def_vertst_dep">
                          <sch:rule context="ios-def:version_test">
                                <sch:report test="true()">
                                      DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                </sch:report>
                          </sch:rule>
                    </sch:pattern>
   <sch:pattern id="ios-def_vertst">
                    <sch:rule context="ios-def:version_test/ios-def:object">
                        <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:version_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="ios-def:version_test/ios-def:state">
                        <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:version_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="ios-def_verobj_dep">
                        <sch:rule context="ios-def:version_object">
                              <sch:report test="true()">
                                    DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                              </sch:report>
                        </sch:rule>
                  </sch:pattern>
   <sch:pattern id="ios-def_verste_dep">
                        <sch:rule context="ios-def:version_state">
                              <sch:report test="true()">
                                    DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                              </sch:report>
                        </sch:rule>
                  </sch:pattern>
   <sch:pattern id="ios-def_verstemajor_release">
                                        <sch:rule context="ios-def:version_state/ios-def:major_release">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the major_release entity of a version_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="ios-def_verstetrain_number">
                                        <sch:rule context="ios-def:version_state/ios-def:train_number">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the train_number entity of a version_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="ios-def_verstetrain_identifier">
                                        <sch:rule context="ios-def:version_state/ios-def:train_identifier">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the train_identifier entity of a version_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="ios-def_versteversion_string">
                                        <sch:rule context="ios-def:version_state/ios-def:version_string">
                                            <sch:assert test="not(@datatype) or @datatype='ios_version'">
            <sch:value-of select="../@id"/> - datatype attribute for the version_string entity of a version_state should be 'ios_version'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="linux-def_dpkginfo_test">
                         <sch:rule context="linux-def:dpkginfo_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:dpkginfo_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an dpkginfo_test must reference an dpkginfo_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:dpkginfo_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:dpkginfo_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an dpkginfo_test must reference an dpkginfo_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
   <sch:pattern id="linux-def_dpkgobjname">
                                                            <sch:rule context="linux-def:dpkginfo_object/linux-def:name">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a dpkginfo_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
   <sch:pattern id="linux-def_dpkgstename">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:name">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a dpkginfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_dpkgstearch">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:arch">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the arch entity of a dpkginfo_state should be 'string'</sch:assert>                                                  
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_dpkgsteepoch">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:epoch">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the epoch entity of a dpkginfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_dpkgsterelease">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:release">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the release entity of a dpkginfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_dpkgsteversion">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:version">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a dpkginfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_dpkgsteevr">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:evr">
                                                       <sch:assert test="not(@datatype) or @datatype='evr_string'">
            <sch:value-of select="../@id"/> - datatype attribute for the evr entity of a dpkginfo_state should be 'evr_string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_inetlisteningservers_test">
                         <sch:rule context="linux-def:inetlisteningservers_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:inetlisteningservers_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an inetlisteningservers_test must reference an inetlisteningservers_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:inetlisteningservers_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:inetlisteningservers_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an inetlisteningservers_test must reference an inetlisteningservers_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
   <sch:pattern id="linux-def_ilsobjprotocol">
                                                            <sch:rule context="linux-def:inetlisteningservers_object/linux-def:protocol">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
   <sch:pattern id="linux-def_ilsobjlocal_address">
                                                            <sch:rule context="linux-def:inetlisteningservers_object/linux-def:local_address">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
   <sch:pattern id="linux-def_ilsobjlocal_port">
                                                            <sch:rule context="linux-def:inetlisteningservers_object/linux-def:local_port">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
   <sch:pattern id="linux-def_ilssteprotocol">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:protocol">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilsstelocal_address">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_address">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilsstelocal_port">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_port">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilsstelocal_full_address">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_full_address">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilssteprogram_name">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:program_name">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilssteforeign_address">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_address">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the foreign_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilssteforeign_port">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_port">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the foreign_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilssteforeign_full_address">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_full_address">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilsstepid">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:pid">
                                                       <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the pid entity of an inetlisteningservers_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_ilssteuser_id">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:user_id">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_rpminfo_test">
                         <sch:rule context="linux-def:rpminfo_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:rpminfo_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an rpminfo_test must reference an rpminfo_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:rpminfo_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:rpminfo_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an rpminfo_test must reference an rpminfo_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
   <sch:pattern id="linux-def_rpmobjname">
                                                            <sch:rule context="linux-def:rpminfo_object/linux-def:name">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a rpminfo_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
   <sch:pattern id="linux-def_rpmstename">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:name">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a rpminfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_rpmstearch">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:arch">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the arch entity of a rpminfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_rpmsteepoch">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:epoch">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the epoch entity of a rpminfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_rpmsterelease">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:release">
                                                       <sch:assert test="not(@datatype) or @datatype='string' or @datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the release entity of a rpminfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_rpmsteversion">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:version">
                                                       <sch:assert test="not(@datatype) or @datatype='string' or @datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a rpminfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_rpmsteevr">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:evr">
                                                       <sch:assert test="not(@datatype) or @datatype='evr_string'">
            <sch:value-of select="../@id"/> - datatype attribute for the evr entity of a rpminfo_state should be 'evr_string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_rpmstesignaturekeyid">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:signature_keyid">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the signature_keyid entity of a rpminfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_slackwarepkginfo_test">
                         <sch:rule context="linux-def:slackwarepkginfo_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:slackwarepkginfo_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an slackwarepkginfo_test must reference an slackwarepkginfo_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:slackwarepkginfo_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:slackwarepkginfo_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an slackwarepkginfo_test must reference an slackwarepkginfo_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
   <sch:pattern id="linux-def_spkginfoobjname">
                                                            <sch:rule context="linux-def:slackwarepkginfo_object/linux-def:name">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a slackwarepkginfo_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
   <sch:pattern id="linux-def_spkginfostename">
                                                  <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:name">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a slackwarepkginfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_spkginfosteversion">
                                                  <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:version">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a slackwarepkginfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_spkginfostearch">
                                                  <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:architecture">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the architecture entity of a slackwarepkginfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="linux-def_spkginfosterevision">
                                                  <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:revision">
                                                       <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the revision entity of a slackwarepkginfo_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
   <sch:pattern id="macos-def_accountinfo_test">
                              <sch:rule context="macos-def:accountinfo_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:accountinfo_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an accountinfo_test must reference an accountinfo_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:accountinfo_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:accountinfo_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an accountinfo_test must reference an accountinfo_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="macos-def_accountobjusername">
                                                                        <sch:rule context="macos-def:accountinfo_object/macos-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of an accountinfo_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="macos-def_accountsteusername">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_accountstepassword">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:password">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the password entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_accountsteuid">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:uid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the uid entity of an accountinfo_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_accountstegid">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:gid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the gid entity of an accountinfo_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_accountsterealname">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:realname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the realname entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_accountstehome_dir">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:home_dir">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the home_dir entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_accountstelogin_shell">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:login_shell">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the login_shell entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_inetlisteningservers_test">
                              <sch:rule context="macos-def:inetlisteningservers_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:inetlisteningservers_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an inetlisteningservers_test must reference an inetlisteningservers_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:inetlisteningservers_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:inetlisteningservers_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an inetlisteningservers_test must reference an inetlisteningservers_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="macos-def_ilsobjprogram_name">
                                                                        <sch:rule context="macos-def:inetlisteningservers_object/macos-def:program_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="macos-def_ilssteprogram_name">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:program_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilsstelocal_address">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilsstelocal_full_address">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_full_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilsstelocal_port">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_port">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilssteforeign_address">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the foreign_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilssteforeign_full_address">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_full_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilssteforeign_port">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_port">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the foreign_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilsstepid">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:pid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the pid entity of an inetlisteningservers_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilssteprotocol">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_ilssteuser_id">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:user_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_nvram_test">
                              <sch:rule context="macos-def:nvram_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:nvram_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an nvram_test must reference an nvram_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:nvram_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:nvram_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an nvram_test must reference an nvram_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="macos-def_nvramobjnvram_var">
                                                                        <sch:rule context="macos-def:nvram_object/macos-def:nvram_var">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the nvram_var entity of a nvram_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="macos-def_nvramstenvram_var">
                                                            <sch:rule context="macos-def:nvram_state/macos-def:nvram_var">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the nvram_var entity of a nvram_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_nvramstenvram_value">
                                                            <sch:rule context="macos-def:nvram_state/macos-def:nvram_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the nvram_value entity of a nvram_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpolicy_test">
                              <sch:rule context="macos-def:pwpolicy_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:pwpolicy_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an pwpolicy_test must reference an pwpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:pwpolicy_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:pwpolicy_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an pwpolicy_test must reference an pwpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="macos-def_pwpobjtargetuser">
                                                                        <sch:rule context="macos-def:pwpolicy_object/macos-def:target_user">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the target_user entity of a pwpolicy_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="macos-def_pwpobjusername">
                                                                        <sch:rule context="macos-def:pwpolicy_object/macos-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of a pwpolicy_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@xsi:nil='true') or ../macos-def:userpass/@xsi:nil='true'">
            <sch:value-of select="../@id"/> - userpass entity must be nil when username entity is nil</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="macos-def_pwpobjuserpass">
                                                                        <sch:rule context="macos-def:pwpolicy_object/macos-def:userpass">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the userpass entity of a pwpolicy_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the userpass entity of a pwpolicy_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                              <sch:assert test="not(@xsi:nil='true') or ../macos-def:username/@xsi:nil='true'">
            <sch:value-of select="../@id"/> - username entity must be nil when userpass entity is nil</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="macos-def_pwpobjdirectory_node">
                                                                        <sch:rule context="macos-def:pwpolicy_object/macos-def:directory_node">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the directory_node entity of a pwpolicy_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="macos-def_pwpstetarget_user">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:target_user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the target_user entity of a pwpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpsteusername">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of a pwpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpsteuserpass">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:userpass">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the userpass entity of a pwpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpstedirectory_node">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:directory_node">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the directory_node entity of a pwpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpstemaxChars">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:maxChars">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the maxChars entity of a pwpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpstemaxFailedLoginAttempts">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:maxFailedLoginAttempts">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the maxFailedLoginAttempts entity of a pwpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpsteminChars">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:minChars">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the minChars entity of a pwpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpstepasswordCannotBeName">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:passwordCannotBeName">
                                                                  <sch:assert test="not(@datatype) or @datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the passwordCannotBeName entity of a pwpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpsterequiresAlpha">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:requiresAlpha">
                                                                  <sch:assert test="not(@datatype) or @datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the requiresAlpha entity of a pwpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="macos-def_pwpsterequiresNumeric">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:requiresNumeric">
                                                                  <sch:assert test="not(@datatype) or @datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the requiresNumeric entity of a pwpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="pixos-def_linetst">
                              <sch:rule context="pixos-def:line_test/pixos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/pixos-def:line_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="pixos-def:line_test/pixos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/pixos-def:line_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="pixos-def_lineobjshow_subcommand">
                                                                        <sch:rule context="pixos-def:line_object/pixos-def:show_subcommand">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="pixos-def_linesteshow_subcommand">
                                                            <sch:rule context="pixos-def:line_state/pixos-def:show_subcommand">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="pixos-def_linesteconfig_line">
                                                            <sch:rule context="pixos-def:line_state/pixos-def:config_line">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the config_line entity of a line_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="pixos-def_vertst">
                              <sch:rule context="pixos-def:version_test/pixos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/pixos-def:version_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="pixos-def:version_test/pixos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/pixos-def:version_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="pixos-def_verstepix_release">
                                                            <sch:rule context="pixos-def:version_state/pixos-def:pix_release">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pix_release entity of a version_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="pixos-def_verstepix_major_release">
                                                            <sch:rule context="pixos-def:version_state/pixos-def:pix_major_release">
                                                                  <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the pix_major_release entity of a version_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="pixos-def_verstepix_minor_release">
                                                            <sch:rule context="pixos-def:version_state/pixos-def:pix_minor_release">
                                                                  <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the pix_minor_release entity of a version_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="pixos-def_verstepix_build">
                                                            <sch:rule context="pixos-def:version_state/pixos-def:pix_build">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the pix_build entity of a version_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webapptst">
                              <sch:rule context="sp-def:spwebapplication_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spwebapplication_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a spwebapplication_test must reference an spwebapplication_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spwebapplication_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spwebapplication_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a spwebapplication_test must reference an spwebapplication_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_webappobjwebapplicationurl">
                                                                        <sch:rule context="sp-def:spwebapplication_object/sp-def:webapplicationurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the webapplicationurl entity of a spwebapplication_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_webappstewebapplicationurl">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:webapplicationurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the webapplicationurl entity of a spwebapplication_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteallowparttopartcommunication">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:allowparttopartcommunication">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the allowparttopartcommunication entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteallowaccesstowebpartcatalog">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:allowaccesstowebpartcatalog">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the allowaccesstowebpartcatalog entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteblockedfileextention">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:blockedfileextention">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the blockedfileextention entity of a spwebapplication_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstedefaultquotatemplate">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:defaultquotatemplate">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the defaultquotatemplate entity of a spwebapplication_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteexternalworkflowparticipantsenabled">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:externalworkflowparticipantsenabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the externalworkflowparticipantsenabled entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsterecyclebinenabled">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:recyclebinenabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the recyclebinenabled entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteautomaticallydeleteunusedsitecollections">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:automaticallydeleteunusedsitecollections">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the automaticallydeleteunusedsitecollections entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteselfservicesitecreationenabled">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:selfservicesitecreationenabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the selfservicesitecreationenabled entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstesecondstagerecyclebinquota">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:secondstagerecyclebinquota">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the secondstagerecyclebinquota entity of a spwebapplication_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsterecyclebinretentionperiod">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:recyclebinretentionperiod">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the recyclebinretentionperiod entity of a spwebapplication_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteoutboundmailserverinstance">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:outboundmailserverinstance">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the outboundmailserverinstance entity of a spwebapplication_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteoutboundmailsenderaddress">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:outboundmailsenderaddress">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for theoutboundmailsenderaddress entity of a spwebapplication_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteoutboundmailreplytoaddress">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:outboundmailreplytoaddress">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the outboundmailreplytoaddress entity of a spwebapplication_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstesecvalexpires">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:secvalexpires">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the secvalexpires entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstetimeout">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:timout">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the timeout entity of a spwebapplication_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_websteisadministrationwebapplication">
                                                            <sch:rule context="sp-def:spwebapplication_item/sp-def:isadministrationwebapplication">
                                                                  <sch:assert test="@datatype='boolean'">item <sch:value-of select="../@id"/> - datatype attribute for the isadministrationwebapplication entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteapplicationpoolname">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:applicationpoolname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the applicationpoolname entity of a spwebapplication_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteapplicationpoolusername">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:applicationpoolusername">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the applicationpoolusername entity of a spwebapplication_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteopenitems">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:openitems">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the openitems entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteaddlistitems">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:addlistitems">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the addlistitems entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteapproveitems">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:approveitems">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the approveitems entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstedeletelistitems">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:deletelistitems">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the deletelistitems entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstedeleteversions">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:deleteversions">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the deleteversions entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteeditlistitems">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:editlistitems">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the editlistitems entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstemanagelists">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:managelists">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the managelists entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteviewversions">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:viewversions">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the viewversions entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteviewlistitems">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:viewlistitems">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the viewlistitems entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstecancelcheckout">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:cancelcheckout">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the cancelcheckout entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstecreatealerts">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:createalerts">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the createalerts entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteviewformpagess">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:viewformpages">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the viewformpages entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteviewpages">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:viewpages">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the viewpages entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteaddandcustomizepages">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:addandcustomizepages">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the addandcustomizepages entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteapplystylesheets">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:applystylesheets">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the applystylesheets entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteapplythemeandborder">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:applythemeandborder">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the applythemeandborder entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstebrowsedirectories">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:browsedirectories">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the browsedirectories entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstebrowseuserinfo">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:browseuserinfo">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the browseuserinfo entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstecreategroups">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:creategroups">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the creategroups entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstecreatesscsite">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:createsscsite">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the createsscsite entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteeditmyuserinfo">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:editmyuserinfo">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the editmyuserinfo entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteenumeratepermissions">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:enumeratepermissions">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the enumeratepermissions entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstemanagealerts">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:managealerts">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the managealerts entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstemanagepermissions">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:managepermissions">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the managepermissions entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstemanagesubwebs">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:managesubwebs">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the managesubwebs entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstemanageweb">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:manageweb">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the manageweb entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteopens">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:open">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the open entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteuseclientintegration">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:useclientintegration">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the useclientintegration entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteuseremoteapis">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:useremoteapis">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the useremoteapis entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteviewusagedata">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:viewusagedata">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the viewusagedata entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappstemanagepersonalviews">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:managepersonalviews">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the managepersonalviews entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteadddelprivatewebparts">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:adddelprivatewebparts">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the adddelprivatewebparts entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webappsteupdatepersonalwebparts">
                                                            <sch:rule context="sp-def:spwebapplication_state/sp-def:updatepersonalwebparts">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the updatepersonalwebparts entity of a spwebapplication_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_grptst">
                              <sch:rule context="sp-def:spgroup_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spgroup_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a spgroup_test must reference a spgroup_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spgroup_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spgroup_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a spgroup_test must reference a spgroup_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_grpobjsitecollectionurl">
                                                                        <sch:rule context="sp-def:spgroup_object/sp-def:sitecollectionurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a spgroup_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_grpstesitecollectionurl">
                                                            <sch:rule context="sp-def:spgroup_state/sp-def:sitecollectionurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a spgroup_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_grpstegname">
                                                            <sch:rule context="sp-def:spgroup_state/sp-def:gname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the gname entity of a spgroup_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_grpsteautoacceptrequesttojoinleave">
                                                            <sch:rule context="sp-def:spgroup_state/sp-def:autoacceptrequesttojoinleave">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the autoacceptrequesttojoinleave entity of a spgroup_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_grpsteallowmemberseditmembership">
                                                            <sch:rule context="sp-def:spgroup_state/sp-def:allowmemberseditmembership">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the autoacceptrequesttojoinleave entity of a spgroup_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_grpsteonlyallowmembersviewmembership">
                                                            <sch:rule context="sp-def:spgroup_state/sp-def:onlyallowmembersviewmembership">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the onlyallowmembersviewmembership entity of a spgroup_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webtst">
                              <sch:rule context="sp-def:spweb_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spweb_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a spweb_test must reference an spweb_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spweb_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spweb_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a spweb_test must reference an spweb_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_webobjwebcollectionurl">
                                                                        <sch:rule context="sp-def:spweb_object/sp-def:webcollectionurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the webcollectionurl entity of a spweb_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_webobjsitecollectionurl">
                                                                        <sch:rule context="sp-def:spweb_object/sp-def:sitecollectionurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a spweb_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_webstewebcollectionurl">
                                                            <sch:rule context="sp-def:spweb_state/sp-def:webcollectionurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the webcollectionurl entity of a spweb_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webstesitecollectionurl">
                                                            <sch:rule context="sp-def:spweb_state/sp-def:sitecollectionurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a spweb_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webstesecondarysitecolladmin">
                                                            <sch:rule context="sp-def:spweb_state/sp-def:secondarysitecolladmin">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the secondarysitecolladmin entity of a spweb_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_webstesecondsitecolladminenabled">
                                                            <sch:rule context="sp-def:spweb_state/sp-def:secondsitecolladminenabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the secondsitecolladminenabled entity of a spweb_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_websteallowanonymousaccess">
                                                            <sch:rule context="sp-def:spweb_state/sp-def:allowanonymousaccess">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the allowanonymousaccess entity of a spweb_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_listtst">
                              <sch:rule context="sp-def:splist_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:splist_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a splist_test must reference an splist_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:splist_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:splist_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a splist_test must reference an splist_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_listobjspsiteurl">
                                                                        <sch:rule context="sp-def:splist_object/sp-def:spsiteurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the spwebsiteurl entity of a splist_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_liststesiteurl">
                                                            <sch:rule context="sp-def:splist_object/sp-def:spsiteurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the spsiteurl entity of a splist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_liststeirmenabled">
                                                            <sch:rule context="sp-def:splist_state/sp-def:irmenabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the irmenabled entity of a splist_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_liststeenableversioning">
                                                            <sch:rule context="sp-def:splist_state/sp-def:enableversioning">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the enableversioning entity of a splist_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_liststenocrawl">
                                                            <sch:rule context="sp-def:splist_state/sp-def:nocrawl">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the nocrawl entity of a splist_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avstst">
                              <sch:rule context="sp-def:spantivirussettings_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spantivirussettings_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a spantivirussettings_test must reference an spantivirussettings_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spantivirussettings_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spantivirussettings_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a spantivirussettings_test must reference an spantivirussettings_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_avsobjwebservicename">
                                                                        <sch:rule context="sp-def:spantivirussettings_object/sp-def:spwebservicename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the spwebservicename entity of a spantivirussettings_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_avsobjfarmname">
                                                                        <sch:rule context="sp-def:spantivirussettings_object/sp-def:spfarmname">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the spfarmname entity of a spantivirussettings_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_avsstewebservicename">
                                                            <sch:rule context="sp-def:spantivirussettings_object/sp-def:spwebservicename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the spwebservicename entity of a spantivirusservice_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avsstespfarmname">
                                                            <sch:rule context="sp-def:spantivirussettings_object/sp-def:spfarmname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the spfarmname entity of a spantivirusservice_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avssteallowdownload">
                                                            <sch:rule context="sp-def:spantivirussettings_state/sp-def:allowdownload">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the allowdownload entity of a spantivirussettings_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avsstecleaningenabled">
                                                            <sch:rule context="sp-def:spantivirussettings_state/sp-def:cleaningenabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the cleaningenabled entity of a spantivirussettings_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avsstedownloadscanenabled">
                                                            <sch:rule context="sp-def:spantivirussettings_state/sp-def:downloadscanenabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the downloadscanenabled entity of a spantivirussettings_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avsstenumberofthreads">
                                                            <sch:rule context="sp-def:spantivirussettings_state/sp-def:numberofthreads">
                                                                  <sch:assert test="@datatype='integer'">
            <sch:value-of select="../@id"/> - datatype attribute for the numberofthreads entity of a spantivirussettings_state should be 'integer'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avssteskipsearchcrawl">
                                                            <sch:rule context="sp-def:spantivirussettings_state/sp-def:skipsearchcrawl">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the skipsearchcrawl entity of a spantivirussettings_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avsstetimeout">
                                                            <sch:rule context="sp-def:spantivirussettings_state/sp-def:timeout">
                                                                  <sch:assert test="@datatype='integer'">
            <sch:value-of select="../@id"/> - datatype attribute for the timeout entity of a spantivirussettings_state should be 'integer'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avssteuploadscanenabled">
                                                            <sch:rule context="sp-def:spantivirussettings_state/sp-def:uploadscanenabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the uploadscanenabled entity of a spantivirussettings_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_avsstevendorupdatecount">
                                                            <sch:rule context="sp-def:spantivirussettings_state/sp-def:vendorupdatecount">
                                                                  <sch:assert test="@datatype='integer'">
            <sch:value-of select="../@id"/> - datatype attribute for the vendorupdatecount entity of a spantivirussettings_state should be 'integer'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_siteadmintst">
                              <sch:rule context="sp-def:spsiteadministration_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spsiteadministration_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a spsiteadministration_test must reference an spsiteadministration_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spsiteadministration_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spsiteadministration_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a spsiteadministration_test must reference an spsiteadministration_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_siteadminobjsitecollectionurl">
                                                                        <sch:rule context="sp-def:spsiteadministration_object/sp-def:sitecollectionurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a spsiteadministration_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_siteadminstesitecollectionurl">
                                                            <sch:rule context="sp-def:spsiteadministration_state/sp-def:sitecollectionurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a spsiteadministration_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_siteadminstestoragemaxlevel">
                                                            <sch:rule context="sp-def:spsiteadministration_state/sp-def:storagemaxlevel">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for thestoragemaxlevel entity of a spsiteadministration_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_siteadminstestoragewarninglevel">
                                                            <sch:rule context="sp-def:spsiteadministration_state/sp-def:storagewarninglevel">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the storagewarninglevel entity of a spsiteadministration_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_sitetst">
                              <sch:rule context="sp-def:spsite_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spsite_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a spsite_test must reference an spsite_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spsite_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spsite_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a spsite_test must reference an spsite_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_siteobjsitecollectionurl">
                                                                        <sch:rule context="sp-def:spsite_object/sp-def:sitecollectionurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a spsite_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_sitestesitecollectionurl">
                                                            <sch:rule context="sp-def:spsite_state/sp-def:sitecollectionurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a spsite_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_sitestequotaname">
                                                            <sch:rule context="sp-def:spsite_state/sp-def:quotaname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the quotaname entity of a spsite_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_sitesteurl">
                                                            <sch:rule context="sp-def:spsite_state/sp-def:url">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the url entity of a spsite_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_crtst">
                              <sch:rule context="sp-def:spcrawlrule_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spcrawlrule_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a spcrawlrule_test must reference an spcrawlrule_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spcrawlrule_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spcrawlrule_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a spcrawlrule_test must reference an spcrawlrule_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_crobjsiteurl">
                                                                        <sch:rule context="sp-def:spcrawlrule_object/sp-def:spsiteurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the spsiteurl entity of a spcrawlrule_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_crstespsiteurl">
                                                            <sch:rule context="sp-def:spcrawlrule_state/sp-def:spsiteurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the spsiteurl entity of a spcrawlrule_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_crstecrawlashttp">
                                                            <sch:rule context="sp-def:spcrawlrule_state/sp-def:crawlashttp">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the crawlashttp entity of a spcrawlrule_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_crsteenabled">
                                                            <sch:rule context="sp-def:spcrawlrule_state/sp-def:enabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the enabled entity of a spcrawlrule_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_crstefollowcomplexurls">
                                                            <sch:rule context="sp-def:spcrawlrule_state/sp-def:followcomplexurls">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the followcomplexurls entity of a spcrawlrule_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_crstepath">
                                                            <sch:rule context="sp-def:spcrawlrule_state/sp-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a spcrawlrule_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_crstepriority">
                                                            <sch:rule context="sp-def:spcrawlrule_state/sp-def:priority">
                                                                  <sch:assert test="@datatype='integer'">
            <sch:value-of select="../@id"/> - datatype attribute for the priority entity of a spcrawlrule_state should be 'integer'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_crstesuppressindexing">
                                                            <sch:rule context="sp-def:spcrawlrule_state/sp-def:suppressindexing">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the suppressindexing entity of a spcrawlrule_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_crsteaccountname">
                                                            <sch:rule context="sp-def:spcrawlrule_state/sp-def:accountname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the accountname entity of a spcrawlrule_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_jobdeftst">
                              <sch:rule context="sp-def:spjobdefinition_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spjobdefinition_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a spjobdefinition_test must reference an spjobdefinition_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spjobdefinition_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spjobdefinition_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a spjobdefinition_test must reference an spjobdefinition_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_jobdefobjwebappuri">
                                                                        <sch:rule context="sp-def:spjobdefinition_object/sp-def:webappuri">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the webappuri entity of a spjobdefinition_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_jobdefstewebappuri">
                                                            <sch:rule context="sp-def:spjobdefinition_state/sp-def:webappuri">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the webappuri entity of a spjobdefinition_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_jobdefstedisplayname">
                                                            <sch:rule context="sp-def:spjobdefinition_state/sp-def:displayname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the displayname entity of a spjobdefinition_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_jobdefsteisdisabled">
                                                            <sch:rule context="sp-def:spjobdefinition_state/sp-def:isdisabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the isdisabled entity of a spjobdefinition_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_jobdefsteretry">
                                                            <sch:rule context="sp-def:spjobdefinition_state/sp-def:retry">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the retry entity of a spjobdefinition_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_jobdefstetitle">
                                                            <sch:rule context="sp-def:spjobdefinition_state/sp-def:title">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the title entity of a spjobdefinition_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_bbtst">
                              <sch:rule context="sp-def:bestbet_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:bestbet_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a bestbet_test must reference an bestbet_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:bestbet_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:bestbet_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a bestbet_test must reference an bestbet_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_bbobjsitecollectionurl">
                                                                        <sch:rule context="sp-def:bestbet_object/sp-def:sitecollectionurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a bestbet_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_bbobjbestbeturl">
                                                                        <sch:rule context="sp-def:bestbet_object/sp-def:bestbeturl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the bestbeturl entity of a bestbet_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_bbstesitecollectionurl">
                                                            <sch:rule context="sp-def:bestbet_state/sp-def:sitecollectionurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a bestbet_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_bbstebestbeturl">
                                                            <sch:rule context="sp-def:bestbet_state/sp-def:bestbeturl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the bestbeturl entity of a bestbet_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_bbstetitle">
                                                            <sch:rule context="sp-def:bestbet_state/sp-def:title">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the title entity of a bestbet_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_bbstedescription">
                                                            <sch:rule context="sp-def:bestbet_state/sp-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the description entity of a bestbet_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_infopolicycolltst">
                              <sch:rule context="sp-def:policycoll_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:policycoll_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a policycoll_test must reference an policycoll_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:policycoll_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:policycoll_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a policycoll_test must reference an policycoll_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_infopolicycollobjsitecollectionurl">
                                                                        <sch:rule context="sp-def:infopolicycoll_object/sp-def:sitecollectionurl">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:name/> entity of a <sch:name path=".."/> should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_infopolicycollobjid">
                                                                        <sch:rule context="sp-def:infopolicycoll_object/sp-def:id">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the id entity of a infopolicycoll_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sp-def_infopolicycollstesitecollectionurl">
                                                            <sch:rule context="sp-def:infopolicycoll_state/sp-def:sitecollectionurl">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sitecollectionurl entity of a infopolicycoll_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_infopolicycollsteid">
                                                            <sch:rule context="sp-def:infopolicycoll_state/sp-def:id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the id entity of a infopolicycoll_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_infopolicycollstename">
                                                            <sch:rule context="sp-def:infopolicycoll_state/sp-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a infopolicycoll_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_infopolicycollstedescription">
                                                            <sch:rule context="sp-def:infopolicycoll_state/sp-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the description entity of a infopolicycoll_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_infopolicycollstelongdescription">
                                                            <sch:rule context="sp-def:infopolicycoll_state/sp-def:longdescription">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the longdescription entity of a infopolicycoll_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_diagnosticsservicetest">
                              <sch:rule context="sp-def:spdiagnosticsservice_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spdiagnosticsservice_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an spdiagnosticsservice_test must reference an spdiagnosticsservice_object</sch:assert> 
                              </sch:rule>
                              <sch:rule context="sp-def:spdiagnosticsservice_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spdiagnosticsservice_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an spdiagnosticsservice_test must reference an spdiagnosticsservice_state</sch:assert> 
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_dsobjfarmname">
                                                                  <sch:rule context="sp-def:spdiagnosticsservice_object/sp-def:farmname">
                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the farmname entity of an spdiagnosticsservice_object should be 'string'</sch:assert> 
                                                                  </sch:rule>
                                                            </sch:pattern>
   <sch:pattern id="sp-def_dsstefarmname">
                                                            <sch:rule context="sp-def:spdiagnosticsservice_state/sp-def:farmname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the farmname entity of an spdiagnosticsservice_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dsstedisplayname">
                                                            <sch:rule context="sp-def:spdiagnosticsservice_state/sp-def:displayname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the displayname entity of an spdiagnosticsservice_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dsstelogcutinterval">
                                                            <sch:rule context="sp-def:spdiagnosticsservice_state/sp-def:logcutinterval">
                                                                  <sch:assert test="@datatype='integer'">
            <sch:value-of select="../@id"/> - datatype attribute for the logcutinterval entity of an spdiagnosticsservice_state should be 'integer'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dssteloglocation">
                                                            <sch:rule context="sp-def:spdiagnosticsservice_state/sp-def:loglocation">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the loglocation entity of an spdiagnosticsservice_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dsstelogstokeep">
                                                            <sch:rule context="sp-def:spdiagnosticsservice_state/sp-def:logstokeep">
                                                                  <sch:assert test="@datatype='integer'">
            <sch:value-of select="../@id"/> - datatype attribute for the logstokeep entity of an spdiagnosticsservice_state should be 'integer'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dssterequired">
                                                            <sch:rule context="sp-def:spdiagnosticsservice_state/sp-def:required">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the required entity of an spdiagnosticsservice_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dsstetypename">
                                                            <sch:rule context="sp-def:spdiagnosticsservice_state/sp-def:typename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the typename entity of an spdiagnosticsservice_state should be 'string'</sch:assert>  
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_diagnostics_level_test">
                              <sch:rule context="sp-def:spdiagnosticslevel_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spdiagnosticslevel_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an spdiagnosticslevel_test must reference an spdiagnosticslevel_object</sch:assert>  
                              </sch:rule>
                              <sch:rule context="sp-def:spdiagnosticslevel_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spdiagnosticslevel_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an spdiagnosticslevel_test must reference an spdiagnosticslevel_state</sch:assert> 
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sp-def_dlobjfarmname">
                                                                  <sch:rule context="sp-def:spdiagnosticslevel_object/sp-def:farmname">
                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the farmname entity of an spdiagnosticslevel_object should be 'string'</sch:assert>  
                                                                  </sch:rule>
                                                            </sch:pattern>
   <sch:pattern id="sp-def_dlstefarmname">
                                                            <sch:rule context="sp-def:spdiagnosticslevel_state/sp-def:farmname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the farmname entity of an spdiagnosticslevel_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dlsteeventseverity">
                                                            <sch:rule context="spdiagnosticslevel_state/sp-def:eventseverity">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the eventseverity entity of an spdiagnosticslevel_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dlstehidden">
                                                            <sch:rule context="sp-def:spdiagnosticslevel_state/sp-def:hidden">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the hidden entity of an spdiagnosticslevel_state should be 'boolean'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dlstelevelid">
                                                            <sch:rule context="sp-def:spdiagnosticslevel_state/sp-def:levelid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the levelid entity of an spdiagnosticslevel_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dlstelevelname">
                                                            <sch:rule context="sp-def:spdiagnosticslevel_state/sp-def:levelname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the levelname entity of an spdiagnosticslevel_state should be 'string'</sch:assert>  
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_dlstetraceseverity">
                                                            <sch:rule context="sp-def:spdiagnosticslevel_state/sp-def:traceseverity">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the traceseverity entity of an spdiagnosticslevel_state should be 'string'</sch:assert>  
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_policyfeature_test">
                              <sch:rule context="sp-def:sppolicyfeature_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:sppolicyfeature_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an sppolicyfeature_test must reference an sppolicyfeature_object</sch:assert> 
                              </sch:rule>
                              <sch:rule context="sp-def:sppolicyfeature_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:sppolicyfeature_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an sppolicyfeature_test must reference an sppolicyfeature_state</sch:assert> 
                              </sch:rule> 
                        </sch:pattern>
   <sch:pattern id="sp-def_pfobjfarmname">
                                                                  <sch:rule context="sp-def:sppolicyfeature_object/sp-def:farmname">
                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the farmname entity of an sppolicyfeature_object should be 'string'</sch:assert> 
                                                                  </sch:rule>
                                                            </sch:pattern>
   <sch:pattern id="sp-def_pfstefarmname">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:farmname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the farmname entity of an sppolicyfeature_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfsteconfigpage">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:configpage">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the configpage entity of an sppolicyfeature_state should be 'string'</sch:assert>  
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfstedefaultcustomdata">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:defaultcustomdata">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the defaultcustomdata entity of an sppolicyfeature_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfstedescription">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the description entity of an sppolicyfeature_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfsteglobalconfigpage">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:globalconfigpage">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the globalconfigpage entity of an sppolicyfeature_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfsteglobalcustomdata">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:globalcustomdata">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the globalconfigpage entity of an sppolicyfeature_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfstegroup">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:group">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group entity of an sppolicyfeature_state should be 'string'</sch:assert>  
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfstename">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of an sppolicyfeature_state should be 'string'</sch:assert>  
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfstepublisher">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:publisher">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the publisher entity of an sppolicyfeature_state should be 'string'</sch:assert>  
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_pfstestate">
                                                            <sch:rule context="sp-def:sppolicyfeature_state/sp-def:state">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the state entity of an sppolicyfeature_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_policy_test">
                              <sch:rule context="sp-def:sppolicy_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:sppolicy_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an sppolicy_test must reference an sppolicy_object</sch:assert> 
                              </sch:rule>
                              <sch:rule context="sp-def:sppolicy_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:sppolicy_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an sppolicy_test must reference an sppolicy_state</sch:assert> 
                              </sch:rule>  
                        </sch:pattern>
   <sch:pattern id="sp-def_policyobjwebappuri">
                                                                  <sch:rule context="sp-def:sppolicy_object/sp-def:webappuri">
                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the webappuri entity of an sppolicy_object should be 'string'</sch:assert> 
                                                                  </sch:rule>
                                                            </sch:pattern>
   <sch:pattern id="sp-def_policyobjurlzone">
                                                            <sch:rule context="sp-def:sppolicy_object/sp-def:urlzone">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the urlzone entity of an sppolicy_object should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_policystewebappuri">
                                                            <sch:rule context="sp-def:sppolicy_state/sp-def:webappuri">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the webappuri entity of an sppolicy_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_policysteurlzone">
                                                            <sch:rule context="sp-def:sppolicy_state/sp-def:urlzone">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the urlzone entity of an sppolicy_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_policystedisplayname">
                                                            <sch:rule context="sp-def:sppolicy_state/sp-def:displayname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the displayname entity of an sppolicy_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_policysteissystemuser">
                                                            <sch:rule context="sp-def:sppolicy_state/sp-def:issystemuser">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the issystemuser entity of an sppolicy_state should be 'boolean'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_policysteusername">
                                                            <sch:rule context="sp-def:sppolicy_state/sp-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of an sppolicy_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sp-def_policystepolicyroletype">
                                                            <sch:rule context="sp-def:sppolicyrole_state/sp-def:policyroletype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the policyroletype entity of an sppolicyrole_state should be 'string'</sch:assert> 
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_isainfotst">
                              <sch:rule context="sol-def:isainfo_test/sol-def:object">
                                  <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:isainfo_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of an isainfo_test must reference an isainfo_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:isainfo_test/sol-def:state">
                                  <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:isainfo_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of an isainfo_test must reference an isainfo_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sol-def_isastebits">
                                                            <sch:rule context="sol-def:isainfo_state/sol-def:bits">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the bits entity of an isainfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_isastekernel_isa">
                                                            <sch:rule context="sol-def:isainfo_state/sol-def:kernel_isa">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the kernel_isa entity of an isainfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_isasteapplication_isa">
                                                            <sch:rule context="sol-def:isainfo_state/sol-def:application_isa">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the application_isa entity of an isainfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_packagetst">
                              <sch:rule context="sol-def:package_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:package_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a package_test must reference a package_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:package_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:package_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a package_test must reference a package_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sol-def_packageobjpkginst">
                                                                        <sch:rule context="sol-def:package_object/sol-def:pkginst">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a package_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sol-def_packagestepkginst">
                                                            <sch:rule context="sol-def:package_state/sol-def:pkginst">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_packagestename">
                                                            <sch:rule context="sol-def:package_state/sol-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_packagestecategory">
                                                            <sch:rule context="sol-def:package_state/sol-def:category">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the category entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_packagesteversion">
                                                            <sch:rule context="sol-def:package_state/sol-def:version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_packagestevendor">
                                                            <sch:rule context="sol-def:package_state/sol-def:vendor">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_packagestedescription">
                                                            <sch:rule context="sol-def:package_state/sol-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the description entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_patch54tst">
                              <sch:rule context="sol-def:patch54_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:patch54_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a patch54_test must reference a patch54_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:patch54_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:patch_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a patch54_test must reference a patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sol-def_patchtst_dep">
                              <sch:rule context="sol-def:patch_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sol-def_patchtst">
                              <sch:rule context="sol-def:patch_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:patch_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a patch_test must reference a patch_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:patch_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:patch_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a patch_test must reference a patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sol-def_patch54objbase">
                                                                        <sch:rule context="sol-def:patch54_object/sol-def:base">
                                                                              <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the base entity of a patch54_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sol-def_patch54objversion">
                                                                        <sch:rule context="sol-def:patch54_object/sol-def:version">
                                                                              <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a patch54_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sol-def_patchobj_dep">
                              <sch:rule context="sol-def:patch_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sol-def_patchobjbase">
                                                                        <sch:rule context="sol-def:patch_object/sol-def:base">
                                                                              <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the base entity of a patch_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sol-def_patchstebase">
                                                            <sch:rule context="sol-def:patch_state/sol-def:base">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the base entity of a patch_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_patchsteversion">
                                                            <sch:rule context="sol-def:patch_state/sol-def:version">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a patch_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_smftst">
                              <sch:rule context="sol-def:smf_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:smf_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a smf_test must reference a smf_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:smf_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:smf_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a smf_test must reference a smf_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="sol-def_fmriobjbase">
                                                                        <sch:rule context="sol-def:smf_object/sol-def:fmri">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the fmri entity of a smf_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="sol-def_fmristebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:fmri">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the fmri entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_srvnamestebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:service_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_srvstatestebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:service_state">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_state entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_protocolstebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_srvexestebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:server_executable">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the server_executable entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_srvargsstebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:server_arguements">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the server_arguements entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="sol-def_execasuserstebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:exec_as_user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the exec_as_user entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_dnscachetst">
                              <sch:rule context="unix-def:dnscache_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:dnscache_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a dnscache_test must reference a dnscache_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:dnscache_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:dnscache_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a dnscache_test must reference a dnscache_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_dnscacheobjdomainname">
                                                                        <sch:rule context="unix-def:dnscache_object/unix-def:domain_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the domain_name entity of a dnscache_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_dnscachestedomainname">
                                                            <sch:rule context="unix-def:dnscache_state/unix-def:domain_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the domain_name entity of a dnscache_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_dnscachestettl">
                                                            <sch:rule context="unix-def:dnscache_state/unix-def:ttl">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the ttl entity of a dnscache_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_dnscachesteipaddress">
                                                            <sch:rule context="unix-def:dnscache_state/unix-def:ip_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ip_address entity of a dnscache_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filetst">
                              <sch:rule context="unix-def:file_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:file_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a file_test must reference a file_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:file_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:file_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a file_test must reference a file_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_fileobjfilepath">
                                                                                    <sch:rule context="unix-def:file_object/unix-def:filepath">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a file_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="not(preceding-sibling::unix-def:behaviors[@max_depth or @recurse or @recurse_direction or @recurse_file_system])">
            <sch:value-of select="../@id"/> - the max_depth, recurse, recurse_direction and recurse_file_system behaviors are not allowed with a filepath entity</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="unix-def_fileobjpath">
                                                                                  <sch:rule context="unix-def:file_object/unix-def:path">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="unix-def_fileobjfilename">
                                                                                  <sch:rule context="unix-def:file_object/unix-def:filename">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="unix-def_filestefilepath">
                                                            <sch:rule context="unix-def:file_state/unix-def:filepath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestepath">
                                                            <sch:rule context="unix-def:file_state/unix-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestefilename">
                                                            <sch:rule context="unix-def:file_state/unix-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestetype">
                                                            <sch:rule context="unix-def:file_state/unix-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the type entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestegroup_id">
                                                            <sch:rule context="unix-def:file_state/unix-def:group_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group_id entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filesteuser_id">
                                                            <sch:rule context="unix-def:file_state/unix-def:user_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestea_time">
                                                            <sch:rule context="unix-def:file_state/unix-def:a_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the a_time entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestec_time">
                                                            <sch:rule context="unix-def:file_state/unix-def:c_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the c_time entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestem_time">
                                                            <sch:rule context="unix-def:file_state/unix-def:m_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the m_time entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestesize">
                                                            <sch:rule context="unix-def:file_state/unix-def:size">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the size entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestesuid">
                                                            <sch:rule context="unix-def:file_state/unix-def:suid">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the suid entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestesgid">
                                                            <sch:rule context="unix-def:file_state/unix-def:sgid">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sgid entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestesticky">
                                                            <sch:rule context="unix-def:file_state/unix-def:sticky">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sticky entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filesteuread">
                                                            <sch:rule context="unix-def:file_state/unix-def:uread">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the uread entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filesteuwrite">
                                                            <sch:rule context="unix-def:file_state/unix-def:uwrite">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the uwrite entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filesteuexec">
                                                            <sch:rule context="unix-def:file_state/unix-def:uexec">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the uexec entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestegread">
                                                            <sch:rule context="unix-def:file_state/unix-def:gread">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the gread entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestegwrite">
                                                            <sch:rule context="unix-def:file_state/unix-def:gwrite">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the gwrite entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestegexec">
                                                            <sch:rule context="unix-def:file_state/unix-def:gexec">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the gexec entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filesteoread">
                                                            <sch:rule context="unix-def:file_state/unix-def:oread">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the oread entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filesteowrite">
                                                            <sch:rule context="unix-def:file_state/unix-def:owrite">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the owrite entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filesteoexec">
                                                            <sch:rule context="unix-def:file_state/unix-def:oexec">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the oexec entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_filestehasextendedacl">
                                                            <sch:rule context="unix-def:file_state/unix-def:has_extended_acl">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the has_extended_acl entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_recurse_value_file_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/unix-def:file_object/unix-def:behaviors">
                                          <sch:report test="@recurse='files'">DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/>
         </sch:report>
                                          <sch:report test="@recurse='files and directories'">DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/>
         </sch:report>
                                          <sch:report test="@recurse='none'"> DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/>
         </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="unix-def_inetdtst">
                              <sch:rule context="unix-def:inetd_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:inetd_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an inetd_test must reference an inetd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:inetd_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:inetd_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an inetd_test must reference an inetd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_inetdobjprotocol">
                                                                        <sch:rule context="unix-def:inetd_object/unix-def:protocol">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetd_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_inetdobjservice_name">
                                                                        <sch:rule context="unix-def:inetd_object/unix-def:service_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an inetd_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_inetdsteprotocol">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_inetdsteservice_name">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:service_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_inetdsteserver_program">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:server_program">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the server_program entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_inetdsteserver_arguments">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:server_arguments">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the server_arguments entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_inetdsteendpoint_type">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:endpoint_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the endpoint_type entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_inetdsteexec_as_user">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:exec_as_user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the exec_as_user entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_inetdstewait_status">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:wait_status">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the wait_status entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_interfacetst">
                              <sch:rule context="unix-def:interface_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:interface_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:interface_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:interface_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_interfaceobjname">
                                                                        <sch:rule context="unix-def:interface_object/unix-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_interfacestename">
                                                            <sch:rule context="unix-def:interface_state/unix-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_interfacestetype">
                                                            <sch:rule context="unix-def:interface_state/unix-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the type entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_interfacestehardware_addr">
                                                            <sch:rule context="unix-def:interface_state/unix-def:hardware_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hardware_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_interfacesteinet_addr">
                                                            <sch:rule context="unix-def:interface_state/unix-def:inet_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the inet_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_interfacestebroadcast_addr">
                                                            <sch:rule context="unix-def:interface_state/unix-def:broadcast_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the broadcast_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_interfacestenetmask">
                                                            <sch:rule context="unix-def:interface_state/unix-def:netmask">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the netmask entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_interfacesteflag">
                                                            <sch:rule context="unix-def:interface_state/unix-def:flag">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for a flag entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_passwordtst">
                              <sch:rule context="unix-def:password_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:password_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a password_test must reference a password_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:password_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:password_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a password_test must reference a password_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_passwordobjusername">
                                                                        <sch:rule context="unix-def:password_object/unix-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of a password_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_passwordsteusername">
                                                            <sch:rule context="unix-def:password_state/unix-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_passwordstepassword">
                                                            <sch:rule context="unix-def:password_state/unix-def:password">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the password entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_passwordsteuser_id">
                                                            <sch:rule context="unix-def:password_state/unix-def:user_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_passwordstegroup_id">
                                                            <sch:rule context="unix-def:password_state/unix-def:group_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group_id entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_passwordstegcos">
                                                            <sch:rule context="unix-def:password_state/unix-def:gcos">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the gcos entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_passwordstehome_dir">
                                                            <sch:rule context="unix-def:password_state/unix-def:home_dir">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the home_dir entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_passwordstelogin_shell">
                                                            <sch:rule context="unix-def:password_state/unix-def:login_shell">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the login_shell entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processtst">
                              <sch:rule context="unix-def:process_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:process_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a process_test must reference a process_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:process_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:process_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a process_test must reference a process_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_processobjcommand">
                                                                        <sch:rule context="unix-def:process_object/unix-def:command">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the command entity of a process_object be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_processstecommand">
                                                            <sch:rule context="unix-def:process_state/unix-def:command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the command entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processsteexec_time">
                                                            <sch:rule context="unix-def:process_state/unix-def:exec_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the exec_time entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processstepid">
                                                            <sch:rule context="unix-def:process_state/unix-def:pid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the pid entity of a process_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processsteppid">
                                                            <sch:rule context="unix-def:process_state/unix-def:ppid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the ppid entity of a process_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processstepriority">
                                                            <sch:rule context="unix-def:process_state/unix-def:priority">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the priority entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processstescheduling_class">
                                                            <sch:rule context="unix-def:process_state/unix-def:scheduling_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the scheduling_class entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processstestart_time">
                                                            <sch:rule context="unix-def:process_state/unix-def:start_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the start_time entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processstetty">
                                                            <sch:rule context="unix-def:process_state/unix-def:tty">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the tty entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_processsteuser_id">
                                                            <sch:rule context="unix-def:process_state/unix-def:user_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_runleveltst">
                              <sch:rule context="unix-def:runlevel_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:runlevel_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a runlevel_test must reference a runlevel_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:runlevel_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:runlevel_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a runlevel_test must reference a runlevel_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_rlobjservice_name">
                                                                        <sch:rule context="unix-def:runlevel_object/unix-def:service_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a runlevel_object be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_rlobjrunlevel">
                                                                        <sch:rule context="unix-def:runlevel_object/unix-def:runlevel">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the runlevel entity of a runlevel_object be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_rlsteservice_name">
                                                            <sch:rule context="unix-def:runlevel_state/unix-def:service_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a runlevel_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_rlsterunlevel">
                                                            <sch:rule context="unix-def:runlevel_state/unix-def:runlevel">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the runlevel entity of a runlevel_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_rlstestart">
                                                            <sch:rule context="unix-def:runlevel_state/unix-def:start">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the start entity of a runlevel_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_rlstekill">
                                                            <sch:rule context="unix-def:runlevel_state/unix-def:kill">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the kill entity of a runlevel_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccstst">
                              <sch:rule context="unix-def:sccs_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:sccs_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a sccs_test must reference a sccs_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:sccs_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:sccs_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a sccs_test must reference a sccs_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_sccsobjfilepath">
                                                                                    <sch:rule context="unix-def:sccs_object/unix-def:filepath">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a sccs_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="not(preceding-sibling::unix-def:behaviors[@max_depth or @recurse or @recurse_direction or @recurse_file_system])">
            <sch:value-of select="../@id"/> - the max_depth, recurse, recurse_direction and recurse_file_system behaviors are not allowed with a filepath entity</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="unix-def_sccsobjpath">
                                                                                  <sch:rule context="unix-def:sccs_object/unix-def:path">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a sccs_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="unix-def_sccsobjfilename">
                                                                                  <sch:rule context="unix-def:sccs_object/unix-def:filename">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a sccs_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="unix-def_sccsstefilepath">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:filepath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccsstepath">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccsstefilename">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccsstemodule_name">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:module_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the module_name entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccsstemodule_type">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:module_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the module_type entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccssterelease">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:release">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the release entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccsstelevel">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:level">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the level entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccsstebranch">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:branch">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the branch entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccsstesequence">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:sequence">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sequence entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_sccsstewhat_string">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:what_string">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the what_string entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_recurse_value_sccs_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/unix-def:sccs_object/unix-def:behaviors">
                                          <sch:report test="@recurse='files'">DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/>
         </sch:report>
                                          <sch:report test="@recurse='files and directories'">DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/>
         </sch:report>
                                          <sch:report test="@recurse='none'"> DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/>
         </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="unix-def_shadowtst">
                              <sch:rule context="unix-def:shadow_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:shadow_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a shadow_test must reference a shadow_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:shadow_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:shadow_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a shadow_test must reference a shadow_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_shadowobjusername">
                                                                        <sch:rule context="unix-def:shadow_object/unix-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of a shadow_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_shadowsteusername">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the username entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_shadowstepassword">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:password">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the password entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_shadowstechg_lst">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:chg_lst">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the chg_lst entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_shadowstechg_allow">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:chg_allow">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the chg_allow entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_shadowstechg_req">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:chg_req">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the chg_req entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_shadowsteexp_warn">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:exp_warn">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the exp_warn entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_shadowsteexp_inact">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:exp_inact">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the exp_inact entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_shadowsteexp_date">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:exp_date">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the exp_date entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_shadowsteflag">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:flag">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the flag entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_unametst">
                              <sch:rule context="unix-def:uname_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:uname_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a uname_test must reference a uname_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:uname_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:uname_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a uname_test must reference a uname_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_unamestemachine_class">
                                                            <sch:rule context="unix-def:uname_state/unix-def:machine_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the machine_class entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_unamestenode_name">
                                                            <sch:rule context="unix-def:uname_state/unix-def:node_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the node_name entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_unamesteos_name">
                                                            <sch:rule context="unix-def:uname_state/unix-def:os_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the os_name entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_unamesteos_release">
                                                            <sch:rule context="unix-def:uname_state/unix-def:os_release">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the os_release entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_unamesteos_version">
                                                            <sch:rule context="unix-def:uname_state/unix-def:os_version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the os_version entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_unamesteprocessor_type">
                                                            <sch:rule context="unix-def:uname_state/unix-def:processor_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the processor_type entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdtst">
                              <sch:rule context="unix-def:xinetd_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:xinetd_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a xinetd_test must reference a xinetd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:xinetd_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:xinetd_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a xinetd_test must reference a xinetd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="unix-def_xinetdobjprotocol">
                                                                        <sch:rule context="unix-def:xinetd_object/unix-def:protocol">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an xinetd_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_xinetdobjservice_name">
                                                                        <sch:rule context="unix-def:xinetd_object/unix-def:service_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an xinetd_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="unix-def_xinetdsteprotocol">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdsteservice_name">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:service_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdsteflags">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:flags">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the flags entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdstenoaccess">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:no_access">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the no_access entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdsteonlyfrom">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:only_from">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the only_from entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdsteport">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:port">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the port entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdsteserver">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:server">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the server entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdsteserverarguments">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:server_arguments">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the server_arguments entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdstesockettype">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:socket_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the socket_type entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdstetype">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the type entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdsteuser">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdstewait">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:wait">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the wait entity of an xinetd_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="unix-def_xinetdstedisabled">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:disabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the disabled entity of an xinetd_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_affected_platform">
                        <sch:rule context="oval-def:affected[@family='windows']">
                              <sch:assert test="not(oval-def:platform) or oval-def:platform='Microsoft Windows 95' or oval-def:platform='Microsoft Windows 98' or oval-def:platform='Microsoft Windows ME' or oval-def:platform='Microsoft Windows NT' or oval-def:platform='Microsoft Windows 2000' or oval-def:platform='Microsoft Windows XP' or oval-def:platform='Microsoft Windows Server 2003' or oval-def:platform='Microsoft Windows Vista' or oval-def:platform='Microsoft Windows Server 2008' or oval-def:platform='Microsoft Windows 7' or oval-def:platform='Microsoft Windows Server 2008 R2' or oval-def:platform='Microsoft Windows 8' or oval-def:platform='Microsoft Windows Server 2012' or oval-def:platform='Microsoft Windows 8.1' or oval-def:platform='Microsoft Windows Server 2012 R2' or oval-def:platform='Microsoft Windows 10' or oval-def:platform='Microsoft Windows Server 2016'">
                                    <sch:value-of select="../../@id"/> - the value "<sch:value-of select="oval-def:platform"/>" found in platform element as part of the affected element is not a valid windows platform.</sch:assert>
                        </sch:rule>
                  </sch:pattern>
   <sch:pattern id="win-def_attst">
                              <sch:rule context="win-def:accesstoken_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an accesstoken_test must reference an accesstoken_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:accesstoken_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:accesstoken_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an accesstoken_test must reference an accesstoken_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_atobjsecurity_principle">
                                                                        <sch:rule context="win-def:accesstoken_object/win-def:security_principle">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the security_principle entity of an accesstoken_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_atstesecurity_principle">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:security_principle">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the security_principle entity of an accesstoken_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseassignprimarytokenprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seassignprimarytokenprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seassignprimarytokenprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseauditprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seauditprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seauditprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesebackupprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sebackupprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sebackupprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesechangenotifyprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sechangenotifyprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sechangenotifyprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesecreateglobalprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreateglobalprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the secreateglobalprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesecreatepagefileprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreatepagefileprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the secreatepagefileprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesecreatepermanentprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreatepermanentprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the secreatepermanentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesecreatesymboliclinkprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreatesymboliclinkprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the secreatesymboliclinkprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesecreatetokenprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreatetokenprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the secreatetokenprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesedebugprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedebugprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sedebugprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseenabledelegationprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seenabledelegationprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seenabledelegationprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseimpersonateprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seimpersonateprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seimpersonateprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseincreasebasepriorityprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seincreasebasepriorityprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seincreasebasepriorityprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseincreasequotaprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seincreasequotaprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seincreasequotaprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseincreaseworkingsetprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seincreaseworkingsetprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seincreaseworkingsetprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseloaddriverprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seloaddriverprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seloaddriverprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteselockmemoryprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:selockmemoryprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the selockmemoryprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesemachineaccountprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:semachineaccountprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the semachineaccountprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesemanagevolumeprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:semanagevolumeprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the semanagevolumeprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseprofilesingleprocessprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seprofilesingleprocessprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seprofilesingleprocessprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteserelabelprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:serelabelprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the serelabelprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseremoteshutdownprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seremoteshutdownprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seremoteshutdownprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteserestoreprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:serestoreprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the serestoreprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesesecurityprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesecurityprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sesecurityprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseshutdownprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seshutdownprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seshutdownprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesesyncagentprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesyncagentprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sesyncagentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesesystemenvironmentprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesystemenvironmentprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sesystemenvironmentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesesystemprofileprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesystemprofileprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sesystemprofileprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesesystemtimeprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesystemtimeprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sesystemtimeprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesetakeownershipprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:setakeownershipprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the setakeownershipprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesetcbprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:setcbprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the setcbprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesetimezoneprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:setimezoneprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the setimezoneprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseundockprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seundockprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seundockprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseunsolicitedinputprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seunsolicitedinputprivilege">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seunsolicitedinputprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesebatchlogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sebatchlogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sebatchlogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseinteractivelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seinteractivelogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesenetworklogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:senetworklogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the senetworklogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseremoteinteractivelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seremoteinteractivelogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seremoteinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atsteseservicelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seservicelogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the seservicelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesedenybatchLogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenybatchLogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sedenybatchLogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesedenyinteractivelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenyinteractivelogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sedenyinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesedenynetworklogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenynetworklogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sedenynetworklogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesedenyremoteInteractivelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenyremoteInteractivelogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sedenyremoteInteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_atstesedenyservicelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenyservicelogonright">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the sedenyservicelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_at_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: win-def:accesstoken_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_activedirectory_test_dep">
                              <sch:rule context="win-def:activedirectory_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_adtst">
                              <sch:rule context="win-def:activedirectory_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:activedirectory_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an activedirectory_test must reference an activedirectory_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:activedirectory_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:activedirectory_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an activedirectory_test must reference an activedirectory_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_activedirectory_object_dep">
                              <sch:rule context="win-def:activedirectory_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_adobjnaming_context">
                                                                        <sch:rule context="win-def:activedirectory_object/win-def:naming_context">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the naming_context entity of an activedirectory_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_adobjrelative_dn">
                                                                        <sch:rule context="win-def:activedirectory_object/win-def:relative_dn">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an activedirectory_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_adobjattribute">
                                                                        <sch:rule context="win-def:activedirectory_object/win-def:attribute">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an activedirectory_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_activedirectory_state_dep">
                              <sch:rule context="win-def:activedirectory_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_adstenaming_context">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:naming_context">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the naming_context entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_adsterelative_dn">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:relative_dn">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_adsteattribute">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:attribute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_adsteobject_class">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:object_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the object_class entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_adsteadstype">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:adstype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the adstype entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_adstevalue">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:value">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_test">
                              <sch:rule context="win-def:activedirectory57_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:activedirectory57_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an activedirectory57_test must reference an activedirectory57_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:activedirectory57_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:activedirectory57_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an activedirectory57_test must reference an activedirectory57_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_object_naming_context">
                                                                        <sch:rule context="win-def:activedirectory57_object/win-def:naming_context">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the naming_context entity of an activedirectory57_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_object_relative_dn">
                                                                        <sch:rule context="win-def:activedirectory57_object/win-def:relative_dn">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an activedirectory57_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_object_attribute">
                                                                        <sch:rule context="win-def:activedirectory57_object/win-def:attribute">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an activedirectory57_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_state_naming_context">
                                                            <sch:rule context="win-def:activedirectory57_state/win-def:naming_context">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the naming_context entity of an activedirectory57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_state_relative_dn">
                                                            <sch:rule context="win-def:activedirectory57_state/win-def:relative_dn">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an activedirectory57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_state_attribute">
                                                            <sch:rule context="win-def:activedirectory57_state/win-def:attribute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an activedirectory57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_state_object_class">
                                                            <sch:rule context="win-def:activedirectory57_state/win-def:object_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the object_class entity of an activedirectory57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_state_adstype">
                                                            <sch:rule context="win-def:activedirectory57_state/win-def:adstype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the adstype entity of an activedirectory57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_activedirectory57_state_value">
                                                            <sch:rule context="win-def:activedirectory57_state/win-def:value">
                                                                  <sch:assert test="@datatype='record'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aeptst">
                              <sch:rule context="win-def:auditeventpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicy_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an auditeventpolicy_test must reference an auditeventpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:auditeventpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicy_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an auditeventpolicy_test must reference an auditeventpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_aepsteaccount_logon">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:account_logon">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the account_logon entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsteaccount_management">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:account_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the account_management entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepstedetailed_tracking">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:detailed_tracking">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the detailed_tracking entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepstedirectory_service_access">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:directory_service_access">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the directory_service_access entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepstelogon">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:logon">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the logon entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsteobject_access">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:object_access">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the object_access entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepstepolicy_change">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the policy_change entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsteprivilege_use">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:privilege_use">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the privilege_use entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepstesystem">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:system">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the system entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepstst">
                              <sch:rule context="win-def:auditeventpolicysubcategories_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicysubcategories_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:auditeventpolicysubcategories_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicysubcategories_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_aepsstecredentialvalidation">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:credential_validation">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the credential_validation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstekerberosauthenticationservice">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:kerberos_authentication_service">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the kerberos_authentication_service entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstekerberosserviceticketoperations">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:kerberos_service_ticket_operations">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the kerberos_service_ticket_operations entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstekerberosticketevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:kerberos_ticket_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the kerberos_ticket_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteotheraccountlogonevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_account_logon_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the other_account_logon_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteapplicationgroupmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:application_group_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the application_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstecomputeraccountmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:computer_account_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the computer_account_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstedistributiongroupmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:distribution_group_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the distribution_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteotheraccountmanagementevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_account_management_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the other_account_management_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstesecuritygroupmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_group_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the security_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteuseraccountmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:user_account_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_account_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstedpapiactivity">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:dpapi_activity">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the dpapi_activity entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteprocesscreation">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:process_creation">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the process_creation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteprocesstermination">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:process_termination">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the process_termination entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssterpcevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:rpc_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the rpc_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstedirectoryserviceaccess">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_access">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the directory_service_access entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstedirectoryservicechanges">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_changes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the directory_service_changes entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstedirectoryservicereplication">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_replication">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the directory_service_replication entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstedetaileddirectoryservicereplication">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:detailed_directory_service_replication">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the detailed_directory_service_replication entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteaccountlockout">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:account_lockout">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the account_lockout entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteipsecextendedmode">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_extended_mode">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ipsec_extended_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteipsecmainmode">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_main_mode">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ipsec_main_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteipsec_quick_mode">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_quick_mode">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ipsec_quick_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstelogoff">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:logoff">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the logoff entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstelogon">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:logon">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the logon entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstenetworkpolicyserver">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:network_policy_server">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the network_policy_server entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteotherlogonlogoffevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_logon_logoff_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the other_logon_logoff_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstespeciallogon">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:special_logon">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the special_logon entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteapplicationgenerated">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:application_generated">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the application_generated entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstecertificationservices">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:certification_services">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the certification_services entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstedetailedfileshare">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:detailed_file_share">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the detailed_file_share entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstefileshare">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:file_share">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_share entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstefilesystem">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:file_system">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_system entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstefilteringplatformconnection">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_connection">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_connection entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstefilteringplatformpacketdrop">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_packet_drop">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_packet_drop entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstehandlemanipulation">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:handle_manipulation">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the handle_manipulation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstekernelobject">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:kernel_object">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the kernel_object entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteotherobjectaccessevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_object_access_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the other_object_access_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteregistry">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:registry">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the registry entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstesam">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:sam">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sam entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteauditpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:audit_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the audit_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteauthenticationpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:authentication_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the authentication_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteauthorizationpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:authorization_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the authorization_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstefilteringplatformpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstempssvcrulelevelpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:mpssvc_rule_level_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the mpssvc_rule_level_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteotherpolicychangeevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_policy_change_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the other_policy_change_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstenonsensitiveprivilegeuse">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:non_sensitive_privilege_use">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the non_sensitive_privilege_use entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteotherprivilegeuseevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_privilege_use_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the other_privilege_use_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstesensitive_privilege_use">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:sensitive_privilege_use">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the sensitive_privilege_use entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteipsecdriver">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_driver">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ipsec_driver entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepssteothersystemevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_system_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the other_system_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstesecuritystatechange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_state_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the security_state_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstesecuritysystemextension">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_system_extension">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the security_system_extension entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_aepsstesystemintegrity">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:system_integrity">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the system_integrity entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_dnscachetst">
                              <sch:rule context="win-def:dnscache_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:dnscache_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a dnscache_test must reference a dnscache_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:dnscache_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:dnscache_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a dnscache_test must reference a dnscache_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_dnscacheobjdomainname">
                                                                        <sch:rule context="win-def:dnscache_object/win-def:domain_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the domain_name entity of a dnscache_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_dnscachestedomainname">
                                                            <sch:rule context="win-def:dnscache_state/win-def:domain_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the domain_name entity of a dnscache_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_dnscachestettl">
                                                            <sch:rule context="win-def:dnscache_state/win-def:ttl">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the ttl entity of a dnscache_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_dnscachesteipaddress">
                                                            <sch:rule context="win-def:dnscache_state/win-def:ip_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ip_address entity of a dnscache_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filetst">
                              <sch:rule context="win-def:file_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:file_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a file_test must reference a file_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:file_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:file_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a file_test must reference a file_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_fileobjfilepath">
                                                                                  <sch:rule context="win-def:file_object/win-def:filepath">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a file_object should be 'string'</sch:assert>
                                                                                        <sch:assert test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])">
            <sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="win-def_fileobjpath">
                                                                                    <sch:rule context="win-def:file_object/win-def:path">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_object should be 'string'</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="win-def_fileobjfilename">
                                                                                    <sch:rule context="win-def:file_object/win-def:filename">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="win-def_filestefilepath">
                                                            <sch:rule context="win-def:file_state/win-def:filepath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestepath">
                                                            <sch:rule context="win-def:file_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestefilename">
                                                            <sch:rule context="win-def:file_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filesteowner">
                                                            <sch:rule context="win-def:file_state/win-def:owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the owner entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestesize">
                                                            <sch:rule context="win-def:file_state/win-def:size">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the size entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestea_time">
                                                            <sch:rule context="win-def:file_state/win-def:a_time">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the a_time entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestec_time">
                                                            <sch:rule context="win-def:file_state/win-def:c_time">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the c_time entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestem_time">
                                                            <sch:rule context="win-def:file_state/win-def:m_time">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the m_time entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestems_checksum">
                                                            <sch:rule context="win-def:file_state/win-def:ms_checksum">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the ms_checksum entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filesteversion">
                                                            <sch:rule context="win-def:file_state/win-def:version">
                                                                  <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the version entity of a file_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestetype">
                                                            <sch:rule context="win-def:file_state/win-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the type entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestedevelopment_class">
                                                            <sch:rule context="win-def:file_state/win-def:development_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the development_class entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestecompany">
                                                            <sch:rule context="win-def:file_state/win-def:company">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the company entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filesteinternalname">
                                                            <sch:rule context="win-def:file_state/win-def:internal_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the internal_name entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filestelanguage">
                                                            <sch:rule context="win-def:file_state/win-def:language">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the language entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filesteoriginalfilename">
                                                            <sch:rule context="win-def:file_state/win-def:original_filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the original_filename entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filesteproductname">
                                                            <sch:rule context="win-def:file_state/win-def:product_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the product_name entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_filesteproductversion">
                                                            <sch:rule context="win-def:file_state/win-def:product_version">
                                                                  <sch:assert test="@datatype='version'">
            <sch:value-of select="../@id"/> - datatype attribute for the product_version entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53tst">
                              <sch:rule context="win-def:fileauditedpermissions53_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileauditedpermissions53_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions53_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_fap53objfilepath">
                                                                                    <sch:rule context="win-def:fileauditedpermissions53_object/win-def:filepath">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])">
            <sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="win-def_fap53objpath">
                                                                                    <sch:rule context="win-def:fileauditedpermissions53_object/win-def:path">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="win-def_fap53objfilename">
                                                                                    <sch:rule context="win-def:fileauditedpermissions53_object/win-def:filename">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="win-def_fap53objtrustee_sid">
                                                                        <sch:rule context="win-def:fileauditedpermissions53_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_fap53stefilepath">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:filepath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stepath">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefilename">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stetrustee_sid">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stestandard_delete">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_delete">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stestandard_read_control">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_read_control">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stestandard_write_dac">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_write_dac">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stestandard_write_owner">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_write_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stestandard_synchronize">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_synchronize">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53steaccess_system_security">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:access_system_security">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stegeneric_read">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_read">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stegeneric_write">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_write">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stegeneric_execute">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stegeneric_all">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_all">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_read_data">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_write_data">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_append_data">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_append_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_read_ea">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_ea">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_write_ea">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_ea">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_execute">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_delete_child">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_delete_child">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_read_attributes">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_attributes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53stefile_write_attributes">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_attributes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap53_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: fileauditedpermissions53_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_faptst_dep">
                              <sch:rule context="win-def:fileauditedpermissions_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_faptst">
                              <sch:rule context="win-def:fileauditedpermissions_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a fileauditedpermissions_test must reference a fileauditedpermissions_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileauditedpermissions_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a fileauditedpermissions_test must reference a fileauditedpermissions_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_fapobj_dep">
                              <sch:rule context="win-def:fileauditedpermissions_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_fapobjpath">
                                                                        <sch:rule context="win-def:fileauditedpermissions_object/win-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_fapobjfilename">
                                                                        <sch:rule context="win-def:fileauditedpermissions_object/win-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions_object should be 'string'</sch:assert>
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_fapobjtrustee_name">
                                                                        <sch:rule context="win-def:fileauditedpermissions_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_fapste_dep">
                              <sch:rule context="win-def:fileauditedpermissions_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_fapstepath">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefilename">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstetrustee_name">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstestandard_delete">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_delete">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstestandard_read_control">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_read_control">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstestandard_write_dac">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_write_dac">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstestandard_write_owner">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_write_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstestandard_synchronize">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_synchronize">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapsteaccess_system_security">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:access_system_security">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstegeneric_read">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_read">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstegeneric_write">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_write">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstegeneric_execute">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstegeneric_all">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_all">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_read_data">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_write_data">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_append_data">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_append_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_read_ea">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_ea">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_write_ea">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_ea">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_execute">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_delete_child">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_delete_child">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_read_attributes">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_attributes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fapstefile_write_attributes">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_attributes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fap_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: fileauditedpermissions_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_fer53tst">
                              <sch:rule context="win-def:fileeffectiverights53_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a fileeffectiverights53_test must reference a fileeffectiverights53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileeffectiverights53_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights53_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a fileeffectiverights53_test must reference a fileeffectiverights53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_fer53objfilepath">
                                                                                    <sch:rule context="win-def:fileeffectiverights53_object/win-def:filepath">
                                                                                          <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a fileeffectiverights53_object should be 'string'</sch:assert>
                                                                                          <sch:assert test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])">
            <sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
   <sch:pattern id="win-def_fer53objpath">
                                                                                  <sch:rule context="win-def:fileeffectiverights53_object/win-def:path">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights53_object should be 'string'</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="win-def_fer53objfilename">
                                                                                  <sch:rule context="win-def:fileeffectiverights53_object/win-def:filename">
                                                                                        <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights53_object should be 'string'</sch:assert>
                                                                                      <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
   <sch:pattern id="win-def_fer53objtrustee_sid">
                                                                        <sch:rule context="win-def:fileeffectiverights53_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_fer53stefilepath">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:filepath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filepath entity of a fileeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stepath">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefilename">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights53_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stetrustee_sid">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stestandard_delete">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stestandard_read_control">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stestandard_write_dac">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stestandard_write_owner">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stestandard_synchronize">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53steaccess_system_security">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stegeneric_read">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stegeneric_write">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stegeneric_execute">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stegeneric_all">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_read_data">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_data">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_write_data">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_data">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_append_data">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_append_data">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_read_ea">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_ea">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_write_ea">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_ea">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_execute">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_execute">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_delete_child">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_delete_child">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_read_attributes">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_attributes">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fer53stefile_write_attributes">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_attributes">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ffr53_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: fileeffectiverights53_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_fertst_dep">
                              <sch:rule context="win-def:fileeffectiverights_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_fertst">
                              <sch:rule context="win-def:fileeffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a fileeffectiverights_test must reference a fileeffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileeffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a fileeffectiverights_test must reference a fileeffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_ferobj_dep">
                              <sch:rule context="win-def:fileeffectiverights_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_fefobjpath">
                                                                        <sch:rule context="win-def:fileeffectiverights_object/win-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_fefobjfilename">
                                                                        <sch:rule context="win-def:fileeffectiverights_object/win-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights_object should be 'string'</sch:assert>
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_fefobjtrustee_name">
                                                                        <sch:rule context="win-def:fileeffectiverights_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_ferste_dep">
                              <sch:rule context="win-def:fileeffectiverights_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_ferstepath">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefilename">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
            <sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstetrustee_name">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstestandard_delete">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstestandard_read_control">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstestandard_write_dac">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstestandard_write_owner">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstestandard_synchronize">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_fersteaccess_system_security">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstegeneric_read">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstegeneric_write">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstegeneric_execute">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstegeneric_all">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_read_data">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_data">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_write_data">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_data">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_append_data">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_append_data">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_read_ea">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_ea">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_write_ea">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_ea">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_execute">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_execute">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_delete_child">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_delete_child">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_read_attributes">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_attributes">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ferstefile_write_attributes">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_attributes">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ffr_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: fileeffectiverights_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_grouptst">
                              <sch:rule context="win-def:group_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:group_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a group_test must reference a group_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:group_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:group_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a group_test must reference a group_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_groupobjgroup">
                                                                        <sch:rule context="win-def:group_object/win-def:group">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group entity of a group_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_groupstegroup">
                                                            <sch:rule context="win-def:group_state/win-def:group">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group entity of a group_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_groupsteuser">
                                                            <sch:rule context="win-def:group_state/win-def:user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user entity of a group_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_groupstesubgroup">
                                                            <sch:rule context="win-def:group_state/win-def:subgroup">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the subgroup entity of a group_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_groupsidtst">
                              <sch:rule context="win-def:group_sid_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:group_sid_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a group_sid_test must reference a group_sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:group_sid_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:group_sid_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a group_sid_test must reference a group_sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_groupsidobjgroup">
                                                                        <sch:rule context="win-def:group_sid_object/win-def:group_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group_sid entity of a group_sid_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_groupsidstegroup">
                                                            <sch:rule context="win-def:group_sid_state/win-def:group_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group_sid entity of a group_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_groupsidsteuser">
                                                            <sch:rule context="win-def:group_sid_state/win-def:user_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a group_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_groupsidstesubgroup">
                                                            <sch:rule context="win-def:group_sid_state/win-def:subgroup_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the subgroup_sid entity of a group_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wininterfacetst">
                              <sch:rule context="win-def:interface_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:interface_object/@id">
            <sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:interface_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:interface_state/@id">
            <sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_wininterfaceobjname">
                                                                        <sch:rule context="win-def:interface_object/win-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a interface_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_wininterfacestename">
                                                            <sch:rule context="win-def:interface_state/win-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wininterfacesteindex">
                                                            <sch:rule context="win-def:interface_state/win-def:index">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the index entity of an interface_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wininterfacestetype">
                                                            <sch:rule context="win-def:interface_state/win-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the type entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wininterfacestehardware_addr">
                                                            <sch:rule context="win-def:interface_state/win-def:hardware_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hardware_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wininterfacesteinet_addr">
                                                            <sch:rule context="win-def:interface_state/win-def:inet_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the inet_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wininterfacestebroadcast_addr">
                                                            <sch:rule context="win-def:interface_state/win-def:broadcast_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the broadcast_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wininterfacestenetmask">
                                                            <sch:rule context="win-def:interface_state/win-def:netmask">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the netmask entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wininterfacesteaddr_type">
                                                            <sch:rule context="win-def:interface_state/win-def:addr_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the addr_type entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_lptst">
                              <sch:rule context="win-def:lockoutpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:lockoutpolicy_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a lockoutpolicy_test must reference a lockoutpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:lockoutpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:lockoutpolicy_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a lockoutpolicy_test must reference a lockoutpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_lpsteforce_logoff">
                                                            <sch:rule context="win-def:lockoutpolicy_state/win-def:force_logoff">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the force_logoff entity of a lockoutpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_lpstelockout_duration">
                                                            <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_duration">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the lockout_duration entity of a lockoutpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_lpstelockout_observation_window">
                                                            <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_observation_window">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the lockout_observation_window entity of a lockoutpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_lpstelockout_threshold">
                                                            <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_threshold">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the lockout_threshold entity of a lockoutpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_metabasetst">
                              <sch:rule context="win-def:metabase_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:metabase_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a metabase_test must reference a metabase_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:metabase_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:metabase_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a metabase_test must reference a metabase_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_metabaseobjkey">
                                                                        <sch:rule context="win-def:metabase_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a metabase_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_metabaseobjid">
                                                                        <sch:rule context="win-def:metabase_object/win-def:id">
                                                                              <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the id entity of a metabase_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_metabasestekey">
                                                            <sch:rule context="win-def:metabase_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a metabase_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_metabasesteid">
                                                            <sch:rule context="win-def:metabase_state/win-def:id">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the id entity of a metabase_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_metabasestename">
                                                            <sch:rule context="win-def:metabase_state/win-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a metabase_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_metabasesteuser_type">
                                                            <sch:rule context="win-def:metabase_state/win-def:user_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_type entity of a metabase_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_metabasestedata_type">
                                                            <sch:rule context="win-def:metabase_state/win-def:data_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the data_type entity of a metabase_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_metabasestedata">
                                                            <sch:rule context="win-def:metabase_state/win-def:data">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_pptst">
                              <sch:rule context="win-def:passwordpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:passwordpolicy_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a passwordpolicy_test must reference a passwordpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:passwordpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:passwordpolicy_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a passwordpolicy_test must reference a passwordpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_ppstemax_passwd_age">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:max_passwd_age">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the max_passwd_age entity of a passwordpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ppstemin_passwd_age">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:min_passwd_age">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the min_passwd_age entity of a passwordpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ppstemin_passwd_len">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:min_passwd_len">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the min_passwd_len entity of a passwordpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ppstepassword_hist_len">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:password_hist_len">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the password_hist_len entity of a passwordpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ppstepassword_complexity">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:password_complexity">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the password_complexity entity of an passwordpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_ppstereversible_encryption">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:reversible_encryption">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the reversible_encryption entity of an passwordpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_winporttst">
                              <sch:rule context="win-def:port_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:port_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a port_test must reference a port_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:port_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:port_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a port_test must reference a port_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_winportobjlocal_address">
                                                                        <sch:rule context="win-def:port_object/win-def:local_address">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of a port_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_winportobjlocal_port">
                                                                        <sch:rule context="win-def:port_object/win-def:local_port">
                                                                              <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of a port_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_winportobjprotocol">
                                                                        <sch:rule context="win-def:port_object/win-def:protocol">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of a port_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_winportstelocal_address">
                                                            <sch:rule context="win-def:port_state/win-def:local_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of a port_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_winportstelocal_port">
                                                            <sch:rule context="win-def:port_state/win-def:local_port">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of a port_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_winportsteprotocol">
                                                            <sch:rule context="win-def:port_state/win-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of a port_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_winportstepid">
                                                            <sch:rule context="win-def:port_state/win-def:pid">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the pid entity of a port_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_pertst">
                              <sch:rule context="win-def:printereffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a printereffectiverights_test must reference a printereffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:printereffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:printereffectiverights_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a printereffectiverights_test must reference a printereffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_perobjprinter_name">
                                                                        <sch:rule context="win-def:printereffectiverights_object/win-def:printer_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the kprinter_nameey entity of a printereffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_perobjtrustee_sid">
                                                                        <sch:rule context="win-def:printereffectiverights_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a printereffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rersteprinter_name">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:printer_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the printer_name entity of a printereffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstetrustee_sid">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a printereffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstestandard_delete">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstestandard_read_control">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstestandard_write_dac">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstestandard_write_owner">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstestandard_synchronize">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_persteaccess_system_security">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstegeneric_read">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstegeneric_write">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstegeneric_execute">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstegeneric_all">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_persteprinter_access_administer">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:printer_access_administer">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the printer_access_administer entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_persteprinter_access_use">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:printer_access_use">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the printer_access_use entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstejob_access_administer">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:job_access_administer">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the job_access_administer entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_perstejob_access_read">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:job_access_read">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the job_access_read entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_pef_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: printereffectiverights_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_processtst">
                              <sch:rule context="win-def:process_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:process_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a process_test must reference a process_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:process_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:process_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a process_test must reference a process_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_processobjcommand_line">
                                                                        <sch:rule context="win-def:process_object/win-def:command_line">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the command_line entity of a process_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_processstecommand_line">
                                                            <sch:rule context="win-def:process_state/win-def:command_line">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the command_line entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_processstepid">
                                                            <sch:rule context="win-def:port_state/win-def:pid">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the pid entity of a port_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_processsteppid">
                                                            <sch:rule context="win-def:port_state/win-def:ppid">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the ppid entity of a port_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_processstepriority">
                                                            <sch:rule context="win-def:process_state/win-def:priority">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the priority entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_processsteimage_path">
                                                            <sch:rule context="win-def:process_state/win-def:image_path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the image_path entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_processstecurrent_dir">
                                                            <sch:rule context="win-def:process_state/win-def:current_dir">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the current_dir entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_regtst">
                              <sch:rule context="win-def:registry_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:registry_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a registry_test must reference a registry_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:registry_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:registry_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a registry_test must reference a registry_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_regobjhive">
                                                                        <sch:rule context="win-def:registry_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a registry_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_regobjkey">
                                                                        <sch:rule context="win-def:registry_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a registry_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@xsi:nil='true') or ../win-def:name/@xsi:nil='true'">
            <sch:value-of select="../@id"/> - name entity must be nil when key is nil</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_regobjname">
                                                                        <sch:rule context="win-def:registry_object/win-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a registry_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_regstehive">
                                                            <sch:rule context="win-def:registry_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a registry_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_regstekey">
                                                            <sch:rule context="win-def:registry_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a registry_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_regstename">
                                                            <sch:rule context="win-def:registry_state/win-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a registry_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_regstetype">
                                                            <sch:rule context="win-def:registry_state/win-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the type entity of a registry_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_regstevalue">
                                                            <sch:rule context="win-def:registry_state/win-def:value">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53tst">
                              <sch:rule context="win-def:regkeyauditedpermissions53_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyauditedpermissions53_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions53_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rap53objhive">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rap53objkey">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rap53objtrustee_sid">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rap53stehive">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stetrustee_sid">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stestandard_delete">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_delete">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stestandard_read_control">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_read_control">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stestandard_write_dac">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_write_dac">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stestandard_write_owner">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_write_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_synchronize">
                                                                  <sch:report test="true()">DEPRECATED ELEMENT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">item <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53steaccess_system_security">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:access_system_security">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stegeneric_read">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_read">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stegeneric_write">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_write">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stegeneric_execute">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stegeneric_all">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_all">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_query_value">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_query_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_set_value">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_set_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_create_sub_key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_create_sub_key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_enumerate_sub_keys">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_enumerate_sub_keys">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_notify">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_notify">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_create_link">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_create_link">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_wow64_64key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_64key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_wow64_32key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_32key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rap53stekey_wow64_res">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_res">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rka53_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyauditedpermissions53_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_raptst_dep">
                                    <sch:rule context="win-def:regkeyauditedpermissions_test">
                                          <sch:report test="true()">
                                                DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                          </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_raptst">
                              <sch:rule context="win-def:regkeyauditedpermissions_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyauditedpermissions_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rapobj_dep">
                              <sch:rule context="win-def:regkeyauditedpermissions_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rapobjhive">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rapobjkey">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rapobjtrustee_name">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rapste_dep">
                              <sch:rule context="win-def:regkeyauditedpermissions_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rapstehive">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstetrustee_name">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstestandard_delete">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_delete">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstestandard_read_control">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_read_control">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstestandard_write_dac">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_write_dac">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstestandard_write_owner">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_write_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_synchronize">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapsteaccess_system_security">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:access_system_security">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstegeneric_read">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_read">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstegeneric_write">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_write">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstegeneric_execute">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstegeneric_all">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_all">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_query_value">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_query_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_set_value">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_set_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_create_sub_key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_create_sub_key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_enumerate_sub_keys">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_enumerate_sub_keys">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_notify">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_notify">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_create_link">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_create_link">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_wow64_64key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_64key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_wow64_32key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_32key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rapstekey_wow64_res">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_res">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rka_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyauditedpermissions_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_rer53tst">
                              <sch:rule context="win-def:regkeyeffectiverights53_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyeffectiverights53_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights53_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rer53objhive">
                                                                        <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rer53objkey">
                                                                        <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rer53objtrustee_sid">
                                                                        <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rer53stehive">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stetrustee_sid">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stestandard_delete">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stestandard_read_control">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stestandard_write_dac">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stestandard_write_owner">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_synchronize">
                                                                  <sch:report test="true()">DEPRECATED ELEMENT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53steaccess_system_security">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stegeneric_read">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stegeneric_write">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stegeneric_execute">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stegeneric_all">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_query_value">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_query_value">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_set_value">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_set_value">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_create_sub_key">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_create_sub_key">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_enumerate_sub_keys">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_enumerate_sub_keys">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_notify">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_notify">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_create_link">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_create_link">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_wow64_64key">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_64key">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_wow64_32key">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_32key">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rer53stekey_wow64_res">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_res">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rke53_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyeffectiverights53_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_rertst_dep">
                              <sch:rule context="win-def:regkeyeffectiverights_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rertst">
                              <sch:rule context="win-def:regkeyeffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyeffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rerobj_dep">
                              <sch:rule context="win-def:regkeyeffectiverights_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rerobjhive">
                                                                        <sch:rule context="win-def:regkeyeffectiverights_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rerobjkey">
                                                                        <sch:rule context="win-def:regkeyeffectiverights_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rerobjtrustee_name">
                                                                        <sch:rule context="win-def:regkeyeffectiverights_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_rerste_dep">
                              <sch:rule context="win-def:regkeyeffectiverights_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_rerstehive">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstetrustee_name">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstestandard_delete">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstestandard_read_control">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstestandard_write_dac">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstestandard_write_owner">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rersteaccess_system_security">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstegeneric_read">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstegeneric_write">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstegeneric_execute">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstegeneric_all">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_query_value">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_query_value">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_set_value">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_set_value">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_create_sub_key">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_create_sub_key">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_enumerate_sub_keys">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_enumerate_sub_keys">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_notify">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_notify">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_create_link">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_create_link">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_wow64_64key">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_64key">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_wow64_32key">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_32key">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rerstekey_wow64_res">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_res">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_rke_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyeffectiverights_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
   <sch:pattern id="win-def_svcertst">
                              <sch:rule context="win-def:serviceeffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:serviceeffectiverights_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a serviceeffectiverights_test must reference a serviceeffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:serviceeffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:serviceeffectiverights_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a serviceeffectiverights_test must reference a serviceeffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_svcerobjservice_name">
                                                                   <sch:rule context="win-def:serviceeffectiverights_object/win-def:service_name">
                                                                         <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a serviceeffectiverights_object should be 'string'</sch:assert>
                                                                   </sch:rule>
                                                             </sch:pattern>
   <sch:pattern id="win-def_svcerobjtrustee_sid">
                                                                   <sch:rule context="win-def:serviceeffectiverights_object/win-def:trustee_sid">
                                                                         <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a serviceeffectiverights_object should be 'string'</sch:assert>
                                                                   </sch:rule>
                                                             </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_name">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_name">
                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a serviceeffectiverights_state should be 'string'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcerstetrustee_sid">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:trustee_sid">
                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a serviceeffectiverights_state should be 'string'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcerstestandard_delete">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:standard_delete">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcerstestandard_read_control">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:standard_read_control">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcerstestandard_write_dac">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:standard_write_dac">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcerstestandard_write_owner">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:standard_write_owner">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcerstegeneric_read">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:generic_read">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcerstegeneric_write">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:generic_write">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcerstegeneric_execute">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:generic_execute">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_query_conf">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_query_conf">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_query_conf entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_change_conf">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_change_conf">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_change_conf entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_query_stat">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_query_stat">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_query_stat entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteserviceenum_dependents">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_enum_dependents">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_enum_dependents entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_start">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_start">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_start entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_stop">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_stop">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_stop entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_pause">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_pause">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_pause entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_interrogate">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_interrogate">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_interrogate entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_svcersteservice_user_defined">
                                                        <sch:rule context="win-def:serviceeffectiverights_state/win-def:service_user_defined">
                                                              <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the service_user_defined entity of a serviceeffectiverights_state should be 'boolean'</sch:assert>
                                                        </sch:rule>
                                                  </sch:pattern>
   <sch:pattern id="win-def_srtst">
                              <sch:rule context="win-def:sharedresource_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sharedresource_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a sharedresource_test must reference a sharedresource_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sharedresource_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a sharedresource_test must reference a sharedresource_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_srobjnetname">
                                                                        <sch:rule context="win-def:sharedresource_object/win-def:netname">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the netname entity of a sharedresource_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_srstenetname">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:netname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the netname entity of a sharedresource_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteshared_type">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:shared_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the shared_type entity of a sharedresource_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srstemax_uses">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:max_uses">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the max_uses entity of a sharedresource_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srstecurrent_uses">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:current_uses">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the current_uses entity of a sharedresource_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srstelocal_path">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:local_path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the local_path entity of a sharedresource_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteaccess_read_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_read_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_read_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteaccess_write_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_write_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_write_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteaccess_create_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_create_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_create_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteaccess_exec_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_exec_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_exec_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteaccess_delete_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_delete_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_delete_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteaccess_atrib_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_atrib_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_atrib_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteaccess_perm_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_perm_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_perm_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_srsteaccess_all_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_all_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_all_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_sidtst">
                              <sch:rule context="win-def:sid_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sid_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a sid_test must reference a sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sid_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sid_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a sid_test must reference a sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_sidobjtrustee_name">
                                                                        <sch:rule context="win-def:sid_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a sid_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_sidstetrustee_name">
                                                            <sch:rule context="win-def:sid_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_sidstetrustee_sid">
                                                            <sch:rule context="win-def:sid_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_sidstetrustee_domain">
                                                            <sch:rule context="win-def:sid_state/win-def:trustee_domain">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_domain entity of a sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_sidsidtst">
                              <sch:rule context="win-def:sid_sid_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sid_sid_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a sid_sid_test must reference a sid_sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sid_sid_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sid_sid_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a sid_sid_test must reference a sid_sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_sidsidobjtrustee_name">
                                                                        <sch:rule context="win-def:sid_sid_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a sid_sid_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_sidsidstetrustee_sid">
                                                            <sch:rule context="win-def:sid_sid_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a sid_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_sidsidstetrustee_name">
                                                            <sch:rule context="win-def:sid_sid_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a sid_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_sidsidstetrustee_domain">
                                                            <sch:rule context="win-def:sid_sid_state/win-def:trustee_domain">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the trustee_domain entity of a sid_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uactst">
                              <sch:rule context="win-def:uac_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:uac_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a uac_test must reference a uac_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:uac_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:uac_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a uac_test must reference a uac_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_uacsteadminapprovalmode">
                                                            <sch:rule context="win-def:uac_state/win-def:admin_approval_mode">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the admin_approval_mode entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uacstebehaviorelevationadmin">
                                                            <sch:rule context="win-def:uac_state/win-def:elevation_prompt_admin">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the elevation_prompt_admin entity of a uac_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uacsteelevationpromptstandard">
                                                            <sch:rule context="win-def:uac_state/win-def:elevation_prompt_standard">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the elevation_prompt_standard entity of a uac_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uacstedetectinstallations">
                                                            <sch:rule context="win-def:uac_state/win-def:detect_installations">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the detect_installations entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uacsteelevatesignedexecutables">
                                                            <sch:rule context="win-def:uac_state/win-def:elevate_signed_executables">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the elevate_signed_executables entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uacsteelevateuiaccess">
                                                            <sch:rule context="win-def:uac_state/win-def:elevate_uiaccess">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the elevate_uiaccess entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uacsterunadminsaam">
                                                            <sch:rule context="win-def:uac_state/win-def:run_admins_aam">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the run_admins_aam entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uacstesecuredesktop">
                                                            <sch:rule context="win-def:uac_state/win-def:secure_desktop">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the secure_desktop entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_uacstevirtualizewritefailures">
                                                            <sch:rule context="win-def:uac_state/win-def:virtualize_write_failures">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the virtualize_write_failures entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_usertst">
                              <sch:rule context="win-def:user_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a user_test must reference a user_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:user_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a user_test must reference a user_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_userobjuser">
                                                                        <sch:rule context="win-def:user_object/win-def:user">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user entity of a user_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_usersteuser">
                                                            <sch:rule context="win-def:user_state/win-def:user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user entity of a user_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_usersteenabled">
                                                            <sch:rule context="win-def:user_state/win-def:enabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the enabled entity of a user_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_userstegroup">
                                                            <sch:rule context="win-def:user_state/win-def:group">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group entity of a user_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_usersid55tst">
                    <sch:rule context="win-def:user_sid55_test/win-def:object">
                        <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_sid55_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a user_sid55_test must reference a user_sid55_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="win-def:user_sid55_test/win-def:state">
                        <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_sid55_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a user_sid55_test must reference a user_sid55_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="win-def_usersid55objuser">
                                                <sch:rule context="win-def:user_sid55_object/win-def:user_sid">
                                                    <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a user_sid55_object should be 'string'</sch:assert>
                                                </sch:rule>
                                            </sch:pattern>
   <sch:pattern id="win-def_usersid55steuser">
                                        <sch:rule context="win-def:user_sid55_state/win-def:user_sid">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a user_sid55_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="win-def_usersid55steenabled">
                                        <sch:rule context="win-def:user_sid55_state/win-def:enabled">
                                            <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the enabled entity of a user_sid55_state should be 'boolean'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="win-def_usersid55stegroup">
                                        <sch:rule context="win-def:user_sid55_state/win-def:group_sid">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group_sid entity of a user_sid55_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
   <sch:pattern id="win-def_usersidtst_dep">
                            <sch:rule context="win-def:user_sid_test">
                                  <sch:report test="true()">
                                        DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                  </sch:report>
                            </sch:rule>
                      </sch:pattern>
   <sch:pattern id="win-def_usersidtst">
                            <sch:rule context="win-def:user_sid_test/win-def:object">
                                  <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_sid_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a user_sid_test must reference a user_sid_object</sch:assert>
                            </sch:rule>
                            <sch:rule context="win-def:user_sid_test/win-def:state">
                                  <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_sid_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a user_sid_test must reference a user_sid_state</sch:assert>
                            </sch:rule>
                      </sch:pattern>
   <sch:pattern id="win-def_usersidobj_dep">
                            <sch:rule context="win-def:user_sid_object">
                                  <sch:report test="true()">
                                        DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                  </sch:report>
                            </sch:rule>
                      </sch:pattern>
   <sch:pattern id="win-def_usersidobjuser">
                                                                        <sch:rule context="win-def:user_sid_object/win-def:user_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a user_sid_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_usersidste_dep">
                            <sch:rule context="win-def:user_sid_state">
                                  <sch:report test="true()">
                                        DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                  </sch:report>
                            </sch:rule>
                      </sch:pattern>
   <sch:pattern id="win-def_usersidsteuser">
                                                            <sch:rule context="win-def:user_sid_state/win-def:user_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a user_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_usersidsteenabled">
                                                            <sch:rule context="win-def:user_sid_state/win-def:enabled">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the enabled entity of a user_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_usersidstegroup">
                                                            <sch:rule context="win-def:user_sid_state/win-def:group_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the group_sid entity of a user_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volumetst">
                              <sch:rule context="win-def:volume_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:volume_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a volume_test must reference a volume_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:volume_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:volume_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a volume_test must reference a volume_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_volobjrootpath">
                                                                        <sch:rule context="win-def:volume_object/win-def:rootpath">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the rootpath entity of a volume_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_volumesterootpath">
                                                            <sch:rule context="win-def:volume_state/win-def:rootpath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the rootpath entity of a volume_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volumestefile_system">
                                                            <sch:rule context="win-def:volume_state/win-def:file_system">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_system entity of a volume_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volumestename">
                                                            <sch:rule context="win-def:volume_state/win-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the name entity of a volume_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstevolume_max_component_length">
                                                            <sch:rule context="win-def:volume_state/win-def:volume_max_component_length">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the volume_max_component_length entity of a volume_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volsteserial_number">
                                                            <sch:rule context="win-def:volume_state/win-def:serial_number">
                                                                  <sch:assert test="@datatype='int'">
            <sch:value-of select="../@id"/> - datatype attribute for the serial_number entity of a volume_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_case_sensitive_search">
                                                            <sch:rule context="win-def:volume_state/win-def:file_case_sensitive_search">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_case_sensitive_search entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_case_preserved_names">
                                                            <sch:rule context="win-def:volume_state/win-def:file_case_preserved_names">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_case_preserved_names entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_unicode_on_disk">
                                                            <sch:rule context="win-def:volume_state/win-def:file_unicode_on_disk">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_unicode_on_disk entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_persistent_acls">
                                                            <sch:rule context="win-def:volume_state/win-def:file_persistent_acls">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_persistent_acls entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_file_compression">
                                                            <sch:rule context="win-def:volume_state/win-def:file_file_compression">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_file_compression entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_volume_quotas">
                                                            <sch:rule context="win-def:volume_state/win-def:file_volume_quotas">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_volume_quotas entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_supports_sparse_files">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_sparse_files">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_supports_sparse_files entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_supports_reparse_points">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_reparse_points">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_supports_reparse_points entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_supports_remote_storage">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_remote_storage">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_supports_remote_storage entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_volume_is_compressed">
                                                            <sch:rule context="win-def:volume_state/win-def:file_volume_is_compressed">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_volume_is_compressed entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_supports_object_ids">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_object_ids">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_supports_object_ids entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_supports_encryption">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_encryption">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_supports_encryption entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_named_streams">
                                                            <sch:rule context="win-def:volume_state/win-def:file_named_streams">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_named_streams entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_volstefile_read_only_volume">
                                                            <sch:rule context="win-def:volume_state/win-def:file_read_only_volume">
                                                                  <sch:assert test="@datatype='boolean'">
            <sch:value-of select="../@id"/> - datatype attribute for the file_read_only_volume entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wmitst_dep">
                              <sch:rule context="win-def:wmi_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_wmitst">
                              <sch:rule context="win-def:wmi_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wmi_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a wmi_test must reference a wmi_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:wmi_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wmi_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a wmi_test must reference a wmi_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_wmiobj_dep">
                              <sch:rule context="win-def:wmi_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_wmiobjnamespace">
                                                                        <sch:rule context="win-def:wmi_object/win-def:namespace">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the namespace entity of a wmi_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the namespace entity of a wmi_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_wmiobjwql">
                                                                        <sch:rule context="win-def:wmi_object/win-def:wql">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the wql entity of a wmi_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the wql entity of a wmi_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_wmiste_dep">
                              <sch:rule context="win-def:wmi_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
         </sch:report>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_wmistenamespace">
                                                            <sch:rule context="win-def:wmi_state/win-def:namespace">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the namespace entity of a wmi_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wmistewql">
                                                            <sch:rule context="win-def:wmi_state/win-def:wql">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the wql entity of a wmi_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wmisteresult">
                                                            <sch:rule context="win-def:wmi_state/win-def:result">
                                                                  <sch:assert test="not(@datatype='record')">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should not be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wmi57tst">
                              <sch:rule context="win-def:wmi57_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wmi57_object/@id">
            <sch:value-of select="../@id"/> - the object child element of a wmi57_test must reference a wmi57_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:wmi57_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wmi57_state/@id">
            <sch:value-of select="../@id"/> - the state child element of a wmi57_test must reference a wmi57_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
   <sch:pattern id="win-def_wmi57objnamespace">
                                                                        <sch:rule context="win-def:wmi57_object/win-def:namespace">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the namespace entity of a wmi57_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the namespace entity of a wmi57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_wmi57objwql">
                                                                        <sch:rule context="win-def:wmi57_object/win-def:wql">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the wql entity of a wmi57_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
            <sch:value-of select="../@id"/> - operation attribute for the wql entity of a wmi57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
   <sch:pattern id="win-def_wmi57stenamespace">
                                                            <sch:rule context="win-def:wmi57_state/win-def:namespace">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the namespace entity of a wmi57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wmi57stewql">
                                                            <sch:rule context="win-def:wmi57_state/win-def:wql">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the wql entity of a wmi57_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wmi57steresult">
                                                            <sch:rule context="win-def:wmi57_state/win-def:result">
                                                                  <sch:assert test="@datatype='record'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:value-of select="name()"/> entity of an <sch:value-of select="name(..)"/> should be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
   <sch:pattern id="win-def_wuaupdatesearchertst">
                    <sch:rule context="win-def:wuaupdatesearcher_test/win-def:object">
                        <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wuaupdatesearcher_object/@id">
                            <sch:value-of select="../@id"/> - the object child element of a wuaupdatesearcher_test must reference a wuaupdatesearcher_object
                        </sch:assert>
                    </sch:rule>
                    <sch:rule context="win-def:wuaupdatesearcher_test/win-def:state">
                        <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wuaupdatesearcher_state/@id">
                            <sch:value-of select="../@id"/> - the state child element of a wuaupdatesearcher_test must reference a wuaupdatesearcher_state
                        </sch:assert>
                    </sch:rule>
                </sch:pattern>
   <sch:pattern id="win-def_wuaupdatesearcherobjsearchcriteria">
                                                <sch:rule context="win-def:wuaupdatesearcher_object/win-def:search_criteria">
                                                    <sch:assert test="not(@datatype) or @datatype='string'">
                                                        <sch:value-of select="../@id"/> - datatype attribute for the search_criteria entity of a wuaupdatesearcher_object should be 'string'
                                                    </sch:assert>
                                                    <sch:assert test="not(@operation) or @operation='equals'">
                                                        <sch:value-of select="../@id"/> - operation attribute for the search_criteria entity of a wuaupdatesearcher_object should be 'equals'
                                                    </sch:assert>
                                                </sch:rule>
                                            </sch:pattern>
   <sch:pattern id="win-def_wuaupdatesearcherstesearchcriteria">
                                      <sch:rule context="win-def:wuaupdatesearcher_state/win-def:search_criteria">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:name/> entity of a <sch:name path=".."/> should be 'string'</sch:assert>
                                      </sch:rule>
                                  </sch:pattern>
   <sch:pattern id="win-def_wuaupdatesearchersteupdateid">
                                      <sch:rule context="win-def:wuaupdatesearcher_state/win-def:update_id">
                                            <sch:assert test="not(@datatype) or @datatype='string'">
            <sch:value-of select="../@id"/> - datatype attribute for the <sch:name/> entity of a <sch:name path=".."/> should be 'string'</sch:assert>
                                      </sch:rule>
                                  </sch:pattern>
   <sch:pattern id="win-def_ssr_stype_special_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/win-def:shared_type">
                                                      <sch:report test=".='STYPE_SPECIAL'">
                                                            DEPRECATED ELEMENT VALUE IN: sharedresource_state ELEMENT VALUE: <sch:value-of select="."/>
                                                      </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
   <sch:pattern id="win-def_ssr_stype_temporary_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/win-def:shared_type">
                                                      <sch:report test=".='STYPE_TEMPORARY'">
                                                            DEPRECATED ELEMENT VALUE IN: sharedresource_state ELEMENT VALUE: <sch:value-of select="."/>
                                                      </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
   <sch:diagnostics/>
</sch:schema>