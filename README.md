# sm_120_env
Nvidia Blackwell (sm_120) Pytorch+CUDA Environment Setting

RTX 5090 Pytorch+CUDA 환경 설정 스크립트 (Ubuntu Linux, WSL)

# Get Started
1. Get repository contents without cloning .git

```bash
$ wget https://github.com/iuliet716/sm_120_env/archive/refs/heads/main.zip -O sm_120_env.zip
$ unzip sm_120_env.zip

# my_target_dir: Your Project Name
$ mv sm_120_env-main my_target_dir
$ rm sm_120_env.zip
```

2. Customize Setting in `env.sh` and pip requirements

3. Run and Test
```bash
$ source env.sh
$ python test.py
```


