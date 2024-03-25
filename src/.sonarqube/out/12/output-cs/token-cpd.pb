�
GC:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\Stuff.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str .
,. /
AllInternalsVisible0 C
=D E
trueF J
)J K
]K L
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
,8 9
AllInternalsVisible: M
=N O
trueP T
)T U
]U V
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str B
,B C
AllInternalsVisibleD W
=X Y
trueZ ^
)^ _
]_ `�

\C:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\SingletonHttpClientFactory.cs
	namespace 	

RestClient
 
. 
Net 
{ 
public		 

sealed		 
class		 &
SingletonHttpClientFactory		 2
:		3 4
IDisposable		5 @
{

 
private 
bool 
disposed 
; 
public 

HttpClient 

HttpClient $
{% &
get' *
;* +
}, -
public &
SingletonHttpClientFactory )
() *

HttpClient* 4

httpClient5 ?
)? @
=>A C

HttpClientD N
=O P

httpClientQ [
;[ \
public 

HttpClient 
CreateClient &
(& '
string' -
name. 2
)2 3
=>4 6

HttpClient7 A
;A B
public 
void 
Dispose 
( 
) 
{ 	
if   
(   
disposed   
)   
return    
;    !
disposed!! 
=!! 
true!! 
;!! 

HttpClient"" 
."" 
Dispose"" 
("" 
)""  
;""  !
}## 	
}%% 
}'' �
OC:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\SendException.cs
	namespace 	

RestClient
 
. 
Net 
{ 
[ 
Serializable 
] 
public 

class 
SendException 
:  
	Exception! *
{ 
public 
IRequest 
Request 
{  !
get" %
;% &
}' (
public

 
SendException

 
(

 
string

 #
message

$ +
,

+ ,
IRequest

- 5
request

6 =
,

= >
	Exception

? H
innerException

I W
)

W X
:

Y Z
base

[ _
(

_ `
message

` g
,

g h
innerException

i w
)

w x
=>

y {
Request	

| �
=


� �
request


� �
;


� �
} 
} �
TC:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\GlobalSuppressions.cs
[ 
assembly 	
:	 

System 
. 
Diagnostics 
. 
CodeAnalysis *
.* +
SuppressMessage+ :
(: ;
$str; C
,C D
$strE m
,m n
Justificationo |
=} ~
$str	 �
,
� �
Scope
� �
=
� �
$str
� �
,
� �
Target
� �
=
� �
$str
� �
)
� �
]
� �
[ 
assembly 	
:	 

System 
. 
Diagnostics 
. 
CodeAnalysis *
.* +
SuppressMessage+ :
(: ;
$str; B
,B C
$strD y
,y z
Justification	{ �
=
� �
$str
� �
,
� �
Scope
� �
=
� �
$str
� �
,
� �
Target
� �
=
� �
$str
� �
)
� �
]
� �
[		 
assembly		 	
:			 

System		 
.		 
Diagnostics		 
.		 
CodeAnalysis		 *
.		* +
SuppressMessage		+ :
(		: ;
$str		; C
,		C D
$str		E w
,		w x
Justification			y �
=
		� �
$str
		� �
,
		� �
Scope
		� �
=
		� �
$str
		� �
,
		� �
Target
		� �
=
		� �
$str
		� �
)
		� �
]
		� �
[

 
assembly

 	
:

	 

System

 
.

 
Diagnostics

 
.

 
CodeAnalysis

 *
.

* +
SuppressMessage

+ :
(

: ;
$str

; B
,

B C
$str

D q
,

q r
Justification	

s �
=


� �
$str


� �
,


� �
Scope


� �
=


� �
$str


� �
,


� �
Target


� �
=


� �
$str


� �
)


� �
]


� ��-
_C:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\DefaultSendHttpRequestMessage.cs
	namespace 	

RestClient
 
. 
Net 
{ 
public		 

class		 )
DefaultSendHttpRequestMessage		 .
:		/ 0#
ISendHttpRequestMessage		1 H
{

 
public 
static )
DefaultSendHttpRequestMessage 3
Instance4 <
{= >
get? B
;B C
}D E
=F G
newH K)
DefaultSendHttpRequestMessageL i
(i j
)j k
;k l
public 
async 
Task 
< 
HttpResponseMessage -
>- ."
SendHttpRequestMessage/ E
<E F
TRequestBodyF R
>R S
(S T

HttpClient 

httpClient !
,! ""
IGetHttpRequestMessage ""
httpRequestMessageFunc# 9
,9 :
IRequest 
< 
TRequestBody !
>! "
request# *
,* +
ILogger 
logger 
, !
ISerializationAdapter ! 
serializationAdapter" 6
)6 7
{ 	
if 
( 

httpClient 
== 
null "
)" #
throw$ )
new* -!
ArgumentNullException. C
(C D
nameofD J
(J K

httpClientK U
)U V
)V W
;W X
if 
( "
httpRequestMessageFunc &
==' )
null* .
). /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W"
httpRequestMessageFuncW m
)m n
)n o
;o p
if 
( 
request 
== 
default "
)" #
throw$ )
new* -!
ArgumentNullException. C
(C D
nameofD J
(J K
requestK R
)R S
)S T
;T U
logger 
??= 

NullLogger !
.! "
Instance" *
;* +
try 
{ 
var 
httpRequestMessage &
=' ("
httpRequestMessageFunc) ?
.? @!
GetHttpRequestMessage@ U
(U V
requestV ]
,] ^
logger_ e
,e f 
serializationAdapterg {
){ |
;| }
logger 
. 
LogTrace 
(  
Messages  (
.( ) 
InfoAttemptingToSend) =
,= >
request? F
)F G
;G H
try!! 
{"" 
var## 
httpResponseMessage## +
=##, -
await##. 3

httpClient##4 >
.##> ?
	SendAsync##? H
(##H I
httpRequestMessage##I [
,##[ \
request##] d
.##d e
CancellationToken##e v
)##v w
.##w x
ConfigureAwait	##x �
(
##� �
false
##� �
)
##� �
;
##� �
logger%% 
.%% 
LogInformation%% )
(%%) *
Messages%%* 2
.%%2 3'
InfoSendReturnedNoException%%3 N
)%%N O
;%%O P
return'' 
httpResponseMessage'' .
;''. /
})) 
catch** 
(** 
ArgumentException** (
aex**) ,
)**, -
{++ 
if,, 
(,, 
aex,, 
.,, 
Message,, #
==,,$ &
$str,,' c
),,c d
{-- 
var.. 
	isRequest.. %
=..& '
httpRequestMessage..( :
...: ;
Content..; B
?..B C
...C D
Headers..D K
...K L
ContentType..L W
==..X Z
null..[ _
;.._ `
var// 
errorTypePart// )
=//* +
	isRequest//, 5
?//6 7
$"//8 :
$str//: U
{//U V
HeadersExtensions//V g
.//g h!
ContentTypeHeaderName//h }
}//} ~
$str	//~ �
"
//� �
:
//� �
$"00 
$str00 2
{002 3
HeadersExtensions003 D
.00D E!
ContentTypeHeaderName00E Z
}00Z [
$str	00[ �
"
00� �
;
00� �
throw11 
new22 "
MissingHeaderException22  6
(226 7
$"33  "
$str33" D
{33D E
errorTypePart33E R
}33R S
"33S T
,33T U
	isRequest44  )
,44) *
aex55  #
)55# $
;55$ %
;55& '
}66 
throw77 
;77 
}88 
}99 
catch:: 
(:: &
OperationCanceledException:: -
oce::. 1
)::1 2
{;; 
logger<< 
.<< 
LogError<< 
(<<  
oce<<  #
,<<# $
Messages<<% -
.<<- .*
ErrorMessageOperationCancelled<<. L
,<<L M
request<<N U
)<<U V
;<<V W
throw== 
;== 
}>> 
catch?? 
(?? 
	Exception?? 
ex?? 
)??  
{@@ 
loggerAA 
.AA 
LogErrorAA 
(AA  
exAA  "
,AA" #
MessagesAA$ ,
.AA, -
ErrorOnSendAA- 8
,AA8 9
requestAA: A
)AAA B
;AAB C
throwCC 
;CC 
}DD 
}EE 	
}FF 
}GG �!
ZC:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\DefaultHttpClientFactory.cs
	namespace 	

RestClient
 
. 
Net 
{		 
public

 

sealed

 
class

 $
DefaultHttpClientFactory

 0
:

1 2
IDisposable

3 >
{ 
private 
bool 
disposed 
; 
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
Lazy6 :
<: ;

HttpClient; E
>E F
>F G
httpClientsH S
;S T
private 
readonly 
Func 
< 
string $
,$ %
Lazy& *
<* +

HttpClient+ 5
>5 6
>6 7
createClientFunc8 H
;H I
private 
readonly 
ILogger  
<  !$
DefaultHttpClientFactory! 9
>9 :
logger; A
;A B
public $
DefaultHttpClientFactory '
(' (
Func( ,
<, -
string- 3
,3 4
Lazy5 9
<9 :

HttpClient: D
>D E
>E F
?F G
createClientFuncH X
=Y Z
null[ _
,_ `
ILoggera h
<h i%
DefaultHttpClientFactory	i �
>
� �
?
� �
logger
� �
=
� �
null
� �
)
� �
{ 	
httpClients 
= 
new  
ConcurrentDictionary 2
<2 3
string3 9
,9 :
Lazy; ?
<? @

HttpClient@ J
>J K
>K L
(L M
)M N
;N O
this 
. 
logger 
= 
logger  
??! #

NullLogger$ .
<. /$
DefaultHttpClientFactory/ G
>G H
.H I
InstanceI Q
;Q R
this 
. 
createClientFunc !
=" #
createClientFunc$ 4
??5 7
(8 9
name9 =
=>> @
newA D
LazyE I
<I J

HttpClientJ T
>T U
(U V
(V W
)W X
=>Y [
{ 
this 
. 
logger 
. 
LogInformation *
(* +
$str+ F
,F G
nameH L
)L M
;M N
return 
new 

HttpClient %
(% &
)& '
;' (
} 
,  
LazyThreadSafetyMode #
.# $#
ExecutionAndPublication$ ;
); <
)< =
;= >
} 	
public## 

HttpClient## 
CreateClient## &
(##& '
string##' -
name##. 2
)##2 3
=>$$ 
name$$ 
==$$ 
null$$ 
?$$ 
throw$$ #
new$$$ '!
ArgumentNullException$$( =
($$= >
nameof$$> D
($$D E
name$$E I
)$$I J
)$$J K
:$$L M
httpClients$$N Y
.$$Y Z
GetOrAdd$$Z b
($$b c
name$$c g
,$$g h
createClientFunc$$i y
)$$y z
.$$z {
Value	$${ �
;
$$� �
public&& 
void&& 
Dispose&& 
(&& 
)&& 
{'' 	
if(( 
((( 
disposed(( 
)(( 
return((  
;((  !
disposed)) 
=)) 
true)) 
;)) 
foreach++ 
(++ 
var++ 
name++ 
in++  
httpClients++! ,
.++, -
Keys++- 1
)++1 2
{,, 
httpClients-- 
[-- 
name--  
]--  !
.--! "
Value--" '
.--' (
Dispose--( /
(--/ 0
)--0 1
;--1 2
}.. 
}// 	
}11 
}22 �9
^C:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\DefaultGetHttpRequestMessage.cs
	namespace 	

RestClient
 
. 
Net 
{ 
public 

class (
DefaultGetHttpRequestMessage -
:. /"
IGetHttpRequestMessage0 F
{ 
public 
static (
DefaultGetHttpRequestMessage 2
Instance3 ;
{< =
get> A
;A B
}C D
=E F
newG J(
DefaultGetHttpRequestMessageK g
(g h
)h i
;i j
public 
HttpRequestMessage !!
GetHttpRequestMessage" 7
<7 8
T8 9
>9 :
(: ;
IRequest; C
<C D
TD E
>E F
requestG N
,N O
ILoggerP W
loggerX ^
,^ _!
ISerializationAdapter` u!
serializationAdapter	v �
)
� �
{ 	
if 
( 
request 
== 
null 
)  
throw! &
new' *!
ArgumentNullException+ @
(@ A
nameofA G
(G H
requestH O
)O P
)P Q
;Q R
if 
(  
serializationAdapter $
==% '
null( ,
), -
throw. 3
new4 7!
ArgumentNullException8 M
(M N
nameofN T
(T U 
serializationAdapterU i
)i j
)j k
;k l
logger 
??= 

NullLogger !
.! "
Instance" *
;* +
try 
{ 
logger 
. 
LogTrace 
(  
$str  n
,n o

TraceEventp z
.z {
Information	{ �
,
� �
request
� �
)
� �
;
� �
var 

httpMethod 
=  
string! '
.' (
IsNullOrEmpty( 5
(5 6
request6 =
.= >#
CustomHttpRequestMethod> U
)U V
? 
request 
. 
HttpRequestMethod /
switch0 6
{ 
HttpRequestMethod   )
.  ) *
Get  * -
=>  . 0

HttpMethod  1 ;
.  ; <
Get  < ?
,  ? @
HttpRequestMethod!! )
.!!) *
Post!!* .
=>!!/ 1

HttpMethod!!2 <
.!!< =
Post!!= A
,!!A B
HttpRequestMethod"" )
."") *
Put""* -
=>"". 0

HttpMethod""1 ;
.""; <
Put""< ?
,""? @
HttpRequestMethod## )
.##) *
Delete##* 0
=>##1 3

HttpMethod##4 >
.##> ?
Delete##? E
,##E F
HttpRequestMethod$$ )
.$$) *
Patch$$* /
=>$$0 2
new$$3 6

HttpMethod$$7 A
($$A B
$str$$B I
)$$I J
,$$J K
HttpRequestMethod%% )
.%%) *
Custom%%* 0
=>%%1 3
throw%%4 9
new%%: =%
InvalidOperationException%%> W
(%%W X
$str	%%X �
)
%%� �
,
%%� �
_&& 
=>&& 
throw&& "
new&&# &%
InvalidOperationException&&' @
(&&@ A
$str&&A S
)&&S T
}'' 
:(( 
new(( 

HttpMethod(( $
((($ %
request((% ,
.((, -#
CustomHttpRequestMethod((- D
)((D E
;((E F
var** 
httpRequestMessage** &
=**' (
new**) ,
HttpRequestMessage**- ?
{++ 
Method,, 
=,, 

httpMethod,, '
,,,' (

RequestUri-- 
=--  
request--! (
.--( )
Uri--) ,
}.. 
;.. 
ByteArrayContent00  
?00  !
httpContent00" -
=00. /
null000 4
;004 5
if11 
(11 
request11 
.11 
BodyData11 $
!=11% '
null11( ,
)11, -
{22 
var33 
bodyDataData33 $
=33% & 
serializationAdapter33' ;
.33; <
	Serialize33< E
(33E F
request33F M
.33M N
BodyData33N V
,33V W
request33X _
.33_ `
Headers33` g
)33g h
;33h i
httpContent44 
=44  !
new44" %
ByteArrayContent44& 6
(446 7
bodyDataData447 C
)44C D
;44D E
httpRequestMessage55 &
.55& '
Content55' .
=55/ 0
httpContent551 <
;55< =
logger66 
.66 
LogTrace66 #
(66# $
$str66$ Z
,66Z [
bodyDataData66\ h
.66h i
Length66i o
)66o p
;66p q
}77 
else88 
{99 
logger:: 
.:: 
LogTrace:: #
(::# $
$str::$ U
)::U V
;::V W
};; 
if== 
(== 
request== 
.== 
Headers== #
!===$ &
null==' +
)==+ ,
{>> 
foreach?? 
(?? 
var??  

headerName??! +
in??, .
request??/ 6
.??6 7
Headers??7 >
.??> ?
Names??? D
)??D E
{@@ 
ifAA 
(AA 
HeadersExtensionsAA -
.AA- .
ContentHeaderNamesAA. @
.AA@ A
ContainsAAA I
(AAI J

headerNameAAJ T
,AAT U
StringComparerAAV d
.AAd e
OrdinalIgnoreCaseAAe v
)AAv w
)AAw x
{CC 
httpContentGG '
?GG' (
.GG( )
HeadersGG) 0
.GG0 1
AddGG1 4
(GG4 5

headerNameGG5 ?
,GG? @
requestGGA H
.GGH I
HeadersGGI P
[GGP Q

headerNameGGQ [
]GG[ \
)GG\ ]
;GG] ^
}HH 
elseII 
{JJ 
httpRequestMessageKK .
.KK. /
HeadersKK/ 6
.KK6 7
AddKK7 :
(KK: ;

headerNameKK; E
,KKE F
requestKKG N
.KKN O
HeadersKKO V
[KKV W

headerNameKKW a
]KKa b
)KKb c
;KKc d
}LL 
}MM 
loggerOO 
.OO 
LogTraceOO #
(OO# $
$strOO$ >
)OO> ?
;OO? @
}PP 
loggerRR 
.RR 
LogTraceRR 
(RR  
$strRR  W
)RRW X
;RRX Y
returnTT 
httpRequestMessageTT )
;TT) *
}UU 
catchVV 
(VV 
	ExceptionVV 
exVV 
)VV  
{WW 
loggerXX 
.XX 
LogErrorXX 
(XX  
exXX  "
,XX" #
$strXX$ ^
,XX^ _

TraceEventXX` j
.XXj k
RequestXXk r
)XXr s
;XXs t
throwZZ 
;ZZ 
}[[ 
}\\ 	
}]] 
}^^ �(
OC:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\ClientFactory.cs
	namespace 	

RestClient
 
. 
Net 
{ 
public		 

class		 
ClientFactory		 
{

 
private 
readonly 
Func 
< 
string $
,$ %
CreateClientOptions& 9
,9 :
IClient; B
>B C
createClientFuncD T
;T U
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
IClient6 =
>= >
clients? F
;F G
private 
readonly 
CreateHttpClient )
createHttpClient* :
;: ;
private 
readonly 
ILoggerFactory '
loggerFactory( 5
;5 6
public 
ClientFactory 
( 
CreateHttpClient 
createHttpClient -
,- .
ILoggerFactory 
? 
loggerFactory )
=* +
null, 0
,0 1
Func 
< 
string 
, 
CreateClientOptions ,
,, -
IClient. 5
>5 6
?6 7
createClientFunc8 H
=I J
nullK O
)O P
{ 	
this 
. 
createHttpClient !
=" #
createHttpClient$ 4
;4 5
this 
. 
loggerFactory 
=  
loggerFactory! .
??/ 1
NullLoggerFactory2 C
.C D
InstanceD L
;L M
clients 
= 
new  
ConcurrentDictionary .
<. /
string/ 5
,5 6
IClient7 >
>> ?
(? @
)@ A
;A B
this 
. 
createClientFunc !
=" #
createClientFunc$ 4
??5 7
new8 ;
Func< @
<@ A
stringA G
,G H
CreateClientOptionsI \
,\ ]
IClient^ e
>e f
(f g

MintClientg q
)q r
;r s
} 	
public## 
IClient## 
CreateClient## #
(### $
string##$ *
name##+ /
,##/ 0
Action##1 7
<##7 8
CreateClientOptions##8 K
>##K L
?##L M
configureClient##N ]
=##^ _
null##` d
)##d e
=>$$ 
name$$ 
==$$ 
null$$ 
?$$ 
throw$$ #
new$$$ '!
ArgumentNullException$$( =
($$= >
nameof$$> D
($$D E
name$$E I
)$$I J
)$$J K
:$$L M
clients%% 
.%% 
GetOrAdd%% 
(%% 
name%% !
,%%! "
(%%# $
n%%$ %
)%%% &
=>%%' )
{&& 
var'' 
options'' 
='' 
new'' !
CreateClientOptions''" 5
(''5 6
createHttpClient''6 F
)''F G
;''G H
configureClient(( 
?((  
.((  !
Invoke((! '
(((' (
options((( /
)((/ 0
;((0 1
return)) 
createClientFunc)) '
())' (
n))( )
,))) *
options))+ 2
)))2 3
;))3 4
}** 
)** 
;** 
private.. 
IClient.. 

MintClient.. "
(.." #
string..# )
name..* .
,... /
CreateClientOptions..0 C
createClientOptions..D W
)..W X
{// 	
if22 
(22 
createClientOptions22 #
.22# $ 
SerializationAdapter22$ 8
==229 ;
null22< @
)22@ A
throw22B G
new22H K%
InvalidOperationException22L e
(22e f
$str	22f �
)
22� �
;
22� �
return55 
new55 
Client55 
(55 
createClientOptions66 #
.66# $ 
SerializationAdapter66$ 8
,668 9
createClientOptions77 #
.77# $
BaseUrl77$ +
,77+ ,
createClientOptions88 #
.88# $!
DefaultRequestHeaders88$ 9
,889 :
loggerFactory99 
?99 
.99 
CreateLogger99 +
<99+ ,
Client99, 2
>992 3
(993 4
)994 5
,995 6
createClientOptions:: #
.::# $
CreateHttpClient::$ 4
,::4 5
createClientOptions;; #
.;;# $"
SendHttpRequestMessage;;$ :
,;;: ;
createClientOptions<< #
.<<# $!
GetHttpRequestMessage<<$ 9
,<<9 :
createClientOptions== #
.==# $#
ThrowExceptionOnFailure==$ ;
,==; <
name>> 
)>> 
;>> 
}?? 	
}AA 
}BB �y
RC:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\ClientExtensions.cs
	namespace 	

RestClient
 
. 
Net 
{ 
public 

static 
class 
ClientExtensions (
{ 
public 
static 
Client 
With !
(! "
this" &
Client' -
client. 4
,4 5
AbsoluteUrl6 A
baseUriB I
)I J
=> 

client 
!= 
null 
? 
new  
Client! '
(' (
client 
.  
SerializationAdapter '
,' (
baseUri 
, 
client 
. !
DefaultRequestHeaders (
,( )
client 
. 
logger 
is 
ILogger $
<$ %
Client% +
>+ ,
logger- 3
?4 5
logger6 <
:= >
null? C
,C D
client 
. 
createHttpClient #
,# $
client 
. "
sendHttpRequestMessage )
,) *
client 
. !
getHttpRequestMessage (
,( )
client 
. #
ThrowExceptionOnFailure *
,* +
client 
. 
Name 
) 
: 
throw  
new! $!
ArgumentNullException% :
(: ;
nameof; A
(A B
clientB H
)H I
)I J
;J K
public$$ 
static$$ 
Client$$ 
With$$ !
($$! "
this$$" &
Client$$' -
client$$. 4
,$$4 5
IHeadersCollection$$6 H!
defaultRequestHeaders$$I ^
)$$^ _
=>%% 

client&& 
!=&& 
null&& 
?&& 
new&&  
Client&&! '
(&&' (
client'' 
.''  
SerializationAdapter'' '
,''' (
client(( 
.(( 
BaseUrl(( 
,(( !
defaultRequestHeaders)) !
,))! "
client** 
.** 
logger** 
is** 
ILogger** $
<**$ %
Client**% +
>**+ ,
logger**- 3
?**4 5
logger**6 <
:**= >
null**? C
,**C D
client++ 
.++ 
createHttpClient++ #
,++# $
client,, 
.,, "
sendHttpRequestMessage,, )
,,,) *
client-- 
.-- !
getHttpRequestMessage-- (
,--( )
client.. 
... #
ThrowExceptionOnFailure.. *
,..* +
client// 
.// 
Name// 
)// 
:// 
throw//  
new//! $!
ArgumentNullException//% :
(//: ;
nameof//; A
(//A B
client//B H
)//H I
)//I J
;//J K
public44 
static44 
Client44 %
WithDefaultRequestHeaders44 6
(446 7
this447 ;
Client44< B
client44C I
,44I J
string44K Q
key44R U
,44U V
string44W ]
value44^ c
)44c d
=>55 
With55 
(55 
client55 
,55 
key55 
.55  
ToHeadersCollection55  3
(553 4
value554 9
)559 :
)55: ;
;55; <
public:: 
static:: 
Client:: 
With:: !
(::! "
this::" &
Client::' -
client::. 4
,::4 5
ILogger::6 =
<::= >
Client::> D
>::D E
logger::F L
)::L M
=>;; 

client<< 
!=<< 
null<< 
?<< 
new<<  
Client<<! '
(<<' (
client== 
.==  
SerializationAdapter== '
,==' (
client>> 
.>> 
BaseUrl>> 
,>> 
client?? 
.?? !
DefaultRequestHeaders?? (
,??( )
logger@@ 
,@@ 
clientAA 
.AA 
createHttpClientAA #
,AA# $
clientBB 
.BB "
sendHttpRequestMessageBB )
,BB) *
clientCC 
.CC !
getHttpRequestMessageCC (
,CC( )
clientDD 
.DD #
ThrowExceptionOnFailureDD *
,DD* +
clientEE 
.EE 
NameEE 
)EE 
:EE 
throwEE  
newEE! $!
ArgumentNullExceptionEE% :
(EE: ;
nameofEE; A
(EEA B
clientEEB H
)EEH I
)EEI J
;EEJ K
publicJJ 
staticJJ 
ClientJJ 
WithJJ !
(JJ! "
thisJJ" &
ClientJJ' -
clientJJ. 4
,JJ4 5!
ISerializationAdapterJJ6 K 
serializationAdapterJJL `
)JJ` a
=>KK( *
clientLL 
!=LL 
nullLL 
?LL 
newLL  
ClientLL! '
(LL' ( 
serializationAdapterMM  
,MM  !
clientNN 
.NN 
BaseUrlNN 
,NN 
clientOO 
.OO !
DefaultRequestHeadersOO (
,OO( )
clientPP 
.PP 
loggerPP 
isPP 
ILoggerPP $
<PP$ %
ClientPP% +
>PP+ ,
loggerPP- 3
?PP4 5
loggerPP6 <
:PP= >
nullPP? C
,PPC D
clientQQ 
.QQ 
createHttpClientQQ #
,QQ# $
clientRR 
.RR "
sendHttpRequestMessageRR )
,RR) *
clientSS 
.SS !
getHttpRequestMessageSS (
,SS( )
clientTT 
.TT #
ThrowExceptionOnFailureTT *
,TT* +
clientUU 
.UU 
NameUU 
)UU 
:UU 
throwUU  
newUU! $!
ArgumentNullExceptionUU% :
(UU: ;
nameofUU; A
(UUA B
clientUUB H
)UUH I
)UUI J
;UUJ K
publicZZ 
staticZZ 
ClientZZ 
WithZZ !
(ZZ! "
thisZZ" &
ClientZZ' -
clientZZ. 4
,ZZ4 5
CreateHttpClientZZ6 F
createHttpClientZZG W
)ZZW X
=>[[ 
client\\ 
!=\\ 
null\\ 
?\\  
new\\! $
Client\\% +
(\\+ ,
client]] 
.]]  
SerializationAdapter]] /
,]]/ 0
client^^ 
.^^ 
BaseUrl^^ "
,^^" #
client__ 
.__ !
DefaultRequestHeaders__ 0
,__0 1
client`` 
.`` 
logger`` !
is``" $
ILogger``% ,
<``, -
Client``- 3
>``3 4
logger``5 ;
?``< =
logger``> D
:``E F
null``G K
,``K L
createHttpClientaa $
,aa$ %
clientbb 
.bb "
sendHttpRequestMessagebb 1
,bb1 2
clientcc 
.cc !
getHttpRequestMessagecc 0
,cc0 1
clientdd 
.dd #
ThrowExceptionOnFailuredd 2
,dd2 3
clientee 
.ee 
Nameee 
)ee  
:ee! "
throwee# (
newee) ,!
ArgumentNullExceptionee- B
(eeB C
nameofeeC I
(eeI J
clienteeJ P
)eeP Q
)eeQ R
;eeR S
publicjj 
staticjj 
Clientjj 
Withjj !
(jj! "
thisjj" &
Clientjj' -
clientjj. 4
,jj4 5"
IGetHttpRequestMessagejj6 L!
getHttpRequestMessagejjM b
)jjb c
=>kk 
clientll 
!=ll 
nullll 
?ll  
newll! $
Clientll% +
(ll+ ,
clientmm 
.mm  
SerializationAdaptermm /
,mm/ 0
clientnn 
.nn 
BaseUrlnn "
,nn" #
clientoo 
.oo !
DefaultRequestHeadersoo 0
,oo0 1
clientpp 
.pp 
loggerpp !
ispp" $
ILoggerpp% ,
<pp, -
Clientpp- 3
>pp3 4
loggerpp5 ;
?pp< =
loggerpp> D
:ppE F
nullppG K
,ppK L
clientqq 
.qq 
createHttpClientqq +
,qq+ ,
clientrr 
.rr "
sendHttpRequestMessagerr 1
,rr1 2!
getHttpRequestMessagess )
,ss) *
clienttt 
.tt #
ThrowExceptionOnFailurett 2
,tt2 3
clientuu 
.uu 
Nameuu 
)uu  
:uu! "
throwuu# (
newuu) ,!
ArgumentNullExceptionuu- B
(uuB C
nameofuuC I
(uuI J
clientuuJ P
)uuP Q
)uuQ R
;uuR S
publiczz 
staticzz 
Clientzz 
Withzz !
(zz! "
thiszz" &
Clientzz' -
clientzz. 4
,zz4 5#
ISendHttpRequestMessagezz6 M"
sendHttpRequestMessagezzN d
)zzd e
=>{{ 
client|| 
!=|| 
null|| 
?||  
new||! $
Client||% +
(||+ ,
client}} 
.}}  
SerializationAdapter}} /
,}}/ 0
client~~ 
.~~ 
BaseUrl~~ "
,~~" #
client 
. !
DefaultRequestHeaders 0
,0 1
client
�� 
.
�� 
logger
�� !
is
��" $
ILogger
��% ,
<
��, -
Client
��- 3
>
��3 4
logger
��5 ;
?
��< =
logger
��> D
:
��E F
null
��G K
,
��K L
client
�� 
.
�� 
createHttpClient
�� +
,
��+ ,$
sendHttpRequestMessage
�� *
,
��* +
client
�� 
.
�� #
getHttpRequestMessage
�� 0
,
��0 1
client
�� 
.
�� %
ThrowExceptionOnFailure
�� 2
,
��2 3
client
�� 
.
�� 
Name
�� 
)
��  
:
��! "
throw
��# (
new
��) ,#
ArgumentNullException
��- B
(
��B C
nameof
��C I
(
��I J
client
��J P
)
��P Q
)
��Q R
;
��R S
public
�� 
static
�� 
Client
�� 
With
�� !
(
��! "
this
��" &
Client
��' -
client
��. 4
,
��4 5
bool
��6 :%
throwExceptionOnFailure
��; R
)
��R S
=>
�� 
client
�� 
!=
�� 
null
�� 
?
��  
new
��! $
Client
��% +
(
��+ ,
client
�� 
.
�� "
SerializationAdapter
�� /
,
��/ 0
client
�� 
.
�� 
BaseUrl
�� "
,
��" #
client
�� 
.
�� #
DefaultRequestHeaders
�� 0
,
��0 1
client
�� 
.
�� 
logger
�� !
is
��" $
ILogger
��% ,
<
��, -
Client
��- 3
>
��3 4
logger
��5 ;
?
��< =
logger
��> D
:
��E F
null
��G K
,
��K L
client
�� 
.
�� 
createHttpClient
�� +
,
��+ ,
client
�� 
.
�� $
sendHttpRequestMessage
�� 1
,
��1 2
client
�� 
.
�� #
getHttpRequestMessage
�� 0
,
��0 1%
throwExceptionOnFailure
�� +
,
��+ ,
client
�� 
.
�� 
Name
�� 
)
��  
:
��! "
throw
��# (
new
��) ,#
ArgumentNullException
��- B
(
��B C
nameof
��C I
(
��I J
client
��J P
)
��P Q
)
��Q R
;
��R S
public
�� 
static
�� 
Client
�� 
With
�� !
(
��! "
this
��" &
Client
��' -
client
��. 4
,
��4 5
string
��6 <
name
��= A
)
��A B
=>
�� 
client
�� 
!=
�� 
null
�� 
?
��  
new
��! $
Client
��% +
(
��+ ,
client
�� 
.
�� "
SerializationAdapter
�� /
,
��/ 0
client
�� 
.
�� 
BaseUrl
�� "
,
��" #
client
�� 
.
�� #
DefaultRequestHeaders
�� 0
,
��0 1
client
�� 
.
�� 
logger
�� !
is
��" $
ILogger
��% ,
<
��, -
Client
��- 3
>
��3 4
logger
��5 ;
?
��< =
logger
��> D
:
��E F
null
��G K
,
��K L
client
�� 
.
�� 
createHttpClient
�� +
,
��+ ,
client
�� 
.
�� $
sendHttpRequestMessage
�� 1
,
��1 2
client
�� 
.
�� #
getHttpRequestMessage
�� 0
,
��0 1
client
�� 
.
�� %
ThrowExceptionOnFailure
�� 2
,
��2 3
name
�� 
)
�� 
:
�� 
throw
�� !
new
��" %#
ArgumentNullException
��& ;
(
��; <
nameof
��< B
(
��B C
client
��C I
)
��I J
)
��J K
;
��K L
public
�� 
static
�� 
bool
�� 
Contains
�� #
<
��# $
T
��$ %
>
��% &
(
��& '
this
��' +
IList
��, 1
<
��1 2
T
��2 3
>
��3 4
list
��5 9
,
��9 :
T
��; <
compareItem
��= H
,
��H I
IEqualityComparer
��J [
<
��[ \
T
��\ ]
>
��] ^
?
��^ _
comparer
��` h
=
��i j
null
��k o
)
��o p
{
�� 	
if
�� 
(
�� 
list
�� 
==
�� 
null
�� 
)
�� 
throw
�� #
new
��$ '#
ArgumentNullException
��( =
(
��= >
nameof
��> D
(
��D E
list
��E I
)
��I J
)
��J K
;
��K L
comparer
�� 
??=
�� 
EqualityComparer
�� )
<
��) *
T
��* +
>
��+ ,
.
��, -
Default
��- 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
item
�� 
in
��  
list
��! %
)
��% &
{
�� 
if
�� 
(
�� 
comparer
�� 
.
�� 
Equals
�� #
(
��# $
item
��$ (
,
��( )
compareItem
��* 5
)
��5 6
)
��6 7
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� X
VC:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\ClientCallExtensions.csұ
HC:\Users\PC\Documents\GitHub\RestClient.Net\src\RestClient.NET\Client.cs
	namespace 	

RestClient
 
. 
Net 
{ 
public 

sealed 
class 
Client 
:  
IClient! (
,( )
IDisposable* 5
{ 
internal 
readonly 
CreateHttpClient *
createHttpClient+ ;
;; <
internal 
readonly "
IGetHttpRequestMessage 0!
getHttpRequestMessage1 F
;F G
internal!! 
readonly!! #
ISendHttpRequestMessage!! 1"
sendHttpRequestMessage!!2 H
;!!H I
internal&& 
readonly&& 
ILogger&& !
logger&&" (
;&&( )
internal-- 
readonly-- 
Lazy-- 
<-- 

HttpClient-- )
>--) *
lazyHttpClient--+ 9
;--9 :
internal00 
bool00 
Disposed00 
{00  
get00! $
;00$ %
set00& )
;00) *
}00+ ,
public>> 
Client>> 
(>> 
string@@ 
baseUrl@@ 
,@@ !
ISerializationAdapterCC  
serializationAdapterCC 2
,CC2 3
IHeadersCollectionGG 
?GG !
defaultRequestHeadersGG 1
=GG2 3
nullGG4 8
,GG8 9
ILoggerHH 
<HH 
ClientHH 
>HH 
?HH 
loggerHH 
=HH  !
nullHH" &
,HH& '
CreateHttpClientII 
?II 
createHttpClientII *
=II+ ,
nullII- 1
,II1 2#
ISendHttpRequestMessageJJ 
?JJ  
sendHttpRequestJJ! 0
=JJ1 2
nullJJ3 7
,JJ7 8"
IGetHttpRequestMessageKK 
?KK !
getHttpRequestMessageKK  5
=KK6 7
nullKK8 <
,KK< =
boolLL #
throwExceptionOnFailureLL $
=LL% &
trueLL' +
,LL+ ,
stringMM 
?MM 
nameMM 
=MM 
nullMM 
)MM 
:MM 
thisMM #
(MM# $ 
serializationAdapterNN  
,NN  !
baseUrlOO 
.OO 
ToAbsoluteUrlOO !
(OO! "
)OO" #
,OO# $!
defaultRequestHeadersPP !
,PP! "
loggerQQ 
,QQ 
createHttpClientRR 
,RR 
sendHttpRequestSS 
,SS !
getHttpRequestMessageTT !
,TT! "#
throwExceptionOnFailureUU #
,UU# $
nameVV 
)VV 
{WW 	
}XX 	
publiccc 
Clientcc 
(cc 
AbsoluteUrldd 
?dd 
baseUrldd 
,dd !
ISerializationAdapterff  
serializationAdapterff 2
,ff2 3
IHeadersCollectionjj 
?jj !
defaultRequestHeadersjj 1
=jj2 3
nulljj4 8
,jj8 9
ILoggerkk 
<kk 
Clientkk 
>kk 
?kk 
loggerkk 
=kk  !
nullkk" &
,kk& '
CreateHttpClientll 
?ll 
createHttpClientll *
=ll+ ,
nullll- 1
,ll1 2#
ISendHttpRequestMessagemm 
?mm  
sendHttpRequestmm! 0
=mm1 2
nullmm3 7
,mm7 8"
IGetHttpRequestMessagenn 
?nn !
getHttpRequestMessagenn  5
=nn6 7
nullnn8 <
,nn< =
booloo #
throwExceptionOnFailureoo $
=oo% &
trueoo' +
,oo+ ,
stringpp 
?pp 
namepp 
=pp 
nullpp 
)pp 
:pp 
thispp #
(pp# $ 
serializationAdapterqq  
,qq  !
baseUrlrr 
,rr !
defaultRequestHeadersss !
,ss! "
loggertt 
,tt 
createHttpClientuu 
,uu 
sendHttpRequestvv 
,vv !
getHttpRequestMessageww !
,ww! "#
throwExceptionOnFailurexx #
,xx# $
nameyy 
)yy 
{zz 	
}{{ 	
public
�� 
Client
�� 
(
�� #
ISerializationAdapter
�� "
serializationAdapter
�� 2
,
��2 3
AbsoluteUrl
�� 
?
�� 
baseUrl
�� 
=
�� 
null
�� #
,
��# $ 
IHeadersCollection
�� 
?
�� #
defaultRequestHeaders
�� 1
=
��2 3
null
��4 8
,
��8 9
ILogger
�� 
<
�� 
Client
�� 
>
�� 
?
�� 
logger
�� 
=
��  !
null
��" &
,
��& '
CreateHttpClient
�� 
?
�� 
createHttpClient
�� *
=
��+ ,
null
��- 1
,
��1 2%
ISendHttpRequestMessage
�� 
?
��  
sendHttpRequest
��! 0
=
��1 2
null
��3 7
,
��7 8$
IGetHttpRequestMessage
�� 
?
�� #
getHttpRequestMessage
��  5
=
��6 7
null
��8 <
,
��< =
bool
�� %
throwExceptionOnFailure
�� $
=
��% &
true
��' +
,
��+ ,
string
�� 
?
�� 
name
�� 
=
�� 
null
�� 
)
�� 
{
�� 	#
DefaultRequestHeaders
�� !
=
��" ##
defaultRequestHeaders
��$ 9
??
��: <#
NullHeadersCollection
��= R
.
��R S
Instance
��S [
;
��[ \"
SerializationAdapter
��  
=
��! ""
serializationAdapter
��# 7
??
��8 :
throw
��; @
new
��A D#
ArgumentNullException
��E Z
(
��Z [
nameof
��[ a
(
��a b"
serializationAdapter
��b v
)
��v w
)
��w x
;
��x y
this
�� 
.
�� 
logger
�� 
=
�� 
(
�� 
ILogger
�� "
?
��" #
)
��# $
logger
��$ *
??
��+ -

NullLogger
��. 8
.
��8 9
Instance
��9 A
;
��A B
BaseUrl
�� 
=
�� 
baseUrl
�� 
??
��  
AbsoluteUrl
��! ,
.
��, -
Empty
��- 2
;
��2 3
Name
�� 
=
�� 
name
�� 
??
�� 
Guid
�� 
.
��  
NewGuid
��  '
(
��' (
)
��( )
.
��) *
ToString
��* 2
(
��2 3
)
��3 4
;
��4 5
this
�� 
.
�� #
getHttpRequestMessage
�� &
=
��' (#
getHttpRequestMessage
��) >
??
��? A*
DefaultGetHttpRequestMessage
��B ^
.
��^ _
Instance
��_ g
;
��g h
this
�� 
.
�� 
createHttpClient
�� !
=
��" #
createHttpClient
��$ 4
??
��5 7
new
��8 ;
CreateHttpClient
��< L
(
��L M
(
��M N
n
��N O
)
��O P
=>
��Q S
new
��T W

HttpClient
��X b
(
��b c
)
��c d
)
��d e
;
��e f
lazyHttpClient
�� 
=
�� 
new
��  
Lazy
��! %
<
��% &

HttpClient
��& 0
>
��0 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
this
��8 <
.
��< =
createHttpClient
��= M
(
��M N
Name
��N R
)
��R S
)
��S T
;
��T U$
sendHttpRequestMessage
�� "
=
��# $
sendHttpRequest
��% 4
??
��5 7+
DefaultSendHttpRequestMessage
��8 U
.
��U V
Instance
��V ^
;
��^ _%
ThrowExceptionOnFailure
�� #
=
��$ %%
throwExceptionOnFailure
��& =
;
��= >
}
�� 	
public
�� 
AbsoluteUrl
�� 
BaseUrl
�� "
{
��# $
get
��% (
;
��( )
init
��* .
;
��. /
}
��0 1
public
��  
IHeadersCollection
�� !#
DefaultRequestHeaders
��" 7
{
��8 9
get
��: =
;
��= >
init
��? C
;
��C D
}
��E F
public
�� 
string
�� 
Name
�� 
{
�� 
get
��  
;
��  !
init
��" &
;
��& '
}
��( )
public
�� #
ISerializationAdapter
�� $"
SerializationAdapter
��% 9
{
��: ;
get
��< ?
;
��? @
init
��A E
;
��E F
}
��G H
public
�� 
bool
�� %
ThrowExceptionOnFailure
�� +
{
��, -
get
��. 1
;
��1 2
init
��3 7
;
��7 8
}
��9 :
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
Disposed
�� 
)
�� 
return
��  
;
��  !
Disposed
�� 
=
�� 
true
�� 
;
�� 
lazyHttpClient
�� 
.
�� 
Value
��  
?
��  !
.
��! "
Dispose
��" )
(
��) *
)
��* +
;
��+ ,
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Response
�� "
<
��" #
TResponseBody
��# 0
>
��0 1
>
��1 2
	SendAsync
��3 <
<
��< =
TResponseBody
��= J
,
��J K
TRequestBody
��L X
>
��X Y
(
��Y Z
IRequest
��Z b
<
��b c
TRequestBody
��c o
>
��o p
request
��q x
)
��x y
{
�� 	
if
�� 
(
�� 
request
�� 
==
�� 
null
�� 
)
��  
throw
��! &
new
��' *#
ArgumentNullException
��+ @
(
��@ A
nameof
��A G
(
��G H
request
��H O
)
��O P
)
��P Q
;
��Q R!
HttpResponseMessage
�� !
httpResponseMessage
��  3
;
��3 4
try
�� 
{
�� 
var
�� 

httpClient
�� 
=
��  
lazyHttpClient
��! /
.
��/ 0
Value
��0 5
??
��6 8
throw
��9 >
new
��? B'
InvalidOperationException
��C \
(
��\ ]
$str
��] }
)
��} ~
;
��~ 
if
�� 
(
�� 

httpClient
�� 
.
�� 
BaseAddress
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
$"
��8 :
$str
��: V
{
��V W
nameof
��W ]
(
��] ^

HttpClient
��^ h
)
��h i
}
��i j
$str
��j r
{
��r s
nameof
��s y
(
��y z

HttpClient��z �
.��� �
BaseAddress��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

HttpClient��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

HttpClient��� �
.��� �
BaseAddress��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

HttpClient��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

HttpClient��� �
.��� �
BaseAddress��� �
)��� �
}��� �
"��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Any
��5 8
(
��8 9
)
��9 :
)
��: ;
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
$"
��8 :
$str
��: V
{
��V W
nameof
��W ]
(
��] ^

HttpClient
��^ h
)
��h i
}
��i j
$str��j �
{��� �
nameof��� �
(��� �

HttpClient��� �
.��� �%
DefaultRequestHeaders��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

HttpClient��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

HttpClient��� �
.��� �%
DefaultRequestHeaders��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

HttpClient��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

HttpClient��� �
.��� �%
DefaultRequestHeaders��� �
)��� �
}��� �
"��� �
)��� �
;��� �
}
�� 
logger
�� 
.
�� 
LogTrace
�� 
(
��  
Messages
��  (
.
��( )
TraceBeginSend
��) 7
,
��7 8
request
��9 @
,
��@ A

TraceEvent
��B L
.
��L M
Request
��M T
,
��T U
lazyHttpClient
��V d
.
��d e
Value
��e j
,
��j k#
SerializationAdapter��l �
,��� �
(��� �
object��� �
?��� �
)��� �
request��� �
.��� �
BodyData��� �
??��� �
$str��� �
)��� �
;��� �!
httpResponseMessage
�� #
=
��$ %
await
��& +$
sendHttpRequestMessage
��, B
.
��B C$
SendHttpRequestMessage
��C Y
(
��Y Z
lazyHttpClient
�� "
.
��" #
Value
��# (
,
��( )#
getHttpRequestMessage
�� )
,
��) *
request
�� 
,
�� 
logger
�� 
,
�� "
SerializationAdapter
�� (
)
�� 
.
�� 
ConfigureAwait
�� $
(
��$ %
false
��% *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� #
TaskCanceledException
�� (
tce
��) ,
)
��, -
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
tce
��  #
,
��# $
Messages
��% -
.
��- . 
ErrorTaskCancelled
��. @
,
��@ A
request
��B I
)
��I J
;
��J K
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� $
MissingHeaderException
�� )
mhe
��* -
)
��- .
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
mhe
��  #
,
��# $
mhe
��% (
.
��( )
Message
��) 0
,
��0 1
request
��2 9
)
��9 :
;
��: ;
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
var
�� 
	exception
�� 
=
�� 
new
��  #
SendException
��$ 1
(
��1 2
Messages
��2 :
.
��: ; 
ErrorSendException
��; M
,
��M N
request
��O V
,
��V W
ex
��X Z
)
��Z [
;
��[ \
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
,
��) *
Messages
��+ 3
.
��3 4 
ErrorSendException
��4 F
,
��F G
request
��H O
)
��O P
;
��P Q
throw
�� 
	exception
�� 
;
��  
}
�� 
logger
�� 
.
�� 
LogTrace
�� 
(
�� 
$str
�� C
,
��C D
request
��E L
)
��L M
;
��M N
return
�� 
await
�� "
ProcessResponseAsync
�� -
<
��- .
TResponseBody
��. ;
>
��; <
(
��< =
request
��= D
,
��D E!
httpResponseMessage
��F Y
)
��Y Z
.
��Z [
ConfigureAwait
��[ i
(
��i j
false
��j o
)
��o p
;
��p q
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
Response
�� #
<
��# $
TResponseBody
��$ 1
>
��1 2
>
��2 3"
ProcessResponseAsync
��4 H
<
��H I
TResponseBody
��I V
>
��V W
(
��W X
IRequest
�� 
request
�� 
,
�� !
HttpResponseMessage
�� !
httpResponseMessage
��  3
)
��3 4
{
�� 	
if
�� 
(
�� !
httpResponseMessage
�� #
==
��$ &
null
��' +
)
��+ ,
throw
��- 2
new
��3 6#
ArgumentNullException
��7 L
(
��L M
nameof
��M S
(
��S T!
httpResponseMessage
��T g
)
��g h
)
��h i
;
��i j
var
�� 
responseData
�� 
=
�� 
await
�� $!
httpResponseMessage
��% 8
.
��8 9
Content
��9 @
.
��@ A"
ReadAsByteArrayAsync
��A U
(
��U V
)
��V W
.
��W X
ConfigureAwait
��X f
(
��f g
false
��g l
)
��l m
;
��m n
var
�� +
httpResponseHeadersCollection
�� -
=
��. /!
httpResponseMessage
��0 C
.
��C D
Headers
��D K
.
��K L!
ToHeadersCollection
��L _
(
��_ `
)
��` a
;
��a b
var
�� 
contentHeaders
�� 
=
��  !
httpResponseMessage
��! 4
.
��4 5
Content
��5 <
?
��< =
.
��= >
Headers
��> E
?
��E F
.
��F G!
ToHeadersCollection
��G Z
(
��Z [
)
��[ \
;
��\ ]
var
�� 

allHeaders
�� 
=
�� !
httpResponseMessage
�� 0
.
��0 1
Headers
��1 8
.
��8 9!
ToHeadersCollection
��9 L
(
��L M
)
��M N
.
��N O
Append
��O U
(
��U V
contentHeaders
��V d
)
��d e
;
��e f
TResponseBody
�� 
?
�� 
responseBody
�� '
=
��( )
default
��* 1
;
��1 2
if
�� 
(
�� !
httpResponseMessage
�� #
.
��# $!
IsSuccessStatusCode
��$ 7
)
��7 8
{
�� 
try
�� 
{
�� 
responseBody
��  
=
��! ""
SerializationAdapter
��# 7
.
��7 8
Deserialize
��8 C
<
��C D
TResponseBody
��D Q
>
��Q R
(
��R S
responseData
��S _
,
��_ `+
httpResponseHeadersCollection
��a ~
)
��~ 
;�� �
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
var
�� &
deserializationException
�� 0
=
��1 2
new
��3 6&
DeserializationException
��7 O
(
��O P
Messages
��P X
.
��X Y)
ErrorMessageDeserialization
��Y t
,
��t u
responseData��v �
,��� �
ex��� �
)��� �
;��� �
logger
�� 
.
�� 
LogError
�� #
(
��# $&
deserializationException
��$ <
,
��< =
Messages
��> F
.
��F G)
ErrorMessageDeserialization
��G b
,
��b c
responseData
��d p
)
��p q
;
��q r
throw
�� &
deserializationException
�� 2
;
��2 3
}
�� 
}
�� 
var
�� )
httpResponseMessageResponse
�� +
=
��, -
new
��. 1
Response
��2 :
<
��: ;
TResponseBody
��; H
>
��H I
(
�� 

allHeaders
�� 
,
�� 
(
�� 
int
�� 
)
�� !
httpResponseMessage
�� (
.
��( )

StatusCode
��) 3
,
��3 4
request
�� 
.
�� 
HttpRequestMethod
�� )
,
��) *
responseData
�� 
,
�� 
responseBody
�� 
,
�� 
request
�� 
.
�� 
Uri
�� 
)
�� 
;
�� 
if
�� 
(
�� 
!
�� )
httpResponseMessageResponse
�� ,
.
��, -
	IsSuccess
��- 6
)
��6 7
{
�� 
return
�� 
!
�� %
ThrowExceptionOnFailure
�� /
?
�� )
httpResponseMessageResponse
�� 1
:
�� 
throw
�� 
new
�� !
HttpStatusException
��  3
(
��3 4
Messages
��  
.
��  !'
GetErrorMessageNonSuccess
��! :
(
��: ;)
httpResponseMessageResponse
��; V
.
��V W

StatusCode
��W a
,
��a b)
httpResponseMessageResponse
�� 3
.
��3 4

RequestUri
��4 >
)
��> ?
,
��? @)
httpResponseMessageResponse
�� 3
)
��3 4
;
��4 5
}
�� 
logger
�� 
.
�� 
LogTrace
�� 
(
�� 
Messages
�� $
.
��$ %$
TraceResponseProcessed
��% ;
,
��; <)
httpResponseMessageResponse
��= X
,
��X Y

TraceEvent
��Z d
.
��d e
Response
��e m
)
��m n
;
��n o
return
�� )
httpResponseMessageResponse
�� .
;
��. /
}
�� 	
}
�� 
}�� 