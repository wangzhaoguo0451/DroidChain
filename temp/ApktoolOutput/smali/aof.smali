.class final Laof;
.super Ljava/lang/Object;
.source "WhatToKeepCachedArray.java"


# instance fields
.field final a:[Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, p1, [Z

    iput-object v0, p0, Laof;->a:[Z

    .line 26
    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laof;->a:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Laof;->a:[Z

    aput-boolean p1, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method
