draw_text(10,10,"NekoPresenceStruct Demo");

if( is_struct(myNP) ){
	
	draw_text(10,80,"NPS created!");
	
	draw_text_transformed(room_width/2-200,80,
	"Active: "+string(myNP.Active)+
	"\nApp ID: "+string(myNP.App_ID)+
	"\nUpdate State: "+string(myNP.UpdateState)+
	"\n\nState: "+string(myNP.State)+
	"\nDetails: "+string(myNP.Details)+
	
	"\n\nTimestamp: "+
	"\n   active: "+string(myNP.TimeStamp.active)+
	"\n   start time: "+string(myNP.TimeStamp.startTime)+
	"\n   end time: "+string(myNP.TimeStamp.endTime)+
	"\n   isUnix: "+string(myNP.TimeStamp.isUnix)+
	
	"\n\nLarge image: "+
	"\n   icon: '"+string(myNP.ImageLarge.Icon)+"'"+
	"\n   text: '"+string(myNP.ImageLarge.Text)+"'"+
	
	"\n\nSmall image: "+
	"\n   icon: '"+string(myNP.ImageSmall.Icon)+"'"+
	"\n   text: '"+string(myNP.ImageSmall.Text)+"'"
	,0.5,0.5,0
	)
	
	draw_text_transformed(room_width/2-200+250,80,
	
	"Button 1: "+
	"\n   active: "+string(myNP.Button_1.active)+
	"\n   label: "+string(myNP.Button_1.label)+
	"\n   url: "+string(myNP.Button_1.url)+
	
	"\n\nButton 2: "+
	"\n   active: "+string(myNP.Button_2.active)+
	"\n   label: "+string(myNP.Button_2.label)+
	"\n   url: "+string(myNP.Button_2.url)+
	
	"\n\nParty: "+
	"\n   active: "+string(myNP.Party.active)+
	"\n   size: "+string(myNP.Party.size)+
	"\n   max size: "+string(myNP.Party.maxSize)+
	"\n   party ID: "+string(myNP.Party.partyID)+
	"\n   privacy: "+string(myNP.Party.privacy)+
	
	"\n\nSecret: "+
	"\n   active: "+string(myNP.Secret.active)+
	"\n   match: "+string(myNP.Secret.match)+
	"\n   spectate: "+string(myNP.Secret.spectate)+
	"\n   join: "+string(myNP.Secret.join)
	,0.5,0.5,0
	)
	
}else{

	draw_text(10,80,"NPS not created");

}
