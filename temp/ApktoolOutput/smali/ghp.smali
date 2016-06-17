.class public final Lghp;
.super Lfsi;
.source "VideoDetailRecommendFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsi",
        "<",
        "Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 22
    iput-wide p1, p0, Lghp;->a:J

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lghp;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(II)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Lgji;

    invoke-direct {v1}, Lgji;-><init>()V

    .line 32
    invoke-virtual {v1}, Lgji;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgkh;

    iget-wide v2, p0, Lghp;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lgkh;->a:Ljava/lang/Long;

    iput p1, v0, Lfxw;->e:I

    iput p2, v0, Lfxw;->f:I

    .line 33
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 37
    new-instance v3, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;

    sget-object v4, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->NONE:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    invoke-direct {v3, v0, v4}, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;-><init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/card/models/CardViewModel$TagType;)V

    .line 39
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    return-object v1
.end method
