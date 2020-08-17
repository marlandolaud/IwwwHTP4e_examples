function createSilverlight()
{
	//var scene = new MovieViewer.Page();
   Silverlight.createObjectEx({
		source: "Scene.xaml",
		parentElement: document.getElementById("SilverlightControlHost"),
		id: "SilverlightControl",
		properties: {
			width: "100%",
			height: "100%",
			version: "1.0"
		},
		events: {
			onLoad: null
		}
	});
}


if (!window.Silverlight) 
	window.Silverlight = {};

Silverlight.createDelegate = function(instance, method) {
	return function() {
        return method.apply(instance, arguments);
    }
}