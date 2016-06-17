.class final Lfsu;
.super Ljava/lang/Object;
.source "FetchHelper.java"

# interfaces
.implements Lfsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfsr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lfst;


# direct methods
.method private constructor <init>(Lfst;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lfsu;->a:Lfst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfst;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lfsu;-><init>(Lfst;)V

    return-void
.end method


# virtual methods
.method public final a(IILfss;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfss",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 108
    :cond_0
    iget-object v0, p0, Lfsu;->a:Lfst;

    iget-object v1, p3, Lfss;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Lfst;->a:I

    .line 109
    iget-object v0, p0, Lfsu;->a:Lfst;

    iget-object v0, v0, Lfst;->c:Lfsr;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lfsu;->a:Lfst;

    iget-object v0, v0, Lfst;->c:Lfsr;

    invoke-interface {v0, p1, p2, p3}, Lfsr;->a(IILfss;)V

    .line 112
    :cond_1
    return-void
.end method

.method public final a(ILjava/util/concurrent/ExecutionException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lfsu;->a:Lfst;

    iget-object v0, v0, Lfst;->c:Lfsr;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lfsu;->a:Lfst;

    iget-object v0, v0, Lfst;->c:Lfsr;

    invoke-interface {v0, p1, p2}, Lfsr;->a(ILjava/util/concurrent/ExecutionException;)V

    .line 119
    :cond_0
    return-void
.end method
