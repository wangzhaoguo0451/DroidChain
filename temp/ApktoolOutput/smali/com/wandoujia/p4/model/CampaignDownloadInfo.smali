.class public Lcom/wandoujia/p4/model/CampaignDownloadInfo;
.super Ljava/lang/Object;
.source "CampaignDownloadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x258724b727c8c2cL


# instance fields
.field public contentType:Ljava/lang/String;

.field public currentBytes:J

.field public extras:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public identity:Ljava/lang/String;

.field public isVisible:Z

.field public speed:J

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public totalBytes:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/p4/model/CampaignDownloadInfo;
    .locals 4
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;

    invoke-direct {v0}, Lcom/wandoujia/p4/model/CampaignDownloadInfo;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->id:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->url:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->title:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    iput-wide v2, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->totalBytes:J

    .line 65
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->status:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->contentType:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->identity:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->iconUrl:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->filePath:Ljava/lang/String;

    .line 70
    iget-boolean v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    iput-boolean v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->isVisible:Z

    .line 71
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    iput-wide v2, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->currentBytes:J

    .line 72
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    iput-wide v2, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->speed:J

    .line 73
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/p4/model/CampaignDownloadInfo;->extras:Ljava/lang/String;

    .line 74
    return-object v0
.end method
