.class final Lbqv;
.super Ljava/lang/Object;
.source "BarcodeMetadata.java"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lbqv;->a:I

    .line 32
    iput p4, p0, Lbqv;->b:I

    .line 33
    iput p2, p0, Lbqv;->c:I

    .line 34
    iput p3, p0, Lbqv;->d:I

    .line 35
    add-int v0, p2, p3

    iput v0, p0, Lbqv;->e:I

    .line 36
    return-void
.end method
