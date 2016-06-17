.class public final Lgcg;
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
    .line 184
    iput-object p1, p0, Lgcg;->c:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    iput-object p2, p0, Lgcg;->a:Landroid/content/Context;

    iput-object p3, p0, Lgcg;->b:Lgcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lgcg;->c:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    iget-object v1, p0, Lgcg;->a:Landroid/content/Context;

    iget-object v2, p0, Lgcg;->b:Lgcd;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Landroid/content/Context;Lgcd;)Z

    .line 188
    return-void
.end method
