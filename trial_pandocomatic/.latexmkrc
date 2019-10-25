push @generated_exts, "auxlock";
push @generated_exts, "bbl";
push @generated_exts, "blg";
push @generated_exts, "brf";
push @generated_exts, "cb";
push @generated_exts, "cb2";
push @generated_exts, "fdb_latexmk";
push @generated_exts, "fof";
push @generated_exts, "glg-abr";
push @generated_exts, "glo-abr";
push @generated_exts, "gls-abr";
push @generated_exts, "ist";
push @generated_exts, "loa";
push @generated_exts, "log";
push @generated_exts, "lot";
push @generated_exts, "mtc*";
push @generated_exts, "mypyg";
push @generated_exts, "nav";
push @generated_exts, "nlg";
push @generated_exts, "nlo";
push @generated_exts, "nls";
push @generated_exts, "nmo";
push @generated_exts, "out.ps";
push @generated_exts, "ptc";
push @generated_exts, "run.xml";
push @generated_exts, "slg";
push @generated_exts, "snm";
push @generated_exts, "spl";
push @generated_exts, "syg";
push @generated_exts, "syi";
push @generated_exts, "synctex*";
push @generated_exts, "synctex.gz";
push @generated_exts, "tar.gz";
push @generated_exts, "tdo";
push @generated_exts, "thm";
push @generated_exts, "xdy";
push @generated_exts, "xmpi";
push @generated_exts, "xmpdata";
push @generated_exts, "glstex";
push @generated_exts, 'acn', 'acr', 'alg';
push @generated_exts, 'glo', 'gls', 'glg';


$pdflatex = 'pdflatex %O %S -silent -halt-on-error';
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;
$clean_ext .= ' %R.ist %R.xdy %R*.glstex %R_desc.aux %R-figure*.log %R-figure*.log %R-figure*.dpth %R-figure*.xml %R-figure*.md5 %R-figure*.aux';

push @file_not_found, '^Package .* No file `([^\\\']*)\\\'';

$bibtex_use = 1.5;

$compiling_cmd = "xdotool search --name \"%D\" set_window --name \"%D compiling\"";
$success_cmd   = "xdotool search --name \"%D\" set_window --name \"%D OK\"";
$warning_cmd   = "xdotool search --name \"%D\" "."set_window --name \"%D CITE/REF ISSUE\"";
$failure_cmd   = "xdotool search --name \"%D\" set_window --name \"%D FAILURE\"";
