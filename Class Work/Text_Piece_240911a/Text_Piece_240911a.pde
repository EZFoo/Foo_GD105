PFont font;

void setup() {
 size(500, 500);

}

void draw(){
 background(0);
 
//font settings
 font = loadFont("Consolas-20.vlw");
 textFont(font);
 textAlign(CENTER);
 noFill();
 textSize(6.0);
 
//text X, Y
 int textX = 12;
 int textY = -242;
 
//text
 text(("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   +&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$ ; :&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& ; &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&;                   $&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &+&&&&&&&&&XX$&x  &&X   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  +&&&&&&&&&&&&&   &&$&& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &            X   ; :+  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  :&$&&$      $& x &x&&  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &&   X&&&&+   + &;+X &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$ &X &       X+ ; &;&  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &  .&&&&&&:    &;& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &&&&     +&X::+&;& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&: &$x  X&   &   :+& :&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& X&&  $&  :&&  &&& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    ;  &   &       &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&+ &&   &  +&  &&x  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    &   &   &    &&    &&  $&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&          &&;&&&&&&    &&&&&&&:&&    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&+     :+&&&+:           $+x: .;   &&&&&&    +&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&;    &    .&&$X++:+&$.$$XXXxxX+++++;;:::; $;   :x&&    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    +   :&&X+;+;;;xX   +:;;;;;;;;;;;;;;;;;.:::;;: &&&&    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&       &&XX+;;;;;;;Xx  $X+;;;;;;;;;;;;;;;;;;;;;;:..:&&&&&&&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&     :&$+;;:;;;+;;;x$ .X+;;;;;;;;;;;;;;;;;;;;;;;;:&&+   &&&&&&  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&     $&$+;;;;;;+;;;+x$ .x+;;;;;;;;;;;;;;;;;;;;;;;;+;: :;;::  &&&&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:     &X;;;;;;;;;;;;;+$  $+;;;;;;;;;;;;;;;;;;;+++;;;;:;;;;;;++::   &X +&&      :&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&         $&+;;;;;;;;;;;;;+$  &+;;;;;;;;;;;;;;;;;;;;$ $;;;;;;;;;;: x+: ;&&&:   &&.&      &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  $&     &X;;;;;;;;;;;;;;;+& +X;;;;;;;;;;;x+x;;;;;;+& &;;;;;;;;;;X  $X&&&&    :&&       &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &:    :&x;;;;;;;;;;;;;;x$&  &+;;;;;;;;;;;& +x;;;;;;& $+;;;;;;;;;+$  ;  &     +     &    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   .    &&xX;;;;;;;;;;;;+X&    $;;;;;;;;;;;xX  &x;;;;;& xx;:;X;;;;;;;X &&&&     +    &     .&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &    &&. x;;;;;;;;;+;+$&    &x;;;;;;;;;;;& x  &X;;;+$  x;X;;;;;;;;:&  &&&    +    ;       &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &    &&  X+;;;;;;;;+;x&   && &;;;;;;;;;;;X+ &&  &+:;;x  X;;;;;;;;;;:;+ &&     :       +    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &&   &   $X;;;;;;;;;+X$  x&&  &;;;;;;;;;;;&  &&&  &X;X+: &;;;;;;;;;;;;& ;&    $       :     &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&;   &&&   x  &;;;;;;;;;X&   & $&  $;;;;;;;;;;+X &X:$&  ;$;;& &;;;;;;;;;;;+x:     ;        $    ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &&&   &  XX;;;;;;;+$&  &&&&&&  x;;;;;;;;;;$  &&&&&&X  X+& &;;;;;;;;;;;;;X     X       &&&&; &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   :&&       &;;;;;;;+&: +&&&&&&& +X;;;;;;;;;+& $&&&&&&&&  $& +;;;;;;;;;;;;+&    X       &&  &&  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   && +     &&:;;;;+$&          & xx;;;;;;;;;X  &&&&&&&&&&  & .$x;;;;;;;;;;+    $        $  &&x$  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  :&:;&     &::;;;X$     ;&;  ;.  ;X;;;;;;;;;&        +&&&& +.  $;+;;;;;;;X&    X    &  $.+&;  && &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &: X$     &:;;++$  &&&&&+    &&  &;;;;;;;;xx &x++XX     ;&&&  &;;;;;;;;;;$    x    & ;X&&   x&& :&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   & xxx&   +x;;;$   &&&&&&     &&& x&+X;;;;;&  &&&&&   &&$      &;;;;;;;;:;&    ;    x  &::  &&&&  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&x &  &;;&  &$;+:X$ &&&&&&&      &&&  &  &X+;;& &&&&&     &&&& +  $x;;;;:;;;;&    +:   +  &:::&: +&  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  & &x;;&  &+;;;$  &&&&&&&      &&&&&     $+X; &&&&      &&&&& &  X;;;++;;;;&    ;;    . ;X;$  &&&  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  & $;;;&  &;;;;&  &&&&&&&      &&&&&& &&  X&  &&&&      ;&&&&&   $;;;;;;;;+X     +    $  $:;+x &&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& & .X;;;&  &;;:X&  &&&&&& $  $& &&&&&& &&& :& &&&&&       &&&&&&  &+;;;;;;+$      +    x  $;;; &&&$  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&+ & &+;:;&  &+;x$  &&&&&&& +&$&  &$&&&&&&&&& X &&&&        &&&&&&  X+;;;;;X &&x   &; &+ $  X;;;x$  &  +&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  & &;;:;& ;X;;X  &&&&&&&&  &;: &&&&&&&&&&&&  x&&&&  &&&&: &&&&&& ;.;;;;;+&   &   &.   &&XX+;;::. ;&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   .X;;;+& ;X;;X  && :.::&&   &&&&&&&&&&&&&&&:&&&&&&:$;;& .&&&&&; &+;;;;x&      +$X&& &X;;;:::;;;&&&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &;+;;;& x&$++&  &$x;:: +&&&&&&&&&&&&&&&&&&&&&&&&& &;+& &&&&&&  X;;;;;$x  &+  &x;$  $;;:::&+;;:. ;   &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &;;;;;&    &+;$   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   +  &&&&&X &+;;;;XX   :   ;+;& ;x::+$+::;;;;:&&  &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &;;;;;&  & :&$X$$   :&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&: &&&&&&  &;;;;X&      & ;xxx &;X&+::;;;;;;:&:  &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  ;X;;;+:X: &:   &$&        &&&&&&&&&+ &&&&&&&&&&&&&&x;xx+;: &X :$;;;X&      && +x&  $Xx:;;;;;;;;;;X;  &$&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &+;;+;;+XX+$&   && &&&+:&:    X&&&&&&&&&&&&&&&&&&&&&&++;:;&&  ;$+xX&       && XX& XX::;;;;;;;;;;;X;  &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$  &;;;;;;;;;;;x&+    &&&&&&&&&&&        &&&&&&&&&&&&&&&&&&&&&    &X$      &&&&& &&  &;+;;;;;;;;;;;;X;  &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &;;;;;;;;;;;;X; &  &&&&&&&&&&&&&&&&&&$  &$                  & :&  &&&&&&&&&&& && ;X;;;;;;;;;;;;;;&;  &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   $;;;;;;;;;;;;+$ ;  &&&&&&&&&&&&&&&&  &&  +  &&&+&&&&&&&&&&&&& &  &&&&&&&&&&&  &  &;;;;;;;;;;;;+;;&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &;;;;;;;;;;;;;&   &&&&&&&&&&&&&&&&  &     &&&  &  &&&&&&&&&&&   &&&&&&&&&&&&  &  $;;;;;;;;;;;;;;+&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  :$;;;;;;;;;;;;;&   &&&&&&&&&&&&&&X   : &&&    +&& &  &&&&&&&&  &&&&&&&&&&&&&&  x &+;;;;;;;;;;;;;;x$   &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   $;;;;;;;;;;;;;$.  &&&&&&&&&&&&&    ;&     &&&&&& &&  &&&&&&&&&&&&&&&&&&&&&&& x  $;;;;;;;;;;;;;;;X; & &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   $;;;;;;;;;;;;;;&  &&&&&&&&&&&&    :&& $&  &    & &&&$ &&&&&&&&&&&&&&&&&&&&&&   &x;;;;;;;;;;;;;;;$. : &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$&&   X;;;;;;;;;;;;;;&  &&&&&&&&&&&  &  &&  && .&&&&&& &&  ; x&&&&&&&&&&&&&&&&&&&&   $;;;;;;;;;;+;;;;;&    &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$&&  &;;;;;;;;;;;;;;;&  +&&&&&&&&&  &  &&  &+& &$xXxx& :& ;$+ X&&&&&&&&&&&&&&&&&&X  &x;;;;;;;;;;;;;;;;&    &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &;;;;;;;;;;;;;;+X.  &&&&&&&&     &&& .XxX &Xxxxx&  &&&&&& &&&&&&&&&&&&&&&&&&  .&;;;;;;;;;;;+;;:;;&    &&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &;;;;;;;;:;;;;;+++  &&&&&&&  +: $&&  &+$  &Xxxxxx& &&&$;;  &&&&&&&&&&&&&&&&   &++;;;;;;;;;;;+x;;x&   +&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &x:;+:;:+;;:::;;X&  ;&&&&&+ ++  &&& ;x;&  &xxxxx:& &     &  &&&&&&&&&&&&&&    X;;::;;;;;;;;;;;:;&    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &  Xx: $+;: &.;++&  +;&+   :X  &$&  &;;&  &xxX$&$&+ +;Xx;:& &&&&&&&&&&&&&   :$+;;xX;;;;;;;;;;;;X$ +  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &&&X  &X::;&&$&Xx&: &   & :$  &&+& ;X:+& &&&&&&+ :      : X& &&&&&&&&&&&  &&x;;;;:::;;;;;;;;;;x& ;   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  X&;  X&  x;                  &&&&& &+.;; &                      +&&&&&&  &: :;;;;;;;;;;;;;;;;+&  +  X&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  &  x&&+XX &&&                     +  &      .              &&&$  &&&&X &&;  :  .:;::: .  ::;x  &   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$ &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&X:+&& ;& &X;.   .;;+X&&&&&&&&&&&&&&&&&&&&&&&   ;&X     +&&.:  ;  &   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"), width/2 + textX, height/2 + textY);
 
 
 if(frameCount == 1) {
   save("Text_Piece_240911a.png");
}
