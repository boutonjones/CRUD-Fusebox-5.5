
<!--- app_globals.cfm contains the CFAPPLICATION tag and request scope variables --->

<cfapplication name="CRUD with Fusebox 2 Methodology" clientmanagement="yes" sessionmanagement="yes">

<cfsetting showDebugOutput="Yes">

<!--- Set Parameters --->
<cfparam name="APPLICATION.datasource" default="DBCrud">
<cfparam name="ATTRIBUTES.TaskID" type="numeric" default=0>
<cfparam name="self" default="index.cfm">
<cfparam name="myself" default="index.cfm?fuseaction">
