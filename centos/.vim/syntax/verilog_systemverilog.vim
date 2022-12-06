" Vim syntax file
" Language:	SystemVerilog
" Maintainer:	Stephen Hobbs <stephenh@cadence.com>
" Last Update:  Wed Jun 14 15:56:00 BST 2006
" Built on verilog.vim from vim63

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif

" Set the local value of the 'iskeyword' option
if version >= 600
   setlocal iskeyword=@,48-57,_,192-255
else
   set iskeyword=@,48-57,_,192-255
endif

" Taken from the SystemVerilog 3.1a Annex B:
syn keyword systemverilogStatement   alias always always_comb always_ff always_latch
syn keyword systemverilogStatement   and assert assign assume automatic before begin
syn keyword systemverilogStatement   bind bins binsof bit break buf bufif0 bufif1
syn keyword systemverilogStatement   byte case casex casez cell chandle class clocking
syn keyword systemverilogStatement   cmos config const constraint context continue cover
syn keyword systemverilogStatement   covergroup coverpoint cross deassign default
syn keyword systemverilogStatement   defparam design disable dist do edge else end
syn keyword systemverilogStatement   endcase endclass endclocking endconfig endfunction
syn keyword systemverilogStatement   endgenerate endgroup endinterface endmodule
syn keyword systemverilogStatement   endpackage endprimitive endprogram endproperty
syn keyword systemverilogStatement   endspecify endsequence endtable endtask enum event
syn keyword systemverilogStatement   expect export extends extern final first_match for
syn keyword systemverilogStatement   force foreach forever fork forkjoin function generate
syn keyword systemverilogStatement   genvar highz0 highz1 if iff ifnone ignore_bins
syn keyword systemverilogStatement   illegal_bins import incdir include initial inout
syn keyword systemverilogStatement   input inside instance int integer interface intersect
syn keyword systemverilogStatement   join join_any join_none large liblist library local
syn keyword systemverilogStatement   localparam logic longint macromodule matches medium
syn keyword systemverilogStatement   modport module nand negedge new nmos nor
syn keyword systemverilogStatement   noshowcancelled not notif0 notif1 null or output
syn keyword systemverilogStatement   package packed parameter pmos posedge primitive
syn keyword systemverilogStatement   priority program property protected pull0 pull1
syn keyword systemverilogStatement   pulldown pullup pulsestyle_onevent pulsestyle_ondetect
syn keyword systemverilogStatement   pure rand randc randcase randsequence rcmos
syn keyword systemverilogStatement   real realtime ref reg release repeat return
syn keyword systemverilogStatement   rnmos rpmos rtran rtranif0 rtranif1 scalared sequence
syn keyword systemverilogStatement   shortint shortreal showcancelled signed small solve
syn keyword systemverilogStatement   specify specparam static string strong0 strong1 struct
syn keyword systemverilogStatement   super supply0 supply1 table tagged task this
syn keyword systemverilogStatement   throughout time timeprecision timeunit tran
syn keyword systemverilogStatement   tranif0 tranif1 tri tri0 tri1 triand trior trireg type
syn keyword systemverilogStatement   typedef union unique unsigned use var vectored virtual
syn keyword systemverilogStatement   void wait wait_order wand weak0 weak1
syn keyword systemverilogStatement   while wildcard wire with within wor xnor xor

" LRM 3.7 String methods:
syn keyword systemverilogStatement   len getc putc toupper tolower compare
syn keyword systemverilogStatement   icompare substr 
syn keyword systemverilogStatement   itoa hextoa octtoa bintoa realtoa
syn keyword systemverilogStatement   atoi atohex atooct atobin atoreal
" LRM 3.8 events:
syn keyword systemverilogStatement   triggered
" LRM 3.10 methods for enumerated types:
syn keyword systemverilogStatement   first last next prev num name
" LRM 4.6 Dynamic Arrays:
syn keyword systemverilogStatement   delete
" LRM 4.10 Associative Array methods:
syn keyword systemverilogStatement   num exists
" LRM 4.15.1 Array locator methods:
syn keyword systemverilogStatement   find find_index find_first find_first_index
syn keyword systemverilogStatement   find_last find_last_index min max unique unique_index
" LRM 4.15.2 Array ordering methods:
syn keyword systemverilogStatement   reverse sort rsort shuffle
" LRM 4.15.3 Array reduction methods:
syn keyword systemverilogStatement   sum product
" LRM 4.15.4 Array iterator query:
syn keyword systemverilogStatement   index
"" LRM 7.10.1 Builtin package:
syn keyword systemverilogStatement   std
" LRM Annex C standard library
syn keyword systemverilogStatement   get put try_get try_put peek try_peek
syn keyword systemverilogStatement   status kill self await suspend resume
" LRM Annex D List methods
syn keyword systemverilogStatement   next prev eq neq data
syn keyword systemverilogStatement   size empty push_front push_back
syn keyword systemverilogStatement   front back pop_front pop_back
syn keyword systemverilogStatement   start finish insert insert_range
syn keyword systemverilogStatement   erase erase_range set swap clear purge

" New time specification:
" #1step or #1ps
syn match   systemverilogNumber "\<[0-9_]\+\([munpf]\|\)s\>"
syn match   systemverilogNumber "\<[0-9_]\+step\>"

" Original systemverilog syntax below here

syn keyword systemverilogTodo contained TODO

syn match   systemverilogOperator "[&|~><!)(*#%@+/=?:;}{,.\^\-\[\]]"

syn region  systemverilogComment start="/\*" end="\*/" contains=systemverilogTodo
syn match   systemverilogComment "//.*" contains=systemverilogTodo

"syn match   systemverilogGlobal "`[a-zA-Z0-9_]\+\>"
syn match systemverilogGlobal "`celldefine"
syn match systemverilogGlobal "`default_nettype"
syn match systemverilogGlobal "`define"
syn match systemverilogGlobal "`else"
syn match systemverilogGlobal "`elsif"
syn match systemverilogGlobal "`endcelldefine"
syn match systemverilogGlobal "`endif"
syn match systemverilogGlobal "`ifdef"
syn match systemverilogGlobal "`ifndef"
syn match systemverilogGlobal "`include"
syn match systemverilogGlobal "`line"
syn match systemverilogGlobal "`nounconnected_drive"
syn match systemverilogGlobal "`resetall"
syn match systemverilogGlobal "`timescale"
syn match systemverilogGlobal "`unconnected_drive"
syn match systemverilogGlobal "`undef"
syn match   systemverilogGlobal "$[a-zA-Z0-9_]\+\>"

syn match   systemverilogConstant "\<[A-Z][A-Z0-9_]\+\>"

syn match   systemverilogNumber "\(\<\d\+\|\)'[bB]\s*[0-1_xXzZ?]\+\>"
syn match   systemverilogNumber "\(\<\d\+\|\)'[oO]\s*[0-7_xXzZ?]\+\>"
syn match   systemverilogNumber "\(\<\d\+\|\)'[dD]\s*[0-9_xXzZ?]\+\>"
syn match   systemverilogNumber "\(\<\d\+\|\)'[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match   systemverilogNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"

syn region  systemverilogString start=+"+ skip=+\\"+ end=+"+ contains=systemverilogEscape
syn match   systemverilogEscape +\\[nt"\\]+ contained
syn match   systemverilogEscape "\\\o\o\=\o\=" contained

" Directives
syn match   systemverilogDirective   "//\s*synopsys\>.*$"
syn region  systemverilogDirective   start="/\*\s*synopsys\>" end="\*/"
syn region  systemverilogDirective   start="//\s*synopsys dc_script_begin\>" end="//\s*synopsys dc_script_end\>"

syn match   systemverilogDirective   "//\s*\$s\>.*$"
syn region  systemverilogDirective   start="/\*\s*\$s\>" end="\*/"
syn region  systemverilogDirective   start="//\s*\$s dc_script_begin\>" end="//\s*\$s dc_script_end\>"

"Modify the following as needed.  The trade-off is performance versus
"functionality.
syn sync lines=80

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_systemverilog_syn_inits")
   if version < 508
      let did_systemverilog_syn_inits = 1
      command -nargs=+ HiLink hi link <args>
   else
      command -nargs=+ HiLink hi def link <args>
   endif

   " The default highlighting.
   HiLink systemverilogCharacter       Character
   HiLink systemverilogConditional     Conditional
   HiLink systemverilogRepeat		 Repeat
   HiLink systemverilogString		 String
   HiLink systemverilogTodo		 Todo
   HiLink systemverilogComment	 Comment
   HiLink systemverilogConstant	 Constant
   HiLink systemverilogLabel		 Label
   HiLink systemverilogNumber		 Number
   HiLink systemverilogOperator	 Special
   HiLink systemverilogStatement	 Statement
   HiLink systemverilogGlobal		 Define
   HiLink systemverilogDirective	 SpecialComment
   HiLink systemverilogEscape		 Special

   delcommand HiLink
endif

let b:current_syntax = "systemverilog"

" vim: ts=2
