.class public final Lemc;
.super Ljava/lang/Object;
.source "AMapLocationProvider.java"

# interfaces
.implements Lmv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lemc;-><init>(Leax;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Leax;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Lemd;

    invoke-direct {v0}, Lemd;-><init>()V

    .line 41
    :cond_0
    return-void
.end method
