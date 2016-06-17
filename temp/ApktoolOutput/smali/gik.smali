.class public final Lgik;
.super Landroid/os/AsyncTask;
.source "VideoDetailDescriptionInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private synthetic b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lgik;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 268
    iput-wide p2, p0, Lgik;->a:J

    .line 269
    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;JB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lgik;-><init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;J)V

    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    new-instance v2, Lcql;

    iget-wide v4, p0, Lgik;->a:J

    invoke-direct {v2, v4, v5}, Lcql;-><init>(J)V

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;

    .line 280
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;->item:Lcom/wandoujia/p4/person/model/PersonInfo;

    if-eqz v3, :cond_0

    .line 281
    new-instance v3, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;

    iget-object v4, p0, Lgik;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;

    invoke-static {v4}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->b(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v4

    iget-object v4, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-direct {v3, v4, v0}, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;-><init>(Lcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    :cond_1
    invoke-static {v1}, Lgik;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 298
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;

    .line 299
    iget-object v1, v0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->name:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;

    .line 300
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 301
    iget-object v1, v1, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 303
    :cond_0
    iget-object v1, v0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->name:Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 306
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;

    .line 307
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 262
    invoke-direct {p0}, Lgik;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lgik;->b:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;Ljava/util/List;)V

    return-void
.end method
