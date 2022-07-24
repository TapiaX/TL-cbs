Module("pp/TL-pp",[Imports([Import("libstratego-gpp"),Import("libspoofax/sdf/pp"),Import("libspoofax/term/origin"),Import("libspoofax/term/annotation"),Import("libstratego-sglr"),Import("libstratego-sglr"),Import("signatures/TL-sig")]),Imports([Import("signatures/TL-Start-sig")]),Imports([Import("pp/TL-Start-pp")]),Strategies([SDefT("prettyprint-example",[],[],CallT(SVar("prettyprint-TL"),[],[])),SDefT("prettyprint-TL",[],[],Fail),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],Fail)]),Strategies([SDefT("prettyprint-SDF-start-symbols",[],[],CallT(SVar("prettyprint-TL-start-symbols"),[],[])),SDefT("prettyprint-TL-start-symbols",[],[],Fail)]),Strategies([SDefT("prettyprint-TL-start-symbols",[],[],CallT(SVar("prettyprint-TL-Start"),[],[]))]),Strategies([SDefT("prettyprint-TL",[],[],CallT(SVar("prettyprint-TL-Start"),[],[])),SDefT("prettyprint-TL",[],[VarDec("sort",ConstType(SortNoArgs("ATerm")))],SRule(Rule(Var("t"),RootApp(CallT(SVar("prettyprint-TL-Start"),[],[])),[WhereClause(BA(Match(NoAnnoList(Str("\"Start\""))),Var("sort")))]))),SDefT("prettyprint-TL-Start",[],[],SRule(Rule(Var("t1__"),NoAnnoList(List([NoAnnoList(Op("H",[NoAnnoList(List([NoAnnoList(Op("SOpt",[NoAnnoList(Op("HS",[])),NoAnnoList(Str("\"0\""))]))])),Var("t1__'")]))])),[WhereClause(Not(CallT(SVar("is-TL-Start"),[],[]))),WhereClause(Assign(Var("t1__'"),App(Seq(CallT(SVar("clean-layout-empty-symbols"),[],[NoAnnoList(Str("\"\"")),NoAnnoList(Op("FALSE",[])),NoAnnoList(Op("FALSE",[]))]),CallT(SVar("flatten-list"),[],[])),NoAnnoList(List([App(GuardedLChoice(Seq(CallT(SVar("check-nonterminal-isEmpty"),[],[]),Id),Id,GuardedLChoice(CallT(SVar("pp-one-V"),[CallT(SVar("prettyprint-TL-L-start"),[],[])],[]),Id,CallT(SVar("pp-one-Z"),[CallT(SVar("prettyprint-completion-aux"),[],[])],[]))),Var("t1__"))])))))]))),SDefT("is-TL-Start",[],[],Fail),SDefT("prettyprint-TL-Start",[],[],SRule(Rule(NoAnnoList(Op("amb",[NoAnnoList(ListTail([Var("h")],Var("hs")))])),App(CallT(SVar("prettyprint-TL-Start"),[],[]),Var("h")),[]))),SDefT("prettyprint-TL-Start",[],[],SRule(Rule(NoAnnoList(Op("Start-Plhdr",[])),NoAnnoList(List([NoAnnoList(Op("H",[NoAnnoList(List([NoAnnoList(Op("SOpt",[NoAnnoList(Op("HS",[])),NoAnnoList(Str("\"0\""))]))])),NoAnnoList(List([NoAnnoList(Op("S",[NoAnnoList(Str("\"$Start\""))]))]))]))])),[]))),SDefT("is-TL-Start",[],[],Match(NoAnnoList(Op("Start-Plhdr",[])))),SDefT("prettyprint-TL-L-start",[],[],SRule(Rule(NoAnnoList(Op("L-start-Plhdr",[])),NoAnnoList(List([NoAnnoList(Op("H",[NoAnnoList(List([NoAnnoList(Op("SOpt",[NoAnnoList(Op("HS",[])),NoAnnoList(Str("\"0\""))]))])),NoAnnoList(List([NoAnnoList(Op("S",[NoAnnoList(Str("\"$L-start\""))]))]))]))])),[]))),SDefT("is-TL-L-start",[],[],Match(NoAnnoList(Op("L-start-Plhdr",[])))),SDefT("prettyprint-TL-Start",[],[],SRule(Rule(NoAnnoList(Op("Start-Plhdr",[Wld])),NoAnnoList(List([NoAnnoList(Op("H",[NoAnnoList(List([NoAnnoList(Op("SOpt",[NoAnnoList(Op("HS",[])),NoAnnoList(Str("\"0\""))]))])),NoAnnoList(List([NoAnnoList(Op("S",[NoAnnoList(Str("\"$Start\""))]))]))]))])),[]))),SDefT("is-TL-Start",[],[],Match(NoAnnoList(Op("Start-Plhdr",[Wld])))),SDefT("prettyprint-TL-L-start",[],[],SRule(Rule(NoAnnoList(Op("L-start-Plhdr",[Wld])),NoAnnoList(List([NoAnnoList(Op("H",[NoAnnoList(List([NoAnnoList(Op("SOpt",[NoAnnoList(Op("HS",[])),NoAnnoList(Str("\"0\""))]))])),NoAnnoList(List([NoAnnoList(Op("S",[NoAnnoList(Str("\"$L-start\""))]))]))]))])),[]))),SDefT("is-TL-L-start",[],[],Match(NoAnnoList(Op("L-start-Plhdr",[Wld]))))])])