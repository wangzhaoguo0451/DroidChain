.class public final Lbsg;
.super Lbns;
.source "FinderPattern.java"


# instance fields
.field public final c:F

.field public final d:I


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lbsg;-><init>(FFFI)V

    .line 35
    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lbns;-><init>(FF)V

    .line 39
    iput p3, p0, Lbsg;->c:F

    .line 40
    iput p4, p0, Lbsg;->d:I

    .line 41
    return-void
.end method
