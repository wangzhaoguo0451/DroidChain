.class public final Lftl;
.super Ljava/lang/Object;
.source "NetworkListAsyncloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lftl;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 455
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->p()Z

    .line 457
    iget-object v0, p0, Lftl;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->requestLoad()V

    .line 458
    return-void
.end method
