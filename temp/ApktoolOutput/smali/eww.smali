.class public final Leww;
.super Lfsi;
.source "TagAppFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsi",
        "<",
        "Lcom/wandoujia/entities/app/IAppLiteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private f:I

.field private g:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 22
    const-string v0, "superiorFirst"

    iput-object v0, p0, Leww;->b:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Leww;->f:I

    .line 27
    iput-object p1, p0, Leww;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 22
    const-string v0, "superiorFirst"

    iput-object v0, p0, Leww;->b:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Leww;->f:I

    .line 31
    iput-object p1, p0, Leww;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Leww;->g:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    .line 33
    return-void
.end method

.method private c(II)Lfwo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v1, Lfwo;

    invoke-direct {v1}, Lfwo;-><init>()V

    .line 72
    invoke-virtual {v1}, Lfwo;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxt;

    iget-object v2, p0, Leww;->a:Ljava/lang/String;

    iput-object v2, v0, Lfxt;->b:Ljava/lang/String;

    iget-object v2, p0, Leww;->b:Ljava/lang/String;

    iput-object v2, v0, Lfxt;->a:Ljava/lang/String;

    iget v2, p0, Leww;->f:I

    iput v2, v0, Lfxt;->c:I

    iget-object v2, p0, Leww;->g:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    iput-object v2, v0, Lfxt;->d:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    iput p1, v0, Lfxw;->e:I

    iput p2, v0, Lfxw;->f:I

    .line 79
    return-object v1
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Leww;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Leww;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/app/IAppLiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Leww;->c(II)Lfwo;

    move-result-object v0

    .line 49
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    invoke-virtual {v2}, Lfvu;->a()Lcom/wandoujia/rpc/http/client/DataClientCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wandoujia/rpc/http/client/DataClientCache;->executeByNetwork(Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 50
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/TagAppsInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/TagAppsInfo;->getApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 51
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 53
    goto :goto_0
.end method

.method protected final b(II)Lfss;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lfss",
            "<",
            "Lcom/wandoujia/entities/app/IAppLiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Leww;->c(II)Lfwo;

    move-result-object v0

    .line 59
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    invoke-virtual {v2}, Lfvu;->a()Lcom/wandoujia/rpc/http/client/DataClientCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wandoujia/rpc/http/client/DataClientCache;->executeByCache(Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;)Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;

    move-result-object v3

    .line 61
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v2, Lfss;

    iget-object v0, v3, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/TagAppsInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/TagAppsInfo;->getApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    iget-wide v4, v3, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v3, v3, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->isTimeout:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lfss;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v1, v2

    .line 67
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    .line 63
    goto :goto_0
.end method
