:global token "YourBotAPIToken";
:global chatid "YourChatID";

:local input do={:return};
:put "Enter text: ";
:local text [$input];

if ($text="") do={
    :put "Error: variables not set, please enter text";
    :log info "Текст не задан, пожалуйста введите текст.";
};

if ($text!="") do={
    /tool fetch url="https://api.telegram.org/$token/sendMessage\?chat_id=$chatid&text=$text" output=none;
} else={
    :put "Unkown error";
    :log info "Неизвестная ошибка";
}
