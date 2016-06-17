.class public final Lfzs;
.super Ljava/lang/Object;
.source "NetCheckController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

.field private synthetic b:Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

.field private synthetic c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;Lcom/wandoujia/p4/netcheck/model/Configs$Publics;Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lfzs;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iput-object p2, p0, Lfzs;->a:Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    iput-object p3, p0, Lfzs;->b:Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lfzs;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

    iget-object v1, p0, Lfzs;->a:Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    invoke-static {v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/model/Configs$Publics;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->setPublics(Ljava/util/List;)V

    .line 323
    iget-object v0, p0, Lfzs;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;

    iget-object v1, p0, Lfzs;->b:Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    invoke-static {v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo;->setTcp(Ljava/util/List;)V

    .line 324
    iget-object v0, p0, Lfzs;->c:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->TCP:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    .line 325
    return-void
.end method
