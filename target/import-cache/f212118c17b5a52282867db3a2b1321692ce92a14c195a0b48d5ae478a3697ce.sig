Module("generate",[Imports([Import("libstratego-gpp"),ImportWildcard("signatures"),Import("pp/TL-parenthesize"),Import("pp/TL-pp"),Import("pp/Funcons-pp-pp"),Import("cbs-gen/TL-Start")]),Rules([SDefT("generate-fct",[],[],SRule(Rule(NoAnnoList(Tuple([Var("selected"),Var("position"),Var("ast"),Var("path"),Var("project-path")])),NoAnnoList(Tuple([Var("filename"),Var("result")])),[WhereClause(BA(Not(CallT(SVar("has-extension"),[],[NoAnnoList(Str("\"fct\""))])),App(CallT(SVar("debug"),[],[]),Var("path")))),WithClause(Seq(Assign(Var("filename"),App(CallT(SVar("guarantee-extension"),[],[NoAnnoList(Str("\"fct\""))]),Var("path"))),Seq(Assign(Var("funcons"),App(CallT(SVar("to-funcons-top"),[],[]),Var("selected"))),Assign(Var("result"),App(CallT(SVar("prettyprint-TL-string"),[],[]),Var("funcons"))))))]))),SDefT("generate-fct",[],[],SRule(Rule(NoAnnoList(Tuple([Var("selected"),Var("position"),Var("ast"),Var("path"),Var("project-path")])),NoAnnoList(Op("None",[])),[WhereClause(BA(CallT(SVar("has-extension"),[],[NoAnnoList(Str("\"fct\""))]),Var("path")))]))),SDefT("prettyprint-TL-string",[],[],Seq(CallT(SVar("parenthesize-TL"),[],[]),Seq(CallT(SVar("prettyprint-TL-Start"),[],[]),Seq(Build(NoAnnoList(Op("V",[NoAnnoList(List([])),RootApp(Id)]))),CallT(SVar("box2text-string"),[],[NoAnnoList(Int("80"))]))))),SDefT("to-funcons-start",[],[],SRule(Rule(Var("START"),ToTerm([Var("START")]),[]))),SDefT("to-funcons-top",[],[],Seq(CallT(SVar("to-funcons-start"),[],[]),Seq(CallT(SVar("innermost"),[GuardedLChoice(CallT(SVar("to-desugared"),[],[]),Id,GuardedLChoice(CallT(SVar("to-funcons"),[],[]),Id,CallT(SVar("to-funcons-default"),[],[])))],[]),Seq(CallT(SVar("bottomup"),[CallT(SVar("try"),[CallT(SVar("to-funcons-lex"),[],[])],[])],[]),Seq(CallT(SVar("innermost"),[GuardedLChoice(CallT(SVar("to-funcons-sequences"),[],[]),Id,CallT(SVar("to-funcons-groups"),[],[]))],[]),CallT(SVar("innermost"),[CallT(SVar("to-funcons-apps"),[],[])],[])))))),SDefT("to-funcons",[],[],Fail),SDefT("to-funcons-default",[],[],Fail),SDefT("to-desugared",[],[],Fail)]),Rules([SDefT("to-funcons-sequences",[],[],SRule(Rule(NoAnnoList(Op("FCTSequence",[NoAnnoList(Op("FCTEmpty",[])),Var("seq")])),Var("seq"),[]))),SDefT("to-funcons-sequences",[],[],SRule(Rule(NoAnnoList(Op("FCTSequence",[Var("seq"),NoAnnoList(Op("FCTEmpty",[]))])),Var("seq"),[]))),SDefT("to-funcons-sequences",[],[],SRule(Rule(NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"sequential\"")),NoAnnoList(Op("FCTGroup",[NoAnnoList(Op("FCTSequence",[Var("fct"),NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"sequential\"")),NoAnnoList(Op("FCTGroup",[Var("seq")]))]))]))]))])),NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"sequential\"")),NoAnnoList(Op("FCTGroup",[NoAnnoList(Op("FCTSequence",[Var("fct"),Var("seq")]))]))])),[]))),SDefT("to-funcons-groups",[],[],SRule(Rule(NoAnnoList(Op("FCTGroup",[NoAnnoList(Op("FCTGroup",[Var("seq")]))])),NoAnnoList(Op("FCTGroup",[Var("seq")])),[]))),SDefT("to-funcons-apps",[],[],SRule(Rule(NoAnnoList(Op("FCTApp",[Var("f1"),NoAnnoList(Op("FCTApp",[Var("f2"),Var("fct")]))])),NoAnnoList(Op("FCTAppComp",[NoAnnoList(List([Var("f1"),Var("f2")])),Var("fct")])),[]))),SDefT("to-funcons-apps",[],[],SRule(Rule(NoAnnoList(Op("FCTApp",[Var("f"),NoAnnoList(Op("FCTAppComp",[Var("fs"),Var("fct")]))])),NoAnnoList(Op("FCTAppComp",[NoAnnoList(ListTail([Var("f")],Var("fs"))),Var("fct")])),[]))),SDefT("to-funcons-apps",[],[],SRule(Rule(NoAnnoList(Op("FCTApp",[Var("f"),NoAnnoList(Op("FCTGroup",[Var("seq")]))])),NoAnnoList(Op("FCTAppComp",[NoAnnoList(List([Var("f")])),NoAnnoList(Op("FCTGroup",[Var("seq")]))])),[])))]),Rules([SDefT("to-funcons-lex",[],[],SRule(Rule(NoAnnoList(Op("FCTString",[Var("str")])),NoAnnoList(Op("FCTString",[App(CallT(SVar("double-quote"),[],[]),Var("str"))])),[]))),SDefT("to-funcons-lex",[],[],Match(NoAnnoList(Op("FCTInt",[Wld])))),SDefT("to-funcons-lex",[],[],Match(NoAnnoList(Op("FCTChar",[Wld])))),SDefT("to-funcons-lex",[],[],SRule(Rule(NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"integer-add\"")),NoAnnoList(Op("FCTGroup",[NoAnnoList(Op("FCTSequence",[NoAnnoList(Op("FCTInt",[Var("s")])),NoAnnoList(Op("FCTInt",[Var("t")]))]))]))])),NoAnnoList(Op("FCTInt",[App(Seq(CallT(SVar("addi"),[],[]),CallT(SVar("int-to-string"),[],[])),NoAnnoList(Tuple([App(CallT(SVar("string-to-int"),[],[]),Var("s")),App(CallT(SVar("string-to-int"),[],[]),Var("t"))])))])),[]))),SDefT("to-funcons-lex",[],[],SRule(Rule(NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"string-append\"")),NoAnnoList(Op("FCTGroup",[NoAnnoList(Op("FCTSequence",[NoAnnoList(Op("FCTString",[Var("str1")])),NoAnnoList(Op("FCTString",[Var("str2")]))]))]))])),NoAnnoList(Op("FCTString",[App(Seq(CallT(SVar("concat-strings"),[],[]),CallT(SVar("double-quote"),[],[])),NoAnnoList(List([App(CallT(SVar("un-double-quote"),[],[]),Var("str1")),App(CallT(SVar("un-double-quote"),[],[]),Var("str2"))])))])),[]))),SDefT("to-funcons-lex",[],[],SRule(Rule(NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"string-append\"")),NoAnnoList(Op("FCTGroup",[NoAnnoList(Op("FCTSequence",[NoAnnoList(Op("FCTString",[Var("str1")])),NoAnnoList(Op("FCTSequence",[NoAnnoList(Op("FCTString",[Var("str2")])),NoAnnoList(Op("FCTString",[Var("str3")]))]))]))]))])),NoAnnoList(Op("FCTString",[App(Seq(CallT(SVar("concat-strings"),[],[]),CallT(SVar("double-quote"),[],[])),NoAnnoList(List([App(CallT(SVar("un-double-quote"),[],[]),Var("str1")),App(CallT(SVar("un-double-quote"),[],[]),Var("str2")),App(CallT(SVar("un-double-quote"),[],[]),Var("str3"))])))])),[]))),SDefT("to-funcons-lex",[],[],SRule(Rule(NoAnnoList(Op("FCTList",[Var("seq")])),NoAnnoList(Op("FCTString",[App(Seq(CallT(SVar("concat-strings"),[],[]),CallT(SVar("double-quote"),[],[])),Var("l"))])),[WhereClause(Seq(BA(Not(Match(NoAnnoList(Op("FCTEmpty",[])))),Var("seq")),Assign(Var("l"),App(CallT(SVar("to-funcons-string-list"),[],[]),NoAnnoList(Tuple([Var("seq"),NoAnnoList(List([]))]))))))]))),SDefT("to-funcons-string-list",[],[],SRule(Rule(NoAnnoList(Tuple([NoAnnoList(Op("FCTSequence",[Var("seq1"),Var("seq2")])),Var("l")])),App(CallT(SVar("to-funcons-string-list"),[],[]),NoAnnoList(Tuple([Var("seq1"),App(CallT(SVar("to-funcons-string-list"),[],[]),NoAnnoList(Tuple([Var("seq2"),Var("l")])))]))),[]))),SDefT("to-funcons-string-list",[],[],SRule(Rule(NoAnnoList(Tuple([NoAnnoList(Op("FCTEmpty",[])),Var("l")])),Var("l"),[]))),SDefT("to-funcons-string-list",[],[],SRule(Rule(NoAnnoList(Tuple([NoAnnoList(Op("FCTString",[Var("str")])),Var("l")])),NoAnnoList(ListTail([App(CallT(SVar("un-single-quote"),[],[]),Var("str"))],Var("l"))),[]))),SDefT("to-funcons-string-list",[],[],SRule(Rule(NoAnnoList(Tuple([NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"ascii-character\"")),NoAnnoList(Op("FCTGroup",[NoAnnoList(Op("FCTString",[Var("str")]))]))])),Var("l")])),NoAnnoList(ListTail([App(CallT(SVar("un-double-quote"),[],[]),Var("str"))],Var("l"))),[]))),SDefT("to-funcons-string-list",[],[],SRule(Rule(NoAnnoList(Tuple([NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"ascii-character\"")),NoAnnoList(Op("FCTApp",[NoAnnoList(Str("\"list-to-string\"")),NoAnnoList(Op("FCTList",[Var("seq")]))]))])),Var("l")])),App(CallT(SVar("to-funcons-string-list"),[],[]),NoAnnoList(Tuple([Var("seq"),Var("l")]))),[])))])])