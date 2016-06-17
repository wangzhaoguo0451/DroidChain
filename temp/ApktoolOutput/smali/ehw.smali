.class public final Lehw;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, v0, v0}, Lehw;->a(II)V

    .line 13
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0, p1, p2}, Lehw;->a(II)V

    .line 17
    return-void
.end method

.method private a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lehw;->a:I

    .line 21
    iput p2, p0, Lehw;->b:I

    .line 22
    return-void
.end method
