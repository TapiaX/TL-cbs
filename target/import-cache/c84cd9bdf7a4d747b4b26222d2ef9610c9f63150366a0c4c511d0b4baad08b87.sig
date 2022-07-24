Module("pp/Common-pp",[Imports([Import("libstratego-gpp"),Import("libspoofax/sdf/pp"),Import("libspoofax/term/origin"),Import("libspoofax/term/annotation"),Import("libstratego-sglr"),Import("libstratego-sglr"),Import("signatures/Common-sig")]),Strategies([SDefT("prettyprint-example",[],[],CallT(SVar("prettyprint-TL"),[],[])),SDefT("prettyprint-TL",[],[],Fail),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],Fail)]),Strategies([SDefT("prettyprint-SDF-start-symbols",[],[],CallT(SVar("prettyprint-TL-start-symbols"),[],[])),SDefT("prettyprint-TL-start-symbols",[],[],Fail)]),Strategies([SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-ID"),[],[])),SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-INT"),[],[])),SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-STRING"),[],[])),SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-STRING_CHAR"),[],[])),SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-COMMENT_CHAR"),[],[])),SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-INSIDE_COMMENT"),[],[])),SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-NEWLINE_EOF"),[],[])),SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-EOF"),[],[])),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-ID"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"ID\""))),Var("sort")))]))),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-INT"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"INT\""))),Var("sort")))]))),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-STRING"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"STRING\""))),Var("sort")))]))),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-STRING_CHAR"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"STRING_CHAR\""))),Var("sort")))]))),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-COMMENT_CHAR"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"COMMENT_CHAR\""))),Var("sort")))]))),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-INSIDE_COMMENT"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"INSIDE_COMMENT\""))),Var("sort")))]))),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-NEWLINE_EOF"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"NEWLINE_EOF\""))),Var("sort")))]))),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-EOF"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"EOF\""))),Var("sort")))]))),SDefT("prettyprint-TL-ID",[],[],Build(NoAnnoList(List([NoAnnoList(Op("S",[RootApp(CallT(SVar("is-string"),[],[]))]))])))),SDefT("prettyprint-TL-INT",[],[],Build(NoAnnoList(List([NoAnnoList(Op("S",[RootApp(CallT(SVar("is-string"),[],[]))]))])))),SDefT("prettyprint-TL-STRING",[],[],Build(NoAnnoList(List([NoAnnoList(Op("S",[RootApp(CallT(SVar("is-string"),[],[]))]))])))),SDefT("prettyprint-TL-STRING_CHAR",[],[],Build(NoAnnoList(List([NoAnnoList(Op("S",[RootApp(CallT(SVar("is-string"),[],[]))]))])))),SDefT("prettyprint-TL-COMMENT_CHAR",[],[],Build(NoAnnoList(List([NoAnnoList(Op("S",[RootApp(CallT(SVar("is-string"),[],[]))]))])))),SDefT("prettyprint-TL-INSIDE_COMMENT",[],[],Build(NoAnnoList(List([NoAnnoList(Op("S",[RootApp(CallT(SVar("is-string"),[],[]))]))])))),SDefT("prettyprint-TL-NEWLINE_EOF",[],[],Build(NoAnnoList(List([NoAnnoList(Op("S",[RootApp(CallT(SVar("is-string"),[],[]))]))])))),SDefT("prettyprint-TL-EOF",[],[],Build(NoAnnoList(List([NoAnnoList(Op("S",[RootApp(CallT(SVar("is-string"),[],[]))]))])))),SDefT("prettyprint-TL-ID",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-ID"),[],[]),Var("h")),[]))),SDefT("prettyprint-TL-INT",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-INT"),[],[]),Var("h")),[]))),SDefT("prettyprint-TL-STRING",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-STRING"),[],[]),Var("h")),[]))),SDefT("prettyprint-TL-STRING_CHAR",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-STRING_CHAR"),[],[]),Var("h")),[]))),SDefT("prettyprint-TL-COMMENT_CHAR",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-COMMENT_CHAR"),[],[]),Var("h")),[]))),SDefT("prettyprint-TL-INSIDE_COMMENT",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-INSIDE_COMMENT"),[],[]),Var("h")),[]))),SDefT("prettyprint-TL-NEWLINE_EOF",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-NEWLINE_EOF"),[],[]),Var("h")),[]))),SDefT("prettyprint-TL-EOF",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-EOF"),[],[]),Var("h")),[])))])])