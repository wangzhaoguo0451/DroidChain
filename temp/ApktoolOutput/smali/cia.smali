.class public final Lcia;
.super Ljava/lang/Object;
.source "AccountConfig.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/account/fragment/AccountFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcia;->a:Ljava/lang/ref/WeakReference;

    .line 90
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcia;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/AccountFragment;

    .line 96
    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountFragment;->a(Lcom/wandoujia/account/fragment/AccountFragment;)V

    goto :goto_0
.end method
