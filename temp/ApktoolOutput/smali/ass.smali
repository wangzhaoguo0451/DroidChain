.class public abstract Lass;
.super Lask;
.source "DelegatingConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lask",
        "<TI;>;"
    }
.end annotation


# instance fields
.field final d:Lask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lask",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lask;-><init>()V

    .line 19
    iput-object p1, p0, Lass;->d:Lask;

    .line 20
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0}, Lask;->b()V

    .line 34
    return-void
.end method

.method protected final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1}, Lask;->b(F)V

    .line 39
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1}, Lask;->b(Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
