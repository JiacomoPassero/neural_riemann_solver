# Create and run docker container 
The container starts from an ubuntu image and install the project dependecies for the adam project.

To compile the docker image run:

**docker build -t neural-riemann .**

To run an interactive container (changes inside the container acts also on the host project and vice versa) run the following line:

**docker run -it --rm -v .:/usr/src/NEURALL_RIEMANN_SOLVER neural-riemann**

**/usr/src/NEURALL_RIEMANN_SOLVER :** The working directory of the project, to match the one specified in the dockerfile. If you don't care to have an interactive project omit this part. You can switch the "." (current directory alias in windows) with other command like `pwd` for other systems or just or map the volume to a directory of yout choice.

# Attatch container to vscode
Vs requires the "Dev Containers" estensions or an equivalent one.
Start the container with "docker-run" command and then attach a new window (or the current one) to it trough VSCODE container options (right click).
The updates to fule inside the container will be reflected on the host.

**NOTA:** Not sure how container's git interact with the repositorty. Until someone clarify that it's better to commit from the host machine.

# TODO
Il training del modello non ha salvato nessun insieme di pesi, anche se aggiorna la checksum completato il training, forse nono salvati altrove nel container o forse c'è un qualche tipo di errore.
Nel comando indicato nel README de progetto per eseguire una batteria di test su più modelli è presente il parametro --basedir che in train-models è assente, forse la differenza sta li.