#!/bin/bash

aws iam create-policy --policy-name AmazonEKS_EFS_CSI_Driver_Policy --policy-document file://iam-policy-example.json

eksctl create iamserviceaccount \
    --cluster fast-cluster \
    --namespace kube-system \
    --name efs-csi-controller-sa \
    --attach-policy-arn arn:aws:iam::194453983284:policy/AmazonEKS_EFS_CSI_Driver_Policy \
    --approve \
    --region ap-northeast-2
