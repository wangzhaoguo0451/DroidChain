.class public Lcom/wandoujia/appmanager/model/LocalAppsInfo;
.super Ljava/lang/Object;
.source "LocalAppsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cpuFamily:Ljava/lang/String;

.field private cpuFeatures:Ljava/lang/String;

.field private sdkVersion:I

.field private sysApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private userApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpuFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->cpuFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuFeatures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->cpuFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->sdkVersion:I

    return v0
.end method

.method public getSysApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->sysApps:Ljava/util/List;

    return-object v0
.end method

.method public getUserApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->userApps:Ljava/util/List;

    return-object v0
.end method

.method public setCpuFamily(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->cpuFamily:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCpuFeatures(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->cpuFeatures:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->sdkVersion:I

    .line 36
    return-void
.end method

.method public setSysApps(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->sysApps:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setUserApps(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/UpgradeLocalAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppsInfo;->userApps:Ljava/util/List;

    .line 20
    return-void
.end method
