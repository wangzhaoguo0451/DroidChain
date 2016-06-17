.class public final Lanl;
.super Ljava/lang/Object;
.source "AnimatedDrawableOptionsBuilder.java"


# instance fields
.field a:Z

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanl;->a:Z

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lanl;->b:I

    return-void
.end method
