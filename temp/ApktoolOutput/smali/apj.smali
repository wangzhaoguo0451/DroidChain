.class public final Lapj;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"

# interfaces
.implements Lapr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapr",
        "<",
        "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    return v0
.end method
