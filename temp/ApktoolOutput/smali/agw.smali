.class public final Lagw;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    invoke-direct {p0, v0, v1, v2}, Lagw;-><init>(IIF)V

    .line 49
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lagw;->a:I

    .line 59
    iput p2, p0, Lagw;->c:I

    .line 60
    iput p3, p0, Lagw;->d:F

    .line 61
    return-void
.end method
