/**
 * 
 */


	
	
	place = {
		Davidson:['Antioch', 'Nashville'],
		Rutherford:['Smyrna', 'LaVergne']
		}

	function clearOpts(target){
		sel = document.info[target].options;
		for (i = sel.length - 1; i >= 0; i--)
			sel.remove(i);
	}

	function configureDropDownLists(o,city) {
		if(document.info[city].options.length!=0) clearOpts(city);
		selected = o.selectedIndex;
		if(selected==0) return;
		city = o.options[selected].value;
		for (i = 0; i < place[city].length; i++) {
					createOption('city', place[county.value][i], place[county.value][i]) 
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
