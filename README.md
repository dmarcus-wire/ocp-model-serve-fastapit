# ocp-model-serve-fastapit
goal: deploying a machine learning model on openshift

Toolbox:
1. RH OpenShift
1. Open Data Hub (JupyterLab)
1. [Uvicorn](https://www.uvicorn.org/settings/) Uvicorn is an ASGI web server implementation for Python
1. [Source-to-image](https://github.com/openshift/source-to-image) a toolkit and workflow for building reproducible container images from source code
1. [FastAPI](https://fastapi.tiangolo.com/) (high-performance), web framework for building APIs with Python 3.6+ based on standard Python 
1. GitHub - source code repository

Assumption:
1. Running OpenShift Cluster

Procedure:
1. Workspace
    1. Create a Project
    1. Deploy Open Data Hub minimal using the `kdef.yaml`
1. Development
    1. Launch Jupyter
    1. git clone or fork
    1. Run setup script in the terminal `./setup.sh`
    1. Write ML code
1. Deployment
    1. Developer Perspective > +Add > Import from Git
    1. Terminal with oc new-app

Resources:
1. https://frank-ceballos.medium.com/deploying-your-first-fastapi-application-in-openshift-857cee7277f9
1. https://github.com/frank-ceballos/openshift-fastapi
1. https://github.com/https-deeplearning-ai/machine-learning-engineering-for-production-public/blob/main/course1/week1-ungraded-lab/server.ipynb