.class public Lcom/wandoujia/launcher_base/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

.field public final e:Z

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

.field public final k:Ljava/lang/String;

.field public final l:I

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/wandoujia/launcher_base/download/DownloadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->m:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lees;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-boolean v0, p1, Lees;->f:Z

    iput-boolean v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->e:Z

    .line 71
    iget-object v0, p1, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->d:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    .line 73
    iget-object v0, p1, Lees;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->g:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lees;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->c:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lees;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->b:Ljava/lang/String;

    .line 79
    iget-wide v0, p1, Lees;->g:J

    iput-wide v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->f:J

    .line 80
    iget-object v0, p1, Lees;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->i:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lees;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->h:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lees;->k:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->j:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

    .line 86
    iget-object v0, p1, Lees;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->k:Ljava/lang/String;

    .line 87
    iget v0, p1, Lees;->m:I

    iput v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->l:I

    .line 88
    iget-object v0, p1, Lees;->a:Ljava/lang/String;

    iget-object v1, p1, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v1, v2, :cond_0

    const-string v1, "wandoujia.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "udid"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    invoke-static {}, Legx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vc"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vn"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wandoujia/launcher_base/download/DownloadRequest;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->a:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lees;->d:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->n:Ljava/util/Map;

    .line 90
    iget-object v0, p1, Lees;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lees;->d:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 96
    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Lees;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/wandoujia/launcher_base/download/DownloadRequest;-><init>(Lees;)V

    return-void
.end method

.method public static a()Leer;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Leer;

    invoke-direct {v0}, Leer;-><init>()V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Leer;
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-static {p0}, Lehf;->a(Ljava/lang/String;)V

    new-instance v0, Leer;

    invoke-direct {v0}, Leer;-><init>()V

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
