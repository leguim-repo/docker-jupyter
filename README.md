# docker-jupyter

The objective of this docker is play/analyze logs, csv, xlsx, parquet files and other stuff related about data science, data managment and aws

datalake and private are folder ignored by git. In this folder you can save your personal datas or notebooks

## Scripts of use

### 00-build-jupyter.sh

Build a docker image of Jupyter. Check Dockerfile in order to customize your own image

### 10-run-jupyter.sh

Run Jupyter container

### 99-run-as-root-jupyter.sh

Run Jupyter container as root

###  clear-notebooks-outputs.sh

clear outputs of notebooks for a better git control. You should use before make a commit.  
Require nbconvert module of python.  

```code
pip install nbconvert
```

<https://nbconvert.readthedocs.io/en/latest/install.html>

## parquet-tools

Parquet tools are installed more information:  
https://pypi.org/project/parquet-tools/

## aws-cli v2

The aws-cli are installed too, to play with AWS.  
No AWS credentialas are configured. To use aws-cli first execute:  

```code
aws configure
```

Thanks Laura for idea.

---
<img src="https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png" witdh="109px" />
<!-- 
Soundtrack of project https://www.youtube.com/watch?v=JmHqSO4jZVk&list=RDJmHqSO4jZVk&index=1
-->
