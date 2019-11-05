default: all
RDIR = .

all: example_simulation.csv example_costs.csv example_health_utility.csv

## Update example simulations
example_simulation.csv: example_simulation.R
			Rscript example_simulation.R
			
## Update example costs			
example_costs.csv: example_costs.R
			Rscript example_costs.R
			
## Update example health ultities			
example_health_utility.csv: example_health_utility.R
			Rscript example_health_utility.R