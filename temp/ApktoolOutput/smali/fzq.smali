.class public final Lfzq;
.super Ljava/lang/Object;
.source "NetCheckController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lfzq;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iput-object p2, p0, Lfzq;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lfzq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 291
    iget-object v2, p0, Lfzq;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v2, v2, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->b(Ljava/lang/String;)Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lfzq;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

    iget-object v1, p0, Lfzq;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v1, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->setDownload(Ljava/util/List;)V

    .line 294
    iget-object v0, p0, Lfzq;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfzq;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lfzq;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->DOWN:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    .line 299
    :goto_1
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lfzq;->b:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->FAILED:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    goto :goto_1
.end method
