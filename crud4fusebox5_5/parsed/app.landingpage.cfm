<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: app --->
<!--- fuseaction: landingPage --->
<cftry>
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "app">
<cfset myFusebox.thisFuseaction = "landingPage">
<cfparam name="__fuseboxCircuitCfc_crud4fusebox5_5_controller_app" default="#createObject('component','crud4fusebox5_5.controller.app')#" />
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_controller_app,"prefuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_controller_app.prefuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_controller_app.prefuseaction(myFusebox=myFusebox,event=event) />
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_controller_app,"landingPage") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_controller_app.landingPage)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_controller_app.landingPage(myFusebox=myFusebox,event=event) />
<cfelse><cfthrow type="fusebox.undefinedFuseaction" message="undefined Fuseaction" detail="You specified a Fuseaction of landingPage which is not defined in Circuit app.">
</cfif>
<cfif structKeyExists(__fuseboxCircuitCfc_crud4fusebox5_5_controller_app,"postfuseaction") and isCustomFunction(__fuseboxCircuitCfc_crud4fusebox5_5_controller_app.postfuseaction)>
<cfset __fuseboxCircuitCfc_crud4fusebox5_5_controller_app.postfuseaction(myFusebox=myFusebox,event=event) />
</cfif>
<cfcatch><cfrethrow></cfcatch>
</cftry>

