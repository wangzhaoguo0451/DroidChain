.class public final Labo;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 256
    new-instance v0, Labn;

    invoke-direct {v0, p1}, Labn;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
