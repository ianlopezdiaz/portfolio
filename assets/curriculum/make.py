import os
import sys
import glob
import time

remove=['*~',
'*-blx.bbl',
'*.xml',
'*.dvi',
'*.ps',
'*.aux',
'*.log',
'*.bbl',
'*.blg',
'*.idx',
'*.toc',
'*.tmp',
'*.ilg',
'*.ind',
'*.los',
'*.losig',
'*.lof',
'*.lot',
'*.out',
'*.snm',
'*.nav',
'*.bak',
'*.BAK',
'*.backup',
'*.sigla',
'*.siglax',
'*.symbols',
'*.symbolsx',
'*.miscelanx',
'*.greeklow',
'*.greeklowx',
'*.greekuppx',
'*.romanlow',
'*.romanlowx',
'*.romanupp',
'*.romanuppx']
#-------------------------------------------------------------------------------
def clean(f='tese'):
    aux=[]
    for rr in remove:
        aux+=glob.glob(rr)
        aux+=glob.glob('text/'+rr)
    save=['text/','*.tex','*.bib']+aux
    csave='tar -cf /tmp/'+f+'.lixo.tar '+' '.join(save)
    cdel='rm '+' '.join(aux)
    #os.system(csave)
    os.system(cdel)
#-------------------------------------------------------------------------------
def compila(f='tese'):
    latex='pdflatex '+f+'.tex'
    bibtex='bibtex '+f
    os.system(latex)
    #os.system(bibtex)
    #os.system(latex)
    #os.system(latex)
#-------------------------------------------------------------------------------


compila('ian-curriculum-pt')
compila('ian-curriculum-en')
clean()
