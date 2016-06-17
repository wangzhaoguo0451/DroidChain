.class public final Latb;
.super Laub;
.source "HttpUrlConnectionNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laub",
        "<",
        "Lata;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Laub;-><init>()V

    .line 36
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Latb;->a:Ljava/util/concurrent/ExecutorService;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)Lata;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Laue;",
            ")",
            "Lata;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lata;

    invoke-direct {v0, p1, p2}, Lata;-><init>(Lask;Laue;)V

    return-object v0
.end method

.method public final a(Lata;Lauc;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Latb;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Latc;

    invoke-direct {v1, p1, p2}, Latc;-><init>(Lata;Lauc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 82
    iget-object v1, p1, Lata;->e:Laue;

    new-instance v2, Latd;

    invoke-direct {v2, v0, p2}, Latd;-><init>(Ljava/util/concurrent/Future;Lauc;)V

    invoke-interface {v1, v2}, Laue;->a(Lauf;)V

    .line 91
    return-void
.end method
