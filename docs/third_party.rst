.. _third_party_tools:

Third Party Tools
#################

Assembly
========
  
* IDBA-UD

  * Citation: Peng, Y., et al. (2012) `IDBA-UD: a de novo assembler for single-cell and metagenomic sequencing data with highly uneven depth, Bioinformatics, 28, 1420-1428. <http://www.ncbi.nlm.nih.gov/pubmed/22495754>`_
  * Site: `http://i.cs.hku.hk/~alse/hkubrg/projects/idba_ud/ <http://i.cs.hku.hk/~alse/hkubrg/projects/idba_ud/>`_
  * Version: 1.1.1
  * License: GPLv2

* SPAdes

  * Citation: Prjibelski et al. (2020) `Using SPAdes De Novo Assembler. Curr Protoc Bioinformatics. 2020;70(1):e102.  <https://currentprotocols.onlinelibrary.wiley.com/doi/full/10.1002/cpbi.102>`_
  * Site: `https://github.com/ablab/spades <https://github.com/ablab/spades>`_
  * Version: 3.15.5
  * License: GPLv2

* MEGAHIT

  * Citation: Li D. et al. (2015) `MEGAHIT: an ultra-fast single-node solution for large and complex metagenomics assembly via succinct de Bruijn graph. Bioinformatics. 2015 May 15;31(10):1674-6 <http://www.ncbi.nlm.nih.gov/pubmed/25609793>`_
  * Site: `https://github.com/voutcn/megahit <https://github.com/voutcn/megahit>`_
  * Version: 1.2.9
  * License: GPLv3
  
* LRASM: Long Read Assembler

  * Citation: 
  * Site: `https://gitlab.com/chienchi/long_read_assembly <https://gitlab.com/chienchi/long_read_assembly>`_
  * Version: 0.1.0
  * License: GPLv3

* RACON 

  * Citation: Vaser R et al.(2017) `Fast and accurate de novo genome assembly from long uncorrected reads. Genome Res. 2017 May;27(5):737-746. <http://www.ncbi.nlm.nih.gov/pubmed/28100585>`_
  * Site: `https://github.com/isovic/racon <https://github.com/isovic/racon>`_
  * Version: 1.4.13
  * License: MIT 
  
* Unicycler 

  * Citation: Wick RR et al.(2017) `Unicycler: Resolving bacterial genome assemblies from short and long sequencing reads. PLoS Comput Biol. 2017 Jun 8;13(6):e1005595. <http://www.ncbi.nlm.nih.gov/pubmed/28594827>`_
  * Site: `https://github.com/rrwick/Unicycler <https://github.com/rrwick/Unicycler>`_
  * Version: 0.5.0
  * License: GPLv3

Annotation
==========

* RATT

  * Citation: Otto, T.D., et al. (2011) `RATT: Rapid Annotation Transfer Tool, Nucleic acids research, 39, e57. <http://www.ncbi.nlm.nih.gov/pubmed/21306991>`_
  * Site: `http://ratt.sourceforge.net/ <http://ratt.sourceforge.net/>`_
  * Version: 
  * License: GPLv3
  * Note: **The original RATT program does not deal with reverse complement strain annotations transfer. We edited the source code to fix it.**
  
* Prokka

  * Citation: Seemann, T. (2014) `Prokka: rapid prokaryotic genome annotation, Bioinformatics, 30,2068-2069. <http://www.ncbi.nlm.nih.gov/pubmed/24642063>`_
  * Site: `http://www.vicbioinformatics.com/software.prokka.shtml <http://www.vicbioinformatics.com/software.prokka.shtml>`_
  * Version: 1.14.5
  * License: GPLv2 
  * Note: **The NCBI tool tbl2asn included within PROKKA can have very slow runtimes (up to several hours) while it is dealing with numerous contigs, such as when we input metagenomic data. We modified the code to allow parallel processing using tbl2asn.**
      
* tRNAscan

  * Citation: Lowe, T.M. and Eddy, S.R. (1997) `tRNAscan-SE: a program for improved detection of transfer RNA genes in genomic sequence, Nucleic acids research, 25, 955-964. <http://www.ncbi.nlm.nih.gov/pubmed/9023104>`_
  * Site: `http://lowelab.ucsc.edu/tRNAscan-SE/ <http://lowelab.ucsc.edu/tRNAscan-SE/>`_
  * Version: 1.3.1
  * License: GPLv2
  
* Barrnap

  * Citation:
  * Site: `http://www.vicbioinformatics.com/software.barrnap.shtml <http://www.vicbioinformatics.com/software.barrnap.shtml>`_
  * Version: 0.9
  * License: GPLv3
  
* BLAST+

  * Citation: Camacho, C., et al. (2009) `BLAST+: architecture and applications, BMC bioinformatics, 10, 421. <http://www.ncbi.nlm.nih.gov/pubmed/20003500>`_
  * Site: `ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.2.29/ <ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.2.29/>`_
  * Version: 2.10.0
  * License: Public domain
  
* blastall

  * Citation: Altschul, S.F., et al. (1990) `Basic local alignment search tool, Journal of molecular biology, 215, 403-410. <http://www.ncbi.nlm.nih.gov/pubmed/2231712>`_
  * Site: `ftp://ftp.ncbi.nlm.nih.gov/blast/executables/release/2.2.26/ <ftp://ftp.ncbi.nlm.nih.gov/blast/executables/release/2.2.26/>`_
  * Version: 2.2.26
  * License: Public domain
  
* Phage_Finder

  * Citation: Fouts, D.E. (2006) `Phage_Finder: automated identification and classification of prophage regions in complete bacterial genome sequences, Nucleic acids research, 34, 5839-5851. <http://www.ncbi.nlm.nih.gov/pubmed/17062630>`_
  * Site: `http://phage-finder.sourceforge.net/ <http://phage-finder.sourceforge.net/>`_
  * Version: 2.1
  * License: GPLv3
  
* Glimmer

  * Citation: Delcher, A.L., et al. (2007) `Identifying bacterial genes and endosymbiont DNA with Glimmer, Bioinformatics, 23, 673-679. <http://www.ncbi.nlm.nih.gov/pubmed/17237039>`_
  * Site: `http://ccb.jhu.edu/software/glimmer/index.shtml <http://ccb.jhu.edu/software/glimmer/index.shtml>`_
  * Version: 302b
  * License: Artistic License
  
* ARAGORN

  * Citation: Laslett, D. and Canback, B. (2004) `ARAGORN, a program to detect tRNA genes and tmRNA genes in nucleotide sequences, Nucleic acids research, 32, 11-16. <http://www.ncbi.nlm.nih.gov/pubmed/14704338>`_
  * Site: `http://mbio-serv2.mbioekol.lu.se/ARAGORN/ <http://mbio-serv2.mbioekol.lu.se/ARAGORN/>`_
  * Version: 1.2.36
  * License: GPLv2
  
* Prodigal

  * Citation: Hyatt, D., et al. (2010) `Prodigal: prokaryotic gene recognition and translation initiation site identification, BMC bioinformatics, 11, 119. <http://www.ncbi.nlm.nih.gov/pubmed/20211023>`_
  * Site: `http://prodigal.ornl.gov/ <http://prodigal.ornl.gov/>`_
  * Version: 2_60
  * License: GPLv3

* tbl2asn

  * Citation:
  * Site: `http://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/ <http://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/>`_
  * Version: 25.8 (2022 Jun 13)
  * License: Public Domain

.. warning:: tbl2asn must be compiled within the past year to function.  We attempt to recompile every 6 months or so.  Most recent compilation is 27 Feb 2018

* AntiSmash

  * Citation: Kai Blin et al. (2021) `antiSMASH 6.0: improving cluster detection and comparison capabilities, Nucleic Acids Research, Volume 49, Issue W1, 2 July 2021, Pages W29–W35 <https://doi.org/10.1093/nar/gkab335>`_
  * Site: `https://antismash.secondarymetabolites.org/#!/start <https://antismash.secondarymetabolites.org/#!/start>`_
  * Version: 6.1.1
  * License: AGPL-3.0  

Alignment
=========
  
* HMMER3

  * Citation: Eddy, S.R. (2011) `Accelerated Profile HMM Searches, PLoS computational biology, 7, e1002195 <http://www.ncbi.nlm.nih.gov/pubmed/22039361>`_
  * Site: `http://hmmer.janelia.org/ <http://hmmer.janelia.org/>`_
  * Version: 3.1b1
  * License: GPLv3
  
* Infernal

  * Citation: Nawrocki, E.P. and Eddy, S.R. (2013) `Infernal 1.1: 100-fold faster RNA homology searches, Bioinformatics, 29, 2933-2935. <http://www.ncbi.nlm.nih.gov/pubmed/24008419>`_
  * Site: `http://infernal.janelia.org/ <http://infernal.janelia.org/>`_
  * Version: 1.1rc4
  * License: GPLv3
  
* Bowtie 2

  * Citation: Langmead, B. and Salzberg, S.L. (2012) `Fast gapped-read alignment with Bowtie 2, Nature methods, 9, 357-359. <http://www.ncbi.nlm.nih.gov/pubmed/22388286>`_
  * Site: `http://bowtie-bio.sourceforge.net/bowtie2/index.shtml <http://bowtie-bio.sourceforge.net/bowtie2/index.shtml>`_
  * Version: 2.5.1
  * License: GPLv3

* BWA

  * Citation: Li, H. and Durbin, R. (2009) `Fast and accurate short read alignment with Burrows-Wheeler transform, Bioinformatics, 25, 1754-1760. <http://www.ncbi.nlm.nih.gov/pubmed/19451168>`_
  * Site: `http://bio-bwa.sourceforge.net/ <http://bio-bwa.sourceforge.net/>`_
  * Version: 0.7.12 
  * License: GPLv3

* MUMmer3

  * Citation: Kurtz, S., et al. (2004) `Versatile and open software for comparing large genomes, Genome biology, 5, R12. <http://www.ncbi.nlm.nih.gov/pubmed/14759262>`_
  * Site: `http://mummer.sourceforge.net/ <http://mummer.sourceforge.net/>`_
  * Version: 3.23
  * License: GPLv3

* RAPSearch2

  * Citation: Zhao et al. (2012) `RAPSearch2: a fast and memory-efficient protein similarity search tool for next-generation sequencing data. Bioinformatics. 2012 Jan 1;28(1):125-6 <http://www.ncbi.nlm.nih.gov/pubmed/22039206>`_
  * Site: `http://omics.informatics.indiana.edu/mg/RAPSearch2/ <http://omics.informatics.indiana.edu/mg/RAPSearch2/>`_
  * Version: 2.23
  * License: GPL
  
* minimap2

  * Citation: Li, H. (2018) `Minimap2: fast pairwise alignment for nucleotide sequences. Bioinformatics, 34:3094-3100. <https://doi.org/10.1093/bioinformatics/bty191>`_
  * Site: `https://github.com/lh3/minimap2 <https://github.com/lh3/minimap2>`_
  * Version: 2.24
  * License: MIT

* diamond

  * Citation: Buchfink, Xie C., D. Huson (2015) `Fast and sensitive protein alignment using DIAMOND, Nature Methods 12, 59-60 <https://www.ncbi.nlm.nih.gov/pubmed/254020072>`_
  * Site: `https://github.com/bbuchfink/diamond <https://github.com/bbuchfink/diamond>`_
  * Version: v0.9.22.123 
  * License: GPLv3

Taxonomy Classification
=======================

* Kraken2

  * Citation: Wood, D.E. and Salzberg, S.L. (2014) `Kraken: ultrafast metagenomic sequence classification using exact alignments, Genome biology, 15, R46. <http://www.ncbi.nlm.nih.gov/pubmed/24580807>`_
  * Site: `http://ccb.jhu.edu/software/kraken2/ <http://ccb.jhu.edu/software/kraken2/>`_
  * Version: 2.0.7-beta
  * License: MIT
  
* Metaphlan

  * Citation: Blanco-Míguez A., et al. (2023) `Extending and improving metagenomic taxonomic profiling with uncharacterized species using MetaPhlAn 4. Nat Biotechnol. 2023 Feb 23.  <http://www.ncbi.nlm.nih.gov/pubmed/36823356>`_
  * Site: `http://huttenhower.sph.harvard.edu/metaphlan4 <http://huttenhower.sph.harvard.edu/metaphlan4>`_
  * Version: 4.0.6
  * License: MIT License
  
* GOTTCHA

  * Citation: Tracey Allen K. Freitas, Po-E Li, Matthew B. Scholz, Patrick S. G. Chain (2015) `Accurate Metagenome characterization using a hierarchical suite of unique signatures. Nucleic Acids Research (DOI: 10.1093/nar/gkv180) <http://www.ncbi.nlm.nih.gov/pubmed/25765641>`_
  * Site: `http://lanl-bioinformatics.github.io/GOTTCHA/ <http://lanl-bioinformatics.github.io/GOTTCHA/>`_
  * Version: 1.0c
  * License: GPLv3

* GOTTCHA2

  * Citation:
  * Site: `https://gitlab.com/poeli/GOTTCHA2 <https://gitlab.com/poeli/GOTTCHA2>`_
  * Version: 2.1.6 BETA
  * License: BSD 3-Clause
  
Phylogeny
=========

* FastTree

  * Citation: Morgan N. Price, Paramvir S. Dehal, and Adam P. Arkin. 2009. `FastTree: Computing Large Minimum Evolution Trees with Profiles instead of a Distance Matrix. Mol Biol Evol (2009) 26 (7): 1641-1650 <http://www.ncbi.nlm.nih.gov/pubmed/19377059>`_
  * Site: `http://www.microbesonline.org/fasttree/ <http://www.microbesonline.org/fasttree/>`_
  * Version: 2.1.9
  * License: GPLv2
  
* RAxML

  * Citation: Stamatakis,A. 2014. `RAxML version 8: A tool for phylogenetic analysis and post-analysis of large phylogenies. Bioinformatics, 30:1312-1313 <http://www.ncbi.nlm.nih.gov/pubmed/24451623>`_
  * Site: `http://sco.h-its.org/exelixis/web/software/raxml/index.html <http://sco.h-its.org/exelixis/web/software/raxml/index.html>`_
  * Version: 8.0.26
  * License: GPLv2

* Bio::Phylo

  * Citation: Rutger A Vos, Jason Caravas, Klaas Hartmann, Mark A Jensen and Chase Miller, (2011). `Bio::Phylo - phyloinformatic analysis using Perl. BMC Bioinformatics 12:63. <http://www.ncbi.nlm.nih.gov/pubmed/21352572>`_
  * Site: `http://search.cpan.org/~rvosa/Bio-Phylo/ <http://search.cpan.org/~rvosa/Bio-Phylo/>`_
  * Version: 0.58
  * License: GPLv3
  
* PhaME

  * Citation: Sanaa Afroz Ahmed, Chien-Chi Lo, Po-E Li, Karen W Davenport, Patrick S.G. Chain. `From raw reads to trees: Whole genome SNP phylogenetics across the tree of life. bioRxiv doi: http://dx.doi.org/10.1101/032250 <http://dx.doi.org/10.1101/032250>`_
  * Site: `https://github.com/LANL-Bioinformatics/PhaME/ <https://github.com/LANL-Bioinformatics/PhaME/>`_
  * Version: 1.0
  * License: GPLv3

Specialty Genes
===============

* ShortBRED

  * Citation: Kaminski J, et al. (2015) `High-specificity targeted functional profiling in microbial communities with ShortBRED. PLoS Comput Biol.18;11(12):e1004557 <http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004557>`_.
  * Site: `https://huttenhower.sph.harvard.edu/shortbred <https://huttenhower.sph.harvard.edu/shortbred>`_
  * Version: 0.9.4M
  * License: MIT

* RGI (Resistance Gene Identifier)

  * Citation: McArthur & Wright. (2015) `Bioinformatics of antimicrobial resistance in the age of molecular epidemiology. Current Opinion in Microbiology, 27, 45-50. <http://www.sciencedirect.com/science/article/pii/S1369527415000958?via%3Dihub>`_
  * Site: `https://card.mcmaster.ca/analyze/rgi <https://card.mcmaster.ca/analyze/rgi>`_
  * Version: 5.2.1
  * License:  Apache Software License

Metagenome
==========

* MaxBin2

  * Citation: Wu YW, et al. (2016) `MaxBin 2.0: an automated binning algorithm to recover genomes from multiple metagenomic datasets", Bioinformatics, 32(4): 605-607, 2016. <http://bioinformatics.oxfordjournals.org/content/32/4/605.abstract>`_
  * Site: `https://downloads.jbei.org/data/microbial_communities/MaxBin/MaxBin.html <https://downloads.jbei.org/data/microbial_communities/MaxBin/MaxBin.html>`_
  * Version: 2.2.6
  * License: BSD

* CheckM

  * Citation: Parks DH, et al. (2015) `CheckM: assessing the quality of microbial genomes recovered from isolates, single cells, and metagenomes. Genome Research, 25: 1043–1055. <http://genome.cshlp.org/content/25/7/1043.short>`_ 
  * Site: `https://ecogenomics.github.io/CheckM/ <https://ecogenomics.github.io/CheckM/>`_
  * Version: 1.2.2
  * License: GPLv3

Visualization and Graphic User Interface
========================================

* jsPhyloSVG

  * Citation: Smits SA, Ouverney CC, (2010) `jsPhyloSVG: A Javascript Library for Visualizing Interactive and Vector-Based Phylogenetic Trees on the Web. PLoS ONE 5(8): e12267. <http://www.ncbi.nlm.nih.gov/pubmed/20805892>`_ 
  * Site: `http://www.jsphylosvg.com <http://www.jsphylosvg.com>`_
  * Version: 1.55
  * License: GPL
  
* JBrowse

  * Citation: Skinner, M.E., et al. (2009) `JBrowse: a next-generation genome browser, Genome research, 19, 1630-1638. <http://www.ncbi.nlm.nih.gov/pubmed/19570905>`_
  * Site: `http://jbrowse.org <http://jbrowse.org>`_
  * Version: 1.16.8
  * License: Artistic License 2.0/LGPLv.1
  
* KronaTools

  * Citation: Ondov, B.D., Bergman, N.H. and Phillippy, A.M. (2011) `Interactive metagenomic visualization in a Web browser, BMC bioinformatics, 12, 385. <http://www.ncbi.nlm.nih.gov/pubmed/21961884>`_
  * Site: `http://sourceforge.net/projects/krona/ <http://sourceforge.net/projects/krona/>`_
  * Version: 2.8.1
  * License: BSD

* JQuery

  * Site: `http://jquery.com/ <http://jquery.com/>`_
  * Version: 1.10.2
  * License: MIT
  
* JQuery Mobile

  * Site: `http://jquerymobile.com <http://jquerymobile.com>`_
  * Version: 1.4.3
  * License: CC0
  
* DataTables

  * Site: `https://datatables.net <https://datatables.net>`_
  * Version: 1.10.11
  * License: MIT
  
* jQuery File Tree

  * Site: `http://www.abeautifulsite.net/jquery-file-tree/ <http://www.abeautifulsite.net/jquery-file-tree/>`_
  * Version: 1.01
  * License: GPL and MIT
  
* Raphael - JavaScript Vector Library

  * Site: `http://dmitrybaranovskiy.github.io/raphael/ <http://dmitrybaranovskiy.github.io/raphael/>`_
  * Version: 1.4.3
  * License: MIT
  
* Tooltipster 

  * Site: `http://iamceege.github.io/tooltipster/ <http://iamceege.github.io/tooltipster/>`_
  * Version: 3.2.6
  * License: MIT

* Lazy Load XT

  * Site: `http://ressio.github.io/lazy-load-xt/ <http://ressio.github.io/lazy-load-xt/>`_
  * Version: 1.0.6
  * License: MIT

* Plupload

  * Site: `http://www.plupload.com <http://www.plupload.com>`_
  * Version: 2.1.7
  * License: GPLv2 and OEM 
  
* hello.js

  * Site: `http://adodson.com/hello.js/ <http://adodson.com/hello.js/>`_
  * Version: 1.8.1
  * License: MIT

* bokeh

  * Citation: Bokeh Development Team (2014). Bokeh: Python library for interactive visualization
  * Site: `https://bokeh.pydata.org/en/latest/ <https://bokeh.pydata.org/en/latest/>`_
  * Version: 0.12.10
  * License: BSD 3-Clause

Utility
=======

* Chromium

  * Citation:
  * Site: `https://www.chromium.org <https://www.chromium.org>`_
  * Version: 95.0.4615.0 
  * License: Google-authored portion is released under the BSD license. 

* BEDTools

  * Citation: Quinlan, A.R. and Hall, I.M. (2010) `BEDTools: a flexible suite of utilities for comparing genomic features, Bioinformatics, 26, 841-842. <http://www.ncbi.nlm.nih.gov/pubmed/20110278>`_
  * Site: `https://github.com/arq5x/bedtools2 <https://github.com/arq5x/bedtools2>`_
  * Version: 2.19.1
  * License: GPLv2
  
* Pilon

  * Citation: Walker BJ et al. (2014) `Pilon: an integrated tool for comprehensive microbial variant detection and genome assembly improvement. PLoS One. 2014 Nov 19;9(11):e112963. <http://www.ncbi.nlm.nih.gov/pubmed/25409509>`_
  * Site: `https://github.com/broadinstitute/pilon <https://github.com/broadinstitute/pilon>`_
  * Version: 1.23
  * License: GPLv2 & MIT
  
  
* R

  * Citation: R Core Team (2013). R: A language and environment for statistical   computing. R Foundation for Statistical Computing, Vienna, Austria.   URL http://www.R-project.org/.
  * Site: `http://www.r-project.org/ <http://www.r-project.org/>`_
  * Version: 3.6.3
  * License: GPLv2

* R_Packages

	* Custom built direcotry containing all the packages required to install R packages offline
	* The majority of the packages were downloaded automatically using the following R commands.
		
	# Function to get dependencies and imports for a given list of packages. ::
	
		getPackages <- function(packs){
			packages <- unlist(
			tools::package_dependencies(packs, available.packages(), which=c("Depends", "Imports"), recursive=TRUE)
			)
		packages <- union(packs, packages)
		packages
		}
		
	# Use the function by providing the names of the desired packages. ::
		
			packages <- getPackages(c("packageName", "packageName2"))
			# For example
			#packages <- getPackages(c("MetaComp","gtable","gridExtra","devtools","phyloseq","webshot","plotly","shiny","DT","ape", "igraph", "vegan","BH","plogr","dplyr","ade4","codetools","iterators","foreach","gplots"))
		
	# Download packages to current/desired directory. ::
		
			download.packages(packages, destdir="./", type="source")
		
	* The packages specific to bioconductor ('phyloseq', 'Biobase', 'biomformat', 'rhdf5', 'BiocGenerics', 'Biostrings', 'multtest','S4Vectors','IRanges','XVector','Rhdf5lib','zlibbioc') needed to be manually downloade from the site.
	* stringi defaults to downloading icudt55I.zip from online, the following method, from their documentation, was used to build a custom stringi package to avoid connecting to the internet.::
		
			1. File the `git clone https://github.com/gagolews/stringi.git` command.
			2. Edit the `.Rbuildignore` file and get rid of the `^src/icu55/data` line.
			3. Run `R CMD build stringi_dir_name`.

        # index the downloaded packages into PACKAGES files. ::

                require(tools)
                write_PACKAGES('.')
		
* MetaComp: EDGE Taxonomy Assignments Visualization

  * Citation:
  * Site: `https://cran.r-project.org/ <https://cran.r-project.org/>`_	
  * Version: 1.0.2
  * License: BSD 3-Clause
  
* GNU_parallel

  * Citation: O. Tange (2011): GNU Parallel - The Command-Line Power Tool, ;login: The USENIX Magazine, February 2011:42-47
  * Site: `http://www.gnu.org/software/parallel/ <http://www.gnu.org/software/parallel/>`_
  * Version: 20190422
  * License: GPLv3 

* tabix

  * Citation:
  * Site: `http://sourceforge.net/projects/samtools/files/tabix/ <http://sourceforge.net/projects/samtools/files/tabix/>`_ 
  * Version: 0.2.6
  * License: MIT/Expat License
  
* Primer3

  * Citation: Untergasser, A., et al. (2012) `Primer3--new capabilities and interfaces, Nucleic acids research, 40, e115. <http://www.ncbi.nlm.nih.gov/pubmed/22730293>`_
  * Site: `http://primer3.sourceforge.net/ <http://primer3.sourceforge.net/>`_
  * Version: 2.3.5
  * License: GPLv2
  
* SAMtools

  * Citation: Li, H., et al. (2009) `The Sequence Alignment/Map format and SAMtools, Bioinformatics, 25, 2078-2079. <http://www.ncbi.nlm.nih.gov/pubmed/19505943>`_
  * Site: `http://www.htslib.org/ <http://www.htslib.org/>`_
  * Version: 1.16.1
  * License: MIT

.. _FaQCs-ref:
  
* FaQCs

  * Citation: Chienchi Lo, PatrickS.G. Chain (2014) `Rapid evaluation and Quality Control of Next Generation Sequencing Data with FaQCs. BMC Bioinformatics. 2014 Nov 19;15 <http://www.ncbi.nlm.nih.gov/pubmed/25408143>`_
  * Site: `https://github.com/LANL-Bioinformatics/FaQCs <https://github.com/LANL-Bioinformatics/FaQCs>`_
  * Version: 2.08
  * License: GPLv3
  
* Seqtk

  * Citation: Heng Li https://github.com/lh3/seqtk
  * Site: `https://github.com/lh3/seqtk <https://github.com/lh3/seqtk>`_
  * Version: 1.3
  * License: MIT

* NanoPlot
  
  * Citation: De Coster W, et al.(2018) `NanoPack: visualizing and processing long read sequencing data, Bioinformatics. 2018 Mar 14. <https://www.ncbi.nlm.nih.gov/pubmed/29547981>`_
  * Site: `https://github.com/wdecoster/NanoPlot <https://github.com/wdecoster/NanoPlot>`_
  * Version: 1.40.0
  * License: GPLv3

* Porechop

  * Citation:
  * Site: `https://github.com/rrwick/Porechop <https://github.com/rrwick/Porechop>`_
  * Version: 0.2.4
  * License: GPLv3
  

* wigToBigWig

  * Citation: Kent, W.J., et al. (2010) `BigWig and BigBed: enabling browsing of large distributed datasets, Bioinformatics, 26, 2204-2207. <http://www.ncbi.nlm.nih.gov/pubmed/20639541>`_
  * Site: `https://genome.ucsc.edu/goldenPath/help/bigWig.html#Ex3 <https://genome.ucsc.edu/goldenPath/help/bigWig.html#Ex3>`_
  * Version: 4
  * License: Free for academic, nonprofit, and personal use. A license is required for commercial usage.


* sratoolkit

  * Citation: 
  * Site: `https://github.com/ncbi/sra-tools <https://github.com/ncbi/sra-tools>`_
  * Version: 3.0.0
  * License: Public Domain

* ea-utils

  * Citation: Erik Aronesty (2011) `ea-utils : "Command-line tools for processing biological sequencing data" <https://code.google.com/archive/p/ea-utils/>`_
  * Site: `https://code.google.com/archive/p/ea-utils/ <https://code.google.com/archive/p/ea-utils/>`_
  * Version: 1.1.2-537
  * License: MIT License
  
* Mambaforge (Python 3)

  * Citation: 
  * Site: `https://github.com/conda-forge/miniforge <https://github.com/conda-forge/miniforge>`_
  * Version: 22.11.1-4
  * License: 3-clause BSD 


Amplicon Analysis
=================

* QIIME2 

  * Citation: Caporaso et al. (2010) `QIIME allows analysis of high-throughput community sequencing data. Nat Methods. 2010 May;7(5):335-6 <http://www.ncbi.nlm.nih.gov/pubmed/20383131>`_ 
  * Site: `http://qiime2.org/ <http://qiime2.org/>`_
  * Version: 2023.5
  * License: BSD 3-Clause
  
* DETEQT: Diagnostic targeted sequencing adjudication 

  * Citation: Conrad TA et al. (2019) `Diagnostic targETEd seQuencing adjudicaTion (DETEQT): Algorithms for Adjudicating Targeted Infectious Disease Next-Generation Sequencing Panels. <https://www.ncbi.nlm.nih.gov/pubmed/30268944>`_
  * Site: `https://github.com/LANL-Bioinformatics/DETEQT <https://github.com/LANL-Bioinformatics/DETEQT>`_
  * Version: 0.3.0
  * License: GPLv3
   
  
RNA-Seq Analysis  
================

* PyPiReT: Pipeline for Reference based Transcriptomics.

  * Citation: 
  * Site: `https://github.com/mshakya/PyPiReT <https://github.com/mshakya/PyPiReT>`_
  * Version: 0.3.2
  * License: GPLv3
