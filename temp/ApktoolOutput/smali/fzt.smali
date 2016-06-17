.class public final Lfzt;
.super Ljava/lang/Object;
.source "NetCheckController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lfzt;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lfzt;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->IP:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    .line 334
    iget-object v0, p0, Lfzt;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-static {}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->b()Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->setDns(Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$DnsInfo;)V

    .line 335
    iget-object v0, p0, Lfzt;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->DNS:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    .line 336
    return-void
.end method
