.class public Lcom/wandoujia/entities/app/ApkLiteInfo;
.super Ljava/lang/Object;
.source "ApkLiteInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bytes:I

.field private compatible:I

.field private creation:J

.field private downloadUrl:Lcom/wandoujia/entities/app/DownloadUrl;

.field private incompatibleDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private paidType:Ljava/lang/String;

.field private securityStatus:Ljava/lang/String;

.field private superior:I

.field private verifeid:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->compatible:I

    return-void
.end method


# virtual methods
.method public getBytes()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->bytes:I

    return v0
.end method

.method public getCompatible()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->compatible:I

    return v0
.end method

.method public getCreation()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->creation:J

    return-wide v0
.end method

.method public getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->downloadUrl:Lcom/wandoujia/entities/app/DownloadUrl;

    return-object v0
.end method

.method public getIncompatibleDetail()Ljava/util/List;
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
    .line 60
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->incompatibleDetail:Ljava/util/List;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaidType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->paidType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->securityStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperior()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->superior:I

    return v0
.end method

.method public getVerifeid()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->verifeid:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkLiteInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method
