#!/bin/bash

## sven - show a Sven Amann picture and call svn

echo "
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWWWMMMMMMMMMMMMMMMMMMMMMMMWWMMMMMMMWMMWWWWWWW
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWNNXXXKKKKKNWWWNWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMWNNXXK0Okdoddddddxxk0OO0KXNNWMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMWWWNKOxdoooolccclllllllodxxxxdxkKNMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMWX0kdolcccccc::::cccclcclloolclddx0NMMMMMMMMMMMMMMMMMMMMMWWWM
MMMMMMMMMMMMMMMMMMWXkoc::;:clllcc:::::lllllloodl::clokKNWMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMWNOdl:,,;cloooollccccllooddddxxxoc::coxOXNWMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMWNXOxl:,',:loddxxddddddoddddxxkkOOOOko:;;codkKWMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMWNXxc:;,.':lodxxxxxxxxxxxxxkkkkkkkOOOOOxl::clddxXMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMWKxl:,,,;codxxxxxxxxxxxxxxxkkkkkkkkOOO00Oxl::clo0WMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMNklc:;;:coxxxxxxxxdddxxxxxxxkkkkkkkkOOO000xocccoONMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMWOc;;,;:cdxxxxxxxdddddxxxxxxxxkkkkkkOOOO000xolldkKMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMNx:'';;:coxkkkxxxddddddxxxxxxxxxkkkkkOO00KK0xlcldKMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMNx:,,;;:ldxkkkxxddddddxxxxxxxxxxkkkkkOO000KKOddxkXWMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMM0c,,,;codkkkkxxxddddddxxxxxxxxxxkkkOOOOO0KKOddOXWMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMNOl;;:ldxkkkkxdooooooooddxxxddxxxxxdddxxxOKOdx0NMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMWKl::cdkkkkxooollcccccllodxdddxdolllodxkOKKO0NMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMNOxdlcccdkkkxxdoll:,;cc::clodxkkkdl:'':odkKKK0x0WMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMWx;clllloxkkxddlcccc;:ooccclodxkOOxoc:coxxxk0KKkxNMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMWo;c:cloxkkxxdddoooooolllllddxxkOOkxdoddxkkO0KKkONMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMOlc;;;lxkkkxxxxddddooooooddxddxk00OkxxxkkOO0KKkOWMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMWxc,;;ldxkkxxxxddddddddoodddddxkOOOkkkkkOOO0KKO0WMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMXoc:c:oxxkxxxddddddddollodxdddxO00xxxkkkOO0K0kXWMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMWXxllcldxkxxxddddddddo:cdocloodkkkkddxkkOO0K0KWMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMWKxoddxxxxxdddoooooolcc:::cldxddxxddxkO0KNWMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMWWOdxxxdddooooooooooooodooxkkkkxxxkO0XWMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMM0ddxxdddooooolclllllloooodxxooxkkOKXMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMXxdxxddddodolc::cccccclllodooldkO0XWMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMNOddxddddooooooooolllooodxkkkxxk0KNMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMNOxoodddoooooooooooolllddxxkkxxOKNWMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMKoxxdoloooooooooooooolcloxxxxxkO0NMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMWl.oxdollllcloooooooooooodxkkkkkOXMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMO;.:xdoolcc::::ccccclllooooxxxxkOlOWMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMXc,..,coolcc::;;:::;;:::cccldxkO0x..oNMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMWd,'....';ccccc:::::::::::clxkOOOOc  .cNMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMNx,'........';clloolllcccccloxkOOkx'   .c0XWMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMXx;''............;cdddddoooooodxkOkxl.   ..;:cok0XNWMMMMMMMMMMMMMMM
MMMMMMMMMWKkc'..................';ldxxxxxxxkkkkxd;    ....,,,;;;coxk0XWMMMMMMMMM
MMMMMMMNOc'...... ..................;lxkkkkkkkkxo'   ...  .,,,,,,,,,;;cdONMMMMMM
MMMMWKd;........... ...................';cxkkkkxc. ....''..,,,,,,,,,,,,,;ckNMMMM
MWKkc,...............................    ..,okxl......'',,.,,,,,,,,,'''''',cOWMM
kl;'...............................     ... .;'. ',..''',,,,,,,,,,,,'''''',,:kWM
'..................................          .   ''''''',,,,,,,,,,,,,'''',,,,:0W
.........................................       .,'.'''',,,,,,,,,,,,,,,,,,'',,l0
"

svn $@
