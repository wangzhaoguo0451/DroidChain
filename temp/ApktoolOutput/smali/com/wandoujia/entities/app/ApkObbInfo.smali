.class public Lcom/wandoujia/entities/app/ApkObbInfo;
.super Ljava/lang/Object;
.source "ApkObbInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_DPK:Ljava/lang/String; = "DPK"

.field public static final TYPE_GPK:Ljava/lang/String; = "GPK"


# instance fields
.field private apkMd5:Ljava/lang/String;

.field private cpuType:I

.field private description:Ljava/lang/String;

.field private downloadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/DownloadUrl;",
            ">;"
        }
    .end annotation
.end field

.field private dstPath:Ljava/lang/String;

.field private humanSize:Ljava/lang/String;

.field matched:Z

.field private md5:Ljava/lang/String;

.field private pf5:Ljava/lang/String;

.field private size:J

.field private srcPath:Ljava/lang/String;

.field private supportedCpuTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->apkMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->cpuType:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/DownloadUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->downloadUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDstPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->dstPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHumanSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->humanSize:Ljava/lang/String;

    return-object v0
.end method

.method public getMatched()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->matched:Z

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPf5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->pf5:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->size:J

    return-wide v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->srcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCpuTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->supportedCpuTypes:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkObbInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method
