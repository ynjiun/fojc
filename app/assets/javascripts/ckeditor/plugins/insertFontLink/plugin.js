plugInName = 'insertFontLink';

CKEDITOR.plugins.add(plugInName,
{  
  init: function (editor) {

    editor.addCommand('htmlDialog', new CKEDITOR.dialogCommand('htmlDialog'));
    editor.ui.addButton(plugInName, {
        label: 'Insert Greek/Hebrew Font Link',
        icon: 'http://www.fojc.net/system/contents/avatars/000/000/012/original/bolb.png?1363882532',
        command: 'htmlDialog'
    });
	
	CKEDITOR.dialog.add( 'htmlDialog', function( editor )
	{
	return {
		title : 'Link Properties',
		minWidth : 400,
		minHeight : 40,
		contents :
		[
			{
				id : 'general',
				label : 'Settings',
				elements :
				[
				 	// UI elements of the Settings tab.
				 	{
						type : 'html',
						html : 'Insert Greek or Hebrew Font Download Link Icon. Please select.'		
					},
					{
						type : 'select',
						id : 'font',
						label : 'Font Link',
						items : 
						[
							[ 'Greek', 'g' ],
							[ 'Hebrew', 'h' ]
						],
						commit : function( data )
						{
							data.font = this.getValue();
						}
					}
					/*{
						type : 'textarea',
						id : 'contents',
						label : 'Displayed Text',
						validate : CKEDITOR.dialog.validate.notEmpty( 'The Displayed Text field cannot be empty.' ),
						required : true,
						commit : function( data )
						{
							data.contents = this.getValue();
						}
					},
					{
								type : 'text',
								id : 'url',
								label : 'URL',
								validate : CKEDITOR.dialog.validate.notEmpty( 'The link must have a URL.' ),
								required : true,
								commit : function( data )
								{
									data.url = this.getValue();
								}
					},
					{
								type : 'checkbox',
								id : 'greekFont',
								label : 'Download Greek Font link',
								'default' : true,
								commit : function( data )
								{
									data.greekFont = this.getValue();
								}
					},
					{
								type : 'checkbox',
								id : 'hebrewFont',
								label : 'Download Hebrew Font link',
								'default' : false,
								commit : function( data )
								{
									data.hebrewFont = this.getValue();
								}
					}*/
					
				]
			}
		],
		onOk : function()
				{
					var dialog = this,
						data = {},
						link = editor.document.createElement( 'a' );
						
					this.commitContent( data );
						
					switch( data.font )
					{
						case 'g' :
							link.setAttribute( 'href', 'http://www.fojc.net/system/contents/avatars/000/000/014/original/Greekpar.ttf?1363887822' );
							link.setAttribute( 'title', 'Install Greek Font to read the original text in this verse.');
							break;
						case 'h' :
							link.setAttribute( 'href', 'http://www.fojc.net/system/contents/avatars/000/000/013/original/Hebpar__.ttf?1363887660' );
							link.setAttribute( 'title', 'Install Hebrew Font to read the original text in this verse.');
							break;
					}
									
					
					link.setAttribute( 'toggle', 'tooltip' );
 
					link.setHtml(' <i class="icon-pencil"> </i> ' );
 
					editor.insertElement( link );
					
		} //end of onOK
		
	};
	}); //end of dialog.add
    

   } //end of init: function(editor)
}); //end of .plugins.add(plugInName,...)
