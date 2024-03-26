#!/bin/bash

# 创建目录结构
mkdir -p pretrained_models/champ
mkdir -p pretrained_models/image_encoder
mkdir -p pretrained_models/sd-vae-ft-mse
mkdir -p pretrained_models/stable-diffusion-v1-5/feature_extractor
mkdir -p pretrained_models/stable-diffusion-v1-5/unet

# 下载 champ 模型文件
wget -c https://huggingface.co/bdsqlsz/champ/resolve/main/denoising_unet.pth -O pretrained_models/champ/denoising_unet.pth
wget -c https://huggingface.co/bdsqlsz/champ/resolve/main/guidance_encoder_depth.pth -O pretrained_models/champ/guidance_encoder_depth.pth
wget -c https://huggingface.co/bdsqlsz/champ/resolve/main/guidance_encoder_dwpose.pth -O pretrained_models/champ/guidance_encoder_dwpose.pth
wget -c https://huggingface.co/bdsqlsz/champ/resolve/main/guidance_encoder_normal.pth -O pretrained_models/champ/guidance_encoder_normal.pth
wget -c https://huggingface.co/bdsqlsz/champ/resolve/main/guidance_encoder_semantic_map.pth -O pretrained_models/champ/guidance_encoder_semantic_map.pth
wget -c https://huggingface.co/bdsqlsz/champ/resolve/main/reference_unet.pth -O pretrained_models/champ/reference_unet.pth
wget -c https://huggingface.co/bdsqlsz/champ/resolve/main/motion_module.pth -O pretrained_models/champ/motion_module.pth

# 下载 image_encoder 模型文件
wget -c https://huggingface.co/lambdalabs/sd-image-variations-diffusers/resolve/main/image_encoder/config.json -O pretrained_models/image_encoder/config.json
wget -c https://huggingface.co/lambdalabs/sd-image-variations-diffusers/resolve/main/image_encoder/pytorch_model.bin -O pretrained_models/image_encoder/pytorch_model.bin

# 下载 sd-vae-ft-mse 模型文件
wget -c https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/config.json -O pretrained_models/sd-vae-ft-mse/config.json
wget -c https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/diffusion_pytorch_model.bin -O pretrained_models/sd-vae-ft-mse/diffusion_pytorch_model.bin
wget -c https://huggingface.co/stabilityai/sd-vae-ft-mse/resolve/main/diffusion_pytorch_model.safetensors -O pretrained_models/sd-vae-ft-mse/diffusion_pytorch_model.safetensors

# 下载 stable-diffusion-v1-5 模型文件
wget -c https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/feature_extractor/preprocessor_config.json -O pretrained_models/stable-diffusion-v1-5/feature_extractor/preprocessor_config.json
wget -c https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/model_index.json -O pretrained_models/stable-diffusion-v1-5/model_index.json
wget -c https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/unet/config.json -O pretrained_models/stable-diffusion-v1-5/unet/config.json
wget -c https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/unet/diffusion_pytorch_model.bin -O pretrained_models/stable-diffusion-v1-5/unet/diffusion_pytorch_model.bin
wget -c https://huggingface.co/runwayml/stable-diffusion-v1-5/raw/main/v1-inference.yaml -O pretrained_models/stable-diffusion-v1-5/v1-inference.yaml
