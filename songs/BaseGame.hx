function postCreate() {
	missesTxt.alpha = 0.00001;
	accuracyTxt.alpha = 0.00001;
}

function onNoteHit(e) {
    if (!e.player)
        e.strumGlowCancelled = true;
}