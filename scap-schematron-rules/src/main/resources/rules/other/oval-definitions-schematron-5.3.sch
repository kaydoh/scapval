<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
     <sch:title>schematron validation for an OVAL Definition file</sch:title>
     <sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
     <sch:ns prefix="oval" uri="http://oval.mitre.org/XMLSchema/oval-common-5"/>
     <sch:ns prefix="oval-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5"/>
     <sch:ns prefix="ind-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent"/>
     <sch:ns prefix="apache-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache"/>
     <sch:ns prefix="freebsd-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd"/>
     <sch:ns prefix="hpux-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux"/>
     <sch:ns prefix="ios-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios"/>
     <sch:ns prefix="linux-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux"/>
     <sch:ns prefix="macos-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos"/>
     <sch:ns prefix="sol-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris"/>
     <sch:ns prefix="unix-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix"/>
     <sch:ns prefix="win-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows"/>
     <sch:pattern id="empty_def_doc">
          <sch:rule context="oval-def:oval_definitions">
               <sch:assert test="oval-def:definitions or oval-def:tests or oval-def:objects or oval-def:states or oval-def:variables">A valid OVAL Definition document must contain at least one definitions, tests, objects, states, or variables element. The optional definitions, tests, objects, states, and variables sections define the specific characteristics that should be evaluated on a system to determine the truth values of the OVAL Definition Document. To be valid though, at least one definitions, tests, objects, states, or variables element must be present.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="test_type">
          <sch:rule context="/oval-def:oval_definitions/oval-def:tests/*[@check_existence='none_exist']">
               <sch:assert test="not(*[name()='state'])">
                    <sch:value-of select="@id"/> - No state should be referenced when check_existence has a value of 'none_exist'.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="setobjref">
          <sch:rule context="/oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:object_reference">
               <sch:assert test="name(./../..) = name(/oval-def:oval_definitions/oval-def:objects/*[@id=current()])">
                    <sch:value-of select="../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
          </sch:rule>
          <sch:rule context="/oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:object_reference">
               <sch:assert test="name(./../../..) = name(/oval-def:oval_definitions/oval-def:objects/*[@id=current()])">
                    <sch:value-of select="../../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
          </sch:rule>
          <sch:rule context="/oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:set/oval-def:object_reference">
               <sch:assert test="name(./../../../..) = name(/oval-def:oval_definitions/oval-def:objects/*[@id=current()])">
                    <sch:value-of select="../../../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="value">
          <sch:rule context="oval-def:constant_variable/oval-def:value">
               <sch:assert test=".!=''">The value element of the constant_variable <sch:value-of select="../../@id"/> can not be empty.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="literal_component">
          <sch:rule context="oval-def:literal_component">
               <sch:assert test=".!=''">The literal_component of variable <sch:value-of select="../../@id"/> can not be empty.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="item_field">
          <sch:rule context="oval-def:object_component">
               <sch:assert test="@item_field!=''">The item_field attribute of an object_component of variable <sch:value-of select="../../@id"/> can not be empty.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="entityvarref">
          <sch:rule context="oval-def:objects/*/*|oval-def:states/*/*">
               <sch:assert test="not(@var_ref) or .=''">
                    <sch:value-of select="../@id"/> - a var-ref has been supplied for the <sch:value-of select="name()"/> entity so no value should be provided</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="famtst">
          <sch:rule context="ind-def:family_test/ind-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:family_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a family_test must reference a family_object</sch:assert>
          </sch:rule>
          <sch:rule context="ind-def:family_test/ind-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:family_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a family_test must reference a family_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="famstefamily">
          <sch:rule context="ind-def:family_state/ind-def:family">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the family entity of a family_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the family entity of a family_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="md5tst">
          <sch:rule context="ind-def:filemd5_test/ind-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:filemd5_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a filemd5_test must reference a filemd5_object</sch:assert>
          </sch:rule>
          <sch:rule context="ind-def:filemd5_test/ind-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:filemd5_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a filemd5_test must reference a filemd5_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="md5objpath">
          <sch:rule context="ind-def:filemd5_object/ind-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a filemd5_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a filemd5_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="md5objfilename">
          <sch:rule context="ind-def:filemd5_object/ind-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filemd5_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a filemd5_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="md5stepath">
          <sch:rule context="ind-def:filemd5_state/ind-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a filemd5_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a filemd5_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="md5stefilename">
          <sch:rule context="ind-def:filemd5_state/ind-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filemd5_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a filemd5_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="md5stemd5">
          <sch:rule context="ind-def:filemd5_state/ind-def:md5">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the md5 entity of a filemd5_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the md5 entity of a filemd5_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="hashtst">
          <sch:rule context="ind-def:filehash_test/ind-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:filehash_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a filehash_test must reference a filesha1_object</sch:assert>
          </sch:rule>
          <sch:rule context="ind-def:filehash_test/ind-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:filehash_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a filehash_test must reference a filesha1_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="hashobjpath">
          <sch:rule context="ind-def:filehash_object/ind-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a filehash_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a filehash_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="hashobjfilename">
          <sch:rule context="ind-def:filehash_object/ind-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filehash_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a filehash_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="hashstepath">
          <sch:rule context="ind-def:filehash_state/ind-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a filehash_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a filehash_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="hashstefilename">
          <sch:rule context="ind-def:filehash_state/ind-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filehash_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a filehash_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="hashstemd5">
          <sch:rule context="ind-def:filehash_state/ind-def:md5">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the md5 entity of a filehash_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the md5 entity of a filehash_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="hashstesha1">
          <sch:rule context="ind-def:filehash_state/ind-def:sha1">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sha1 entity of a filehash_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the sha1 entity of a filehash_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="envtst">
          <sch:rule context="ind-def:environmentvariable_test/ind-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:environmentvariable_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of an environmentvariable_test must reference a environmentvariable_object</sch:assert>
          </sch:rule>
          <sch:rule context="ind-def:environmentvariable_test/ind-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:environmentvariable_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of an environmentvariable_test must reference a environmentvariable_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="envobjname">
          <sch:rule context="ind-def:environmentvariable_object/ind-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of an environmentvariable_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of an environmentvariable_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="envstename">
          <sch:rule context="ind-def:environmentvariable_state/ind-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of an environmentvariable_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of an environmentvariable_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="envstevalue">
          <sch:rule context="ind-def:environmentvariable_state/ind-def:value">
               <sch:assert test="((@datatype='binary' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='bool' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='float' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or (@datatype='int' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or ((@datatype='string' or not(@datatype)) and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match')) or (@datatype='version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')))">
                    <sch:value-of select="../@id"/> - the supplied operation attribute for the value entity of an environmentvariable_state is not valid given a datatype of '<sch:value-of select="@datatype"/>'</sch:assert>
               <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())">
                    <sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqltst">
          <sch:rule context="ind-def:sql_test/ind-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:sql_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a sql_test must reference a sql_object</sch:assert>
          </sch:rule>
          <sch:rule context="ind-def:sql_test/ind-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:sql_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a sql_test must reference a sql_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlobjdengine">
          <sch:rule context="ind-def:sql_object/ind-def:engine">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the engine entity of an sql_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals'">
                    <sch:value-of select="../@id"/> - operation attribute for the engine entity of an sql_object should be 'equals'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlobjversion">
          <sch:rule context="ind-def:sql_object/ind-def:version">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of an sql_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of an sql_object should be 'equals'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlobjconnection_string">
          <sch:rule context="ind-def:sql_object/ind-def:connection_string">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the connection_string entity of an sql_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals'">
                    <sch:value-of select="../@id"/> - operation attribute for the connection_string entity of an sql_object should be 'equals'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlobjsql">
          <sch:rule context="ind-def:sql_object/ind-def:sql">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sql entity of a sql_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals'">
                    <sch:value-of select="../@id"/> - operation attribute for the sql entity of a sql_object should be 'equals'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlsteengine">
          <sch:rule context="ind-def:sql_state/ind-def:engine">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the engine entity of an sql_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the engine entity of an sql_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlsteversion">
          <sch:rule context="ind-def:sql_state/ind-def:version">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of an sql_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of an sql_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlsteconnection_string">
          <sch:rule context="ind-def:sql_state/ind-def:connection_string">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the connection_string entity of an sql_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the connection_string entity of an sql_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlstesql">
          <sch:rule context="ind-def:sql_state/ind-def:sql">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sql entity of a sql_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the sql entity of a sql_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sqlsteresult">
          <sch:rule context="ind-def:sql_state/ind-def:result">
               <sch:assert test="((@datatype='binary' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='boolean' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='float' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or (@datatype='int' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or ((@datatype='string' or not(@datatype)) and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match')) or (@datatype='version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal')))">
                    <sch:value-of select="../@id"/> - the supplied operation attribute for the result entity of a sql_state is not valid given a datatype of '<sch:value-of select="@datatype"/>'</sch:assert>
               <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())">
                    <sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="txttst">
          <sch:rule context="ind-def:textfilecontent_test/ind-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a textfilecontent_test must reference a textfilecontent_object</sch:assert>
          </sch:rule>
          <sch:rule context="ind-def:textfilecontent_test/ind-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a textfilecontent_test must reference a textfilecontent_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="txtobjpath">
          <sch:rule context="ind-def:textfilecontent_object/ind-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a textfilecontent_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="txtobjfilename">
          <sch:rule context="ind-def:textfilecontent_object/ind-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a textfilecontent_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="txtobjline">
          <sch:rule context="ind-def:textfilecontent_object/ind-def:line">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the line entity of a textfilecontent_object should be 'string'</sch:assert>
               <sch:assert test="@operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the line entity of a textfilecontent_object should be 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="txtstepath">
          <sch:rule context="ind-def:textfilecontent_state/ind-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a textfilecontent_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="txtstefilename">
          <sch:rule context="ind-def:textfilecontent_state/ind-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a textfilecontent_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="txtsteline">
          <sch:rule context="ind-def:textfilecontent_state/ind-def:line">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the line entity of a textfilecontent_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the line entity of a textfilecontent_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="txtstesubexpression">
          <sch:rule context="ind-def:registry_state/ind-def:subexpression">
               <sch:assert test="((@datatype='binary' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='bool' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='float' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or (@datatype='int' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or ((@datatype='string' or not(@datatype)) and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match')) or (@datatype='version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')))">
                    <sch:value-of select="../@id"/> - the supplied operation attribute for the subexpression entity of a textfilecontent_state is not valid given a datatype of '<sch:value-of select="@datatype"/>'</sch:assert>
               <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())">
                    <sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="vattst">
          <sch:rule context="ind-def:variable_test/ind-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:variable_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a variable_test must reference a variable_object</sch:assert>
          </sch:rule>
          <sch:rule context="ind-def:variable_test/ind-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:variable_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a variable_test must reference a variable_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="varobjvar_ref">
          <sch:rule context="ind-def:variable_object/ind-def:var_ref">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the var_ref entity of a variable_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the var_ref entity of a variable_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="varstevar_ref">
          <sch:rule context="ind-def:variable_state/ind-def:var_ref">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the var_ref entity of a variable_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the var_ref entity of a variable_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="varstevalue">
          <sch:rule context="ind-def:variable_state/ind-def:value">
               <sch:assert test="((@datatype='binary' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='bool' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='evr_string' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or'))or (@datatype='float' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or (@datatype='ios_version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or (@datatype='int' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or ((@datatype='string' or not(@datatype)) and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match')) or (@datatype='version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')))">
                    <sch:value-of select="../@id"/> - the supplied operation attribute for the value entity of a variable_state is not valid given a datatype of '<sch:value-of select="@datatype"/>'</sch:assert>
               <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())">
                    <sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xmltst">
          <sch:rule context="ind-def:xmlfilecontent_test/ind-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:xmlfilecontent_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a xmlfilecontent_test must reference a xmlfilecontent_object</sch:assert>
          </sch:rule>
          <sch:rule context="ind-def:xmlfilecontent_test/ind-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:xmlfilecontent_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a xmlfilecontent_test must reference a xmlfilecontent_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xmlobjpath">
          <sch:rule context="ind-def:xmlfilecontent_object/ind-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a xmlfilecontent_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a xmlfilecontent_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xmlobjfilename">
          <sch:rule context="ind-def:xmlfilecontent_object/ind-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a xmlfilecontent_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a xmlfilecontent_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xmlobjxpath">
          <sch:rule context="ind-def:xmlfilecontent_object/ind-def:xpath">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the xpath entity of a xmlfilecontent_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals'">
                    <sch:value-of select="../@id"/> - operation attribute for the xpath entity of a xmlfilecontent_object should be 'equals'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xmlstepath">
          <sch:rule context="ind-def:xmlfilecontent_state/ind-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a xmlfilecontent_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a xmlfilecontent_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xmlstefilename">
          <sch:rule context="ind-def:xmlfilecontent_state/ind-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a xmlfilecontent_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a xmlfilecontent_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xmlstexpath">
          <sch:rule context="ind-def:xmlfilecontent_state/ind-def:xpath">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the xpath entity of a xmlfilecontent_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the xpath entity of a xmlfilecontent_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xmlstevalue_of">
          <sch:rule context="ind-def:xmlfilecontent_state/ind-def:value_of">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the value_of entity of a xmlfilecontent_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the value_of entity of a xmlfilecontent_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="httpdtst">
          <sch:rule context="apache-def:httpd_test/apache-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/apache-def:httpd_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a httpd_test must reference a httpd_object</sch:assert>
          </sch:rule>
          <sch:rule context="apache-def:httpd_test/apache-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/apache-def:httpd_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a httpd_test must reference a httpd_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="httpdstepath">
          <sch:rule context="apache-def:httpd_state/apache-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a httpd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a httpd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="httpdstebinaryname">
          <sch:rule context="apache-def:httpd_state/apache-def:binary_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the binary_name entity of a httpd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the binary_name entity of a httpd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="httpdsteversion">
          <sch:rule context="apache-def:httpd_state/apache-def:version">
               <sch:assert test="@datatype='version'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a httpd_state should be 'version'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a httpd_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="apachevertst">
          <sch:rule context="apache-def:version_test/apache-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/apache-def:version_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
          </sch:rule>
          <sch:rule context="apache-def:version_test/apache-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/apache-def:version_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="apcheversteversion">
          <sch:rule context="apache-def:version_state/apache-def:version">
               <sch:assert test="not(@datatype) or @datatype='version'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of an version_state should be 'version'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a version_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="portinfotst">
          <sch:rule context="freebsd-def:portinfo_test/freebsd-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/freebsd-def:portinfo_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a portinfo_test must reference an portinfo_object</sch:assert>
          </sch:rule>
          <sch:rule context="freebsd-def:portinfo_test/freebsd-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/freebsd-def:portinfo_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a portinfo_test must reference an portinfo_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="portinfoobjpkginst">
          <sch:rule context="freebsd-def:portinfo_object/freebsd-def:pkginst">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a portinfo_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pkginst entity of a portinfo_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="portinfostepkginst">
          <sch:rule context="freebsd-def:portinfo_state/freebsd-def:pkginst">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a portinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pkginst entity of a portinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="portinfostename">
          <sch:rule context="freebsd-def:portinfo_state/freebsd-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a portinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a portinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="portinfostecategory">
          <sch:rule context="freebsd-def:portinfo_state/freebsd-def:category">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the category entity of a portinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the category entity of a portinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="portinfosteversion">
          <sch:rule context="freebsd-def:portinfo_state/freebsd-def:version">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a portinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a portinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="portinfostevendor">
          <sch:rule context="freebsd-def:portinfo_state/freebsd-def:vendor">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a portinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the vendor entity of a portinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="portinfostedescription">
          <sch:rule context="freebsd-def:portinfo_state/freebsd-def:description">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the description entity of a portinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the description entity of a portinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="gcobjparameter_name">
          <sch:rule context="hpux-def:getconf_object/hpux-def:parameter_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the parameter_name entity of a getconf_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the parameter_name entity of a getconf_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="gcobjpathname">
          <sch:rule context="hpux-def:getconf_object/hpux-def:pathname">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pathname entity of a getconf_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pathname entity of a getconf_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="gcsteparameter_name">
          <sch:rule context="hpux-def:getconf_state/hpux-def:parameter_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the parameter_name entity of a getconf_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the parameter_name entity of a getconf_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="gcstepathname">
          <sch:rule context="hpux-def:getconf_state/hpux-def:pathname">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pathname entity of a getconf_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pathname entity of a getconf_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="gcsteoutput">
          <sch:rule context="hpux-def:getconf_state/hpux-def:output">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the output entity of a getconf_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the output entity of a getconf_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patch53objswtype">
          <sch:rule context="hpux-def:patch53_object/hpux-def:swtype">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the swtype entity of a patch53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patch53objarea_patched">
          <sch:rule context="hpux-def:patch_object/hpux-def:area_patched">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the area_patched entity of a patch53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patch53objpatch_base">
          <sch:rule context="hpux-def:patch_object/hpux-def:patch_base">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the patch_base entity of a patch53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patch53steswtype">
          <sch:rule context="hpux-def:patch53_state/hpux-def:swtype">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the swtype entity of a patch53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patch53stearea_patched">
          <sch:rule context="hpux-def:patch53_state/hpux-def:area_patched">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the area_patched entity of a patch53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patch53stepatch_base">
          <sch:rule context="hpux-def:patch53_state/hpux-def:patch_base">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the patch_base entity of a patch53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patchobjpatch_name">
          <sch:rule context="hpux-def:patch_object/hpux-def:patch_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the patch_name entity of a patch_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the patch_name entity of a patch_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patchstepatch_name">
          <sch:rule context="hpux-def:patch_state/hpux-def:patch_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the patch_name entity of a patch_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the patch_name entity of a patch_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patchsteswtype">
          <sch:rule context="hpux-def:patch_state/hpux-def:swtype">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the swtype entity of a patch_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patchstearea_patched">
          <sch:rule context="hpux-def:patch_state/hpux-def:area_patched">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the area_patched entity of a patch_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patchstepatch_base">
          <sch:rule context="hpux-def:patch_state/hpux-def:patch_base">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the patch_base entity of a patch_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="swlistobjswlist">
          <sch:rule context="hpux-def:swlist_object/hpux-def:swlist">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the swlist entity of a swlist_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the swlist entity of a swlist_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="swliststeswlist">
          <sch:rule context="hpux-def:swlist_state/hpux-def:swlist">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the swlist entity of a swlist_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the swlist entity of a swlist_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="swliststebundle">
          <sch:rule context="hpux-def:swlist_state/hpux-def:bundle">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the bundle entity of a swlist_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the bundle entity of a swlist_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="swliststefileset">
          <sch:rule context="hpux-def:swlist_state/hpux-def:fileset">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the fileset entity of a swlist_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the fileset entity of a swlist_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="swliststeversion">
          <sch:rule context="hpux-def:swlist_state/hpux-def:version">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a swlist_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a swlist_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="swliststetitle">
          <sch:rule context="hpux-def:swlist_state/hpux-def:title">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the title entity of a swlist_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the title entity of a swlist_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="swliststevendor">
          <sch:rule context="hpux-def:swlist_state/hpux-def:vendor">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a swlist_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the vendor entity of a swlist_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="trustobjusername">
          <sch:rule context="hpux-def:trusted_object/hpux-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of a trusted_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of a trusted_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeusername">
          <sch:rule context="hpux-def:trusted_state/hpux-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeuid">
          <sch:rule context="hpux-def:trusted_state/hpux-def:uid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the uid entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the uid entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepassword">
          <sch:rule context="hpux-def:trusted_state/hpux-def:password">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the password entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the password entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeaccount_owner">
          <sch:rule context="hpux-def:trusted_state/hpux-def:account_owner">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the account_owner entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the account_owner entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeboot_auth">
          <sch:rule context="hpux-def:trusted_state/hpux-def:boot_auth">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the boot_auth entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the boot_auth entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeaudit_id">
          <sch:rule context="hpux-def:trusted_state/hpux-def:audit_id">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the audit_id entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the audit_id entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeaudit_flag">
          <sch:rule context="hpux-def:trusted_state/hpux-def:audit_flag">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the audit_flag entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the audit_flag entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_change_min">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_min">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_change_min entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_change_min entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_max_size">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_max_size">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_max_size entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_max_size entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_expiration">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_expiration">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_expiration entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_expiration entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_life">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_life">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_life entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_life entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_change_s">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_s">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_change_s entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_change_s entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_change_u">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_u">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_change_u entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_change_u entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeacct_expire">
          <sch:rule context="hpux-def:trusted_state/hpux-def:acct_expire">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the acct_expire entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the acct_expire entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststemax_llogin">
          <sch:rule context="hpux-def:trusted_state/hpux-def:max_llogin">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the max_llogin entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the max_llogin entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeexp_warning">
          <sch:rule context="hpux-def:trusted_state/hpux-def:exp_warning">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the exp_warning entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the exp_warning entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststeusr_chg_pw">
          <sch:rule context="hpux-def:trusted_state/hpux-def:usr_chg_pw">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the usr_chg_pw entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the usr_chg_pw entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststegen_pw">
          <sch:rule context="hpux-def:trusted_state/hpux-def:gen_pw">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the gen_pw entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the gen_pw entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_restrict">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_restrict">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_restrict entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_restrict entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_null">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_null">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_null entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_null entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_gen_char">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_gen_char">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_gen_char entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_gen_char entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_gen_let">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_gen_let">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_gen_let entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_gen_let entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststelogin_time">
          <sch:rule context="hpux-def:trusted_state/hpux-def:login_time">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the login_time entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the login_time entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststepw_changer">
          <sch:rule context="hpux-def:trusted_state/hpux-def:pw_changer">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pw_changer entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pw_changer entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststelogin_time_s">
          <sch:rule context="hpux-def:trusted_state/hpux-def:login_time_s">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the login_time_s entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the login_time_s entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststelogin_time_u">
          <sch:rule context="hpux-def:trusted_state/hpux-def:login_time_u">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the login_time_u entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the login_time_u entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststelogin_tty_s">
          <sch:rule context="hpux-def:trusted_state/hpux-def:login_tty_s">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the login_tty_s entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the login_tty_s entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststelogin_tty_u">
          <sch:rule context="hpux-def:trusted_state/hpux-def:login_tty_u">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the login_tty_u entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the login_tty_u entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststenum_u_logins">
          <sch:rule context="hpux-def:trusted_state/hpux-def:num_u_logins">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the num_u_logins entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the num_u_logins entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststemax_u_logins">
          <sch:rule context="hpux-def:trusted_state/hpux-def:max_u_logins">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the max_u_logins entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the max_u_logins entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="truststelock_flag">
          <sch:rule context="hpux-def:trusted_state/hpux-def:lock_flag">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the lock_flag entity of a trusted_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the lock_flag entity of a trusted_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="globaltst">
          <sch:rule context="ios-def:global_test/ios-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:global_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a global_test must reference a global_object</sch:assert>
          </sch:rule>
          <sch:rule context="ios-def:global_test/ios-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:global_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a global_test must reference a global_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="globalobjglobal_command">
          <sch:rule context="ios-def:global_object/ios-def:global_command">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the global_command entity of a global_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the global_command entity of a global_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="globalsteglobal_command">
          <sch:rule context="ios-def:global_state/ios-def:global_command">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the global_command entity of a global_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the global_command entity of a global_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosinterfacetst">
          <sch:rule context="ios-def:interface_test/ios-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:interface_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
          </sch:rule>
          <sch:rule context="ios-def:interface_test/ios-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:interface_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosinterfaceobjname">
          <sch:rule context="ios-def:interface_object/ios-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of an interface_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosinterfacestename">
          <sch:rule context="ios-def:interface_state/ios-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosinterfacesteip_directed_broadcast_command">
          <sch:rule context="ios-def:interface_state/ios-def:ip_directed_broadcast_command">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the ip_directed_broadcast_command entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the ip_directed_broadcast_command entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosinterfacesteno_ip_directed_broadcast_command">
          <sch:rule context="ios-def:interface_state/ios-def:no_ip_directed_broadcast_command">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the no_ip_directed_broadcast_command entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the no_ip_directed_broadcast_command entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosinterfacesteproxy_arp_command">
          <sch:rule context="ios-def:interface_state/ios-def:proxy_arp_command">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the proxy_arp_command entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the proxy_arp_command entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosinterfacesteshutdown_command">
          <sch:rule context="ios-def:interface_state/ios-def:shutdown_command">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the shutdown_command entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the shutdown_command entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="linetst">
          <sch:rule context="ios-def:line_test/ios-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:line_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
          </sch:rule>
          <sch:rule context="ios-def:line_test/ios-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:line_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="lineobjshow_subcommand">
          <sch:rule context="ios-def:line_object/ios-def:show_subcommand">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the show_subcommand entity of a line_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="linesteshow_subcommand">
          <sch:rule context="ios-def:line_state/ios-def:show_subcommand">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the show_subcommand entity of a line_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="linesteconfig_line">
          <sch:rule context="ios-def:line_state/ios-def:config_line">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the config_line entity of a line_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the config_line entity of a line_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="snmptst">
          <sch:rule context="ios-def:snmp_test/ios-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:snmp_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a snmp_test must reference a snmp_object</sch:assert>
          </sch:rule>
          <sch:rule context="ios-def:snmp_test/ios-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:snmp_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a snmp_test must reference a snmp_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="snmpsteaccess_list">
          <sch:rule context="ios-def:snmp_state/ios-def:access_list">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_list entity of a snmp_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_list entity of a snmp_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="snmpstecommunity_name">
          <sch:rule context="ios-def:snmp_state/ios-def:community_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the community_name entity of a snmp_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the community_name entity of a snmp_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="tclshtst">
          <sch:rule context="ios-def:tclsh_test/ios-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:tclsh_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a tclsh_test must reference a tclsh_object</sch:assert>
          </sch:rule>
          <sch:rule context="ios-def:tclsh_test/ios-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:tclsh_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a tclsh_test must reference a tclsh_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="tclshsteavailable">
          <sch:rule context="ios-def:tclsh_state/ios-def:available">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the available entity of a tclsh_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the available entity of a tclsh_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosvertst">
          <sch:rule context="ios-def:version_test/ios-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:version_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
          </sch:rule>
          <sch:rule context="ios-def:version_test/ios-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:version_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosverstemajor_release">
          <sch:rule context="ios-def:version_state/ios-def:major_release">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the major_release entity of a version_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the major_release entity of a version_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosverstetrain_number">
          <sch:rule context="ios-def:version_state/ios-def:train_number">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the train_number entity of a version_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the train_number entity of a version_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosverstetrain_identifier">
          <sch:rule context="ios-def:version_state/ios-def:train_identifier">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the train_identifier entity of a version_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the train_identifier entity of a version_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="iosversteversion_string">
          <sch:rule context="ios-def:version_state/ios-def:version_string">
               <sch:assert test="not(@datatype) or @datatype='ios_version'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version_string entity of a version_state should be 'ios_version'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the version_string entity of a version_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="dpkgobjname">
          <sch:rule context="linux-def:dpkginfo_object/linux-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a dpkginfo_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a dpkginfo_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="dpkgstename">
          <sch:rule context="linux-def:dpkginfo_state/linux-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a dpkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a dpkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="dpkgstearch">
          <sch:rule context="linux-def:dpkginfo_state/linux-def:arch">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the arch entity of a dpkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the arch entity of a dpkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="dpkgsteepoch">
          <sch:rule context="linux-def:dpkginfo_state/linux-def:epoch">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the epoch entity of a dpkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or 'pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the epoch entity of a dpkginfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="dpkgsterelease">
          <sch:rule context="linux-def:dpkginfo_state/linux-def:release">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the release entity of a dpkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or 'pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the release entity of a dpkginfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="dpkgsteversion">
          <sch:rule context="linux-def:dpkginfo_state/linux-def:version">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a dpkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or 'pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a dpkginfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="dpkgsteevr">
          <sch:rule context="linux-def:dpkginfo_state/linux-def:evr">
               <sch:assert test="not(@datatype) or @datatype='evr_string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the evr entity of a dpkginfo_state should be 'evr_string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or 'pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the evr entity of a dpkginfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilsobjprotocol">
          <sch:rule context="linux-def:inetlisteningservers_object/linux-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of an inetlisteningservers_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilsobjlocal_address">
          <sch:rule context="linux-def:inetlisteningservers_object/linux-def:local_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_address entity of an inetlisteningservers_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilsobjlocal_port">
          <sch:rule context="linux-def:inetlisteningservers_object/linux-def:local_port">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_port entity of an inetlisteningservers_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilssteprotocol">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilsstelocal_address">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilsstelocal_port">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_port">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_port entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilsstelocal_full_address">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_full_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_full_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilssteprogram_name">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:program_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the program_name entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilssteforeign_address">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the foreign_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the foreign_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilssteforeign_port">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_port">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the foreign_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the foreign_port entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilssteforeign_full_address">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_full_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilsstepid">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:pid">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pid entity of an inetlisteningservers_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the pid entity of an inetlisteningservers_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ilssteuser_id">
          <sch:rule context="linux-def:inetlisteningservers_state/linux-def:user_id">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user_id entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rpmobjname">
          <sch:rule context="linux-def:rpminfo_object/linux-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a rpminfo_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a rpminfo_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rpmstename">
          <sch:rule context="linux-def:rpminfo_state/linux-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a rpminfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a rpminfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rpmstearch">
          <sch:rule context="linux-def:rpminfo_state/linux-def:arch">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the arch entity of a rpminfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the arch entity of a rpminfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rpmsteepoch">
          <sch:rule context="linux-def:rpminfo_state/linux-def:epoch">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the epoch entity of a rpminfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the epoch entity of a rpminfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rpmsterelease">
          <sch:rule context="linux-def:rpminfo_state/linux-def:release">
               <sch:assert test="not(@datatype) or @datatype='string' or @datatype='version'">
                    <sch:value-of select="../@id"/> - datatype attribute for the release entity of a rpminfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the release entity of a rpminfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rpmsteversion">
          <sch:rule context="linux-def:rpminfo_state/linux-def:version">
               <sch:assert test="not(@datatype) or @datatype='string' or @datatype='version'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a rpminfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a rpminfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rpmsteevr">
          <sch:rule context="linux-def:rpminfo_state/linux-def:evr">
               <sch:assert test="not(@datatype) or @datatype='evr_string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the evr entity of a rpminfo_state should be 'evr_string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the evr entity of a rpminfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rpmstesignaturekeyid">
          <sch:rule context="linux-def:rpminfo_state/linux-def:signature_keyid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the signature_keyid entity of a rpminfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the signature_keyid entity of a rpminfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="spkginfoobjname">
          <sch:rule context="linux-def:slackwarepkginfo_object/linux-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a slackwarepkginfo_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a slackwarepkginfo_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="spkginfostename">
          <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a slackwarepkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a slackwarepkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="spkginfosteversion">
          <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:version">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a slackwarepkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a slackwarepkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="spkginfostearch">
          <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:architecture">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the architecture entity of a slackwarepkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the architecture entity of a slackwarepkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="spkginfosterevision">
          <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:revision">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the revision entity of a slackwarepkginfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the revision entity of a slackwarepkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="accountobjusername">
          <sch:rule context="macos-def:accountinfo_object/macos-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of an accountinfo_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of an accountinfo_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="accountsteusername">
          <sch:rule context="macos-def:accountinfo_state/macos-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of an accountinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of an accountinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="accountstepassword">
          <sch:rule context="macos-def:accountinfo_state/macos-def:password">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the password entity of an accountinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the password entity of an accountinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="accountsteuid">
          <sch:rule context="macos-def:accountinfo_state/macos-def:uid">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the uid entity of an accountinfo_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the uid entity of an accountinfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="accountstegid">
          <sch:rule context="macos-def:accountinfo_state/macos-def:gid">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the gid entity of an accountinfo_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the gid entity of an accountinfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="accountsterealname">
          <sch:rule context="macos-def:accountinfo_state/macos-def:realname">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the realname entity of an accountinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the realname entity of an accountinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="accountstehome_dir">
          <sch:rule context="macos-def:accountinfo_state/macos-def:home_dir">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the home_dir entity of an accountinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the home_dir entity of an accountinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="accountstelogin_shell">
          <sch:rule context="macos-def:accountinfo_state/macos-def:login_shell">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the login_shell entity of an accountinfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the login_shell entity of an accountinfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilsobjprogram_name">
          <sch:rule context="macos-def:inetlisteningservers_object/macos-def:program_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the program_name entity of an inetlisteningservers_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilssteprogram_name">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:program_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the program_name entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilsstelocal_address">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilsstelocal_full_address">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_full_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_full_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilsstelocal_port">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_port">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_port entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilssteforeign_address">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the foreign_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the foreign_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilssteforeign_full_address">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_full_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilssteforeign_port">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_port">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the foreign_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the foreign_port entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilsstepid">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:pid">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pid entity of an inetlisteningservers_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the pid entity of an inetlisteningservers_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilssteprotocol">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="macosilssteuser_id">
          <sch:rule context="macos-def:inetlisteningservers_state/macos-def:user_id">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of an inetlisteningservers_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user_id entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="nvramobjnvram_var">
          <sch:rule context="macos-def:nvram_object/macos-def:nvram_var">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the nvram_var entity of a nvram_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the nvram_var entity of a nvram_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="nvramstenvram_var">
          <sch:rule context="macos-def:nvram_state/macos-def:nvram_var">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the nvram_var entity of a nvram_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the nvram_var entity of a nvram_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="nvramstenvram_value">
          <sch:rule context="macos-def:nvram_state/macos-def:nvram_value">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the nvram_value entity of a nvram_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the nvram_value entity of a nvram_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpobjusername">
          <sch:rule context="macos-def:pwpolicy_object/macos-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of a pwpolicy_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of a pwpolicy_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpobjuserpass">
          <sch:rule context="macos-def:pwpolicy_object/macos-def:userpass">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the userpass entity of a pwpolicy_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the userpass entity of a pwpolicy_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpobjdirectory_node">
          <sch:rule context="macos-def:pwpolicy_object/macos-def:directory_node">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the directory_node entity of a pwpolicy_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the directory_node entity of a pwpolicy_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpsteusername">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of a pwpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of a pwpolicy_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpsteuserpass">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:userpass">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the userpass entity of a pwpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals'">
                    <sch:value-of select="../@id"/> - operation attribute for the userpass entity of a pwpolicy_state should be 'equals'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpstedirectory_node">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:directory_node">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the directory_node entity of a pwpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the directory_node entity of a pwpolicy_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpstemaxChars">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:maxChars">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the maxChars entity of a pwpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the maxChars entity of a pwpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpstemaxFailedLoginAttempts">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:maxFailedLoginAttempts">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the maxFailedLoginAttempts entity of a pwpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the maxFailedLoginAttempts entity of a pwpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpsteminChars">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:minChars">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the minChars entity of a pwpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the minChars entity of a pwpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpstepasswordCannotBeName">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:passwordCannotBeName">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the passwordCannotBeName entity of a pwpolicy_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the passwordCannotBeName entity of a pwpolicy_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpsterequiresAlpha">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:requiresAlpha">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the requiresAlpha entity of a pwpolicy_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the requiresAlpha entity of a pwpolicy_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pwpsterequiresNumeric">
          <sch:rule context="macos-def:pwpolicy_state/macos-def:requiresNumeric">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the requiresNumeric entity of a pwpolicy_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the requiresNumeric entity of a pwpolicy_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="isastebits">
          <sch:rule context="sol-def:isainfo_state/sol-def:bits">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the bits entity of an isainfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the bits entity of an isainfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="isastekernel_isa">
          <sch:rule context="sol-def:isainfo_state/sol-def:kernel_isa">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the kernel_isa entity of an isainfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the kernel_isa entity of an isainfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="isasteapplication_isa">
          <sch:rule context="sol-def:isainfo_state/sol-def:application_isa">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the application_isa entity of an isainfo_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the application_isa entity of an isainfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="packageobjpkginst">
          <sch:rule context="sol-def:package_object/sol-def:pkginst">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a package_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pkginst entity of a package_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="packagestepkginst">
          <sch:rule context="sol-def:package_state/sol-def:pkginst">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a package_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the pkginst entity of a package_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="packagestename">
          <sch:rule context="sol-def:package_state/sol-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a package_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a package_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="packagestecategory">
          <sch:rule context="sol-def:package_state/sol-def:category">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the category entity of a package_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the category entity of a package_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="packagesteversion">
          <sch:rule context="sol-def:package_state/sol-def:version">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a package_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a package_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="packagestevendor">
          <sch:rule context="sol-def:package_state/sol-def:vendor">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a package_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the vendor entity of a package_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="packagestedescription">
          <sch:rule context="sol-def:package_state/sol-def:description">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the description entity of a package_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the description entity of a package_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patchobjbase">
          <sch:rule context="sol-def:patch_object/sol-def:base">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the base entity of a patch_object should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the base entity of a patch_object should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patchstebase">
          <sch:rule context="sol-def:patch_state/sol-def:base">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the base entity of a patch_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the base entity of a patch_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="patchsteversion">
          <sch:rule context="sol-def:patch_state/sol-def:version">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a patch_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a patch_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfileobjpath">
          <sch:rule context="unix-def:file_object/unix-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a file_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfileobjfilename">
          <sch:rule context="unix-def:file_object/unix-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a file_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestepath">
          <sch:rule context="unix-def:file_state/unix-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestefilename">
          <sch:rule context="unix-def:file_state/unix-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestetype">
          <sch:rule context="unix-def:file_state/unix-def:type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the type entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the type entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestegroup_id">
          <sch:rule context="unix-def:file_state/unix-def:group_id">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the group_id entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the group_id entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilesteuser_id">
          <sch:rule context="unix-def:file_state/unix-def:user_id">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user_id entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestea_time">
          <sch:rule context="unix-def:file_state/unix-def:a_time">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the a_time entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the a_time entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestec_time">
          <sch:rule context="unix-def:file_state/unix-def:c_time">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the c_time entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the c_time entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestem_time">
          <sch:rule context="unix-def:file_state/unix-def:m_time">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the m_time entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the m_time entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestesize">
          <sch:rule context="unix-def:file_state/unix-def:size">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the size entity of a file_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the size entity of a file_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestesuid">
          <sch:rule context="unix-def:file_state/unix-def:suid">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the suid entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the suid entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestesgid">
          <sch:rule context="unix-def:file_state/unix-def:sgid">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sgid entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sgid entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestesticky">
          <sch:rule context="unix-def:file_state/unix-def:sticky">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sticky entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sticky entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilesteuread">
          <sch:rule context="unix-def:file_state/unix-def:uread">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the uread entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the uread entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilesteuwrite">
          <sch:rule context="unix-def:file_state/unix-def:uwrite">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the uwrite entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the uwrite entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilesteuexec">
          <sch:rule context="unix-def:file_state/unix-def:uexec">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the uexec entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the uexec entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestegread">
          <sch:rule context="unix-def:file_state/unix-def:gread">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the gread entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the gread entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestegwrite">
          <sch:rule context="unix-def:file_state/unix-def:gwrite">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the gwrite entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the gwrite entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilestegexec">
          <sch:rule context="unix-def:file_state/unix-def:gexec">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the gexec entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the gexec entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilesteoread">
          <sch:rule context="unix-def:file_state/unix-def:oread">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the oread entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the oread entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilesteowrite">
          <sch:rule context="unix-def:file_state/unix-def:owrite">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the owrite entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the owrite entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixfilesteoexec">
          <sch:rule context="unix-def:file_state/unix-def:oexec">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the oexec entity of a file_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the oexec entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdobjprotocol">
          <sch:rule context="unix-def:inetd_object/unix-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetd_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of an inetd_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdobjservice_name">
          <sch:rule context="unix-def:inetd_object/unix-def:service_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an inetd_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the service_name entity of an inetd_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdsteprotocol">
          <sch:rule context="unix-def:inetd_state/unix-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of an inetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdsteservice_name">
          <sch:rule context="unix-def:inetd_state/unix-def:service_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an inetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the service_name entity of an inetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdsteserver_program">
          <sch:rule context="unix-def:inetd_state/unix-def:server_program">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the server_program entity of an inetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the server_program entity of an inetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdsteserver_arguments">
          <sch:rule context="unix-def:inetd_state/unix-def:server_arguments">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the server_arguments entity of an inetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the server_arguments entity of an inetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdsteendpoint_type">
          <sch:rule context="unix-def:inetd_state/unix-def:endpoint_type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the endpoint_type entity of an inetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the endpoint_type entity of an inetd_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdsteexec_as_user">
          <sch:rule context="unix-def:inetd_state/unix-def:exec_as_user">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the exec_as_user entity of an inetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the exec_as_user entity of an inetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="inetdstewait_status">
          <sch:rule context="unix-def:inetd_state/unix-def:wait_status">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the wait_status entity of an inetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the wait_status entity of an inetd_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixinterfaceobjname">
          <sch:rule context="unix-def:interface_object/unix-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of an interface_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixinterfacestename">
          <sch:rule context="unix-def:interface_state/unix-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixinterfacestehardware_addr">
          <sch:rule context="unix-def:interface_state/unix-def:hardware_addr">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the hardware_addr entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the hardware_addr entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixinterfacesteinet_addr">
          <sch:rule context="unix-def:interface_state/unix-def:inet_addr">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the inet_addr entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the inet_addr entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixinterfacestebroadcast_addr">
          <sch:rule context="unix-def:interface_state/unix-def:broadcast_addr">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the broadcast_addr entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the broadcast_addr entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixinterfacestenetmask">
          <sch:rule context="unix-def:interface_state/unix-def:netmask">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the netmask entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the netmask entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixinterfacesteflag">
          <sch:rule context="unix-def:interface_state/unix-def:flag">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for a flag entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the flag entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="passwordobjusername">
          <sch:rule context="unix-def:password_object/unix-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of a password_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of a password_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="passwordsteusername">
          <sch:rule context="unix-def:package_state/unix-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of a password_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of a password_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="passwordstepassword">
          <sch:rule context="unix-def:package_state/unix-def:password">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the password entity of a password_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the password entity of a password_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="passwordsteuser_id">
          <sch:rule context="unix-def:package_state/unix-def:user_id">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a password_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user_id entity of a password_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="passwordstegroup_id">
          <sch:rule context="unix-def:package_state/unix-def:group_id">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the group_id entity of a password_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the group_id entity of a password_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="passwordstegcos">
          <sch:rule context="unix-def:package_state/unix-def:gcos">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the gcos entity of a password_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the gcos entity of a password_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="passwordstehome_dir">
          <sch:rule context="unix-def:package_state/unix-def:home_dir">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the home_dir entity of a password_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the home_dir entity of a password_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="passwordstelogin_shell">
          <sch:rule context="unix-def:package_state/unix-def:login_shell">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the login_shell entity of a password_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the login_shell entity of a password_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocessobjcommand">
          <sch:rule context="unix-def:process_object/unix-def:command">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the command entity of a process_object be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the command entity of a process_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocessstecommand">
          <sch:rule context="unix-def:process_state/unix-def:command">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the command entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the command entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocesssteexec_time">
          <sch:rule context="unix-def:process_state/unix-def:exec_time">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the exec_time entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the exec_time entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocessstepid">
          <sch:rule context="unix-def:process_state/unix-def:pid">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pid entity of a process_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the pid entity of a process_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocesssteppid">
          <sch:rule context="unix-def:process_state/unix-def:ppid">
               <sch:assert test="not(@datatype) or @datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the ppid entity of a process_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the ppid entity of a process_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocessstepriority">
          <sch:rule context="unix-def:process_state/unix-def:priority">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the priority entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the priority entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocessstescheduling_class">
          <sch:rule context="unix-def:process_state/unix-def:scheduling_class">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the scheduling_class entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the scheduling_class entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocessstestart_time">
          <sch:rule context="unix-def:process_state/unix-def:start_time">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the start_time entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the start_time entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocessstetty">
          <sch:rule context="unix-def:process_state/unix-def:tty">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the tty entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the tty entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixprocesssteuser_id">
          <sch:rule context="unix-def:process_state/unix-def:user_id">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user_id entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixrlobjservice_name">
          <sch:rule context="unix-def:runlevel_object/unix-def:service_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a runlevel_object be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the service_name entity of a runlevel_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixrlobjrunlevel">
          <sch:rule context="unix-def:runlevel_object/unix-def:runlevel">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the runlevel entity of a runlevel_object be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the runlevel entity of a runlevel_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixrlsteservice_name">
          <sch:rule context="unix-def:runlevel_state/unix-def:service_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a runlevel_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the service_name entity of a runlevel_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixrlsterunlevel">
          <sch:rule context="unix-def:runlevel_state/unix-def:runlevel">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the runlevel entity of a runlevel_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the runlevel entity of a runlevel_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixrlstestart">
          <sch:rule context="unix-def:runlevel_state/unix-def:start">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the start entity of a runlevel_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the start entity of a runlevel_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unixrlstekill">
          <sch:rule context="unix-def:runlevel_state/unix-def:kill">
               <sch:assert test="not(@datatype) or @datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the kill entity of a runlevel_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the kill entity of a runlevel_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsobjpath">
          <sch:rule context="unix-def:file_object/unix-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a sccs_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a sccs_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsobjfilename">
          <sch:rule context="unix-def:file_object/unix-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a sccs_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a sccs_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsstepath">
          <sch:rule context="unix-def:sccs_state/unix-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsstefilename">
          <sch:rule context="unix-def:sccs_state/unix-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsstemodule_name">
          <sch:rule context="unix-def:sccs_state/unix-def:module_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the module_name entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the module_name entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsstemodule_type">
          <sch:rule context="unix-def:sccs_state/unix-def:module_type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the module_type entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the module_type entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccssterelease">
          <sch:rule context="unix-def:sccs_state/unix-def:release">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the release entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the release entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsstelevel">
          <sch:rule context="unix-def:sccs_state/unix-def:level">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the level entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the level entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsstebranch">
          <sch:rule context="unix-def:sccs_state/unix-def:branch">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the branch entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the branch entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsstesequence">
          <sch:rule context="unix-def:sccs_state/unix-def:sequence">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sequence entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the sequence entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sccsstewhat_string">
          <sch:rule context="unix-def:sccs_state/unix-def:what_string">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the what_string entity of a sccs_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the what_string entity of a sccs_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowobjusername">
          <sch:rule context="unix-def:shadow_object/unix-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of a shadow_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of a shadow_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowsteusername">
          <sch:rule context="unix-def:shadow_state/unix-def:username">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the username entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the username entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowstepassword">
          <sch:rule context="unix-def:shadow_state/unix-def:password">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the password entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the password entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowstechg_lst">
          <sch:rule context="unix-def:shadow_state/unix-def:chg_lst">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the chg_lst entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the chg_lst entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowstechg_allow">
          <sch:rule context="unix-def:shadow_state/unix-def:chg_allow">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the chg_allow entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the chg_allow entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowstechg_req">
          <sch:rule context="unix-def:shadow_state/unix-def:chg_req">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the chg_req entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the chg_req entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowsteexp_warn">
          <sch:rule context="unix-def:shadow_state/unix-def:exp_warn">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the exp_warn entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the exp_warn entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowsteexp_inact">
          <sch:rule context="unix-def:shadow_state/unix-def:exp_inact">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the exp_inact entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the exp_inact entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowsteexp_date">
          <sch:rule context="unix-def:shadow_state/unix-def:exp_date">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the exp_date entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the exp_date entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="shadowsteflag">
          <sch:rule context="unix-def:shadow_state/unix-def:flag">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the flag entity of a shadow_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the flag entity of a shadow_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unamestemachine_class">
          <sch:rule context="unix-def:uname_state/unix-def:machine_class">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the machine_class entity of a uname_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the machine_class entity of a uname_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unamestenode_name">
          <sch:rule context="unix-def:uname_state/unix-def:node_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the node_name entity of a uname_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the node_name entity of a uname_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unamesteos_name">
          <sch:rule context="unix-def:uname_state/unix-def:os_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the os_name entity of a uname_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the os_name entity of a uname_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unamesteos_release">
          <sch:rule context="unix-def:uname_state/unix-def:os_release">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the os_release entity of a uname_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the os_release entity of a uname_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unamesteos_version">
          <sch:rule context="unix-def:uname_state/unix-def:os_version">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the os_version entity of a uname_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the os_version entity of a uname_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="unamesteprocessor_type">
          <sch:rule context="unix-def:uname_state/unix-def:processor_type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the processor_type entity of a uname_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the processor_type entity of a uname_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdobjprotocol">
          <sch:rule context="unix-def:xinetd_object/unix-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an xinetd_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of an xinetd_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdobjservice_name">
          <sch:rule context="unix-def:xinetd_object/unix-def:service_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an xinetd_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the service_name entity of an xinetd_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdsteprotocol">
          <sch:rule context="unix-def:xinetd_state/unix-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdsteservice_name">
          <sch:rule context="unix-def:xinetd_state/unix-def:service_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the service_name entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdsteflags">
          <sch:rule context="unix-def:xinetd_state/unix-def:flags">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the flags entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the flags entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdstenoaccess">
          <sch:rule context="unix-def:xinetd_state/unix-def:no_access">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the no_access entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the no_access entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdsteonlyfrom">
          <sch:rule context="unix-def:xinetd_state/unix-def:only_from">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the only_from entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the only_from entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdsteport">
          <sch:rule context="unix-def:xinetd_state/unix-def:port">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the port entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the port entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdsteserver">
          <sch:rule context="unix-def:xinetd_state/unix-def:server">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the server entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the server entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdsteserverarguments">
          <sch:rule context="unix-def:xinetd_state/unix-def:server_arguments">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the server_arguments entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the server_arguments entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdstesockettype">
          <sch:rule context="unix-def:xinetd_state/unix-def:socket_type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the socket_type entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the socket_type entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdstetype">
          <sch:rule context="unix-def:xinetd_state/unix-def:type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the type entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the type entity of an xinetd_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdsteuser">
          <sch:rule context="unix-def:xinetd_state/unix-def:user">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user entity of an xinetd_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user entity of an xinetd_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdstewait">
          <sch:rule context="unix-def:xinetd_state/unix-def:wait">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the wait entity of an xinetd_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the wait entity of an xinetd should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="xinetdstedisabled">
          <sch:rule context="unix-def:xinetd_state/unix-def:disabled">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the disabled entity of an xinetd_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the disabled entity of an xinetd should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="affected_platform">
          <sch:rule context="oval-def:affected[@family='windows']">
               <sch:assert test="not(oval-def:platform) or oval-def:platform='Microsoft Windows 95' or oval-def:platform='Microsoft Windows 98' or oval-def:platform='Microsoft Windows ME' or oval-def:platform='Microsoft Windows NT' or oval-def:platform='Microsoft Windows 2000' or oval-def:platform='Microsoft Windows XP' or oval-def:platform='Microsoft Windows Server 2003' or oval-def:platform='Microsoft Windows Vista' or oval-def:platform='Microsoft Windows Server 2008' or oval-def:platform='Microsoft Windows 7' or oval-def:platform='Microsoft Windows Server 2008 R2' or oval-def:platform='Microsoft Windows 8' or oval-def:platform='Microsoft Windows Server 2012' or oval-def:platform='Microsoft Windows 8.1' or oval-def:platform='Microsoft Windows Server 2012 R2' or oval-def:platform='Microsoft Windows 10' or oval-def:platform='Microsoft Windows Server 2016'">
                    <sch:value-of select="../../@id"/> - the value "<sch:value-of select="oval-def:platform"/>" found in platform element as part of the affected element is not a valid windows platform.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="attst">
          <sch:rule context="win-def:accesstoken_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of an accesstoken_test must reference an accesstoken_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:accesstoken_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:accesstoken_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of an accesstoken_test must reference an accesstoken_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atobjsecurity_principle">
          <sch:rule context="win-def:accesstoken_object/win-def:security_principle">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the security_principle entity of an accesstoken_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the security_principle entity of an accesstoken_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesecurity_principle">
          <sch:rule context="win-def:accesstoken_state/win-def:security_principle">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the security_principle entity of an accesstoken_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the security_principle entity of an accesstoken_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseassignprimarytokenprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seassignprimarytokenprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seassignprimarytokenprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seassignprimarytokenprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseauditprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seauditprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seauditprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seauditprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesebackupprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:sebackupprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sebackupprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sebackupprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesechangenotifyprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:sechangenotifyprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sechangenotifyprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sechangenotifyprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesecreateglobalprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:secreateglobalprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the secreateglobalprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the secreateglobalprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesecreatepagefileprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:secreatepagefileprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the secreatepagefileprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the secreatepagefileprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesecreatepermanentprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:secreatepermanentprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the secreatepermanentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for thesecreatepermanentprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesecreatesymboliclinkprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:secreatesymboliclinkprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the secreatesymboliclinkprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the secreatesymboliclinkprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesecreatetokenprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:secreatetokenprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the secreatetokenprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the secreatetokenprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesedebugprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:sedebugprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sedebugprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sedebugprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseenabledelegationprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seenabledelegationprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seenabledelegationprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seenabledelegationprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseimpersonateprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seimpersonateprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seimpersonateprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seimpersonateprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseincreasebasepriorityprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seincreasebasepriorityprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seincreasebasepriorityprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seincreasebasepriorityprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseincreasequotaprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seincreasequotaprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seincreasequotaprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seincreasequotaprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseincreaseworkingsetprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seincreaseworkingsetprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seincreaseworkingsetprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seincreaseworkingsetprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseloaddriverprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seloaddriverprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seloaddriverprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seloaddriverprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteselockmemoryprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:selockmemoryprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the selockmemoryprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the selockmemoryprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesemachineaccountprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:semachineaccountprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the semachineaccountprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the semachineaccountprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesemanagevolumeprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:semanagevolumeprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the semanagevolumeprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the semanagevolumeprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseprofilesingleprocessprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seprofilesingleprocessprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seprofilesingleprocessprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seprofilesingleprocessprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteserelabelprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:serelabelprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the serelabelprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the serelabelprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseremoteshutdownprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seremoteshutdownprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seremoteshutdownprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seremoteshutdownprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteserestoreprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:serestoreprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the serestoreprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the serestoreprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesesecurityprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:sesecurityprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sesecurityprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sesecurityprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseshutdownprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seshutdownprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seshutdownprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seshutdownprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesesyncagentprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:sesyncagentprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sesyncagentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sesyncagentprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesesystemenvironmentprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:sesystemenvironmentprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sesystemenvironmentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sesystemenvironmentprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesesystemprofileprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:sesystemprofileprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sesystemprofileprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sesystemprofileprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesesystemtimeprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:sesystemtimeprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sesystemtimeprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sesystemtimeprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesetakeownershipprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:setakeownershipprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the setakeownershipprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the setakeownershipprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesetcbprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:setcbprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the setcbprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the setcbprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesetimezoneprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:setimezoneprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the setimezoneprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the setimezoneprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseundockprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seundockprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seundockprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seundockprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseunsolicitedinputprivilege">
          <sch:rule context="win-def:accesstoken_state/win-def:seunsolicitedinputprivilege">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seunsolicitedinputprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seunsolicitedinputprivilege entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesebatchlogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:sebatchlogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sebatchlogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sebatchlogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseinteractivelogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:seinteractivelogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seinteractivelogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesenetworklogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:senetworklogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the senetworklogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the senetworklogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseremoteinteractivelogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:seremoteinteractivelogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seremoteinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seremoteinteractivelogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atsteseservicelogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:seservicelogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the seservicelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the seservicelogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesedenybatchLogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:sedenybatchLogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sedenybatchLogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sedenybatchLogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesedenyinteractivelogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:sedenyinteractivelogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sedenyinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sedenyinteractivelogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesedenynetworklogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:sedenynetworklogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sedenynetworklogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sedenynetworklogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesedenyremoteInteractivelogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:sedenyremoteInteractivelogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sedenyremoteInteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sedenyremoteInteractivelogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="atstesedenyservicelogonright">
          <sch:rule context="win-def:accesstoken_state/win-def:sedenyservicelogonright">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sedenyservicelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sedenyservicelogonright entity of an accesstoken_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adtst">
          <sch:rule context="win-def:activedirectory_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:activedirectory_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of an activedirectory_test must reference an activedirectory_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:activedirectory_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:activedirectory_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of an activedirectory_test must reference an activedirectory_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adobjnaming_context">
          <sch:rule context="win-def:activedirectory_object/win-def:naming_context">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the naming_context entity of an activedirectory_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the naming_context entity of an activedirectory_object should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adobjrelative_dn">
          <sch:rule context="win-def:activedirectory_object/win-def:relative_dn">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an activedirectory_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the relative_dn entity of an activedirectory_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
               <sch:assert test="not(@xsi:nil='true') or ../win-def:attribute/@xsi:nil='true'">
                    <sch:value-of select="../@id"/> - attribute entity must be nil when relative_dn is nil</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adobjattribute">
          <sch:rule context="win-def:activedirectory_object/win-def:attribute">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an activedirectory_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the attribute entity of an activedirectory_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adstenaming_context">
          <sch:rule context="win-def:activedirectory_state/win-def:naming_context">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the naming_context entity of an activedirectory_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the naming_context entity of an activedirectory_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adsterelative_dn">
          <sch:rule context="win-def:activedirectory_state/win-def:relative_dn">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an activedirectory_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the relative_dn entity of an activedirectory_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adsteattribute">
          <sch:rule context="win-def:activedirectory_state/win-def:attribute">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an activedirectory_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the attribute entity of an activedirectory_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adsteobject_class">
          <sch:rule context="win-def:activedirectory_state/win-def:object_class">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the object_class entity of an activedirectory_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the object_class entity of an activedirectory_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adsteadstype">
          <sch:rule context="win-def:activedirectory_state/win-def:adstype">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the adstype entity of an activedirectory_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the adstype entity of an activedirectory_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="adstevalue">
          <sch:rule context="win-def:activedirectory_state/win-def:value">
               <sch:assert test="((@datatype='binary' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='boolean' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='float' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or (@datatype='int' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or ((@datatype='string' or not(@datatype)) and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match')) or (@datatype='version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal')))">
                    <sch:value-of select="../@id"/> - the supplied operation attribute for the value entity of an activedirectory_state is not valid given a datatype of '<sch:value-of select="@datatype"/>'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aeptst">
          <sch:rule context="win-def:auditeventpolicy_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicy_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of an auditeventpolicy_test must reference an auditeventpolicy_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:auditeventpolicy_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicy_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of an auditeventpolicy_test must reference an auditeventpolicy_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsteaccount_logon">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:account_logon">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the account_logon entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the account_logon entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsteaccount_management">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:account_management">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the account_management entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the account_management entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepstedetailed_tracking">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:detailed_tracking">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the detailed_tracking entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the detailed_tracking entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepstedirectory_service_access">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:directory_service_access">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the directory_service_access entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the directory_service_access entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepstelogon">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:logon">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the logon entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the logon entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsteobject_access">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:object_access">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the object_access entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the object_access entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepstepolicy_change">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:policy_change">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the policy_change entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the policy_change entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsteprivilege_use">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:privilege_use">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the privilege_use entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the privilege_use entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepstesystem">
          <sch:rule context="win-def:auditeventpolicy_state/win-def:system">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the system entity of an auditeventpolicy_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the system entity of an auditeventpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepstst">
          <sch:rule context="win-def:auditeventpolicysubcategories_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicysubcategories_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:auditeventpolicysubcategories_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicysubcategories_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstecredentialvalidation">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:credential_validation">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the credential_validation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the credential_validation entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstekerberosticketevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:kerberos_ticket_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the kerberos_ticket_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the kerberos_ticket_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteotheraccountlogonevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_account_logon_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the other_account_logon_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the other_account_logon_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteapplicationgroupmanagement">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:application_group_management">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the application_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the application_group_management entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstecomputeraccountmanagement">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:computer_account_management">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the computer_account_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the computer_account_management entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstedistributiongroupmanagement">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:distribution_group_management">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the distribution_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the distribution_group_management entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteotheraccountmanagementevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_account_management_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the other_account_management_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the other_account_management_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstesecuritygroupmanagement">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_group_management">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the security_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the security_group_management entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteuseraccountmanagement">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:user_account_management">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user_account_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the user_account_management entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstedpapiactivity">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:dpapi_activity">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the dpapi_activity entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the dpapi_activity entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteprocesscreation">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:process_creation">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the process_creation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the process_creation entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteprocesstermination">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:process_termination">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the process_termination entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the process_termination entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssterpcevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:rpc_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the rpc_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the rpc_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstedirectoryserviceaccess">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_access">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the directory_service_access entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the directory_service_access entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstedirectoryservicechanges">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_changes">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the directory_service_changes entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the directory_service_changes entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstedirectoryservicereplication">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_replication">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the directory_service_replication entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the directory_service_replication entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstedetaileddirectoryservicereplication">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:detailed_directory_service_replication">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the detailed_directory_service_replication entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the detailed_directory_service_replication entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteaccountlockout">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:account_lockout">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the account_lockout entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the account_lockout entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteipsecextendedmode">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_extended_mode">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the ipsec_extended_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the ipsec_extended_mode entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteipsecmainmode">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_main_mode">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the ipsec_main_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the ipsec_main_mode entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteipsec_quick_mode">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_quick_mode">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the ipsec_quick_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the ipsec_quick_mode entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstelogoff">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:logoff">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the logoff entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the logoff entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstelogon">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:logon">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the logon entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the logon entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteotherlogonlogoffevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_logon_logoff_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the other_logon_logoff_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the other_logon_logoff_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstespeciallogon">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:special_logon">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the special_logon entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the special_logon entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteapplicationgenerated">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:application_generated">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the application_generated entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the application_generated entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstecertificationservices">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:certification_services">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the certification_services entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the certification_services entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstefileshare">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:file_share">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_share entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_share entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstefilesystem">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:file_system">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_system entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_system entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstefilteringplatformconnection">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_connection">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_connection entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the filtering_platform_connection entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstefilteringplatformpacketdrop">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_packet_drop">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_packet_drop entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the filtering_platform_packet_drop entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstehandlemanipulation">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:handle_manipulation">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the handle_manipulation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the handle_manipulation entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstekernelobject">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:kernel_object">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the kernel_object entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the kernel_object entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteotherobjectaccessevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_object_access_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the other_object_access_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the other_object_access_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteregistry">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:registry">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the registry entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the registry entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstesam">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:sam">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sam entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sam entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteauditpolicychange">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:audit_policy_change">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the audit_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the audit_policy_change entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteauthenticationpolicychange">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:authentication_policy_change">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the authentication_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the authentication_policy_change entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteauthorizationpolicychange">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:authorization_policy_change">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the authorization_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the authorization_policy_change entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstefilteringplatformpolicychange">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_policy_change">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the filtering_platform_policy_change entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstempssvcrulelevelpolicychange">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:mpssvc_rule_level_policy_change">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the mpssvc_rule_level_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the mpssvc_rule_level_policy_change entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteotherpolicychangeevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_policy_change_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the other_policy_change_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the other_policy_change_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstenonsensitiveprivilegeuse">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:non_sensitive_privilege_use">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the non_sensitive_privilege_use entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the non_sensitive_privilege_use entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteotherprivilegeuseevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_privilege_use_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the other_privilege_use_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the other_privilege_use_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstesensitive_privilege_use">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:sensitive_privilege_use">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the sensitive_privilege_use entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the sensitive_privilege_use entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteipsecdriver">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_driver">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the ipsec_driver entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the ipsec_driver entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepssteothersystemevents">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_system_events">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the other_system_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the other_system_events entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstesecuritystatechange">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_state_change">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the security_state_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the security_state_change entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstesecuritysystemextension">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_system_extension">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the security_system_extension entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the security_system_extension entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="aepsstesystemintegrity">
          <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:system_integrity">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the system_integrity entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the system_integrity entity of an auditeventpolicysubcategories_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filetst">
          <sch:rule context="win-def:file_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:file_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a file_test must reference a file_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:file_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:file_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a file_test must reference a file_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fileobjpath">
          <sch:rule context="win-def:file_object/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a file_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fileobjfilename">
          <sch:rule context="win-def:file_object/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a file_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
               <!-- 2010-04-13 - Adam Halbardier - The test of the following assertion has been replaced with the equivalent test from the OVAL 5.5 Schematron rules.  The original test -->
               <!--                                for this assertion had flawed logic that would cause any context element with @operation="pattern match" to fail.                     -->
               <!-- <sch:assert test="(not(@operation) or @operation='equals' or @operation='not equal') and not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?')) or contains(.,'&gt;') or contains(.,'|')"> -->
               <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')">
                    <sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestepath">
          <sch:rule context="win-def:file_state/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestefilename">
          <sch:rule context="win-def:file_state/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filesteowner">
          <sch:rule context="win-def:file_state/win-def:owner">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the owner entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the owner entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestesize">
          <sch:rule context="win-def:file_state/win-def:size">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the size entity of a file_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the size entity of a file_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestea_time">
          <sch:rule context="win-def:file_state/win-def:a_time">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the a_time entity of a file_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the a_time entity of a file_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestec_time">
          <sch:rule context="win-def:file_state/win-def:c_time">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the c_time entity of a file_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the c_time entity of a file_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestem_time">
          <sch:rule context="win-def:file_state/win-def:m_time">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the m_time entity of a file_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the m_time entity of a file_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestems_checksum">
          <sch:rule context="win-def:file_state/win-def:ms_checksum">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the ms_checksum entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the ms_checksum entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filesteversion">
          <sch:rule context="win-def:file_state/win-def:version">
               <sch:assert test="@datatype='version'">
                    <sch:value-of select="../@id"/> - datatype attribute for the version entity of a file_state should be 'version'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the version entity of a file_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestetype">
          <sch:rule context="win-def:file_state/win-def:type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the type entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the type entity of a file_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestedevelopment_class">
          <sch:rule context="win-def:file_state/win-def:development_class">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the development_class entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the development_class entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestecompany">
          <sch:rule context="win-def:file_state/win-def:company">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the company entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the company entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filesteinternalname">
          <sch:rule context="win-def:file_state/win-def:internal_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the internal_name entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the internal_name entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filestelanguage">
          <sch:rule context="win-def:file_state/win-def:language">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the language entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the language entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filesteoriginalfilename">
          <sch:rule context="win-def:file_state/win-def:original_filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the original_filename entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the original_filename entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filesteproductname">
          <sch:rule context="win-def:file_state/win-def:product_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the product_name entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the product_name entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="filesteproductversion">
          <sch:rule context="win-def:file_state/win-def:product_version">
               <sch:assert test="@datatype='version'">
                    <sch:value-of select="../@id"/> - datatype attribute for the product_version entity of a file_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the product_version entity of a file_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53tst">
          <sch:rule context="win-def:fileauditedpermissions53_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:fileauditedpermissions53_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions53_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53objpath">
          <sch:rule context="win-def:fileauditedpermissions53_object/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a fileauditedpermissions53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53objfilename">
          <sch:rule context="win-def:fileauditedpermissions53_object/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a fileauditedpermissions53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53objtrustee_sid">
          <sch:rule context="win-def:fileauditedpermissions53_object/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a fileauditedpermissions53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stepath">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a fileauditedpermissions53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefilename">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a fileauditedpermissions53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stetrustee_sid">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a fileauditedpermissions53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stestandard_delete">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_delete">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_delete entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stestandard_read_control">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_read_control">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_read_control entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stestandard_write_dac">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_write_dac">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stestandard_write_owner">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_write_owner">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stestandard_synchronize">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_synchronize">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53steaccess_system_security">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:access_system_security">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_system_security entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stegeneric_read">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_read">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_read entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stegeneric_write">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_write">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_write entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stegeneric_execute">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_execute">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_execute entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stegeneric_all">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_all">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_all entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_read_data">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_data">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_read_data entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_write_data">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_data">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_write_data entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_append_data">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_append_data">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_append_data entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_read_ea">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_ea">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_read_ea entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_write_ea">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_ea">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_write_ea entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_execute">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_execute">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_execute entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_delete_child">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_delete_child">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_delete_child entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_read_attributes">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_attributes">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_read_attributes entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fap53stefile_write_attributes">
          <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_attributes">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_write_attributes entity of a fileauditedpermissions53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="faptst">
          <sch:rule context="win-def:fileauditedpermissions_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/@id">
                    <value-of select="../@id"/> - the object child element of a fileauditedpermissions_test must reference a fileauditedpermissions_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:fileauditedpermissions_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions_state/@id">
                    <value-of select="../@id"/> - the state child element of a fileauditedpermissions_test must reference a fileauditedpermissions_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapobjpath">
          <sch:rule context="win-def:fileauditedpermissions_object/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the path entity of a fileauditedpermissions_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapobjfilename">
          <sch:rule context="win-def:fileauditedpermissions_object/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the filename entity of a fileauditedpermissions_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapobjtrustee_name">
          <sch:rule context="win-def:fileauditedpermissions_object/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileauditedpermissions_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the trustee_name entity of a fileauditedpermissions_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstepath">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the path entity of a fileauditedpermissions_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefilename">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the filename entity of a fileauditedpermissions_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstetrustee_name">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the trustee_name entity of a fileauditedpermissions_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstestandard_delete">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_delete">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_delete entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstestandard_read_control">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_read_control">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_read_control entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstestandard_write_dac">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_write_dac">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstestandard_write_owner">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_write_owner">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstestandard_synchronize">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_synchronize">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapsteaccess_system_security">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:access_system_security">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the access_system_security entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstegeneric_read">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_read">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_read entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstegeneric_write">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_write">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_write entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstegeneric_execute">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_execute">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_execute entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstegeneric_all">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_all">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_all entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_read_data">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_data">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_read_data entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_write_data">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_data">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_write_data entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_append_data">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_append_data">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_append_data entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_read_ea">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_ea">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_read_ea entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_write_ea">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_ea">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_write_ea entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_execute">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_execute">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_execute entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_delete_child">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_delete_child">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_delete_child entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_read_attributes">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_attributes">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_read_attributes entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fapstefile_write_attributes">
          <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_attributes">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_write_attributes entity of a fileauditedpermissions_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53tst">
          <sch:rule context="win-def:fileeffectiverights53_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a fileeffectiverights53_test must reference a fileeffectiverights53_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:fileeffectiverights53_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights53_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a fileeffectiverights53_test must reference a fileeffectiverights53_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53objpath">
          <sch:rule context="win-def:fileeffectiverights53_object/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a fileeffectiverights53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53objfilename">
          <sch:rule context="win-def:fileeffectiverights53_object/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a fileeffectiverights53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53objtrustee_sid">
          <sch:rule context="win-def:fileeffectiverights53_object/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileeffectiverights53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a fileeffectiverights53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stepath">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the path entity of a fileeffectiverights53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefilename">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the filename entity of a fileeffectiverights53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stetrustee_sid">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileeffectiverights53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a fileeffectiverights53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stestandard_delete">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_delete">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_delete entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stestandard_read_control">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_read_control">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_read_control entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stestandard_write_dac">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_write_dac">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stestandard_write_owner">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_write_owner">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stestandard_synchronize">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_synchronize">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53steaccess_system_security">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:access_system_security">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_system_security entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stegeneric_read">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_read">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_read entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stegeneric_write">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_write">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_write entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stegeneric_execute">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_execute">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_execute entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stegeneric_all">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_all">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_all entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_read_data">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_data">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_read_data entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_write_data">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_data">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_write_data entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_append_data">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_append_data">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_append_data entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_read_ea">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_ea">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_read_ea entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_write_ea">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_ea">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_write_ea entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_execute">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_execute">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_execute entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_delete_child">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_delete_child">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_delete_child entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_read_attributes">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_attributes">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_read_attributes entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fer53stefile_write_attributes">
          <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_attributes">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_write_attributes entity of a fileeffectiverights53_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fertst">
          <sch:rule context="win-def:fileeffectiverights_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/@id">
                    <value-of select="../@id"/> - the object child element of a fileeffectiverights_test must reference a fileeffectiverights_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:fileeffectiverights_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights_state/@id">
                    <value-of select="../@id"/> - the state child element of a fileeffectiverights_test must reference a fileeffectiverights_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fefobjpath">
          <sch:rule context="win-def:fileeffectiverights_object/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the path entity of a fileeffectiverights_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fefobjfilename">
          <sch:rule context="win-def:fileeffectiverights_object/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the filename entity of a fileeffectiverights_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fefobjtrustee_name">
          <sch:rule context="win-def:fileeffectiverights_object/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileeffectiverights_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the trustee_name entity of a fileeffectiverights_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstepath">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the path entity of a fileeffectiverights_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefilename">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:filename">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the filename entity of a fileeffectiverights_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstetrustee_name">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileeffectiverights_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the trustee_name entity of a fileeffectiverights_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstestandard_delete">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_delete">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_delete entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstestandard_read_control">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_read_control">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_read_control entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstestandard_write_dac">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_write_dac">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstestandard_write_owner">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_write_owner">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstestandard_synchronize">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_synchronize">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="fersteaccess_system_security">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:access_system_security">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the access_system_security entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstegeneric_read">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_read">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_read entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstegeneric_write">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_write">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_write entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstegeneric_execute">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_execute">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_execute entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstegeneric_all">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_all">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_all entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_read_data">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_data">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_read_data entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_write_data">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_data">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_write_data entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_append_data">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_append_data">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_append_data entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_read_ea">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_ea">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_read_ea entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_write_ea">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_ea">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_write_ea entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_execute">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_execute">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_execute entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_delete_child">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_delete_child">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_delete_child entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_read_attributes">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_attributes">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_read_attributes entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ferstefile_write_attributes">
          <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_attributes">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the file_write_attributes entity of a fileeffectiverights_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="grouptst">
          <sch:rule context="win-def:group_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:group_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a group_test must reference a group_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:group_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:group_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a group_test must reference a group_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="groupobjgroup">
          <sch:rule context="win-def:group_object/win-def:group">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the group entity of a group_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the group entity of a group_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="groupstegroup">
          <sch:rule context="win-def:group_state/win-def:group">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the group entity of a group_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the group entity of a group_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="groupsteuser">
          <sch:rule context="win-def:group_state/win-def:user">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user entity of a group_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user entity of a group_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacetst">
          <sch:rule context="win-def:interface_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:interface_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:interface_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:interface_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfaceobjname">
          <sch:rule context="win-def:interface_object/win-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a interface_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a interface_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacestename">
          <sch:rule context="win-def:interface_state/win-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacesteindex">
          <sch:rule context="win-def:interface_state/win-def:index">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the index entity of an interface_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the index entity of an interface_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacestetype">
          <sch:rule context="win-def:interface_state/win-def:type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the type entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the type entity of an interface_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacestehardware_addr">
          <sch:rule context="win-def:interface_state/win-def:hardware_addr">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the hardware_addr entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the hardware_addr entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacesteinet_addr">
          <sch:rule context="win-def:interface_state/win-def:inet_addr">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the inet_addr entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the inet_addr entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacestebroadcast_addr">
          <sch:rule context="win-def:interface_state/win-def:broadcast_addr">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the broadcast_addr entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the broadcast_addr entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacestenetmask">
          <sch:rule context="win-def:interface_state/win-def:netmask">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the netmask entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the netmask entity of an interface_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wininterfacesteaddr_type">
          <sch:rule context="win-def:interface_state/win-def:addr_type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the addr_type entity of an interface_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the addr_type entity of an interface_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="lptst">
          <sch:rule context="win-def:lockoutpolicy_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:lockoutpolicy_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a lockoutpolicy_test must reference a lockoutpolicy_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:lockoutpolicy_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:lockoutpolicy_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a lockoutpolicy_test must reference a lockoutpolicy_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="lpsteforce_logoff">
          <sch:rule context="win-def:lockoutpolicy_state/win-def:force_logoff">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the force_logoff entity of a lockoutpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the force_logoff entity of a lockoutpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="lpstelockout_duration">
          <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_duration">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the lockout_duration entity of a lockoutpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the lockout_duration entity of a lockoutpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="lpstelockout_observation_window">
          <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_observation_window">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the lockout_observation_window entity of a lockoutpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the lockout_observation_window entity of a lockoutpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="lpstelockout_threshold">
          <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_threshold">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the lockout_threshold entity of a lockoutpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the lockout_threshold entity of a lockoutpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabasetst">
          <sch:rule context="win-def:metabase_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:metabase_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a metabase_test must reference a metabase_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:metabase_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:metabase_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a metabase_test must reference a metabase_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabaseobjkey">
          <sch:rule context="win-def:metabase_object/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key entity of a metabase_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the key entity of a metabase_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabaseobjid">
          <sch:rule context="win-def:metabase_object/win-def:id">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the id entity of a metabase_object should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the id entity of a metabase_object should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabasestekey">
          <sch:rule context="win-def:metabase_state/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key entity of a metabase_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the key entity of a metabase_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabasesteid">
          <sch:rule context="win-def:metabase_state/win-def:id">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the id entity of a metabase_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the id entity of a metabase_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabasestename">
          <sch:rule context="win-def:metabase_state/win-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a metabase_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a metabase_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabasesteuser_type">
          <sch:rule context="win-def:metabase_state/win-def:user_type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user_type entity of a metabase_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user_type entity of a metabase_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabasestedata_type">
          <sch:rule context="win-def:metabase_state/win-def:data_type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the data_type entity of a metabase_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the data_type entity of a metabase_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="metabasestedata">
          <sch:rule context="win-def:metabase_state/win-def:data">
               <sch:assert test="((@datatype='binary' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='boolean' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='float' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or (@datatype='int' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or ((@datatype='string' or not(@datatype)) and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match')) or (@datatype='version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal')))">
                    <sch:value-of select="../@id"/> - the supplied operation attribute for the data entity of a metabase_state is not valid given a datatype of '<sch:value-of select="@datatype"/>'</sch:assert>
               <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())">
                    <sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pptst">
          <sch:rule context="win-def:passwordpolicy_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:passwordpolicy_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a passwordpolicy_test must reference a passwordpolicy_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:passwordpolicy_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:passwordpolicy_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a passwordpolicy_test must reference a passwordpolicy_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ppstemax_passwd_age">
          <sch:rule context="win-def:passwordpolicy_state/win-def:max_passwd_age">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the max_passwd_age entity of a passwordpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the max_passwd_age entity of a passwordpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ppstemin_passwd_age">
          <sch:rule context="win-def:passwordpolicy_state/win-def:min_passwd_age">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the min_passwd_age entity of a passwordpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the min_passwd_age entity of a passwordpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ppstemin_passwd_len">
          <sch:rule context="win-def:passwordpolicy_state/win-def:min_passwd_len">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the min_passwd_len entity of a passwordpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the min_passwd_len entity of a passwordpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ppstepassword_hist_len">
          <sch:rule context="win-def:passwordpolicy_state/win-def:password_hist_len">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the password_hist_len entity of a passwordpolicy_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the password_hist_len entity of a passwordpolicy_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ppstepassword_complexity">
          <sch:rule context="win-def:passwordpolicy_state/win-def:password_complexity">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the password_complexity entity of an passwordpolicy_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the password_complexity entity of an passwordpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="ppstereversible_encryption">
          <sch:rule context="win-def:passwordpolicy_state/win-def:reversible_encryption">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the reversible_encryption entity of an passwordpolicy_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the reversible_encryption entity of an passwordpolicy_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="winporttst">
          <sch:rule context="win-def:port_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:port_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a port_test must reference a port_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:port_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:port_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a port_test must reference a port_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="winportobjlocal_address">
          <sch:rule context="win-def:port_object/win-def:local_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of a port_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_address entity of a port_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="winportobjlocal_port">
          <sch:rule context="win-def:port_object/win-def:local_port">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of a port_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_port entity of a port_object should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="winportobjprotocol">
          <sch:rule context="win-def:port_object/win-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of a port_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of a port_object should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="winportstelocal_address">
          <sch:rule context="win-def:port_state/win-def:local_address">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_address entity of a port_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_address entity of a port_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="winportstelocal_port">
          <sch:rule context="win-def:port_state/win-def:local_port">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_port entity of a port_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_port entity of a port_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="winportsteprotocol">
          <sch:rule context="win-def:port_state/win-def:protocol">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the protocol entity of a port_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the protocol entity of a port_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="winportstepid">
          <sch:rule context="win-def:port_state/win-def:pid">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pid entity of a port_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the pid entity of a port_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="pertst">
          <sch:rule context="win-def:printereffectiverights_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a printereffectiverights_test must reference a printereffectiverights_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:printereffectiverights_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:printereffectiverights_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a printereffectiverights_test must reference a printereffectiverights_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perobjprinter_name">
          <sch:rule context="win-def:printereffectiverights_object/win-def:printer_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the kprinter_nameey entity of a printereffectiverights_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the printer_name entity of a printereffectiverights_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perobjtrustee_sid">
          <sch:rule context="win-def:printereffectiverights_object/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a printereffectiverights_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a printereffectiverights_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rersteprinter_name">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:printer_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the printer_name entity of a printereffectiverights_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the printer_name entity of a printereffectiverights_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstetrustee_sid">
          <sch:rule context="win-def:printereffectiverights_state/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a printereffectiverights_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a printereffectiverights_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstestandard_delete">
          <sch:rule context="win-def:printereffectiverights_state/win-def:standard_delete">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_delete entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstestandard_read_control">
          <sch:rule context="win-def:printereffectiverights_state/win-def:standard_read_control">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_read_control entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstestandard_write_dac">
          <sch:rule context="win-def:printereffectiverights_state/win-def:standard_write_dac">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstestandard_write_owner">
          <sch:rule context="win-def:printereffectiverights_state/win-def:standard_write_owner">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstestandard_synchronize">
          <sch:rule context="win-def:printereffectiverights_state/win-def:standard_synchronize">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="persteaccess_system_security">
          <sch:rule context="win-def:printereffectiverights_state/win-def:access_system_security">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_system_security entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstegeneric_read">
          <sch:rule context="win-def:printereffectiverights_state/win-def:generic_read">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_read entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstegeneric_write">
          <sch:rule context="win-def:printereffectiverights_state/win-def:generic_write">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_write entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstegeneric_execute">
          <sch:rule context="win-def:printereffectiverights_state/win-def:generic_execute">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_execute entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstegeneric_all">
          <sch:rule context="win-def:printereffectiverights_state/win-def:generic_all">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_all entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="persteprinter_access_administer">
          <sch:rule context="win-def:printereffectiverights_state/win-def:printer_access_administer">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the printer_access_administer entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the printer_access_administer entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="persteprinter_access_use">
          <sch:rule context="win-def:printereffectiverights_state/win-def:printer_access_use">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the printer_access_use entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the printer_access_use entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstejob_access_administer">
          <sch:rule context="win-def:printereffectiverights_state/win-def:job_access_administer">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the job_access_administer entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the job_access_administer entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="perstejob_access_read">
          <sch:rule context="win-def:printereffectiverights_state/win-def:job_access_read">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the job_access_read entity of a printereffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the job_access_read entity of a printereffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="processtst">
          <sch:rule context="win-def:process_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:process_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a process_test must reference a process_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:process_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:process_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a process_test must reference a process_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="processobjcommand_line">
          <sch:rule context="win-def:process_object/win-def:command_line">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the command_line entity of a process_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the command_line entity of a process_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="processstecommand_line">
          <sch:rule context="win-def:process_state/win-def:command_line">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the command_line entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the command_line entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="processstepid">
          <sch:rule context="win-def:port_state/win-def:pid">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the pid entity of a port_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the pid entity of a port_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="processsteppid">
          <sch:rule context="win-def:port_state/win-def:ppid">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the ppid entity of a port_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the ppid entity of a port_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="processstepriority">
          <sch:rule context="win-def:process_state/win-def:priority">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the priority entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the priority entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="processsteimage_path">
          <sch:rule context="win-def:process_state/win-def:image_path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the image_path entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the image_path entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="processstecurrent_dir">
          <sch:rule context="win-def:process_state/win-def:current_dir">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the current_dir entity of a process_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the current_dir entity of a process_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regtst">
          <sch:rule context="win-def:registry_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:registry_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a registry_test must reference a registry_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:registry_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:registry_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a registry_test must reference a registry_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regobjhive">
          <sch:rule context="win-def:registry_object/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a registry_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the hive entity of a registry_object should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regobjkey">
          <sch:rule context="win-def:registry_object/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key entity of a registry_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the key entity of a registry_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
               <sch:assert test="not(@xsi:nil='true') or ../win-def:name/@xsi:nil='true'">
                    <sch:value-of select="../@id"/> - name entity must be nil when key is nil</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regobjname">
          <sch:rule context="win-def:registry_object/win-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a registry_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a registry_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regstehive">
          <sch:rule context="win-def:registry_state/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a registry_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the hive entity of a registry_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regstekey">
          <sch:rule context="win-def:registry_state/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key entity of a registry_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the key entity of a registry_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regstename">
          <sch:rule context="win-def:registry_state/win-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a registry_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a registry_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regstetype">
          <sch:rule context="win-def:registry_state/win-def:type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the type entity of a registry_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the type entity of a registry_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="regstevalue">
          <sch:rule context="win-def:registry_state/win-def:value">
               <sch:assert test="((@datatype='binary' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='int' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or ((@datatype='string' or not(@datatype)) and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match')) or (@datatype='version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal')) or (@datatype='boolean' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='evr_string' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal')) or (@datatype='float' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal')) or (@datatype='ios_version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal')))">
                    <sch:value-of select="../@id"/> - the supplied operation attribute for the value entity of a registry_state is not valid given a datatype of '<sch:value-of select="@datatype"/>'</sch:assert>
               <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())">
                    <sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
               <!-- we can use the xpath 2.0 function matches() to define assertions for other datatypes -->
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53tst">
          <sch:rule context="win-def:regkeyauditedpermissions53_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:regkeyauditedpermissions53_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions53_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53objhive">
          <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the hive entity of a regkeyauditedpermissions53_object should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53objkey">
          <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the key entity of a regkeyauditedpermissions53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53objtrustee_sid">
          <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a regkeyauditedpermissions53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stehive">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the hive entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the key entity of a regkeyauditedpermissions53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stetrustee_sid">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a regkeyauditedpermissions53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stestandard_delete">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_delete">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_delete entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stestandard_read_control">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_read_control">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_read_control entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stestandard_write_dac">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_write_dac">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stestandard_write_owner">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_write_owner">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stestandard_synchronize">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_synchronize">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53steaccess_system_security">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:access_system_security">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_system_security entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stegeneric_read">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_read">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_read entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stegeneric_write">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_write">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_write entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stegeneric_execute">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_execute">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_execute entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stegeneric_all">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_all">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_all entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_query_value">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_query_value">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_query_value entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_set_value">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_set_value">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_set_value entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_create_sub_key">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_create_sub_key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_create_sub_key entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_enumerate_sub_keys">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_enumerate_sub_keys">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_enumerate_sub_keys entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_notify">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_notify">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_notify entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_create_link">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_create_link">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_create_link entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_wow64_64key">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_64key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_wow64_64key entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_wow64_32key">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_32key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_wow64_32key entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rap53stekey_wow64_res">
          <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_res">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_wow64_res entity of a regkeyauditedpermissions53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="raptst">
          <sch:rule context="win-def:regkeyauditedpermissions_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/@id">
                    <value-of select="../@id"/> - the object child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:regkeyauditedpermissions_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions_state/@id">
                    <value-of select="../@id"/> - the state child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapobjhive">
          <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the hive entity of a regkeyauditedpermissions_object should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapobjkey">
          <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the key entity of a regkeyauditedpermissions_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapobjtrustee_name">
          <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the trustee_name entity of a regkeyauditedpermissions_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstehive">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the hive entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the key entity of a regkeyauditedpermissions_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstetrustee_name">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the trustee_name entity of a regkeyauditedpermissions_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstestandard_delete">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_delete">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_delete entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstestandard_read_control">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_read_control">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_read_control entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstestandard_write_dac">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_write_dac">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstestandard_write_owner">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_write_owner">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstestandard_synchronize">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_synchronize">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapsteaccess_system_security">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:access_system_security">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the access_system_security entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstegeneric_read">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_read">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_read entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstegeneric_write">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_write">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_write entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstegeneric_execute">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_execute">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_execute entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstegeneric_all">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_all">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_all entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_query_value">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_query_value">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_query_value entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_set_value">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_set_value">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_set_value entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_create_sub_key">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_create_sub_key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_create_sub_key entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_enumerate_sub_keys">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_enumerate_sub_keys">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_enumerate_sub_keys entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_notify">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_notify">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_notify entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_create_link">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_create_link">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_create_link entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_wow64_64key">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_64key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_wow64_64key entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_wow64_32key">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_32key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_wow64_32key entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rapstekey_wow64_res">
          <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_res">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_wow64_res entity of a regkeyauditedpermissions_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53tst">
          <sch:rule context="win-def:regkeyeffectiverights53_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:regkeyeffectiverights_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights53_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53objhive">
          <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the hive entity of a regkeyeffectiverights53_object should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53objkey">
          <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the key entity of a regkeyeffectiverights53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53objtrustee_sid">
          <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a regkeyeffectiverights53_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stehive">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the hive entity of a regkeyeffectiverights53_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the key entity of a regkeyeffectiverights53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stetrustee_sid">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a regkeyeffectiverights53_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stestandard_delete">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_delete">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_delete entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stestandard_read_control">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_read_control">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_read_control entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stestandard_write_dac">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_write_dac">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stestandard_write_owner">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_write_owner">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stestandard_synchronize">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_synchronize">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53steaccess_system_security">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:access_system_security">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_system_security entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stegeneric_read">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_read">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_read entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stegeneric_write">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_write">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_write entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stegeneric_execute">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_execute">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_execute entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stegeneric_all">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_all">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the generic_all entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_query_value">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_query_value">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_query_value entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_set_value">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_set_value">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_set_value entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_create_sub_key">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_create_sub_key">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_create_sub_key entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_enumerate_sub_keys">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_enumerate_sub_keys">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_enumerate_sub_keys entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_notify">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_notify">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_notify entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_create_link">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_create_link">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_create_link entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_wow64_64key">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_64key">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_wow64_64key entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_wow64_32key">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_32key">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_wow64_32key entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rer53stekey_wow64_res">
          <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_res">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the key_wow64_res entity of a regkeyeffectiverights53_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rertst">
          <sch:rule context="win-def:regkeyeffectiverights_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/@id">
                    <value-of select="../@id"/> - the object child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:regkeyeffectiverights_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights_state/@id">
                    <value-of select="../@id"/> - the state child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerobjhive">
          <sch:rule context="win-def:regkeyeffectiverights_object/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the hive entity of a regkeyeffectiverights_object should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerobjkey">
          <sch:rule context="win-def:regkeyeffectiverights_object/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the key entity of a regkeyeffectiverights_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerobjtrustee_name">
          <sch:rule context="win-def:regkeyeffectiverights_object/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the trustee_name entity of a regkeyeffectiverights_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstehive">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:hive">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the hive entity of a regkeyeffectiverights_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the key entity of a regkeyeffectiverights_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstetrustee_name">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <value-of select="../@id"/> - operation attribute for the trustee_name entity of a regkeyeffectiverights_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstestandard_delete">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_delete">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_delete entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstestandard_read_control">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_read_control">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_read_control entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstestandard_write_dac">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_write_dac">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_write_dac entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstestandard_write_owner">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_write_owner">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_write_owner entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstestandard_synchronize">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_synchronize">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the standard_synchronize entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rersteaccess_system_security">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:access_system_security">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the access_system_security entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstegeneric_read">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_read">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_read entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstegeneric_write">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_write">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_write entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstegeneric_execute">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_execute">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_execute entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstegeneric_all">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_all">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the generic_all entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_query_value">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_query_value">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_query_value entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_set_value">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_set_value">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_set_value entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_create_sub_key">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_create_sub_key">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_create_sub_key entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_enumerate_sub_keys">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_enumerate_sub_keys">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_enumerate_sub_keys entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_notify">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_notify">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_notify entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_create_link">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_create_link">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_create_link entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_wow64_64key">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_64key">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_wow64_64key entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_wow64_32key">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_32key">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_wow64_32key entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="rerstekey_wow64_res">
          <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_res">
               <sch:assert test="@datatype='boolean'">
                    <value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <value-of select="../@id"/> - operation attribute for the key_wow64_res entity of a regkeyeffectiverights_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srtst">
          <sch:rule context="win-def:sharedresource_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:sharedresource_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a sharedresource_test must reference a sharedresource_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:sharedresource_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a sharedresource_test must reference a sharedresource_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srobjnetname">
          <sch:rule context="win-def:sharedresource_object/win-def:netname">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the netname entity of a sharedresource_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the netname entity of a sharedresource_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srstenetname">
          <sch:rule context="win-def:sharedresource_state/win-def:netname">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the netname entity of a sharedresource_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the netname entity of a sharedresource_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteshared_type">
          <sch:rule context="win-def:sharedresource_state/win-def:shared_type">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the shared_type entity of a sharedresource_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the shared_type entity of a sharedresource_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srstemax_uses">
          <sch:rule context="win-def:sharedresource_state/win-def:max_uses">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the max_uses entity of a sharedresource_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the max_uses entity of a sharedresource_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srstecurrent_uses">
          <sch:rule context="win-def:sharedresource_state/win-def:current_uses">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the current_uses entity of a sharedresource_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the current_uses entity of a sharedresource_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srstelocal_path">
          <sch:rule context="win-def:sharedresource_state/win-def:local_path">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the local_path entity of a sharedresource_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the local_path entity of a sharedresource_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteaccess_read_permission">
          <sch:rule context="win-def:sharedresource_state/win-def:access_read_permission">
               <sch:assert test="not(@datatype) or @datatype='bool'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_read_permission entity of a sharedresource_state should be 'bool'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_read_permission entity of a sharedresource_state should be 'equals' or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteaccess_write_permission">
          <sch:rule context="win-def:sharedresource_state/win-def:access_write_permission">
               <sch:assert test="not(@datatype) or @datatype='bool'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_write_permission entity of a sharedresource_state should be 'bool'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_write_permission entity of a sharedresource_state should be 'equals' or 'not equal'.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteaccess_create_permission">
          <sch:rule context="win-def:sharedresource_state/win-def:access_create_permission">
               <sch:assert test="not(@datatype) or @datatype='bool'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_create_permission entity of a sharedresource_state should be 'bool'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_create_permission entity of a sharedresource_state should be 'equals' or 'not equal'.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteaccess_exec_permission">
          <sch:rule context="win-def:sharedresource_state/win-def:access_exec_permission">
               <sch:assert test="not(@datatype) or @datatype='bool'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_exec_permission entity of a sharedresource_state should be 'bool'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_exec_permission entity of a sharedresource_state should be 'equals' or 'not equal'.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteaccess_delete_permission">
          <sch:rule context="win-def:sharedresource_state/win-def:access_delete_permission">
               <sch:assert test="not(@datatype) or @datatype='bool'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_delete_permission entity of a sharedresource_state should be 'bool'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_delete_permission entity of a sharedresource_state should be 'equals' or 'not equal'.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteaccess_atrib_permission">
          <sch:rule context="win-def:sharedresource_state/win-def:access_atrib_permission">
               <sch:assert test="not(@datatype) or @datatype='bool'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_atrib_permission entity of a sharedresource_state should be 'bool'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_atrib_permission entity of a sharedresource_state should be 'equals' or 'not equal'.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteaccess_perm_permission">
          <sch:rule context="win-def:sharedresource_state/win-def:access_perm_permission">
               <sch:assert test="not(@datatype) or @datatype='bool'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_perm_permission entity of a sharedresource_state should be 'bool'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_perm_permission entity of a sharedresource_state should be 'equals' or 'not equal'.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="srsteaccess_all_permission">
          <sch:rule context="win-def:sharedresource_state/win-def:access_all_permission">
               <sch:assert test="not(@datatype) or @datatype='bool'">
                    <sch:value-of select="../@id"/> - datatype attribute for the access_all_permission entity of a sharedresource_state should be 'bool'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the access_all_permission entity of a sharedresource_state should be 'equals' or 'not equal'.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sidtst">
          <sch:rule context="win-def:sid_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:sid_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a sid_test must reference a sid_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:sid_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:sid_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a sid_test must reference a sid_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sidobjtrustee_name">
          <sch:rule context="win-def:sid_object/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a sid_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_name entity of a sid_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sidstetrustee_name">
          <sch:rule context="win-def:sid_state/win-def:trustee_name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a sid_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_name entity of a sid_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sidstetrustee_sid">
          <sch:rule context="win-def:sid_state/win-def:trustee_sid">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a sid_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_sid entity of a sid_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="sidstetrustee_domain">
          <sch:rule context="win-def:sid_state/win-def:trustee_domain">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the trustee_domain entity of a sid_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the trustee_domain entity of a sid_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uactst">
          <sch:rule context="win-def:uac_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:uac_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a uac_test must reference a uac_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:uac_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:uac_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a uac_test must reference a uac_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacsteadminapprovalmode">
          <sch:rule context="win-def:uac_state/win-def:admin_approval_mode">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the admin_approval_mode entity of a uac_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the admin_approval_mode entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacstebehaviorelevationadmin">
          <sch:rule context="win-def:uac_state/win-def:elevation_prompt_admin">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the elevation_prompt_admin entity of a uac_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the elevation_prompt_admin entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacsteelevationpromptstandard">
          <sch:rule context="win-def:uac_state/win-def:elevation_prompt_standard">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the elevation_prompt_standard entity of a uac_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the elevation_prompt_standard entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacstedetectinstallations">
          <sch:rule context="win-def:uac_state/win-def:detect_installations">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the detect_installations entity of a uac_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the detect_installations entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacsteelevatesignedexecutables">
          <sch:rule context="win-def:uac_state/win-def:elevate_signed_executables">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the elevate_signed_executables entity of a uac_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the elevate_signed_executables entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacsteelevateuiaccess">
          <sch:rule context="win-def:uac_state/win-def:elevate_uiaccess">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the elevate_uiaccess entity of a uac_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the elevate_uiaccess entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacsterunadminsaam">
          <sch:rule context="win-def:uac_state/win-def:run_admins_aam">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the run_admins_aam entity of a uac_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the run_admins_aam entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacstesecuredesktop">
          <sch:rule context="win-def:uac_state/win-def:secure_desktop">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the secure_desktop entity of a uac_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the secure_desktop entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="uacstevirtualizewritefailures">
          <sch:rule context="win-def:uac_state/win-def:virtualize_write_failures">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the virtualize_write_failures entity of a uac_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the virtualize_write_failures entity of a uac_state should be 'equals', or 'not equal</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="usertst">
          <sch:rule context="win-def:user_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:user_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a user_test must reference a user_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:user_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:user_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a user_test must reference a user_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="userobjuser">
          <sch:rule context="win-def:user_object/win-def:user">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user entity of a user_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user entity of a user_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="usersteuser">
          <sch:rule context="win-def:user_state/win-def:user">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the user entity of a user_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the user entity of a user_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="usersteenabled">
          <sch:rule context="win-def:user_state/win-def:enabled">
               <sch:assert test="@datatype='boolean'">
                    <sch:value-of select="../@id"/> - datatype attribute for the enabled entity of a user_state should be 'boolean'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the enabled entity of a user_state should be 'equals', or 'not equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="userstegroup">
          <sch:rule context="win-def:user_state/win-def:group">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the group entity of a user_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the group entity of a user_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volumetst">
          <sch:rule context="win-def:volume_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:volume_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a volume_test must reference a volume_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:volume_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:volume_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a volume_test must reference a volume_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volobjrootpath">
          <sch:rule context="win-def:volume_object/win-def:rootpath">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the rootpath entity of a volume_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the rootpath entity of a volume_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volumesterootpath">
          <sch:rule context="win-def:volume_state/win-def:rootpath">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the rootpath entity of a volume_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the rootpath entity of a volume_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volumestefile_system">
          <sch:rule context="win-def:volume_state/win-def:file_system">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_system entity of a volume_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_system entity of a volume_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volumestename">
          <sch:rule context="win-def:volume_state/win-def:name">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the name entity of a volume_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the name entity of a volume_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstevolume_max_component_length">
          <sch:rule context="win-def:volume_state/win-def:volume_max_component_length">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the volume_max_component_length entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the volume_max_component_length entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volsteserial_number">
          <sch:rule context="win-def:volume_state/win-def:serial_number">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the serial_number entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the serial_number entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_case_sensitive_search">
          <sch:rule context="win-def:volume_state/win-def:file_case_sensitive_search">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_case_sensitive_search entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_case_sensitive_search entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_case_preserved_names">
          <sch:rule context="win-def:volume_state/win-def:file_case_preserved_names">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_case_preserved_names entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_case_preserved_names entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_unicode_on_disk">
          <sch:rule context="win-def:volume_state/win-def:file_unicode_on_disk">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_unicode_on_disk entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_unicode_on_disk entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_persistent_acls">
          <sch:rule context="win-def:volume_state/win-def:file_persistent_acls">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_persistent_acls entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_persistent_acls entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_file_compression">
          <sch:rule context="win-def:volume_state/win-def:file_file_compression">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_file_compression entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_file_compression entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_volume_quotas">
          <sch:rule context="win-def:volume_state/win-def:file_volume_quotas">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_volume_quotas entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_volume_quotas entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_supports_sparse_files">
          <sch:rule context="win-def:volume_state/win-def:file_supports_sparse_files">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_supports_sparse_files entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_supports_sparse_files entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_supports_reparse_points">
          <sch:rule context="win-def:volume_state/win-def:file_supports_reparse_points">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_supports_reparse_points entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_supports_reparse_points entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_supports_remote_storage">
          <sch:rule context="win-def:volume_state/win-def:file_supports_remote_storage">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_supports_remote_storage entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_supports_remote_storage entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_volume_is_compressed">
          <sch:rule context="win-def:volume_state/win-def:file_volume_is_compressed">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_volume_is_compressed entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_volume_is_compressed entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_supports_object_ids">
          <sch:rule context="win-def:volume_state/win-def:file_supports_object_ids">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_supports_object_ids entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_supports_object_ids entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_supports_encryption">
          <sch:rule context="win-def:volume_state/win-def:file_supports_encryption">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_supports_encryption entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_supports_encryption entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_named_streams">
          <sch:rule context="win-def:volume_state/win-def:file_named_streams">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_named_streams entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_named_streams entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="volstefile_read_only_volume">
          <sch:rule context="win-def:volume_state/win-def:file_read_only_volume">
               <sch:assert test="@datatype='int'">
                    <sch:value-of select="../@id"/> - datatype attribute for the file_read_only_volume entity of a volume_state should be 'int'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'">
                    <sch:value-of select="../@id"/> - operation attribute for the file_read_only_volume entity of a volume_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wmitst">
          <sch:rule context="win-def:wmi_test/win-def:object">
               <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:wmi_object/@id">
                    <sch:value-of select="../@id"/> - the object child element of a wmi_test must reference a wmi_object</sch:assert>
          </sch:rule>
          <sch:rule context="win-def:wmi_test/win-def:state">
               <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:wmi_state/@id">
                    <sch:value-of select="../@id"/> - the state child element of a wmi_test must reference a wmi_state</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wmiobjnamespace">
          <sch:rule context="win-def:wmi_object/win-def:namespace">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the namespace entity of a wmi_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals'">
                    <sch:value-of select="../@id"/> - operation attribute for the namespace entity of a wmi_object should be 'equals'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wmiobjwql">
          <sch:rule context="win-def:wmi_object/win-def:wql">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the wql entity of a wmi_object should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals'">
                    <sch:value-of select="../@id"/> - operation attribute for the wql entity of a wmi_object should be 'equals'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wmistenamespace">
          <sch:rule context="win-def:wmi_state/win-def:namespace">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the namespace entity of a wmi_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the namespace entity of a wmi_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wmistewql">
          <sch:rule context="win-def:wmi_state/win-def:wql">
               <sch:assert test="not(@datatype) or @datatype='string'">
                    <sch:value-of select="../@id"/> - datatype attribute for the wql entity of a wmi_state should be 'string'</sch:assert>
               <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'">
                    <sch:value-of select="../@id"/> - operation attribute for the wql entity of a wmi_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:pattern id="wmisteresult">
          <sch:rule context="win-def:wmi_state/win-def:result">
               <sch:assert test="((@datatype='binary' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='boolean' and (not(@operation) or @operation='equals' or @operation='not equal')) or (@datatype='float' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or (@datatype='int' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or')) or ((@datatype='string' or not(@datatype)) and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match')) or (@datatype='version' and (not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal')))">
                    <sch:value-of select="../@id"/> - the supplied operation attribute for the result entity of a wmi_state is not valid given a datatype of '<sch:value-of select="@datatype"/>'</sch:assert>
               <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())">
                    <sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
          </sch:rule>
     </sch:pattern>
     <sch:diagnostics/>
</sch:schema>
