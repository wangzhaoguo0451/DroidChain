.class final Lapd;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lapr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapr",
        "<",
        "Lapf",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lapr;


# direct methods
.method constructor <init>(Lapr;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lapd;->a:Lapr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 121
    check-cast p1, Lapf;

    iget-object v0, p0, Lapd;->a:Lapr;

    iget-object v1, p1, Lapf;->b:Lakk;

    invoke-virtual {v1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lapr;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
