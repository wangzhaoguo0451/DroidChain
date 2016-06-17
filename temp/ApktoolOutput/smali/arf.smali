.class public Larf;
.super Ljava/lang/Object;
.source "Bucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/Queue;

.field public d:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 62
    if-ltz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ld;->b(Z)V

    .line 63
    if-ltz p3, :cond_2

    :goto_2
    invoke-static {v1}, Ld;->b(Z)V

    .line 65
    iput p1, p0, Larf;->a:I

    .line 66
    iput p2, p0, Larf;->b:I

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Larf;->c:Ljava/util/Queue;

    .line 68
    iput p3, p0, Larf;->d:I

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 62
    goto :goto_1

    :cond_2
    move v1, v2

    .line 63
    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Larf;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Larf;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Larf;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 138
    iget v0, p0, Larf;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Larf;->d:I

    .line 139
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
