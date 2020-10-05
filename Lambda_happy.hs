{-# OPTIONS_GHC -w #-}
module Lambda_happy where
import Data.Char
import MonadE
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,40) ([992,256,0,1,0,128,1024,20480,32770,0,0,0,0,2048,16384,9,2,592,2048,37888,0,0,0,296,512,18944,0,4,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Exp","Term","let","eval","eval_def","print","load","var","num","'/'","'.'","'='","'('","')'","unknown","%eof"]
        bit_start = st * 19
        bit_end = (st + 1) * 19
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..18]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (11) = happyShift action_15
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (19) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (12) = happyShift action_14
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (12) = happyShift action_13
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (11) = happyShift action_10
action_6 (13) = happyShift action_11
action_6 (16) = happyShift action_12
action_6 (5) = happyGoto action_9
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (11) = happyShift action_8
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_5

action_9 _ = happyReduce_4

action_10 _ = happyReduce_8

action_11 (11) = happyShift action_20
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_10
action_12 (13) = happyShift action_11
action_12 (16) = happyShift action_12
action_12 (5) = happyGoto action_19
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (11) = happyShift action_18
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_10
action_14 (13) = happyShift action_11
action_14 (16) = happyShift action_12
action_14 (5) = happyGoto action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (15) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_10
action_16 (13) = happyShift action_11
action_16 (16) = happyShift action_12
action_16 (5) = happyGoto action_23
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_2

action_18 _ = happyReduce_3

action_19 (11) = happyShift action_10
action_19 (13) = happyShift action_11
action_19 (16) = happyShift action_12
action_19 (5) = happyGoto action_22
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (14) = happyShift action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_10
action_21 (13) = happyShift action_11
action_21 (16) = happyShift action_12
action_21 (5) = happyGoto action_25
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (17) = happyShift action_24
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_1

action_24 _ = happyReduce_7

action_25 _ = happyReduce_6

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenNum happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Eval happy_var_2 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenVar happy_var_3))
	(HappyTerminal (TokenNum happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Eval_def happy_var_2 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  4 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Print happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_2  4 happyReduction_5
happyReduction_5 (HappyTerminal (TokenVar happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Load_file happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 4 5 happyReduction_6
happyReduction_6 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Raw_lambda happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 4 5 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Raw_app happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 19 19 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 6;
	TokenEval -> cont 7;
	TokenEvalDef -> cont 8;
	TokenPrint -> cont 9;
	TokenLoad -> cont 10;
	TokenVar happy_dollar_dollar -> cont 11;
	TokenNum happy_dollar_dollar -> cont 12;
	TokenLambda -> cont 13;
	TokenDot -> cont 14;
	TokenEq -> cont 15;
	TokenOB -> cont 16;
	TokenCB -> cont 17;
	TokenUnknown -> cont 18;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 19 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => E a -> (a -> E b) -> E b
happyThen = (thenE)
happyReturn :: () => a -> E a
happyReturn = (returnE)
happyThen1 m k tks = (thenE) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> E a
happyReturn1 = \a tks -> (returnE) a
happyError' :: () => ([(Token)], [String]) -> E a
happyError' = (\(tokens, _) -> parseError tokens)
calc tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> (E a)
parseError _ = Failed "Parse error"

data Exp =
    Let String Raw_term  |
    Eval Int Raw_term    |
    Eval_def Int String  |
    Print Raw_term       |
    Load_file String
  deriving Show
  
data Raw_term = Var String
          | Raw_app Raw_term Raw_term
          | Raw_lambda String Raw_term
  deriving Show

data Token =
    TokenLet        |
    TokenEq         |
    TokenEval       |
    TokenEvalDef    |
    TokenPrint      |
    TokenLoad       |
    TokenVar String |
    TokenNum Int    |
    TokenOB         |
    TokenCB         |
    TokenLambda     |
    TokenUnknown    |
    TokenDot
  deriving Show
  
lexer :: String -> [Token]
lexer [] = []
lexer ('=':cs)       = TokenEq      : (lexer cs)
lexer ('(':cs)       = TokenOB      : (lexer cs)
lexer (')':cs)       = TokenCB      : (lexer cs)
lexer ('/':cs)       = TokenLambda  : (lexer cs)
lexer ('.':cs)       = TokenDot     : (lexer cs)
lexer (c : cs)
  | isSpace c = lexer cs
  | isAlpha c = lexVar (c : cs)
  | isDigit c = lexNum (c : cs)
lexer (c : cs)       = TokenUnknown : (lexer cs)   

lexVar cs = case span isAlphaNum cs of
  ("let"     , rest) -> TokenLet     : (lexer rest)
  ("eval"    , rest) -> TokenEval    : (lexer rest)
  ("evalDef" , rest) -> TokenEvalDef : (lexer rest)
  ("eval"    , rest) -> TokenEval    : (lexer rest)
  ("print"   , rest) -> TokenPrint   : (lexer rest)
  ("load"    , rest) -> TokenLoad    : (lexer rest)
  (var  , rest) -> (TokenVar var)    : (lexer rest)
  
lexNum cs = case span isDigit cs of
  (val, rest) -> (TokenNum (read val)) : (lexer rest)  

parse_lambda = calc . lexer    
  
--main = getContents >>= print . calc . lexer
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.