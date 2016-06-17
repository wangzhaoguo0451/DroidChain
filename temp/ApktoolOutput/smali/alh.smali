.class public final Lalh;
.super Lalb;
.source "SettableDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lalb",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lalb;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lalb;->a(F)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Z)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lalb;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-super {p0, v0}, Lalb;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
