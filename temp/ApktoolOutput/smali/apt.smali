.class public final Lapt;
.super Ljava/lang/Object;
.source "ImageDecodeOptionsBuilder.java"


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Lapt;->a:I

    .line 18
    const v0, 0xffffff

    iput v0, p0, Lapt;->b:I

    .line 25
    return-void
.end method
