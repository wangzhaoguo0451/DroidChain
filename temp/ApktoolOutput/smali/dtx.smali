.class public final Ldtx;
.super Lhhv;
.source "SubscribeDataList.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 11
    new-instance v0, Ldtj;

    new-instance v1, Ldua;

    new-instance v2, Ldty;

    invoke-direct {v2}, Ldty;-><init>()V

    invoke-direct {v1, v2}, Ldua;-><init>(Leqx;)V

    invoke-direct {v0, v1}, Ldtj;-><init>(Leqx;)V

    invoke-direct {p0, p1, v0}, Lhhv;-><init>(Ljava/lang/String;Leqx;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ldtx;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method
