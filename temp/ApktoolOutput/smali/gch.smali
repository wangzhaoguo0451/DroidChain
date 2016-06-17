.class public final Lgch;
.super Ljava/lang/Object;
.source "SubscribeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lgcd;

.field private synthetic c:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/subscribe/core/SubscribeManager;Landroid/content/Context;Lgcd;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lgch;->c:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    iput-object p2, p0, Lgch;->a:Landroid/content/Context;

    iput-object p3, p0, Lgch;->b:Lgcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lgch;->c:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    iget-object v1, p0, Lgch;->a:Landroid/content/Context;

    iget-object v2, p0, Lgch;->b:Lgcd;

    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b()V

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lg;->f(Landroid/content/Context;)V

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {v2}, Lgcd;->unsubscribe()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_UNSUBSCRIBE_SUCCESS:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcd;Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_UNSUBSCRIBE_FAILED:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcd;Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;)V

    goto :goto_0
.end method
