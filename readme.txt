Hello and thank you for your time and attention.

I have developed in Fusebox 5.5 before but as one of several developers and I was not the appplication architect.

Currently I'm trying to set up an application in ColdFusion using Fusebox 5.5 (no XML.)   My purpose is setting up the architecture.  We want a working copy of a model Fusebox 5.5 application for other developers to follow.

The problem is that a query runs successfully inside the model template (crud4fusebox5_5/model/qry_SelTblTasks.cfm) but it isn't available to the view template (crud4fusebox5_5/view/display/dsp_landingPage.cfm)

I can successfully dump the qrySelTblTasks query in the model template but when I try to dump the qrySelTblTasks in the view template I get the error "Variable QRYSELTBLTASKS is undefined."

Both templates are included in a single fuseaction (the query before the dsiplay) so as I understand it the variable in the model should be available to the view.

I read the available ColdFusion 5.5 on-line documentation as well as _Fusebox 5 & Flip_ and _How to Drive Fusebox 5.5_.  Also I googled "ColdFusion Variable is undefined" and "Fusebox Variable is undefined." But I couldn't identify a solution.

Please advise.

TIA.

Bouton Jones
boutonjones@users.noreply.github.com




@All --- Thank you all for your help.  I appreciate your time and your ideas.  The application is now up and running.

@Peter Boughton --- I am working on FW/1 for a similar project.  But I'm required to use Fusebox 5.5 for this one.   (BTW you have a great last name.  Check out http://www.boutonjones.com/pub/name.cfm )

@Jeff Davis  --- I tried dumping the attributes scope but the query wasn't there until I added <cfset ATTRIBUTES  = myFusebox.variables().ATTRIBUTES> in various CFCs.  I have the query and the display defined in the same circuit.

@derekheds --- D'oh!   You are right!  By mistake I uploaded the crud4fusebox folder to GitHub instead of the crud4fusebox5_5 folder.  I will sync the new version in GitHub soon. 

@Sean --- Yes.  The version I posted was wrong.  But in the corrected version I am using CFCs.  They're there in the model, view, and controller directories.  The CFCs are calling the qry_ and dsp_ files.

@Jared ---  You're right on several accounts.  I posted the worng directory.  I will correct that soon.  And your suggestion worked.  I added the tag <cfset request.qrySelTblTasks = qrySelTblTasks> to qry_SelTblTasks and suddenly it appeared in the request scope.  It wasn't when I checked before.  I must be missing a setting that makes the request scope the default.   Or maybe that default works in CFCs but not in CFMs.









