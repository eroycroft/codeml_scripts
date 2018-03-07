      seqfile = example.phy      * sequence data filename
     treefile = example.tree    * tree structure file name
      outfile = example.out      * main result file name

        noisy = 3  * 0,1,2,3,9: how much rubbish on the screen
      verbose = 1  * 0: concise; 1: detailed, 2: too much
      runmode = 0  * 0: user tree;  1: semi-automatic;  2: automatic
                   * 3: StepwiseAddition; (4,5):PerturbationNNI; -2: pairwise

      seqtype = 1  * 1:codons; 2:AAs; 3:codons-->AAs
    CodonFreq = 2  * 0:1/61 each, 1:F1X4, 2:F3X4, 3:codon table

        ndata = 1
        clock = 0  * 0:no clock, 1:clock; 2:local clock; 3:CombinedAnalysis

        model = 2
                   * models for codons:
                   * 0:one, 1:b, 2:2 or more dN/dS ratios for branches
                   * models for AAs or codon-translated AAs:
                   * 0:poisson, 1:proportional, 2:Empirical, 3:Empirical+F
                   * 6:FromCodon, 7:AAClasses, 8:REVaa_0, 9:REVaa(nr=189)

      NSsites = 2  * 0:one w;1:neutral;2:selection; 3:discrete;4:freqs;
                   * 5:gamma;6:2gamma;7:beta;8:beta&w;9:beta&gamma;
                   * 10:beta&gamma+1; 11:beta&normal>1; 12:0&2normal>1;
                   * 13:3normal>0

        icode = 0  * 0:universal code; 1:mammalian mt; 2-10:see below

                   * codon: 0:rates, 1:separate; 2:diff pi, 3:diff kapa, 4:all diff
                   * AA: 0:rates, 1:separate

    fix_omega = 0  * 1: omega or omega_1 fixed, 0: estimate 
        omega = 1  * initial or fixed omega, for codons or codon-based AAs

    cleandata = 1  * remove sites with ambiguity data (1:yes, 0:no)?
