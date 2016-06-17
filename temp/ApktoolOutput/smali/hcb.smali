.class public Lhcb;
.super Ljava/lang/Object;
.source "MemDataOperator.java"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lhcp;

.field public g:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhcm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lhcb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhrx;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhcb;->a:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhcb;->c:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhcb;->d:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhcb;->e:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhcb;->h:Ljava/util/Map;

    .line 48
    new-instance v0, Lhcp;

    invoke-direct {v0, p1, p2}, Lhcp;-><init>(Landroid/content/Context;Lhrx;)V

    iput-object v0, p0, Lhcb;->f:Lhcp;

    .line 49
    return-void
.end method

.method public static a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;ZLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 317
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 318
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    const/4 v1, 0x0

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    .line 319
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iput-wide v4, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    .line 320
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iput-object v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    .line 321
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iput-wide v4, v0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    .line 322
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iput-wide v4, v0, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    .line 323
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iput-object v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    .line 324
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iput-object v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->i:J

    .line 328
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iput-object p2, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    .line 331
    :cond_1
    return-void
.end method

.method static synthetic a(Lhcb;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lhcb;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic a(Lhcb;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 30
    iget-object v0, p0, Lhcb;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhcb;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcm;

    if-eqz p2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lhcm;->b:Ljava/util/List;

    iget v3, v0, Lhcm;->a:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lhcm;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lhcm;->b:Ljava/util/List;

    iput v5, v0, Lhcm;->a:I

    iget-object v0, v0, Lhcm;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhcb;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lhcm;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lhcm;->a:I

    iget v1, v0, Lhcm;->a:I

    iget-object v2, v0, Lhcm;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lhcm;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-nez v0, :cond_2

    iget-object v1, p0, Lhcb;->d:Ljava/util/Map;

    iget-object v0, p0, Lhcb;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-boolean v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isSucceed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhcb;->e:Ljava/util/Set;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lhcb;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lhcb;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lhcb;->g:Z

    return v0
.end method

.method static synthetic b(Lhcb;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcb;->b:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lhcb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/download2/DownloadInfo2;Z)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    if-eqz p3, :cond_0

    .line 349
    invoke-virtual {p1, p2}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a(Lcom/wandoujia/download2/DownloadInfo2;)V

    .line 360
    :goto_0
    return-object p1

    .line 351
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 352
    invoke-virtual {p1, p2}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a(Lcom/wandoujia/download2/DownloadInfo2;)V

    .line 353
    iget-object v0, p0, Lhcb;->f:Lhcp;

    new-instance v1, Lhck;

    invoke-direct {v1, p0, p1}, Lhck;-><init>(Lhcb;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v2, v0, Lhcp;->a:Landroid/os/Handler;

    new-instance v3, Lhcy;

    invoke-direct {v3, v0, p1, v1}, Lhcy;-><init>(Lhcp;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lhdd;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lhcb;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lhcb;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 271
    if-nez v0, :cond_1

    .line 272
    const/4 v0, 0x0

    .line 286
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :cond_1
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 275
    iput-object p2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 276
    iget-object v1, p0, Lhcb;->f:Lhcp;

    new-instance v2, Lhch;

    invoke-direct {v2, p0, v0}, Lhch;-><init>(Lhcb;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-virtual {v1, v0, v2}, Lhcp;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lhdd;)V

    .line 282
    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isSucceed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lhcb;->e:Ljava/util/Set;

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, p0, Lhcb;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final varargs a([Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 385
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    iget-object v0, p0, Lhcb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 387
    iget-object v4, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    :cond_1
    return-object v2
.end method

.method public final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lhcb;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lhcb;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-boolean v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isSucceed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lhcb;->e:Ljava/util/Set;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lhcb;->e:Ljava/util/Set;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lhcb;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lhcb;->h:Ljava/util/Map;

    new-instance v1, Lhcm;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lhcm;-><init>(B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    iget-object v0, p0, Lhcb;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcm;

    .line 140
    iget-object v1, v0, Lhcm;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a()Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lhcb;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    return-object v0
.end method

.method public final b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lhcb;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lhcb;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-boolean v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isSucceed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lhcb;->e:Ljava/util/Set;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-void
.end method

.method public final c(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 215
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhcb;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 216
    :goto_0
    if-nez v0, :cond_0

    .line 217
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 218
    invoke-virtual {p0, p1}, Lhcb;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 220
    :cond_0
    iget-object v1, p0, Lhcb;->f:Lhcp;

    new-instance v2, Lhce;

    invoke-direct {v2, p0, v0, p1}, Lhce;-><init>(Lhcb;ZLcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v0, v1, Lhcp;->a:Landroid/os/Handler;

    new-instance v3, Lhcv;

    invoke-direct {v3, v1, p1, v2}, Lhcv;-><init>(Lhcp;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lhdd;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lhcb;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
