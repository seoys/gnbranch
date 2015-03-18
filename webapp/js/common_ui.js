// JavaScript Document
$(function() {
	//mgr lnb
	$('.sidebar-collapse li.active').parent().parent('li').addClass('on');

	//listForm li.first li.last 
	ulListSet = function(){
		var ulList= $('ul');
		ulList.find("li").removeClass("first");
		ulList.find("li").removeClass("last");
		ulList.find("li:first-child").addClass("first");
		ulList.find("li:last-child").addClass("last");
		var olList= $('ol');
		olList.find("li").removeClass("first");
		olList.find("li").removeClass("last");
		olList.find("li:first-child").addClass("first");
		olList.find("li:last-child").addClass("last");
	};
	ulListSet();
	
	//tableForm tr.first tr.last th.first th.last td.first td.last
	tableTypeA = function() {
        var tableTypeA = $('table');
        tableTypeA.find(" tbody tr:first-child").addClass("first");
        tableTypeA.find(" tbody tr:last-child").addClass("last");
        tableTypeA.find("tr td:first-child").addClass("first");
        tableTypeA.find("tr td:last-child").addClass("last");
        tableTypeA.find("tr th:first-child").addClass("first");
        tableTypeA.find("tr th:last-child").addClass("last");
    };
    tableTypeA();
});