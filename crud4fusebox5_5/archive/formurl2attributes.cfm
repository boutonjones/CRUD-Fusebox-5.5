  <!--- This tag will turn all 'Form' and 'URL' scoped variables into 'Attributes' scoped variables.  This allows you to have a common scope of variables, thus allowing you to call the entire application i.e. index.cfm as a CFMODULE or as a regular application. Designed for: CF 4.5+ --->

<!--- bhightower 27 May 03 11:32 from http://www.tek-tips.com/viewthread.cfm?qid=557976 ---> 
<cfscript>
  if (NOT IsDefined("attributes"))
      attributes=structNew();
  StructAppend(attributes, url, "no");
  StructAppend(attributes, form, "no");
</cfscript>


<!---  Tim 03/15/2001 10:38 AM http://www.houseoffusion.com/groups/cf-talk/thread.cfm/threadid:1702 --->
<!---
<cfsilent>
  <cfif not isdefined('caller.attributes')>
    <cfset caller.attributes=structnew()>
  </cfif>
  <cfif NOT StructIsEmpty(url)>
    <cfif StructIsEmpty(caller.attributes)>
      <cfset caller.attributes=structcopy(url)>
    <cfelse>
      <cfloop collection="#url#" item="urlname">
        <cfif not StructKeyExists(caller.attributes, urlname)>
          <cfset caller.attributes[urlname] = url[urlname]>
        </cfif>
      </cfloop>
    </cfif>
  </cfif>
  <cfif NOT StructIsEmpty(form)>
    <cfif StructIsEmpty(caller.attributes)>
      <cfset caller.attributes=structcopy(form)>
    <cfelse>
      <cfloop collection="#form#" item="field">
        <cfif not StructKeyExists(caller.attributes, "urlname")>
          <cfset caller.attributes[field]=form[field]>
        </cfif>
      </cfloop>
    </cfif>
  </cfif>
</cfsilent>
--->

