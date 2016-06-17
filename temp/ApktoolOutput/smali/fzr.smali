.class public final Lfzr;
.super Ljava/lang/Object;
.source "NetCheckController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lfzr;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iput-object p2, p0, Lfzr;->a:Ljava/lang/String;

    iput-object p3, p0, Lfzr;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lfzr;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a:Ljava/util/List;

    iget-object v1, p0, Lfzr;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Ljava/lang/String;)Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Infos;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lfzr;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfzr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lfzr;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

    iget-object v1, p0, Lfzr;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v1, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->setPing(Ljava/util/List;)V

    .line 311
    iget-object v0, p0, Lfzr;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->PING:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    .line 313
    :cond_0
    return-void
.end method
