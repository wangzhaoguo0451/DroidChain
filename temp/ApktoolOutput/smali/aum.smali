.class public abstract Laum;
.super Laju;
.source "StatefulProducerRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laju",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lask",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Laug;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lask;Laug;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<TT;>;",
            "Laug;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Laju;-><init>()V

    .line 35
    iput-object p1, p0, Laum;->a:Lask;

    .line 36
    iput-object p2, p0, Laum;->b:Laug;

    .line 37
    iput-object p3, p0, Laum;->c:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Laum;->d:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Laum;->b:Laug;

    iget-object v1, p0, Laum;->d:Ljava/lang/String;

    iget-object v2, p0, Laum;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;)V
    .locals 5
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Laum;->b:Laug;

    iget-object v1, p0, Laum;->d:Ljava/lang/String;

    iget-object v2, p0, Laum;->c:Ljava/lang/String;

    iget-object v3, p0, Laum;->b:Laug;

    iget-object v4, p0, Laum;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laug;->a(Ljava/lang/String;)Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 59
    iget-object v0, p0, Laum;->a:Lask;

    invoke-virtual {v0, p1}, Lask;->b(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Laum;->b:Laug;

    iget-object v2, p0, Laum;->d:Ljava/lang/String;

    iget-object v3, p0, Laum;->c:Ljava/lang/String;

    iget-object v0, p0, Laum;->b:Laug;

    iget-object v4, p0, Laum;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Laug;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Laum;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    iget-object v0, p0, Laum;->a:Lask;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lask;->b(Ljava/lang/Object;Z)V

    .line 50
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Laum;->b:Laug;

    iget-object v1, p0, Laum;->d:Ljava/lang/String;

    iget-object v2, p0, Laum;->c:Ljava/lang/String;

    iget-object v3, p0, Laum;->b:Laug;

    iget-object v4, p0, Laum;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laug;->a(Ljava/lang/String;)Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Laug;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Laum;->a:Lask;

    invoke-virtual {v0}, Lask;->b()V

    .line 69
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method
