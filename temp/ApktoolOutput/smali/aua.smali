.class public final Laua;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laud",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Larv;

.field final b:Larp;

.field final c:Laub;


# direct methods
.method public constructor <init>(Larv;Larp;Laub;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Laua;->a:Larv;

    .line 59
    iput-object p2, p0, Laua;->b:Larp;

    .line 60
    iput-object p3, p0, Laua;->c:Laub;

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 3
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
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface {p2}, Laue;->c()Laug;

    move-result-object v0

    invoke-interface {p2}, Laue;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    invoke-virtual {v0, v1, v2}, Laug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Laua;->c:Laub;

    invoke-virtual {v0, p1, p2}, Laub;->a(Lask;Laue;)Lata;

    move-result-object v0

    .line 68
    iget-object v1, p0, Laua;->c:Laub;

    new-instance v2, Lauc;

    invoke-direct {v2, p0, v0}, Lauc;-><init>(Laua;Lata;)V

    invoke-virtual {v1, v0, v2}, Laub;->a(Lata;Lauc;)V

    .line 85
    return-void
.end method
