FAQs and Troubleshooting
########################

FAQs
====

* Can I speed up the process?

    You may increase the number of CPUs to be used from the "additional options" of the input section. The default and minimum value is one-eighth of total number of server CPUs.

* There is no enough disk space for storing projects data. How do I do?

    There is an archive project action which will move the whole project directory to the directory path configured in the $EDGE_HOME/sys.properties. 
    We also recommend a symbolic link for the $EDGE_HOME/edge_ui/EDGE_input directory which points to the location where the user’s (or sequencing center’s) raw data are stored, obviating unnecessary data transfer via web protocol and saving local storage.

* How to decide various QC parameters?

    The default parameters should be sufficient for most cases. However, if you have very depth coverage of the sequencing data, you may increase the trim quality level and average quality cutoff to only use high quality data.

* How to set K-mer size for IDBA_UD assembly?

    By default, it starts from kmer=31 and iterative step by adding 20 to maximum kmer=121. Larger K-mers would have higher rate of uniqueness in the genome and would make the graph simpler, but it requires deep sequencing depth and longer read length to guarantee the overlap at any genomic location and it is much more sensitive to sequencing errors and heterozygosity.
    Professor Titus Brown has `a good blog on general k-mer size discussion <http://ivory.idyll.org/blog/the-k-parameter.html>`_. 
    
* How many reference genomes for Reference-Based Analysis and Phylogenetic Analysis can be used from the EDGE GUI?

    The default maximum is 20 and there is a minimum 3 genomes criteria for the Phylogenetic Analysis. But it can be configured when installing EDGE.


Troubleshooting
===============

* In the GUI, if you are trying to enter information into a specific field and it is grayed out or won’t let you, try refreshing the page by clicking the icon in the right top of the browser window.
* Process.log and error.log files may help on the troubleshooting.

Coverage Issues
---------------
* Average Fold Coverage reported in the HTML output and by the output tables generated in {output directory}/AssemblyBasedAnalysis/ReadsMappingToContigs/ are calculated with mpileup using the default options for metagenomes.  These settings discount reads that are unpaired within a contig or with an insert size out of the expected bounds.  This will result in an underreporting of the average fold coverage based on the generated BAM file, but one that the team feels is more accurate given the intended use of this environment.

Data Migration
--------------
* The preferred method of transferring data to the EDGE appliance is via SFTP.  Using an SFTP client such as FileZilla, connect to port 22 using your system's username and password.
* In the case of very large transfers, you may wish to use a USB hard drive or thumb drive.  
* If the data is being transferred from another LINUX machine, the server will recognize partitions that use the FAT, ext2, ext3, or ext4 filesystems.
* If the data is being transferred from a Windows machine, the partition may use the NTFS filesystem.  If this is the case, the drive will not be recognized until you follow these instructions:
	* Open the command line interface by clicking the Applications menu in the top left corner (or use SSH to connect to the system).
	* Enter the command: ''sudo yum install ntfs-3g ntfs-3g-devel -y''
	* Enter your password if required.
* After a reboot, you should be able to connect your Windows hard drive to the system, and it will mount like a normal disk.



Discussions / Bugs Reporting
============================

* We have created a mailing list for EDGE users. If you would like to recieve notifications about the updates and join the discussion, please join the mailing list by becoming the member of edge-users groups.

    `EDGE user's google group <https://groups.google.com/d/forum/edge-users>`_

* We appreciate any feedback or concerns you may have about EDGE. If you encounter any bugs, you can report them to our GitHub issue tracker.

    `Github issue tracker <https://github.com/LANL-Bioinformatics/EDGE/issues>`_
    
* Any other questions? You are welcome to :doc:`contact`
