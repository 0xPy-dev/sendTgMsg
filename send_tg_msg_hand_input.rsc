:global token "YourBotAPIToken";
:global chatid "YourChatID";

:global input do={:return};
:put "Enter text: ";
:global text [$input];

if ($text="") do={
	:put "Error: variables not set, please enter text";
};

if ($text!="") do={
	/tool fetch url="https://api.telegram.org/$token/sendMessage\?chat_id=$chatid&text=$text" output=none;
} else={
	:put "Unkown error";
}
