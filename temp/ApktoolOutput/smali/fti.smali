.class public final Lfti;
.super Ljava/lang/Object;
.source "NetworkListAsyncloadFragment.java"

# interfaces
.implements Lfsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfsr",
        "<TM;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lfti;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILfss;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lfti;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(IILfss;)V

    .line 71
    return-void
.end method

.method public final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lfti;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(ILjava/util/concurrent/ExecutionException;)V

    .line 76
    return-void
.end method
