.class final Laro;
.super Larf;
.source "OOMSoftReferenceBucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Larf",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lakm",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Larf;-><init>(III)V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laro;->e:Ljava/util/LinkedList;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Laro;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakm;

    .line 34
    iget-object v1, v0, Lakm;->a:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_3

    move-object v1, v2

    .line 35
    :goto_0
    iget-object v3, v0, Lakm;->a:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lakm;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->clear()V

    iput-object v2, v0, Lakm;->a:Ljava/lang/ref/SoftReference;

    :cond_0
    iget-object v3, v0, Lakm;->b:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lakm;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->clear()V

    iput-object v2, v0, Lakm;->b:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v3, v0, Lakm;->c:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lakm;->c:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->clear()V

    iput-object v2, v0, Lakm;->c:Ljava/lang/ref/SoftReference;

    .line 36
    :cond_2
    iget-object v2, p0, Laro;->e:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    return-object v1

    .line 34
    :cond_3
    iget-object v1, v0, Lakm;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Laro;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakm;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lakm;

    invoke-direct {v0}, Lakm;-><init>()V

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lakm;->a:Ljava/lang/ref/SoftReference;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lakm;->b:Ljava/lang/ref/SoftReference;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lakm;->c:Ljava/lang/ref/SoftReference;

    .line 47
    iget-object v1, p0, Laro;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
