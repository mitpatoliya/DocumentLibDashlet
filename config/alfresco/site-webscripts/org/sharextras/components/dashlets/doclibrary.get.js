var connector = remote.connect("alfresco");

var data = connector.get("/extension/libdoclist/"+page.url.templateArgs.site);

// create json object from data
var result = eval('(' + data + ')');
model.sitedocs = result["sitedocs"];

//For next version with export feature
//var newdata = connector.get("/extension/generatedocliblist?sitename="+page.url.templateArgs.site);

//model.filelink = newdata;


