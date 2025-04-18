EDGE ABCs 
#########

A quick About EDGE, overview of the Bioinformatic workflows, and the Computational environment


About EDGE Bioinformatics
=========================

EDGE bioinformatics was **developed to help biologists process Next Generation Sequencing data** (in the form of **raw FASTQ** files), even if they have little to no bioinformatics expertise. EDGE is a **highly integrated and interactive web-based platform** that is capable of running many of the standard analyses that biologists require for viral, bacterial/archaeal, and metagenomic samples. EDGE provides the following analytical workflows: **pre-processing, assembly and annotation, reference-based analysis, taxonomy classification, phylogenetic analysis, Gene Family Analysis, PCR analysis, Qiime2 amplicon data analysis, targeted sequencing adjudication and RNA-Seq analysis**. EDGE provides an intuitive web-based interface for user input, allows users to visualize and interact with selected results (e.g. JBrowse genome browser), and generates a final detailed PDF report. Results in the form of tables, text files, graphic files, and PDFs can be downloaded. A user management system allows tracking of an individual’s EDGE runs, along with the ability to share, post publicly, delete, or archive their results.

While EDGE was intentionally designed to be as simple as possible for the user, there is still no single ‘tool’ or algorithm that fits all use-cases in the bioinformatics field. Our intent is to provide a detailed panoramic view of your sample from various analytical standpoints, but users are encouraged to have some knowledge of how each tool/algorithm workflow functions, and some insight into how the results should best be interpreted.

Bioinformatics overview
=======================

Inputs:
-------

The input to the EDGE workflows begins with one or more **illumina FASTQ files** for a single sample. (There is currently limited capability of incorporating PacBio and Oxford Nanopore data into the Assembly module) The user can also enter SRA/ENA accessions to allow processing of publically available datasets. Comparison among samples is not yet supported but development is underway to accommodate such a function for assembly and taxonomy profile comparisons. 

Workflows:
----------

**Pre-Processing**

Assessment of quality control is performed by `FAQCS <http://www.ncbi.nlm.nih.gov/pubmed/25408143>`_. Users can optionally find and remove adapters from `Oxford Nanopore <https://nanoporetech.com>`_ reads using `Porechop <https://github.com/rrwick/Porechop>`_. In addition, users can optionally stitch paired-end(PE) reads using `fastq-join <https://github.com/ExpressionAnalysis/ea-utils/blob/wiki/FastqJoin.md>`_ and use joined PE reads for downstream analysis. The host removal step requires the input of one or more reference genomes as FASTA. Several common references are available for selection. Trimmed and host-screened FASTQ files are used for input to the other workflows.

**Assembly and Annotation**

We provide the `IDBA <http://www.ncbi.nlm.nih.gov/pubmed/22495754>`_, `Spades <http://www.ncbi.nlm.nih.gov/pubmed/22506599>`_, `MegaHit <http://www.ncbi.nlm.nih.gov/pubmed/25609793>`_ for illumina reads, LRASM includes `miniasm <https://github.com/lh3/miniasm>`_ and `wtdbg2 <https://github.com/ruanjue/wtdbg2>`_ alogrithm and `(meta)flye <https://github.com/fenderglass/Flye>`_ for PacBio/Nanopore reads, and `Unicycler <https://www.ncbi.nlm.nih.gov/pubmed/28594827>`_ for bacteria genomes hybird assembly. These assembly tools are to accommodate a range of sample types and data sizes. When the user selects to perform an assembly, all subsequent workflows can execute analysis with either the reads, the contigs, or both (default). For annotation, `Prokka <https://github.com/tseemann/prokka>`_ and `RATT <http://www.ncbi.nlm.nih.gov/pubmed/21306991>`_ are provided for ab initio or transfer annoation from close-related reference genome. Start from version 2.4, EDGE use `antiSMASH v4.1.0 <https://academic.oup.com/nar/article/45/W1/W36/3778252>`_ for the rapid genome-wide identification, annotation and analysis of secondary metabolite biosynthesis gene clusters in bacterial and fungal genomes. In addition, the assembled contigs can be binned by `Maxbin2 <http://bioinformatics.oxfordjournals.org/content/32/4/605.abstract>`_ and assessed the quality of binning result by `CheckM <http://genome.cshlp.org/content/25/7/1043.short>`_ . 

**Reference-Based Analysis**

For comparative reference-based analysis with reads and/or contigs, users must input one or more references (as FASTA or multi-FASTA if there are more than one replicon)  and/or select from a drop-down list of RefSeq complete genomes. Results include lists of missing regions (gaps), inserted regions (with input contigs if assembly was performed), SNPs (and coding sequence changesa with genbank information), as well as genome coverage plots and interactive access via JBrowse. There is an option to output consensus Fasta file from the mapping result.

**Taxonomy Classification**

For taxonomy classification with reads, multiple tools are used and the results are summarized in heat map and radar plots. Individual tool results are also presented with taxonomy dendograms and Krona plots. Contig classification occurs by assigning taxonomies to all possible portions of contigs. For each contig, the longest and best match (using `minimap2 <https://github.com/lh3/minimap2>`_ ) is kept for any region within the contig and the region covered is assigned to the taxonomy of the hit. The next best match to a region of the contig not covered by prior hits is then assigned to that taxonomy. The contig results can be viewed by length of assembly coverage per taxa or by number of contigs per taxa.

**Phylogenetic Analysis**

For phylogenetic analysis, the user must select datasets from near neighbor isolates for which the user desires a phylogeny. A minimum of two additional datasets are required to draw a tree. At least one dataset must be an assembly or complete genome. `RefSeq genomes (Bacteria, Archaea, Viruses) <database.html#ncbi-refseq>`_ are available from a dropdown menu, SRA and FASTA entries are allowed, and previously built databases for some select groups of bacteria are provided.
This workflow (see `PhaME <http://dx.doi.org/10.1101/032250>`_) is a whole genome SNP-based analysis that uses one reference assembly to which both reads and contigs are mapped. Because this analysis is based on read alignments and/or contig alignments to the reference genome(s), we **strongly recommend only selecting genomes that can be adequately aligned at the nucleotide level (i.e. ~90% identity or better)**. The number of ‘core’ nucleotides able to be aligned among all genomes, and the number of SNPs within the core, are what determine the resolution of the phylogenetic tree. Output phylogenies are presented along with text files outlining the SNPs discovered.

**Gene Family Analysis**

For specialty gene analysis, the user selects read-based analysis and/or ORF(contig)-based analysis.

For read-based analysis antibiotic resistance genes and virulence genes are detected using Huttenhower lab’s progam `ShortBRED <https://bitbucket.org/biobakery/shortbred/wiki/Home>`_. The antibiotic resistance gene database was generated by the developers of ShortBRED using genes from `ARDB <http://ardb.cbcb.umd.edu/>`_ and `Resfams <http://www.dantaslab.org/resfams/>`_. The virulence genes database was generated by the developers of EDGE using `VFDB <http://www.mgc.ac.cn/VFs/main.htm>`_.

For ORF-based analysis, antibiotic resistance genes are detected using `CARD’s <https://card.mcmaster.ca/>`_ (Comprehensive Antibiotic Resistance Database) program `RGI <https://card.mcmaster.ca/analyze/rgi>`_ (Resistance Gene Identifier). RGI uses CARD’s custom database of antibiotic resistance genes. The virulence genes are detected using ShortBRED with a database generated by the developers of EDGE using VFDB.

**Primer Analysis**

For primer analysis, if the user would like to validate known PCR primers in silico, a FASTA file of primer sequences must be input. New primers can be generated from an assembly as well.

**Qiime2 analysis**

`QIIME2 <http://qiime2.org/>`_ is an open-source bioinformatics pipeline for performing microbiome analysis from raw DNA sequencing data. EDGE implementation is based on Qiime 2 core 2023.5 and includes demultiplexing and quality control/filtering, feature table construction, taxonomic assignment, and phylogenetic reconstruction, and diversity analyses and visualizations. Currently, EDGE suports three amplicon types, `16s using GreenGenes database, 16s/18s using SILVA database, and Fungal ITS <https://docs.qiime2.org/2023.5/data-resources/>`_. 

**DETEQT (TargetedNGS) analysis**

`DETEQT <https://www.ncbi.nlm.nih.gov/pubmed/30268944>`_ is a pipeline for diagnostic targeted sequencing adjudication.

This tool been designed to be robust enough to handle a range of assay designs. Therefore, no major assumptions of input reads are made except that they represent amplicons from a multiplexed targeted amplification reaction and that the **reference is comprised of only target regions** in the assay, instead of whole genomes. The idea is to survey the reads and delineate whether each reference sequence, or target, is present or absent.

**PiReT analysis**

EDGE integrated `PiReT (Pipeline for Reference based Transcriptomics) <https://github.com/mshakya/PyPiReT>`_ which is an open-source bioinformatics pipeline for performing RNA-Seq analysis. The workflow written mostly in Python on a popular workflow manager package `luigi (developed by spotify) <https://github.com/spotify/luigi>`_. It allow users to find differentially expressed transcripts (genes, sRNAs), discover novel non coding RNAs, co-expressed genes and pathways from raw fastq, reference sequence, and experimental design files.


**All commands and tool parameters are recorded in log files to make sure the results are repeatable and traceable.** The main output is an integrated interactive web page that includes summaries of all the workflows run and features tables, graphical plots, and links to genome (if assembled, or of a selected reference) browsers and to access unprocessed results and log files. Most of these summaries, including plots and tables are included within a final PDF report. 

Limitations 
-----------

**Pre-processing**

For host removal/screening, not all genomes are available from a drop-down list, however users can provide their own genome fasta file as host input.

**Assembly and Taxonomy Classification**

EDGE has been primarily designed to **analyze microbial (bacterial, archaeal, viral) isolates or (shotgun) metagenome samples**. Due to the complexity and computational resources required for eukaryotic genome assembly, and the fact that the most taxonomy classification tools do not support eukaryotic classification (except `Metaphlan2 <http://huttenhower.sph.harvard.edu/metaphlan2>`_), EDGE does not fully support eukaryotic samples. The combination of large NGS data files and complex metagenomes may also run into computational memory constraints. 

**Reference-based analysis**

We recommend only aligning against (a limited number of) most closely related genome(s) (default on GUI limit up to 200 fragments). If this is unknown, the Taxonomy Classification module is recommended as an alternative. If the user selects too many references, this may affect runtimes or require more computational resources than may be available on the user’s system.

**Phylogenetic Analysis**

Because this pipeline provides SNP-based trees derived from whole genome (and contig) alignments or read mapping, **we recommend selecting genomes within the same species or at least within the same genus**. 

Computational Environment
=========================

EDGE source code, images, and webservers
----------------------------------------

EDGE was designed to be installed and implemented from within any institute that provides sequencing services or that produces or hosts NGS data. When installed locally, EDGE can access the raw FASTQ files from within the institute, thereby providing immediate access by the biologist for analysis. EDGE is available in a variety of packages to fit various institute needs. **EDGE source code** can be obtained via our `GitHub <https://lanl-bioinformatics.github.io/EDGE/>`_ page. To simplify installation, a `Docker image <installation.html#edge-docker-image>`_ can also be obtained. An **online version of EDGE** is currently available at https://edgebioinformatics.org/.
