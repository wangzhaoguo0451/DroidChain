.class public final Lgce;
.super Ljava/lang/Object;
.source "SubscribeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

.field private synthetic c:Lgcd;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;Lgcd;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lgce;->a:Ljava/util/List;

    iput-object p2, p0, Lgce;->b:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    iput-object p3, p0, Lgce;->c:Lgcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lgce;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcj;

    .line 109
    sget-object v2, Lgci;->a:[I

    iget-object v3, p0, Lgce;->b:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    invoke-virtual {v3}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object v2, p0, Lgce;->c:Lgcd;

    invoke-interface {v0, v2}, Lgcj;->a(Lgcd;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v2, p0, Lgce;->c:Lgcd;

    invoke-interface {v0, v2}, Lgcj;->b(Lgcd;)V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v2, p0, Lgce;->c:Lgcd;

    invoke-interface {v0, v2}, Lgcj;->c(Lgcd;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v2, p0, Lgce;->c:Lgcd;

    invoke-interface {v0, v2}, Lgcj;->d(Lgcd;)V

    goto :goto_0

    .line 124
    :cond_0
    return-void

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
