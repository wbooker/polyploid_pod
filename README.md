# Polyploid pseudo-overdominance

SLiM simulator for a single population to study polyploid pseudo-overdominance. Modified from scripts used in this study: https://doi.org/10.1086/733334. All sims were run using SLiM v 4.0.1 https://messerlab.org/slim/

For keyword parameters, the following are accepted:

| repro_model        |                                                                  |
|:-------------------|:----------------------------------------------------------------------------|
| __WF__          |  Wright-Fischer model                                       |
| __BH__               |  Beverton-Holt model         |

| inheritance         |                                                                  |
|:-------------------|:----------------------------------------------------------------------------|
| __auto__          |  autotetraploid                                       |
| __allo__               |  allotetraploid         |
| __diploid__                |  diploid    |

| dom_pattern         |  h_vector                                                                |
|:-------------------|:----------------------------------------------------------------------------|
| __additive__          |  beneficial: (0.0, 0.25, 0.5, 0.75, 1.0), deleterious: (0.0, 0.25, 0.5, 0.75, 1.0)                                      |
| __recessive__               |  beneficial: (0.0, 0.0, 0.0, 0.0, 1.0), deleterious: beneficial: (0.0, 0.0, 0.0, 0.0, 1.0)|
| __bd_dr__                |  beneficial: (0.0, 1.0, 1.0, 1.0, 1.0), deleterious (0.0, 0.0, 0.0, 0.0, 1.0)    |
| __br_dd__          |  beneficial: (0.0, 0.0, 0.0, 0.0, 1.0), deleterious (0.0, 1.0, 1.0, 1.0, 1.0)                                      |
| __duplex__               |  beneficial: (0.0, 1.0, 1.0, 1.0, 1.0), deleterious (0.0, 0.0, 0.0, 1.0, 1.0)         |
| __DFE__               |  beneficial: (0.0, 1.0, 1.0, 1.0, 1.0), deleterious (estimated h-s relationship)         |


| s_dist         |                                                                  |
|:-------------------|:----------------------------------------------------------------------------|
| __fixed__          |  both beneficial and deleterious set to b_s and d_s, respectively                                       |
| __exp__               |  deleterious drawn from an exponential distribution with mean d_s, beneficial fixed at b_s         |
| __gamma__                |  deleterious drawn from a gamma distribution at mean -0.001472, beneficial fixed at b_s   |

Additional numeric parameters:

|          |                                                                  |
|:-------------------|:----------------------------------------------------------------------------|
| __g_size__          |  genome size (+1)                                      |
| __K__               |  Population size (N)         |
| __r__                |  growth rate (BH model only)   |
| __u_del__          | per-base deleterious mutation rate                                      |
| __u_ben__               |  per-base beneficial mutation ratge         |
| __d_s__                |  deleterious selection coefficient   |
| __b_s__          | beneficial selection coefficient                                  |
| __rho__               |  per-base recombination rate       |
| __self_rate__                |  selfing rate  |


To run the following works as an example from the command line:
```
slim -d "out_dir='output'" -d g_size=999999 -d K=100 -d "r=NA" -d u_del=1e-8 -d u_ben=0 -d b_s=0 -d d_s=-0.005 -d rho=1e-8 -d "inheritance='auto'" -d "dom_pattern='recessive'" -d "repro_model='WF'" -d self_rate=0 polyploid_single_population.slim 
```

