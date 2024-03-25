#!/bin/bash

# 创建pretrained_models文件夹
mkdir -p pretrained_models

# 下载stable-diffusion-v1-5模型
mkdir -p pretrained_models/stable-diffusion-v1-5
wget -O pretrained_models/stable-diffusion-v1-5/model_index.json https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/model_index.json
wget -O pretrained_models/stable-diffusion-v1-5/v1-inference.yaml https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-inference.yaml

mkdir -p pretrained_models/stable-diffusion-v1-5/feature_extractor
wget -O pretrained_models/stable-diffusion-v1-5/feature_extractor/preprocessor_config.json https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/feature_extractor/preprocessor_config.json

mkdir -p pretrained_models/stable-diffusion-v1-5/unet
wget -O pretrained_models/stable-diffusion-v1-5/unet/config.json https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/unet/config.json
wget -O pretrained_models/stable-diffusion-v1-5/unet/diffusion_pytorch_model.bin https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/unet/diffusion_pytorch_model.bin

# 下载sd-vae-ft-mse模型
mkdir -p pretrained_models/sd-vae-ft-mse
wget -O pretrained_models/sd-vae-ft-mse/config.json https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/config.json
wget -O pretrained_models/sd-vae-ft-mse/diffusion_pytorch_model.bin https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/diffusion_pytorch_model.bin
wget -O pretrained_models/sd-vae-ft-mse/diffusion_pytorch_model.safetensors https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/diffusion_pytorch_model.safetensors

# 下载image_encoder模型
mkdir -p pretrained_models/image_encoder
wget -O pretrained_models/image_encoder/config.json https://huggingface.co/lambdalabs/sd-image-variations-diffusers/resolve/main/image_encoder/config.json
wget -O pretrained_models/image_encoder/pytorch_model.bin https://huggingface.co/lambdalabs/sd-image-variations-diffusers/resolve/main/image_encoder/pytorch_model.bin

# 下载champ模型
mkdir -p pretrained_models/champ
wget -O pretrained_models/champ/denoising_unet.pth https://drive.google.com/uc?id=1l2HEY7h5-qyVjFDSLiutkDLDTLsv9j1F&export=download
wget -O pretrained_models/champ/guidance_encoder_depth.pth https://drive.google.com/uc?id=1o7_cTD6B3CJ_-NMWsIhcMUc9-wWXpSlQ&export=download
wget -O pretrained_models/champ/guidance_encoder_dwpose.pth https://drive.google.com/uc?id=1u6KGcyJc5YCNNICsAzPm1eOO5Pc681c1&export=download
wget -O pretrained_models/champ/guidance_encoder_normal.pth https://drive.google.com/uc?id=1BoKX5_b_cr2CBkLedmUTGO12MYvUD_2_&export=download
wget -O pretrained_models/champ/guidance_encoder_semantic_map.pth https://drive.google.com/uc?id=14Gw_vVzpPNLqEJ57_hLdjHvUbslhgNki&export=download
wget -O pretrained_models/champ/reference_unet.pth https://drive.google.com/uc?id=1Uha-TijT5IBfqfb0nJt582DH1S7Lbz9y&export=download
wget -O pretrained_models/champ/motion_module.pth https://drive.google.com/uc?id=1QV8lmH_tBMk77fHnrUYRqo8QEt5f1OaX&export=download
