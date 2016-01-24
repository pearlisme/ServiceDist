/**
 * 
 */


	
	
	args = {
		IPV4:['1', '2','3'],
		IPV6:['1', '2'],
		L3VPN:['1'],
		BGP:['0', '1'],
		}

	function clearOpts(target){
		sel = document.info[target].options;
		for (i = sel.length - 1; i >= 0; i--)
			sel.remove(i);
	}

	function configureDropDownLists(o,tech2) {
		if(document.info[tech2].options.length!=0) clearOpts(tech2);
		selected = o.selectedIndex;
		if(selected==0) return;
		tech2 = o.options[selected].value;
		for (i = 0; i < args[tech2].length; i++) {
					createOption('tech2', args[tech1.value][i], args[tech1.value][i]) 
				}
				
	}

	function createOption(target, label, value) {
		opts = document.info[target];
		opts.options.add(new Option(label,value) );
	}


/*	var ref1 = document.getElementById(ref1);
	$("ref1").on("click", function() {
	    $(this).append("<option>10</option><option>20</option>");
	});
	alert(ref1);

$(function(){
    $('#ref1').on('change', function(){
        var val = $(this).val();
        var sub = $('#ref2');
        $('option', sub).filter(function(){
            if (
                 $(this).attr('data-group') === val 
              || $(this).attr('data-group') === 'SHOW'
            ) {
              if ($(this).parent('span').length) {
                $(this).unwrap();
              }
            } else {
              if (!$(this).parent('span').length) {
                $(this).wrap( "<span>" ).parent().hide();
              }
            }
        });
    });
    $('#groups').trigger('change');
});
}*/
