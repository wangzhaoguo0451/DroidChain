.class final Ldw;
.super Lea;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lea",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private synthetic d:Ldv;


# direct methods
.method constructor <init>(Ldv;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Ldw;->d:Ldv;

    invoke-direct {p0}, Lea;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ldw;->d:Ldv;

    iget v0, v0, Ldv;->c:I

    return v0
.end method

.method protected final a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Ldw;->d:Ldv;

    invoke-virtual {v0, p1}, Ldv;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final a(II)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Ldw;->d:Ldv;

    iget-object v0, v0, Ldv;->b:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Ldw;->d:Ldv;

    invoke-virtual {v0, p1, p2}, Ldv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Ldw;->d:Ldv;

    invoke-virtual {v0, p1}, Ldv;->d(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Ldw;->d:Ldv;

    invoke-virtual {v0, p1, p2}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected final b(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Ldw;->d:Ldv;

    invoke-virtual {v0, p1}, Ldv;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Ldw;->d:Ldv;

    return-object v0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ldw;->d:Ldv;

    invoke-virtual {v0}, Ldv;->clear()V

    .line 117
    return-void
.end method
