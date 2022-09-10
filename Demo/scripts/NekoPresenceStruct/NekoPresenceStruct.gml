function __NPS_trace(msg){

	show_debug_message("NPS: "+msg);

}

function __NPS(AppID) constructor {
	
	__NPS_trace("Starting NPS with ID '"+AppID+"'");
	
	Active =	true;
	App_ID =	AppID;
	
	//Update state
	UpdateState =	false;
	
	//State and details
	State =		"Default state";
	Details =	"Default details";
	
	//Timestamp
	TimeStamp = {
	
		active:		false,
		startTime:	0,
		endTime:	0,
		isUnix:		false
	
	}
	
	//Images
	ImageLarge = {
	
		Icon:	"",
		Text:	""
	
	};
	
	ImageSmall = {
	
		Icon:	"",
		Text:	""
	
	};

	//Buttons
	Button_1 = {
	
		active:	false,
		label:	"",
		url:	""
	
	};
	
	Button_2 = {
	
		active:	false,
		label:	"",
		url:	""
	
	};
	
	//Party
	Party = {
		
		active:		false,
		size:		0,
		maxSize:	0,
		partyID:	"",
		privacy:	true
		
	};
	
	//Secret
	Secret = {
		
		active:		false,
		match:		"",
		spectate:	"",
		join:		false
		
	}
	
	static clear = function(){
		
		np_clearpresence();
		
	}

	//Update function
	static update = function(){
	
		var _go = true;
		
		if(argument_count>0){ _go = argument0; }
		
		//Go
		if(_go && self.Active){
		
			self.UpdateState = np_update();

			//Set elements
			np_setpresence(self.State, self.Details, self.ImageLarge.Icon, self.ImageSmall.Icon);
			
			np_setpresence_more(self.ImageSmall.Text, self.ImageLarge.Text, false);
			
			with(self.TimeStamp){
				if(self.active){
					np_setpresence_timestamps(self.startTime, self.endTime, self.isUnix);
				}
			}
			
			with(self.Button_1){
				if(self.active){
					np_setpresence_buttons(0, self.label, self.url);
				}
			}
			
			with(self.Button_2){
				if(self.active){
					np_setpresence_buttons(1, self.label, self.url);
				}
			}
					
			with(self.Party){
				if(self.active){
					np_setpresence_partyparams(self.size, self.maxSize, self.partyID, self.privacy);	
				}
			}
			
			with(self.Secret){
				if(self.active){
					np_setpresence_secrets(self.match, self.spectate, self.join);	
				}
			}
			
			//Update
			self.UpdateState = np_update();
			

				
		}else{
		
			clear();
		
		}
		

	
	}
	
	//Quick check
	if(!np_initdiscord(self.App_ID, true, np_steam_app_id_empty)){
		__NPS_trace("NekoPresence init fail.");
		show_error("NekoPresence init fail.", true);
	}
	
}

function NPStruct(AppID){
	
	return new __NPS(AppID);
	
}