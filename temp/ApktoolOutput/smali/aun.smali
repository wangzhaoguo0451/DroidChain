.class public final Laun;
.super Ljava/lang/Object;
.source "SwallowResultProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Laud",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laud;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Laun;->a:Laud;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lauo;

    invoke-direct {v0, p1}, Lauo;-><init>(Lask;)V

    .line 34
    iget-object v1, p0, Laun;->a:Laud;

    invoke-interface {v1, v0, p2}, Laud;->a(Lask;Laue;)V

    .line 35
    return-void
.end method
