.class public Lcom/wandoujia/entities/app/ApkDetailInfo;
.super Ljava/lang/Object;
.source "ApkDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40e9fefc2d498126L


# instance fields
.field private adsType:Ljava/lang/String;

.field private beta:Z

.field private bytes:I

.field private compatible:I

.field private creation:Ljava/lang/Long;

.field private dangerousPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private paidType:Ljava/lang/String;

.field private permissionGroups:Ljava/lang/String;

.field private permissionLevel:Ljava/lang/String;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resolution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private securityDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/SecurityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private securityStatus:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private superior:I

.field private verified:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->compatible:I

    return-void
.end method


# virtual methods
.method public getAdsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->adsType:Ljava/lang/String;

    return-object v0
.end method

.method public getBytes()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->bytes:I

    return v0
.end method

.method public getCompatible()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->compatible:I

    return v0
.end method

.method public getCreation()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->creation:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 112
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->creation:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getDangerousPermissions()Ljava/util/List;
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
    .line 59
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->dangerousPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadUrl()Lcom/wandoujia/entities/app/DownloadUrl;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->downloadUrl:Lcom/wandoujia/entities/app/DownloadUrl;

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
    .line 43
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->incompatibleDetail:Ljava/util/List;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPaidType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->paidType:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroups()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->permissionGroups:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->permissionLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
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
    .line 47
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getResolution()Ljava/util/List;
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
    .line 103
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->resolution:Ljava/util/List;

    return-object v0
.end method

.method public getSecurityDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/SecurityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->securityDetail:Ljava/util/List;

    return-object v0
.end method

.method public getSecurityStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->securityStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperior()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->superior:I

    return v0
.end method

.method public getVerified()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->verified:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isBeta()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->beta:Z

    return v0
.end method

.method public setPermissionGroups(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wandoujia/entities/app/ApkDetailInfo;->permissionGroups:Ljava/lang/String;

    .line 122
    return-void
.end method
