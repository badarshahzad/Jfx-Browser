<!-- ...................................................................... -->
<!-- XHTML Document Scripting Module  ..................................... -->
<!-- file: xhtml-script-1.mod

     This is XHTML, a reformulation of HTML as a modular XML application.
     Copyright 1998-2001 W3C (MIT, INRIA, Keio), All Rights Reserved.
     Revision: $Id: xhtml-script-1.mod,v 1.1 2005/03/28 14:23:12 pdoubleya Exp $ SMI

     This DTD module is identified by the PUBLIC and SYSTEM identifiers:

       PUBLIC "-//W3C//ELEMENTS XHTML Scripting 1.0//EN"
       SYSTEM "http://www.w3.org/TR/xhtml-modularization/DTD/xhtml-script-1.mod"

     Revisions:
     (none)
     ....................................................................... -->

<!-- Scripting

        script, noscript

     This module declares element types and attributes used to provide
     support for executable scripts as well as an alternate content
     container where scripts are not supported.
-->

<!-- script: Scripting Statement ....................... -->

<!ENTITY % script.element  "INCLUDE" >
<![%script.element;[
<!ENTITY % script.content  "( #PCDATA )" >
<!ENTITY % script.qname  "script" >
<!ELEMENT %script.qname;  %script.content; >
<!-- end of script.element -->]]>

<!ENTITY % script.attlist  "INCLUDE" >
<![%script.attlist;[
<!ATTLIST %script.qname;
      %XHTML.xmlns.attrib;
      charset      %Charset.datatype;       #IMPLIED
      type         %ContentType.datatype;   #REQUIRED
      src          %URI.datatype;           #IMPLIED
      defer        ( defer )                #IMPLIED
      xml:space    ( preserve )             #FIXED 'preserve'
>
<!-- end of script.attlist -->]]>

<!-- noscript: No-Script Alternate Content ............. -->

<!ENTITY % noscript.element  "INCLUDE" >
<![%noscript.element;[
<!ENTITY % noscript.content
     "( %Block.mix; )+"
>
<!ENTITY % noscript.qname  "noscript" >
<!ELEMENT %noscript.qname;  %noscript.content; >
<!-- end of noscript.element -->]]>

<!ENTITY % noscript.attlist  "INCLUDE" >
<![%noscript.attlist;[
<!ATTLIST %noscript.qname;
      %Common.attrib;
>
<!-- end of noscript.attlist -->]]>

<!-- end of xhtml-script-1.mod -->
