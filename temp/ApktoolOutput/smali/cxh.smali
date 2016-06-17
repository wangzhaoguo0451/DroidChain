.class public abstract Lcxh;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcxi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcxi",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Lcxi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcxi",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private c:I

.field private synthetic d:Lcom/wandoujia/gson/internal/LinkedTreeMap;


# direct methods
.method private constructor <init>(Lcom/wandoujia/gson/internal/LinkedTreeMap;)V
    .locals 1
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcxh;->d:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lcxh;->d:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget-object v0, v0, Lcom/wandoujia/gson/internal/LinkedTreeMap;->header:Lcxi;

    iget-object v0, v0, Lcxi;->d:Lcxi;

    iput-object v0, p0, Lcxh;->a:Lcxi;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcxh;->b:Lcxi;

    .line 529
    iget-object v0, p0, Lcxh;->d:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/wandoujia/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcxh;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/gson/internal/LinkedTreeMap;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcxh;-><init>(Lcom/wandoujia/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method final a()Lcxi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcxi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcxh;->a:Lcxi;

    .line 537
    iget-object v1, p0, Lcxh;->d:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/wandoujia/gson/internal/LinkedTreeMap;->header:Lcxi;

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-object v1, p0, Lcxh;->d:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget v1, v1, Lcom/wandoujia/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lcxh;->c:I

    if-eq v1, v2, :cond_1

    .line 541
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget-object v1, v0, Lcxi;->d:Lcxi;

    iput-object v1, p0, Lcxh;->a:Lcxi;

    .line 544
    iput-object v0, p0, Lcxh;->b:Lcxi;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcxh;->a:Lcxi;

    iget-object v1, p0, Lcxh;->d:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/wandoujia/gson/internal/LinkedTreeMap;->header:Lcxi;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcxh;->b:Lcxi;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcxh;->d:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcxh;->b:Lcxi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/gson/internal/LinkedTreeMap;->removeInternal(Lcxi;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcxh;->b:Lcxi;

    .line 553
    iget-object v0, p0, Lcxh;->d:Lcom/wandoujia/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/wandoujia/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcxh;->c:I

    .line 554
    return-void
.end method
