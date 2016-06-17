.class public Lcom/wandoujia/clean/model/MemoryGarbage;
.super Ljava/lang/Object;
.source "MemoryGarbage.java"

# interfaces
.implements Lcom/wandoujia/clean/model/Garbage;


# instance fields
.field private final alertInfo:Ljava/lang/String;

.field private final appName:Ljava/lang/String;

.field private final iconUrl:Lcom/wandoujia/image/ImageUri;

.field private final packageName:Ljava/lang/String;

.field private final size:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    iput-object p1, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->packageName:Ljava/lang/String;

    .line 27
    new-instance v1, Lcom/wandoujia/image/ImageUri;

    iget-object v2, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/wandoujia/image/ImageUri$ImageUriType;->APP_ICON:Lcom/wandoujia/image/ImageUri$ImageUriType;

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/image/ImageUri;-><init>(Ljava/lang/String;Lcom/wandoujia/image/ImageUri$ImageUriType;)V

    iput-object v1, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->iconUrl:Lcom/wandoujia/image/ImageUri;

    .line 28
    iput-wide p2, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->size:J

    .line 29
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->appName:Ljava/lang/String;

    .line 42
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->title:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->alertInfo:Ljava/lang/String;

    .line 47
    return-void

    .line 33
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->appName:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_1
    iput-object p1, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->appName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 110
    instance-of v1, p1, Lcom/wandoujia/clean/model/MemoryGarbage;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    check-cast p1, Lcom/wandoujia/clean/model/MemoryGarbage;

    .line 114
    invoke-virtual {p1}, Lcom/wandoujia/clean/model/MemoryGarbage;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/wandoujia/clean/model/MemoryGarbage;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAlertInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->alertInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeId()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x57

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGarbageSize()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->size:J

    return-wide v0
.end method

.method public getGarbageType()Lcom/wandoujia/clean/model/GarbageType;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/wandoujia/clean/model/GarbageType;->MEMORY:Lcom/wandoujia/clean/model/GarbageType;

    return-object v0
.end method

.method public getIconURI()Lcom/wandoujia/image/ImageUri;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->iconUrl:Lcom/wandoujia/image/ImageUri;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/clean/model/MemoryGarbage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/wandoujia/clean/model/MemoryGarbage;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public showAction()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method
