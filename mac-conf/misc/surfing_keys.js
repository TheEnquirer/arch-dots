// #VIMIFY!

// Settings for the Surfing Keys extenstion: https://github.com/brookhong/Surfingkeys/

// ##################
// 	QOL
// ##################

settings.scrollStepSize = 90;



// ##################
// 	Mappings
// ##################

unmap('<Ctrl-h>'); // for tab navigation
aceVimMap('jf', '<Esc>', 'insert');
Hints.characters = "sdfgqwertzxcvbn"; // remove 'a' to make hints grepper compatible



// ##################
// 	 Theme
// ##################


Hints.style('color: #F04E4E; background: #575562; border: 0px; font-size: 15px;');

settings.theme = `
.sk_theme {
    font-family: Input Sans Condensed, Charcoal, sans-serif;
    font-size: 10pt;
    background: #282828;
    color: #ebdbb2;
}
.sk_theme tbody {
    color: #b8bb26;
}
.sk_theme input {
    color: #d9dce0;
}
.sk_theme .url {
    color: #98971a;
}
.sk_theme .annotation {
    color: #b16286;
}
.sk_theme .omnibar_highlight {
    color: #ebdbb2;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #282828;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
    background: #d3869b;
}
#sk_status, #sk_find {
    font-size: 5pt;
}`;
