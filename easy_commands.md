
# This notebook is dedicated to document all the handy commands

## 1. Docker related

*   <font size= '4'> **Build image with DockerFile [official tutorial](https://docs.docker.com/get-started/part2/)** </font> 
    1. Download the image file from docker hub e.g. [docker for pytorch](https://hub.docker.com/r/pytorch/pytorch/tags)  
    2. Have Dockerfile ready to include all the packages you want to add to the downloaded image [DockerFile](https://github.com/SuhanG17/Commands_documentation/blob/master/example_file/Dockerfile)  
        p.s. `DockerFile` can't have other file name, thus ensure that you only have one in the current folder.
    3. Command to build image: `docker build --tag=pytorch/pytorch:1.2-cuda10.0-cudnn7-devel-[Modify version num here]  . `  
        p.s. The period at the end is to refer to the current directory, DO NOT forget the "[space]."
    4. Commands you might need during the process:
        -  remove unwanted image: ` docker images rm -f [image ID] `
        -  stop container: `docker stop [docker id]`
            * if the container has been set to `docker run --rm -it` in .sh file at creation, further removal will not be needed due to '--rm'
        -  remove container: `docker container rm [docker id]`
            * you won't be able to remove running container
        -  TroubleShooting:
            * non-zero exit code:  `pip install requests -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com`
                * it means that the current mirroring may not work properly right now; `--trusted-host` has to be set to circmspect trust error
       
       
*   <font size= '4'> **Initiate container from image** </font>
    1. A bash file to set parameters, e.g. [docker_start_dldevelop_tf-1.13.1-gpu-py3_1.1.2.sh](https://github.com/SuhanG17/Commands_documentation/blob/master/example_file/docker_start_dldevelop_tf-1.13.1-gpu-py3_1.1.2.sh) 
    2. Commnand to initiate container:
         `./docker_start_dldevelop_tf-1.13.1-gpu-py3_1.1.2.sh guosh docker_guosh 0,1 /develenv/guosh /root/guosh 12203 16603 18803`  
         `./docker_start_dldevelop_tf-1.13.1-gpu-py3_1.1.2.sh guosh_pytorch docker_guosh_pytorch 0,1 /develenv/guosh_pytorch/docker_pytorch /root/guosh/guosh_pytorch 12207 16607 18807`
  
  
*   <font size= '4'> **Enter Docker** </font>  
    `docker exec -it docker_guosh bash`
      
      
*   <font size= '4'> **Exit Docker** </font>  
    `Crtl + D`  
    p.s. if you have `docker run --rm -it` and you run `Crtl +D` after initiation of docker, you deleted you docker. Under this scenario, if you need to exit the contrainer, try `Ctrl + P  + Q`
      
      
*  <font size= '4'> **Check on running containers** </font>  
    `docker ps`

        


## 2. Shell commands

*   <font size= '4'> **Progress Management** </font> 
    1. GPU Usage: `nvidia-smi`
    2. RAM Usage: `df -h`
    3. If [application] is running: `ps -ef | grep [application]` *e.g.* `ps -ef | grep jupyter`
    4. Terminate running process: `kill -9 [Process ID]`
    5. Size of files/dirs: `ls -hs`
    
    
*   <font size= '4'> **File/Dir Check** </font> 
    1. Size of a particular dir: `du -sh [dir name]` *e.g.* `du -sh checkpoint01/`
    2. List the first four items: `ls -U | head -4`
    3. List number of files in current dir: `ls -1 | wc -l`
    4. List number of file in any dir: `find /var/log/ -type f -print | wc -l` *e.g.* `find ./cworkclct_gather_part02/ -type f -print | wc -l`
    
    
*   <font size= '4'> **File Management** </font> 
    1. Merge files in two folders:  `rsync -av [source dir] [destination dir]`*e.g.* `rsync -av ./cworkclct_gather_part02/ ./cworkclct_gather_part03/`
    2. Copy files across servers: *e.g.*
        *  Want to move files stored in another sever `192.168.6.202` at dir `/data01/tomcat-8.5/webapps/export_files`
        *  Current server `192.168.2.152` destination dir `/develenv/guosh/CellDet_yolo2/input_pipeline/zip_label`
        *  File names all includes key word `正式_宫颈图像标注`
        *  Do `scp 正式_宫颈图像标注* root@192.168.2.152:/develenv/guosh/CellDet_yolo2/input_pipeline/zip_label`


*   <font size= '4'> **Package Mangement** </font> 
    1. Mirroring: `pip install -i https://pypi.tuna.tsinghua.edu.cn/simple some-package` or `pip install --trusted-host mirrors.aliyun.com`


*   <font size= '4'> **TensorFlow** </font> 
    1. Use Tensorboard: `ttensorboard --host=[address] --logdir=[log dir]` *e.g* `tensorboard --host=192.168.2.180 --logdir=blood_3`  
      p.s. if docker: the host address 0.0.0.0 will automaticaly point to the right position  
          1. tensorboard --host=0.0.0.0 --logdir=[log_dir]
          2. when you need to view in web page, input the actual address with correct port num: *e.g.* <http://192.168.2.152:16603>
          
          
        
*   <font size= '4'> **Jupyter Notebook** </font> 
    1. Enter Jupyter
       * First run log: `./run_jupyter.log`
           * Make sure 'jupyter_log.log' exits and chmod to 777: 
           * log content: `nohup jupyter notebook --allow-root --ip=0.0.0.0  > jupyter_log.log 2>&1 &`
       * Then grep address with tocken: `tail jupyter_log.log`
       * Toubleshooting:
           * In container/docker: need to change ip to the `-ip=0.0.0.0` instead of the actual ip address in ./run_jupyter.log
    2. 3D Construction
       * python package: itwidgets

*   <font size= '4'> **XML** </font> 
    1. Forbidden String: `&middot;`
    
    
*   <font size= '4'> **Darknet/YOLO** </font> 
    1. Build model from Dartknet weights: `python ./yad2k.py yolov2.cfg yolov2.weights model_data/yolov2.h5`

## 3. Miscellaneous

*   <font size= '4'> **Medical Image Processing** </font> 
    0. Popular Packages:
        * itkwidgets
        * itk-io
        * ipywidgets
        * nibabel
        * SimpleITK
        * pydicom


    1. Package: nibabel (Load in nii.gz data)
```Python
import nibabel as nib
nii = nib.load([file_path]+[file_name])
img = nii.get_data()
```


```python

```
