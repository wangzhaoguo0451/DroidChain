.class public Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;
.super Ljava/lang/Exception;
.source "StorageUtil.java"


# static fields
.field private static final serialVersionUID:J = -0x6150f8c428e94043L


# instance fields
.field mMessage:Ljava/lang/String;

.field mStatus:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;->mStatus:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 296
    iput-object p2, p0, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;->mMessage:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 300
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-direct {p0, v0, p1}, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;Ljava/lang/String;)V

    .line 301
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;->mStatus:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    return-object v0
.end method
