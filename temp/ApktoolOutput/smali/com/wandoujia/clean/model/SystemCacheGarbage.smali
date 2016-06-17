.class public Lcom/wandoujia/clean/model/SystemCacheGarbage;
.super Ljava/lang/Object;
.source "SystemCacheGarbage.java"

# interfaces
.implements Lcom/wandoujia/clean/model/Garbage;


# static fields
.field private static final serialVersionUID:J = 0x276380dc5ae7ded6L


# instance fields
.field private alertInfo:Ljava/lang/String;

.field private final appInfo:Lcom/wandoujia/appmanager/LocalAppInfo;

.field private description:Ljava/lang/String;

.field private final filePath:Ljava/lang/String;

.field private id:J

.field private imageUri:Lcom/wandoujia/image/ImageUri;

.field private final size:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wandoujia/appmanager/LocalAppInfo;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->appInfo:Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 28
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/clean/model/SystemCacheGarbage;->getRelativeExternalCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->filePath:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->size:J

    .line 37
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->id:J

    .line 38
    new-instance v0, Lcom/wandoujia/image/ImageUri;

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/image/ImageUri$ImageUriType;->APP_ICON:Lcom/wandoujia/image/ImageUri$ImageUriType;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/image/ImageUri;-><init>(Ljava/lang/String;Lcom/wandoujia/image/ImageUri$ImageUriType;)V

    iput-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->imageUri:Lcom/wandoujia/image/ImageUri;

    .line 39
    return-void
.end method

.method private static getRelativeExternalCacheDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 119
    instance-of v1, p1, Lcom/wandoujia/clean/model/SystemCacheGarbage;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    check-cast p1, Lcom/wandoujia/clean/model/SystemCacheGarbage;

    .line 123
    invoke-virtual {p1}, Lcom/wandoujia/clean/model/SystemCacheGarbage;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/wandoujia/clean/model/SystemCacheGarbage;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAlertInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->alertInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInfo()Lcom/wandoujia/appmanager/LocalAppInfo;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->appInfo:Lcom/wandoujia/appmanager/LocalAppInfo;

    return-object v0
.end method

.method public getContentTypeId()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGarbageSize()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->size:J

    return-wide v0
.end method

.method public getGarbageType()Lcom/wandoujia/clean/model/GarbageType;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/wandoujia/clean/model/GarbageType;->SYSTEM_CACHE:Lcom/wandoujia/clean/model/GarbageType;

    return-object v0
.end method

.method public getIconURI()Lcom/wandoujia/image/ImageUri;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->imageUri:Lcom/wandoujia/image/ImageUri;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->id:J

    return-wide v0
.end method

.method public getRelativeFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/wandoujia/clean/model/SystemCacheGarbage;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public setGarbageBean(Lcom/wandoujia/clean/db/model/GarbageBean;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget v0, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->id:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->id:J

    .line 43
    iget-object v0, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->title:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->alertInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->alertInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->alertInfo:Ljava/lang/String;

    .line 49
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/clean/model/SystemCacheGarbage;->description:Ljava/lang/String;

    .line 52
    :cond_2
    return-void
.end method

.method public showAction()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
