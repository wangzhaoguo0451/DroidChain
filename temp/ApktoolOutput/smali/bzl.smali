.class final Lbzl;
.super Ljava/lang/Object;
.source "Huffman.java"


# instance fields
.field final a:[Lbzl;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x100

    new-array v0, v0, [Lbzl;

    iput-object v0, p0, Lbzl;->a:[Lbzl;

    .line 208
    iput v1, p0, Lbzl;->b:I

    .line 209
    iput v1, p0, Lbzl;->c:I

    .line 210
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lbzl;->a:[Lbzl;

    .line 220
    iput p1, p0, Lbzl;->b:I

    .line 221
    and-int/lit8 v0, p2, 0x7

    .line 222
    if-nez v0, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lbzl;->c:I

    .line 223
    return-void
.end method
