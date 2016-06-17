.class public final Lgcm;
.super Ljava/lang/Object;
.source "SubscribePublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private synthetic b:Ldtr;

.field private synthetic c:Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lgcm;->c:Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;

    iput-object p2, p0, Lgcm;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lgcm;->b:Ldtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lgcm;->c:Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;

    iget-object v1, p0, Lgcm;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lgcm;->b:Ldtr;

    #calls: Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->showUnsubscribeTipsInMainThread$400df14d(Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->access$000$4a141352(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    .line 121
    return-void
.end method
