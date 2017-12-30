#!/bin/bash
apt-probeset-summarize \
       --cel-files /home/sj/CNV/Celfile/*.CEL
       -d /home/sj/CNV/GenomeWideSNP_6.cdf
       -a quant-norm.sketch=50000,pm-only,med-polish,expr.genotype=true \
       --target-sketch /home/sj/CNV/N.CEL \
       --out-dir /home/sj/CNV/celfiles_01_out \
cat quant-norm.pm-only.med-polish.expr.summary.txt | grep -E '^[AC]{1}'>probesets.01.txt
exec 1>/home/sj/CNV/log.file
exec 2>&1
