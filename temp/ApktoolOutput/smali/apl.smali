.class public final Lapl;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCache.java"

# interfaces
.implements Lapm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapm",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lapm;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapm",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lapl;->a:Lapm;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/internal/util/Predicate;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<TK;>;)I"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lapl;->a:Lapm;

    invoke-interface {v0, p1}, Lapm;->a(Lcom/android/internal/util/Predicate;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lakk",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lapl;->a:Lapm;

    invoke-interface {v0, p1}, Lapm;->a(Ljava/lang/Object;)Lakk;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lakk;)Lakk;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lakk",
            "<TV;>;)",
            "Lakk",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lapl;->a:Lapm;

    invoke-interface {v0, p1, p2}, Lapm;->a(Ljava/lang/Object;Lakk;)Lakk;

    move-result-object v0

    return-object v0
.end method
