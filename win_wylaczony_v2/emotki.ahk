#HotIf
:*:eplg:: {	 ; to do robienia emotek, polecam cieplutko :3
	if StrLen(A_Clipboard) > 5 {
		result := MsgBox("Clipboard zawiera ponad 5 znaków, czy chcesz kontynuować?",, "1") 
		if result = "Cancel" { 
		MsgBox "Anulowałeś polecenie", , "T0.45"
		Return
	} } 
	emotka := InputBox("Podaj hotstringa dla " A_Clipboard,, "W150 H100")
	if emotka.Result = "Cancel" 
		MsgBox "Anulowałeś polecenie", , "T0.45"
	else 
		FileAppend "`n:*:" emotka.Value "::" A_Clipboard, "skrypt emotki"
	Reload 
}  
:T*:hthin:: :thinking~1:
:T?*:''::``
:T*:qq::/
:T?*:bqq::\
:T?*:tilda::~
:T*:dilwithit::¯\_(ツ)_/¯
:?*:ecels::°C
:*:3dot::…
:*:echev::» «
:?*:duzo1::duzomaili1@interia.pl
:?*:duzo5::duzomaili5@interia.pl 
; Japońskie znaczki
:*:kudasai::ください
:*:shitteiru::知っている
:*:watashi::私
:*:ethin::🤔
:*:ejoy::😂
:*:esun::😎
:*:oky::👌
:*:etear::😥
:*:etir::😢
:*:erolf::🤣
:*:efries::🍟
:*:e100::💯
:*:eclown::🤡 
:*:efire::🔥
:*:eheart::❤️
:*:elove::❤️
:*:esweat::😅
:*:ewhat::❓
:*:ewave::👋
:*:eangry::😡
:*:efrozen::🥶 
:*:esmug::😨
:*:ethank::🤗
:*:esalt::🧂
:*:eposag::🗿
:*:eapple::🍎
:*:eburger::🍔
:*:edonut::🍩
:*:ebeer::🍺
:*:eharts::🥰
:*:esmoke::😤
:*:efrozen::🥶
:*:ehot::🥵
:*:epump::🎃
:*:ecash::🤑
:*:epick::⛏️
:*:emuscle::💪
:*:ethumb::👍
:*:esmirk::😏
:*:eeyes::👀
:*:eclap::👏
:*:epray::🙏
:*:edisa::♿
:*:epalm::🌴
:*:esan::☀
:*:eboom::💥
:*:ebomb::💣
:*:egift::🎁 
:*:eshit::💩
:*:edrink::🍹
:*:ebird::🐦
:*:emiddle::🖕
:*:egalak::🌌
:*:lennyfejs::( ͡° ͜ʖ ͡°) 
:*:ekiss::😘
:*:esmart::🤓
:*:ebut::👟
:*:eshoe::👟
:*:eleft::👈
:*:eright::👉
:*:espark::✨
:*:egrin::😁
:*:eparty::🥳
:*:ecar::🚗
:*:edown::👎
:*:ecrazy::🤪
:*:emoon::🌘