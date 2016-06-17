.class public Lcom/wandoujia/appmanager/model/LocalAppInfo;
.super Ljava/lang/Object;
.source "LocalAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cerStrMd5:Ljava/lang/String;

.field private fileMd5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->versionCode:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->title:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->cerStrMd5:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->fileMd5:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->versionCode:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->title:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->cerStrMd5:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->fileMd5:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->versionCode:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->title:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->cerStrMd5:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->fileMd5:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getCerStrMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->cerStrMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->fileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCerStrMd5(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->cerStrMd5:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->fileMd5:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->title:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/LocalAppInfo;->versionCode:Ljava/lang/String;

    .line 36
    return-void
.end method
