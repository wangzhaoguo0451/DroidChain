.class public final Lapi;
.super Ljava/lang/Object;
.source "DefaultEncodedMemoryCacheParamsSupplier.java"

# interfaces
.implements Lakd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lakd",
        "<",
        "Lapn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x100

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x10

    :goto_0
    div-int/lit8 v1, v0, 0x8

    new-instance v2, Lapn;

    const v3, 0x7fffffff

    invoke-direct {v2, v0, v3, v0, v1}, Lapn;-><init>(IIII)V

    return-object v2

    :cond_0
    const/high16 v1, 0x200

    if-ge v0, v1, :cond_1

    const/high16 v0, 0x20

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40

    goto :goto_0
.end method
