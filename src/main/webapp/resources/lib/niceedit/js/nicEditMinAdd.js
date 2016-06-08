/**
 * nicEmoji
 * @description: Adds Emoji
 * @requires: nicCore, nicPane, nicAdvancedButton
 * @author: mindoli (imindoli@gmail.com)
 * @version: 0.1.0
 */

var nicEmojiOptions = {
	buttons : {
		'emoji' : {name : '이모티콘', type : 'nicEmojiButton'}
	},
	iconFiles : {
		'emoji' : './images/emoticon.png'
	}
};

var nicEmojiButton = nicEditorAdvancedButton.extend({	
	width : '364px',
	addPane : function() {
			var emojiImgPath = './images/emoticons/' ;
			this.imgFile = '' ;
			this.imgPath = emojiImgPath; //this.ne.options.emojiImgPath ; //'./inc/emoticons/' ;
			this.im = this.ne.selectedInstance.selElm().parentTag('IMG');
			var emojiItems = new bkElement('DIV').setStyle({width:'362px',float:'left',padding:'2px',opacity:'.8'});
			var imgList = [];
			var file = '';
			for(var i=1; i<=252 ;i++ ){
				file = '000'+i ;
				imgList[i] = ('000'+i).slice(-3) + '.gif' ;
			}

			for(var i=1;i<=imgList.length;i++) {
				var imgName = imgList[i]; 
				var imgDiv = new bkElement('div').setStyle({border:'1px solid #F6F6F6',width:'18px',height:'18px',float:'left',margin:'1px'}).appendTo(emojiItems);
				var imgItem = new bkElement('img').setAttributes({src:this.imgPath+imgName}).setStyle({cursor:'pointer',width: '16px', height: '16px'}).addEvent('click',this.imgSelect.closure(this,imgName)).addEvent('mouseover',this.on.closure(this,imgDiv)).addEvent('mouseout',this.off.closure(this,imgDiv)).appendTo(imgDiv);
			}				
			this.pane.append(emojiItems.noSelect());	
	},

	imgSelect : function(imgName) {
		if(!this.im) {
			var tmp = 'javascript:nicImTemp();';
			this.ne.nicCommand("insertImage",tmp);
			this.im = this.findElm('IMG','src',tmp);
		}
		if(this.im) {
			this.im.setAttributes({
				src:this.imgPath+imgName,
				valign : 'bottom'
			});
			this.removePane();
		}
	},

	on : function(imgDiv) {
		imgDiv.setStyle({border : '1px solid #FF9900'});
	},
	off : function(imgDiv) {
		imgDiv.setStyle({border : '1px solid #F6F6F6'});		
	}
});

nicEditors.registerPlugin(nicPlugin,nicEmojiOptions);


/**
 * nicYoutube
 * @description: Adds Youtube Link
 * @requires: nicCore, nicPane, nicAdvancedButton
 * @author: mindoli (imindoli@gmail.com)
 * @version: 0.1.0
 */

var nicYoutubeOptions = {
	buttons : {
		'youtube' : {name : '유투브동영상 추가', type : 'nicYoutubeButton'}
	},
	iconFiles : {
		'youtube' :  './images/youtube.png'
	}
};

var nicYoutubeButton = nicEditorAdvancedButton.extend({
	width:'300px',
	labelWidth:'80px',
	addPane : function() {
		this.addForm({
			'' : {type : 'title', txt : '유투브 동영상 추가'},
			'src' : {type : 'text', txt : '동영상 ID', 'value' : '', style : {width:'150px'}},
			'width' : {type : 'text', txt : 'width', 'value' : '480', style : {width:'100px'}},
			'height' : {type : 'text', txt : 'height', 'value' : '385', style : {width:'100px'}}
		});
	},
	submit : function(e) {
		var src = this.inputs['src'].value;
		if(src == "") {
			alert("동영상 아이디를 입력해 주셔야 합니다!");
			return false;
		}
		this.removePane();
		var tmp = 'javascript:nicYoutubeTmp();';
		this.ne.nicCommand("insertImage",tmp);
		var tmpImg = this.findElm('IMG','src',tmp);
		var isMSIE = /*@cc_on!@*/false; 

		var movieWidth = this.inputs['width'].value ;
		var movieHeight = this.inputs['height'].value ;
		var movieUrl = "http://www.youtube.com/v/"+ this.inputs['src'].value+"?fs=1&amp;hl=ko_KR&amp;rel=0" ;

		if(isMSIE) {
			var videoEmbed = new bkElement("embed").setAttributes({wmode:'transparent',src:movieUrl,type:'application/x-shockwave-flash',allowfullscreen:'true',width:movieWidth,height:movieHeight}).appendBefore(tmpImg);
		}
		else{
			var videoObj = new bkElement("object").setAttributes({width:movieWidth,height:movieHeight}).appendBefore(tmpImg);
			var videoParam1 = new bkElement("param").setAttributes({name:'movie',value:movieUrl}).appendTo(videoObj);
			var videoParam2 = new bkElement("param").setAttributes({name:'allowFullScreen',value:'true'}).appendTo(videoObj);
			var videoParam3 = new bkElement("param").setAttributes({name:'wmode',value:'transparent'}).appendTo(videoObj);
			var videoParam4 = new bkElement("param").setAttributes({name:'type',value:'application/x-shockwave-flash'}).appendTo(videoObj);
			var videoEmbed = new bkElement("embed").setAttributes({wmode:'transparent',src:movieUrl,type:'application/x-shockwave-flash',allowfullscreen:'true',width:movieWidth,height:movieHeight}).appendTo(videoObj);
		}
		tmpImg.remove();
	}
});
nicEditors.registerPlugin(nicPlugin,nicYoutubeOptions);


/**
 * nicTable
 * @description: Adds Table Tag
 * @requires: nicCore, nicPane, nicAdvancedButton
 * @author: mindoli (imindoli@gmail.com)
 * @version: 0.1.0
 */
var nicTableOptions = {
	buttons : {
		'table' : {name : '테이블', type : 'nicTableButton'}
	},
	iconFiles : {
		'table' :  './images/table.png'
	}
};

var nicTableButton = nicEditorAdvancedButton.extend({
	width:'300px',
	labelWidth:'100px',
	addPane : function() {
		this.im = this.ne.selectedInstance.selElm().parentTag('DIV').setStyle({zindex:'1'});
		this.addForm({
			'' : {type : 'title', txt : '테이블 프로퍼티'},
			'row' : {type : 'text', txt : '행', 'value' : '3', style : {width:'50px'}},
			'col' : {type : 'text', txt : '열', 'value' : '2', style : {width:'50px'}},
			'width' : {type : 'text', txt : '폭', 'value' : '200', style : {width:'100px'}},
			'height' : {type : 'text', txt : '높이', 'value' : '200', style : {width:'100px'}},
			'border' : {type : 'text', txt : '외곽선', 'value' : '0', style : {width:'50px'}},
			'cellspacing' : {type : 'text', txt : '셀여백', 'value' : '1', style : {width:'50px'}},
			'cellpadding' : {type : 'text', txt : '셀간넓이', 'value' : '1', style : {width:'50px'}},
			'align' : {type : 'select', txt : '정렬', options : {'' : '없음','left':'좌','center':'중앙','right':'우'},style : {width : '100px'}}
		},this.im);
	},
	submit : function(e) {
		var row = this.inputs['row'].value;
		var col = this.inputs['col'].value;
		if(row == "" || row=='0') {
			alert("행을 입력해 주셔야 합니다!");
			return false;
		}
		if(col == "" || col=='0') {
			alert("열을 입력해 주셔야 합니다!");
			return false;
		}
		this.removePane();
		var tmp = 'javascript:nicImTemp();';
		this.ne.nicCommand("insertImage",tmp);
		var tmpImg = this.findElm('IMG','src',tmp);
		if(tmpImg) {
			var TableDiv = new bkElement('table').addClass('Tbl').setStyle({border:this.inputs['border'].value+'px',height:this.inputs['height'].value+'px',width:this.inputs['width'].value+'px'}).appendBefore(tmpImg);
			for(var i=1;i<= row ;i++) {
				var Tabletr = new bkElement('tr').appendTo(TableDiv);
				for(var j=1;j<=col ;j++) {
					var Tabletd = new bkElement('td').appendTo(Tabletr);
				}
			}
			tmpImg.remove();
		}
	}
});

nicEditors.registerPlugin(nicPlugin,nicTableOptions);
