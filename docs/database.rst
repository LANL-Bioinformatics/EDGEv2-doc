Databases
#########

EDGE provided databases
=======================

Taxnomomy Database Info Table
-----------------------------

https://lanl-bioinformatics.github.io/EDGE/docs/taxonomyDBtable.html

NCBI Refseq
-----------

EDGE prebuilt blast db and bwa_index of NCBI RefSeq genomes.

* Bacteria: `NCBI all complete bacteria download method <http://www.ncbi.nlm.nih.gov/genome/doc/ftpfaq/#allcomplete>`_

  * Version: NCBI 2017 Oct 3
  * 245 Archaea + 7917 Bacteria genomes
  
* Virus:  `NCBI Virus <https://www.ncbi.nlm.nih.gov/nuccore/?term=Viruses[Organism]%20NOT%20cellular%20organisms[ORGN]%20NOT%20wgs[PROP]%20NOT%20gbdiv%20syn[prop]%20AND%20(srcdb_refseq[PROP]%20OR%20nuccore%20genome%20samespecies[Filter])>`_

  * Version: NCBI 2017 Oct 3
  * 7458 complete genomes + Neighbor Nucleotoides (118039 seuqences)

see $EDGE_HOME/database/bwa_index/id_mapping.txt for all gi/accession to genome name lookup table.

Krona taxonomy
--------------

* paper: `http://www.ncbi.nlm.nih.gov/pubmed/?term=21961884 <http://www.ncbi.nlm.nih.gov/pubmed/?term=21961884>`_
* website: `http://sourceforge.net/p/krona/home/krona/ <http://sourceforge.net/p/krona/home/krona/>`_

Update Krona taxonomy db
^^^^^^^^^^^^^^^^^^^^^^^^

Go to the folder in the KronaTools installation and run (internet required) ::

    cd $EDGE_HOME/thirdParty/KronaTools-2.7/
    ./updateTaxonomy.sh
    ./updateAccessions.sh 

This uses about 16 GB of disk space and an additional 16 GB of scratch space during installation (at the time of this writing; it is always growing) and takes minutes or up to an hour to run.


Metaphlan4 database
-------------------

MetaPhlAn 4 relies on ~5.1M unique clade-specific marker genes identified from ~1M microbial genomes (~236,600 references and 771,500 metagenomic assembled genomes) spanning 26,970 species-level genome bins (SGBs, http://segatalab.cibio.unitn.it/data/Pasolli_et_al.html), 4,992 of them taxonomically unidentified at the species level.

* paper: `http://www.ncbi.nlm.nih.gov/pubmed/?term=36823356 <http://www.ncbi.nlm.nih.gov/pubmed/?term=36823356>`_
* website: `http://huttenhower.sph.harvard.edu/metaphlan4 <http://huttenhower.sph.harvard.edu/metaphlan4>`_

Human Genome
------------
The bwa index is prebuilt in the EDGE.
The human hs_ref_GRCh38 sequences from NCBI ftp site.

* website `https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.26_GRCh38/ <https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.26_GRCh38/>`_

Kraken2 DB
-------------

Kraken2 is a system for assigning taxonomic labels to short DNA sequences, usually obtained through metagenomic studies. Kraken2 database in EDGE is a pre-built database constructed from Refseq bacteria, archaea, and viral libraries and the GRCh38 human genome and UniVec_Core in RefSeq (as of Dec, 2021).

* Kraken1 paper: `http://www.ncbi.nlm.nih.gov/pubmed/?term=24580807 <http://www.ncbi.nlm.nih.gov/pubmed/?term=24580807>`_
* website: `http://ccb.jhu.edu/software/kraken2/ <http://ccb.jhu.edu/software/kraken2/>`_

Centrifuge DB
-------------
Centrifuge is a very rapid and memory-efficient system for the classification of DNA sequences from microbial samples, with better sensitivity than and comparable accuracy to other leading systems. The database includes human genome, prokaryotic genomes, and viral genomes including 106 SARS-CoV-2 complete genomes. (as of Mar 29, 2020)

* Centrifuge paper: `https://pubmed.ncbi.nlm.nih.gov/27852649/ <https://pubmed.ncbi.nlm.nih.gov/27852649/>`_
* website: `https://ccb.jhu.edu/software/centrifuge/ <https://ccb.jhu.edu/software/centrifuge/>`_

GOTTCHA DB
----------

A novel, annotation-independent and signature-based metagenomic taxonomic profiling tool.

* website: `http://lanl-bioinformatics.github.io/GOTTCHA/ <http://lanl-bioinformatics.github.io/GOTTCHA/>`_
* ftp: `https://edge-dl.lanl.gov/gottcha/ <https://edge-dl.lanl.gov/gottcha/>`_
* version: v20150825

SNPdb
-----

SNP database based on whole genome comparison. Current available db are :ref:`Ecoli, Yersinia, Francisella, Brucella, Bacillus<SNP-db>` .

Invertebrate Vectors of Human Pathogens
---------------------------------------

The bwa index is prebuilt in the EDGE.

* paper: `http://www.ncbi.nlm.nih.gov/pubmed/?term=22135296 <http://www.ncbi.nlm.nih.gov/pubmed/?term=22135296>`_
* website: `https://www.vectorbase.org <https://www.vectorbase.org>`_

version: 2014 July 24

NCBI Nucleotide database (NT) database
--------------------------------------

* website: `ftp://ftp.ncbi.nih.gov/blast/db/ <ftp://ftp.ncbi.nih.gov/blast/db/>`_
* version: 2016 April 26

VFDB
----

A Microbial database of virulence factors

* paper: `http://www.ncbi.nlm.nih.gov/pubmed/?term=26578559 <http://www.ncbi.nlm.nih.gov/pubmed/?term=26578559>`_
* website: `http://www.mgc.ac.cn/VFs/main.htm <http://www.mgc.ac.cn/VFs/main.htm>`_
* version: 20160818


ARDB
----

Antibiotic Resistance Genes Database

* website: `http://ardb.cbcb.umd.edu/index.html <http://ardb.cbcb.umd.edu/index.html>`_
* version: 1.1

CARD
----

The Comprehensive Antibiotic Resistance Database

* website: `https://card.mcmaster.ca/ <https://card.mcmaster.ca/>`_
* Version: 3.0.7

Amplicon: 16s/18s/ITS
---------------------

  For QIIME (Quantitative insights into Microbial Ecology) analysis (scikit-learn=0.24.1)
	
  * Greengenes OTUs (16s)

    * website: `http://greengenes.secondgenome.com/ <http://greengenes.secondgenome.com/>`_
    * version: 2022_10
	
  * SILVA OTUs (16S/18S)

    * website: `http://www.arb-silva.de/download/archive/qiime/ <http://www.arb-silva.de/download/archive/qiime/>`_
    * version: 138
    
  * UNITE OTUs (Fungal ITS)
  
    * website: `https://unite.ut.ee/repository.php <https://unite.ut.ee/repository.php>`_
    * version: 16.10.2022
    
.. _build-host-index:

Building bwa index
==================
Here take human genome as example.

1. Download the human hs_ref_GRCh38 sequences from NCBI ftp site::

    wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/405/GCA_000001405.28_GRCh38.p13/GCA_000001405.28_GRCh38.p13_genomic.fna.gz

2. Use the installed bwa to build the index::

    $EDGE_HOME/bin/bwa index -p human_ref_GRCh38 GCA_000001405.28_GRCh38.p13_genomic.fna.gz

  Now, you can configure the config file with "host=/path/to/human_ref_GRCh38" for host removal step.
  
.. _SNP-db:

SNP database genomes
====================

SNP database was pre-built from the below genomes.

Ecoli Genomes
-------------

=================== ===================================================================== =============================================
Name                Description                                                           URL
=================== ===================================================================== =============================================
Ecoli_042           Escherichia coli 042, complete genome                                 http://www.ncbi.nlm.nih.gov/nuccore/387605479
Ecoli_11128         Escherichia coli O111:H- str. 11128, complete genome                  http://www.ncbi.nlm.nih.gov/nuccore/260866153
Ecoli_11368         Escherichia coli O26:H11 str. 11368 chromosome, complete genome       http://www.ncbi.nlm.nih.gov/nuccore/260853213
Ecoli_12009         Escherichia coli O103:H2 str. 12009, complete genome                  http://www.ncbi.nlm.nih.gov/nuccore/260842239
Ecoli_2009EL2050    Escherichia coli O104:H4 str. 2009EL-2050 chromosome, complete genome http://www.ncbi.nlm.nih.gov/nuccore/410480139
Ecoli_2009EL2071    Escherichia coli O104:H4 str. 2009EL-2071 chromosome, complete genome http://www.ncbi.nlm.nih.gov/nuccore/407466711
Ecoli_2011C3493     Escherichia coli O104:H4 str. 2011C-3493 chromosome, complete genome  http://www.ncbi.nlm.nih.gov/nuccore/407479587
Ecoli_536           Escherichia coli 536, complete genome                                 http://www.ncbi.nlm.nih.gov/nuccore/110640213
Ecoli_55989         Escherichia coli 55989 chromosome, complete genome                    http://www.ncbi.nlm.nih.gov/nuccore/218693476
Ecoli_ABU_83972     Escherichia coli ABU 83972 chromosome, complete genome                http://www.ncbi.nlm.nih.gov/nuccore/386637352
Ecoli_APEC_O1       Escherichia coli APEC O1 chromosome, complete genome                  http://www.ncbi.nlm.nih.gov/nuccore/117622295
Ecoli_ATCC_8739     Escherichia coli ATCC 8739 chromosome, complete genome                http://www.ncbi.nlm.nih.gov/nuccore/170018061
Ecoli_BL21_DE3      Escherichia coli BL21(DE3) chromosome, complete genome                http://www.ncbi.nlm.nih.gov/nuccore/387825439
Ecoli_BW2952        Escherichia coli BW2952 chromosome, complete genome                   http://www.ncbi.nlm.nih.gov/nuccore/238899406
Ecoli_CB9615        Escherichia coli O55:H7 str. CB9615 chromosome, complete genome       http://www.ncbi.nlm.nih.gov/nuccore/291280824
Ecoli_CE10          Escherichia coli O7:K1 str. CE10 chromosome, complete genome          http://www.ncbi.nlm.nih.gov/nuccore/386622414
Ecoli_CFT073        Escherichia coli CFT073 chromosome, complete genome                   http://www.ncbi.nlm.nih.gov/nuccore/26245917
Ecoli_DH1           Escherichia coli DH1, complete genome                                 http://www.ncbi.nlm.nih.gov/nuccore/387619774
Ecoli_Di14          Escherichia coli str. 'clone D i14' chromosome, complete genome       http://www.ncbi.nlm.nih.gov/nuccore/386632422
Ecoli_Di2           Escherichia coli str. 'clone D i2' chromosome, complete genome        http://www.ncbi.nlm.nih.gov/nuccore/386627502
Ecoli_E2348_69      Escherichia coli O127:H6 str. E2348/69 chromosome, complete genome    http://www.ncbi.nlm.nih.gov/nuccore/215485161
Ecoli_E24377A       Escherichia coli E24377A chromosome, complete genome                  http://www.ncbi.nlm.nih.gov/nuccore/157154711
Ecoli_EC4115        Escherichia coli O157:H7 str. EC4115 chromosome, complete genome      http://www.ncbi.nlm.nih.gov/nuccore/209395693
Ecoli_ED1a          Escherichia coli ED1a chromosome, complete genome                     http://www.ncbi.nlm.nih.gov/nuccore/218687878
Ecoli_EDL933        Escherichia coli O157:H7 str. EDL933 chromosome, complete genome      http://www.ncbi.nlm.nih.gov/nuccore/16445223
Ecoli_ETEC_H10407   Escherichia coli ETEC H10407, complete genome                         http://www.ncbi.nlm.nih.gov/nuccore/387610477
Ecoli_HS            Escherichia coli HS, complete genome                                  http://www.ncbi.nlm.nih.gov/nuccore/157159467
Ecoli_IAI1          Escherichia coli IAI1 chromosome, complete genome                     http://www.ncbi.nlm.nih.gov/nuccore/218552585
Ecoli_IAI39         Escherichia coli IAI39 chromosome, complete genome                    http://www.ncbi.nlm.nih.gov/nuccore/218698419
Ecoli_IHE3034       Escherichia coli IHE3034 chromosome, complete genome                  http://www.ncbi.nlm.nih.gov/nuccore/386597751
Ecoli_K12_DH10B     Escherichia coli str. K-12 substr. DH10B chromosome, complete genome  http://www.ncbi.nlm.nih.gov/nuccore/170079663
Ecoli_K12_MG1655    Escherichia coli str. K-12 substr. MG1655 chromosome, complete genome http://www.ncbi.nlm.nih.gov/nuccore/49175990
Ecoli_K12_W3110     Escherichia coli str. K-12 substr. W3110, complete genome             http://www.ncbi.nlm.nih.gov/nuccore/388476123
Ecoli_KO11FL        Escherichia coli KO11FL chromosome, complete genome                   http://www.ncbi.nlm.nih.gov/nuccore/386698504
Ecoli_LF82          Escherichia coli LF82, complete genome                                http://www.ncbi.nlm.nih.gov/nuccore/222154829
Ecoli_NA114         Escherichia coli NA114 chromosome, complete genome                    http://www.ncbi.nlm.nih.gov/nuccore/386617516
Ecoli_NRG_857C      Escherichia coli O83:H1 str. NRG 857C chromosome, complete genome     http://www.ncbi.nlm.nih.gov/nuccore/387615344
Ecoli_P12b          Escherichia coli P12b chromosome, complete genome                     http://www.ncbi.nlm.nih.gov/nuccore/386703215
Ecoli_REL606        Escherichia coli B str. REL606 chromosome, complete genome            http://www.ncbi.nlm.nih.gov/nuccore/254160123
Ecoli_RM12579       Escherichia coli O55:H7 str. RM12579 chromosome, complete genome      http://www.ncbi.nlm.nih.gov/nuccore/387504934
Ecoli_S88           Escherichia coli S88 chromosome, complete genome                      http://www.ncbi.nlm.nih.gov/nuccore/218556939
Ecoli_SE11          Escherichia coli O157:H7 str. Sakai chromosome, complete genome       http://www.ncbi.nlm.nih.gov/nuccore/15829254
Ecoli_SE15          Escherichia coli SE11 chromosome, complete genome                     http://www.ncbi.nlm.nih.gov/nuccore/209917191
Ecoli_SMS35         Escherichia coli SE15, complete genome                                http://www.ncbi.nlm.nih.gov/nuccore/387828053
Ecoli_Sakai         Escherichia coli SMS-3-5 chromosome, complete genome                  http://www.ncbi.nlm.nih.gov/nuccore/170679574
Ecoli_TW14359       Escherichia coli O157:H7 str. TW14359 chromosome, complete genome     http://www.ncbi.nlm.nih.gov/nuccore/254791136
Ecoli_UM146         Escherichia coli UM146 chromosome, complete genome                    http://www.ncbi.nlm.nih.gov/nuccore/386602643
Ecoli_UMN026        Escherichia coli UMN026 chromosome, complete genome                   http://www.ncbi.nlm.nih.gov/nuccore/218703261
Ecoli_UMNK88        Escherichia coli UMNK88 chromosome, complete genome                   http://www.ncbi.nlm.nih.gov/nuccore/386612163
Ecoli_UTI89         Escherichia coli UTI89 chromosome, complete genome                    http://www.ncbi.nlm.nih.gov/nuccore/91209055
Ecoli_W             Escherichia coli W chromosome, complete genome                        http://www.ncbi.nlm.nih.gov/nuccore/386707734
Ecoli_Xuzhou21      Escherichia coli Xuzhou21 chromosome, complete genome                 http://www.ncbi.nlm.nih.gov/nuccore/387880559
Sboydii_CDC_3083_94 Shigella boydii CDC 3083-94 chromosome, complete genome               http://www.ncbi.nlm.nih.gov/nuccore/187730020
Sboydii_Sb227       Shigella boydii Sb227 chromosome, complete genome                     http://www.ncbi.nlm.nih.gov/nuccore/82542618
Sdysenteriae_Sd197  Shigella dysenteriae Sd197, complete genome                           http://www.ncbi.nlm.nih.gov/nuccore/82775382
Sflexneri_2002017   Shigella flexneri 2002017 chromosome, complete genome                 http://www.ncbi.nlm.nih.gov/nuccore/384541581
Sflexneri_2a_2457T  Shigella flexneri 2a str. 2457T, complete genome                      http://www.ncbi.nlm.nih.gov/nuccore/30061571
Sflexneri_2a_301    Shigella flexneri 2a str. 301 chromosome, complete genome             http://www.ncbi.nlm.nih.gov/nuccore/344915202
Sflexneri_5_8401    Shigella flexneri 5 str. 8401 chromosome, complete genome             http://www.ncbi.nlm.nih.gov/nuccore/110804074
Ssonnei_53G         Shigella sonnei 53G, complete genome                                  http://www.ncbi.nlm.nih.gov/nuccore/377520096
Ssonnei_Ss046       Shigella sonnei Ss046 chromosome, complete genome                     http://www.ncbi.nlm.nih.gov/nuccore/74310614
=================== ===================================================================== =============================================


Yersinia Genomes
----------------

============================ ============================================================================ =============================================
Name                         Description                                                                  URL
============================ ============================================================================ =============================================
Ypestis_A1122                Yersinia pestis A1122 chromosome, complete genome                            http://www.ncbi.nlm.nih.gov/nuccore/384137007
Ypestis_Angola               Yersinia pestis Angola chromosome, complete genome                           http://www.ncbi.nlm.nih.gov/nuccore/162418099
Ypestis_Antiqua              Yersinia pestis Antiqua chromosome, complete genome                          http://www.ncbi.nlm.nih.gov/nuccore/108805998
Ypestis_CO92                 Yersinia pestis CO92 chromosome, complete genome                             http://www.ncbi.nlm.nih.gov/nuccore/16120353
Ypestis_D106004              Yersinia pestis D106004 chromosome, complete genome                          http://www.ncbi.nlm.nih.gov/nuccore/384120592
Ypestis_D182038              Yersinia pestis D182038 chromosome, complete genome                          http://www.ncbi.nlm.nih.gov/nuccore/384124469
Ypestis_KIM_10               Yersinia pestis KIM 10 chromosome, complete genome                           http://www.ncbi.nlm.nih.gov/nuccore/22123922
Ypestis_Medievalis_Harbin_35 Yersinia pestis biovar Medievalis str. Harbin 35 chromosome, complete genome http://www.ncbi.nlm.nih.gov/nuccore/384412706
Ypestis_Microtus_91001       Yersinia pestis biovar Microtus str. 91001 chromosome, complete genome       http://www.ncbi.nlm.nih.gov/nuccore/45439865
Ypestis_Nepal516             Yersinia pestis Nepal516 chromosome, complete genome                         http://www.ncbi.nlm.nih.gov/nuccore/108810166
Ypestis_Pestoides_F          Yersinia pestis Pestoides F chromosome, complete genome                      http://www.ncbi.nlm.nih.gov/nuccore/145597324
Ypestis_Z176003              Yersinia pestis Z176003 chromosome, complete genome                          http://www.ncbi.nlm.nih.gov/nuccore/294502110
Ypseudotuberculosis_IP_31758 Yersinia pseudotuberculosis IP 31758 chromosome, complete genome             http://www.ncbi.nlm.nih.gov/nuccore/153946813
Ypseudotuberculosis_IP_32953 Yersinia pseudotuberculosis IP 32953 chromosome, complete genome             http://www.ncbi.nlm.nih.gov/nuccore/51594359
Ypseudotuberculosis_PB1      Yersinia pseudotuberculosis PB1/+ chromosome, complete genome                http://www.ncbi.nlm.nih.gov/nuccore/186893344
Ypseudotuberculosis_YPIII    Yersinia pseudotuberculosis YPIII chromosome, complete genome                http://www.ncbi.nlm.nih.gov/nuccore/170022262
============================ ============================================================================ =============================================


Francisella Genomes
-------------------

================================ =============================================================================== =============================================
Name                             Description                                                                     URL
================================ =============================================================================== =============================================
Fnovicida_U112                   Francisella novicida U112 chromosome, complete genome                           http://www.ncbi.nlm.nih.gov/nuccore/118496615
Ftularensis_holarctica_F92       Francisella tularensis subsp. holarctica F92 chromosome, complete genome        http://www.ncbi.nlm.nih.gov/nuccore/423049750
Ftularensis_holarctica_FSC200    Francisella tularensis subsp. holarctica FSC200 chromosome, complete genome     http://www.ncbi.nlm.nih.gov/nuccore/422937995
Ftularensis_holarctica_FTNF00200 Francisella tularensis subsp. holarctica FTNF002-00 chromosome, complete genome http://www.ncbi.nlm.nih.gov/nuccore/156501369
Ftularensis_holarctica_LVS       Francisella tularensis subsp. holarctica LVS chromosome, complete genome        http://www.ncbi.nlm.nih.gov/nuccore/89255449
Ftularensis_holarctica_OSU18     Francisella tularensis subsp. holarctica OSU18 chromosome, complete genome      http://www.ncbi.nlm.nih.gov/nuccore/115313981
Ftularensis_mediasiatica_FSC147  Francisella tularensis subsp. mediasiatica FSC147 chromosome, complete genome   http://www.ncbi.nlm.nih.gov/nuccore/187930913
Ftularensis_TIGB03               Francisella tularensis TIGB03 chromosome, complete genome                       http://www.ncbi.nlm.nih.gov/nuccore/379716390
Ftularensis_tularensis_FSC198    Francisella tularensis subsp. tularensis FSC198 chromosome, complete genome     http://www.ncbi.nlm.nih.gov/nuccore/110669657
Ftularensis_tularensis_NE061598  Francisella tularensis subsp. tularensis NE061598 chromosome, complete genome   http://www.ncbi.nlm.nih.gov/nuccore/385793751
Ftularensis_tularensis_SCHU_S4   Francisella tularensis subsp. tularensis SCHU S4 chromosome, complete genome    http://www.ncbi.nlm.nih.gov/nuccore/255961454
Ftularensis_tularensis_TI0902    Francisella tularensis subsp. tularensis TI0902 chromosome, complete genome     http://www.ncbi.nlm.nih.gov/nuccore/379725073
Ftularensis_tularensis_WY963418  Francisella tularensis subsp. tularensis WY96-3418 chromosome, complete genome  http://www.ncbi.nlm.nih.gov/nuccore/134301169
================================ =============================================================================== =============================================


Brucella Genomes
----------------

======================== ======================================= =============================================
Name                     Description                             URL
======================== ======================================= =============================================
Babortus_1_9941          Brucella abortus bv. 1 str. 9-941       http://www.ncbi.nlm.nih.gov/bioproject/58019
Babortus_A13334          Brucella abortus A13334                 http://www.ncbi.nlm.nih.gov/bioproject/83615
Babortus_S19             Brucella abortus S19                    http://www.ncbi.nlm.nih.gov/bioproject/58873
Bcanis_ATCC_23365        Brucella canis ATCC 23365               http://www.ncbi.nlm.nih.gov/bioproject/59009
Bcanis_HSK_A52141        Brucella canis HSK A52141               http://www.ncbi.nlm.nih.gov/bioproject/83613
Bceti_TE10759_12         Brucella ceti TE10759-12                http://www.ncbi.nlm.nih.gov/bioproject/229880
Bceti_TE28753_12         Brucella ceti TE28753-12                http://www.ncbi.nlm.nih.gov/bioproject/229879
Bmelitensis_1_16M        Brucella melitensis bv. 1 str. 16M      http://www.ncbi.nlm.nih.gov/bioproject/200008
Bmelitensis_Abortus_2308 Brucella melitensis biovar Abortus 2308 http://www.ncbi.nlm.nih.gov/bioproject/16203
Bmelitensis_ATCC_23457   Brucella melitensis ATCC 23457          http://www.ncbi.nlm.nih.gov/bioproject/59241
Bmelitensis_M28          Brucella melitensis M28                 http://www.ncbi.nlm.nih.gov/bioproject/158857
Bmelitensis_M590         Brucella melitensis M5-90               http://www.ncbi.nlm.nih.gov/bioproject/158855
Bmelitensis_NI           Brucella melitensis NI                  http://www.ncbi.nlm.nih.gov/bioproject/158853
Bmicroti_CCM_4915        Brucella microti CCM 4915               http://www.ncbi.nlm.nih.gov/bioproject/59319
Bovis_ATCC_25840         Brucella ovis ATCC 25840                http://www.ncbi.nlm.nih.gov/bioproject/58113
Bpinnipedialis_B2_94     Brucella pinnipedialis B2/94            http://www.ncbi.nlm.nih.gov/bioproject/71133
Bsuis_1330               Brucella suis 1330                      http://www.ncbi.nlm.nih.gov/bioproject/159871
Bsuis_ATCC_23445         Brucella suis ATCC 23445                http://www.ncbi.nlm.nih.gov/bioproject/59015
Bsuis_VBI22              Brucella suis VBI22                     http://www.ncbi.nlm.nih.gov/bioproject/83617
======================== ======================================= =============================================


Bacillus Genomes
----------------

=============================== =============================================================================== =============================================
Name                            Description                                                                     URL
=============================== =============================================================================== =============================================
Banthracis_A0248                Bacillus anthracis str. A0248, complete genome                                  http://www.ncbi.nlm.nih.gov/nuccore/229599883
Banthracis_Ames                 Bacillus anthracis str. 'Ames Ancestor' chromosome, complete genome             http://www.ncbi.nlm.nih.gov/nuccore/50196905
Banthracis_Ames_Ancestor        Bacillus anthracis str. Ames chromosome, complete genome                        http://www.ncbi.nlm.nih.gov/nuccore/30260195
Banthracis_CDC_684              Bacillus anthracis str. CDC 684 chromosome, complete genome                     http://www.ncbi.nlm.nih.gov/nuccore/227812678
Banthracis_H9401                Bacillus anthracis str. H9401 chromosome, complete genome                       http://www.ncbi.nlm.nih.gov/nuccore/386733873
Banthracis_Sterne               Bacillus anthracis str. Sterne chromosome, complete genome                      http://www.ncbi.nlm.nih.gov/nuccore/49183039
Bcereus_03BB102                 Bacillus cereus 03BB102, complete genome                                        http://www.ncbi.nlm.nih.gov/nuccore/225862057
Bcereus_AH187                   Bacillus cereus AH187 chromosome, complete genome                               http://www.ncbi.nlm.nih.gov/nuccore/217957581
Bcereus_AH820                   Bacillus cereus AH820 chromosome, complete genome                               http://www.ncbi.nlm.nih.gov/nuccore/218901206
Bcereus_anthracis_CI            Bacillus cereus biovar anthracis str. CI chromosome, complete genome            http://www.ncbi.nlm.nih.gov/nuccore/301051741
Bcereus_ATCC_10987              Bacillus cereus ATCC 10987 chromosome, complete genome                          http://www.ncbi.nlm.nih.gov/nuccore/42779081
Bcereus_ATCC_14579              Bacillus cereus ATCC 14579, complete genome                                     http://www.ncbi.nlm.nih.gov/nuccore/30018278
Bcereus_B4264                   Bacillus cereus B4264 chromosome, complete genome                               http://www.ncbi.nlm.nih.gov/nuccore/218230750
Bcereus_E33L                    Bacillus cereus E33L chromosome, complete genome                                http://www.ncbi.nlm.nih.gov/nuccore/52140164
Bcereus_F837_76                 Bacillus cereus F837/76 chromosome, complete genome                             http://www.ncbi.nlm.nih.gov/nuccore/376264031
Bcereus_G9842                   Bacillus cereus G9842 chromosome, complete genome                               http://www.ncbi.nlm.nih.gov/nuccore/218895141
Bcereus_NC7401                  Bacillus cereus NC7401, complete genome                                         http://www.ncbi.nlm.nih.gov/nuccore/375282101
Bcereus_Q1                      Bacillus cereus Q1 chromosome, complete genome                                  http://www.ncbi.nlm.nih.gov/nuccore/222093774
Bthuringiensis_AlHakam          Bacillus thuringiensis str. Al Hakam chromosome, complete genome                http://www.ncbi.nlm.nih.gov/nuccore/118475778
Bthuringiensis_BMB171           Bacillus thuringiensis BMB171 chromosome, complete genome                       http://www.ncbi.nlm.nih.gov/nuccore/296500838
Bthuringiensis_Bt407            Bacillus thuringiensis Bt407 chromosome, complete genome                        http://www.ncbi.nlm.nih.gov/nuccore/409187965
Bthuringiensis_chinensis_CT43   Bacillus thuringiensis serovar chinensis CT-43 chromosome, complete genome      http://www.ncbi.nlm.nih.gov/nuccore/384184088
Bthuringiensis_finitimus_YBT020 Bacillus thuringiensis serovar finitimus YBT-020 chromosome, complete genome    http://www.ncbi.nlm.nih.gov/nuccore/384177910
Bthuringiensis_konkukian_9727   Bacillus thuringiensis serovar konkukian str. 97-27 chromosome, complete genome http://www.ncbi.nlm.nih.gov/nuccore/49476684
Bthuringiensis_MC28             Bacillus thuringiensis MC28 chromosome, complete genome                         http://www.ncbi.nlm.nih.gov/nuccore/407703236
=============================== =============================================================================== =============================================

.. _ebola-ref-list:

Ebola Reference Genomes
=======================

========= =================================================================================================== =============================================
Accession Description                                                                                         URL
========= =================================================================================================== =============================================
NC_014372 Tai Forest ebolavirus isolate Tai Forest virus H.sapiens-tc/CIV/1994/Pauleoula-CI, complete genome. http://www.ncbi.nlm.nih.gov/nuccore/NC_014372
FJ217162  Cote d'Ivoire ebolavirus, complete genome.                                                          http://www.ncbi.nlm.nih.gov/nuccore/FJ217162
FJ968794  Sudan ebolavirus strain Boniface, complete genome.                                                  http://www.ncbi.nlm.nih.gov/nuccore/FJ968794
NC_006432 Sudan ebolavirus isolate Sudan virus H.sapiens-tc/UGA/2000/Gulu-808892, complete genome.            http://www.ncbi.nlm.nih.gov/nuccore/NC_006432
KJ660348  Zaire ebolavirus isolate H.sapiens-wt/GIN/2014/Gueckedou-C05, complete genome.                      http://www.ncbi.nlm.nih.gov/nuccore/KJ660348
KJ660347  Zaire ebolavirus isolate H.sapiens-wt/GIN/2014/Gueckedou-C07, complete genome.                      http://www.ncbi.nlm.nih.gov/nuccore/KJ660347
KJ660346  Zaire ebolavirus isolate H.sapiens-wt/GIN/2014/Kissidougou-C15, complete genome.                    http://www.ncbi.nlm.nih.gov/nuccore/KJ660346
JN638998  Sudan ebolavirus - Nakisamata, complete genome.                                                     http://www.ncbi.nlm.nih.gov/nuccore/JN638998
AY354458  Zaire ebolavirus strain Zaire 1995, complete genome.                                                http://www.ncbi.nlm.nih.gov/nuccore/AY354458
AY729654  Sudan ebolavirus strain Gulu, complete genome.                                                      http://www.ncbi.nlm.nih.gov/nuccore/AY729654
EU338380  Sudan ebolavirus isolate EBOV-S-2004 from Sudan, complete genome.                                   http://www.ncbi.nlm.nih.gov/nuccore/EU338380
KM655246  Zaire ebolavirus isolate H.sapiens-tc/COD/1976/Yambuku-Ecran, complete genome.                      http://www.ncbi.nlm.nih.gov/nuccore/KM655246
KC242801  Zaire ebolavirus isolate EBOV/H.sapiens-tc/COD/1976/deRoover, complete genome.                      http://www.ncbi.nlm.nih.gov/nuccore/KC242801
KC242800  Zaire ebolavirus isolate EBOV/H.sapiens-tc/GAB/2002/Ilembe, complete genome.                        http://www.ncbi.nlm.nih.gov/nuccore/KC242800
KC242799  Zaire ebolavirus isolate EBOV/H.sapiens-tc/COD/1995/13709 Kikwit, complete genome.                  http://www.ncbi.nlm.nih.gov/nuccore/KC242799
KC242798  Zaire ebolavirus isolate EBOV/H.sapiens-tc/GAB/1996/1Ikot, complete genome.                         http://www.ncbi.nlm.nih.gov/nuccore/KC242798
KC242797  Zaire ebolavirus isolate EBOV/H.sapiens-tc/GAB/1996/1Oba, complete genome.                          http://www.ncbi.nlm.nih.gov/nuccore/KC242797
KC242796  Zaire ebolavirus isolate EBOV/H.sapiens-tc/COD/1995/13625 Kikwit, complete genome.                  http://www.ncbi.nlm.nih.gov/nuccore/KC242796
KC242795  Zaire ebolavirus isolate EBOV/H.sapiens-tc/GAB/1996/1Mbie, complete genome.                         http://www.ncbi.nlm.nih.gov/nuccore/KC242795
KC242794  Zaire ebolavirus isolate EBOV/H.sapiens-tc/GAB/1996/2Nza, complete genome.                          http://www.ncbi.nlm.nih.gov/nuccore/KC242794
========= =================================================================================================== =============================================
