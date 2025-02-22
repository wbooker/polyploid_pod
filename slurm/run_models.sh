INHERITANCE=("diploid" "auto")
DOMINANCE=("recessive")
REPRO=("WF")
K=(200)
b_s=(0)
rho=(1e-07 1e-08 1e-09 1e-10 5e-08 5e-09)
d_s=(-0.02 -0.01 -0.001 -0.005 -0.0005)
d_mu=(1e-07 1e-08 1e-09 5e-09 5e-08)
self=(0)
for i in "${INHERITANCE[@]}"
do
    for d in "${DOMINANCE[@]}"
    do
        for l in "${REPRO[@]}"
        do
            for k in "${K[@]}"
            do
                for r in "${rho[@]}"
                do
                    for b in "${b_s[@]}"
                    do
                        for s in "${self[@]}"
                        do
                            for m in "${d_mu[@]}"
                            do
                                for y in "${d_s[@]}"
                                do
                                    for j in {1..13}
                                    do
                                    sbatch slurm/run_slim.sh $i $d $l $k $m $y $b $r $s polyploid_single_population.slim
                                    done
                                done
                            done
                        done
                    done
                done
            done
       done
   done
done