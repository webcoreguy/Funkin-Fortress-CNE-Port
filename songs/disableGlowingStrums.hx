function postUpdate(elapsed) {
    for (i in strumLines.members) {
        for (e in i.members) {
                if (e.cpu)
                {
                    e.playAnim("static");
                }
        }
    }
}