.class final Lalr;
.super Lala;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lala",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Z

.field private synthetic c:Lalq;


# direct methods
.method constructor <init>(Lalq;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lalr;->c:Lalq;

    iput-object p2, p0, Lalr;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lalr;->b:Z

    invoke-direct {p0}, Lala;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lalb;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p1}, Lalb;->c()Z

    move-result v0

    .line 425
    invoke-virtual {p1}, Lalb;->e()F

    move-result v1

    .line 426
    iget-object v2, p0, Lalr;->c:Lalq;

    iget-object v3, p0, Lalr;->a:Ljava/lang/String;

    invoke-static {v2, v3, p1, v1, v0}, Lalq;->a(Lalq;Ljava/lang/String;Lalb;FZ)V

    .line 427
    return-void
.end method

.method public final d(Lalb;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p1}, Lalb;->c()Z

    move-result v5

    .line 410
    invoke-virtual {p1}, Lalb;->e()F

    move-result v4

    .line 411
    invoke-virtual {p1}, Lalb;->a()Ljava/lang/Object;

    move-result-object v3

    .line 412
    if-eqz v3, :cond_1

    .line 413
    iget-object v0, p0, Lalr;->c:Lalq;

    iget-object v1, p0, Lalr;->a:Ljava/lang/String;

    iget-boolean v6, p0, Lalr;->b:Z

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lalq;->a(Lalq;Ljava/lang/String;Lalb;Ljava/lang/Object;FZZ)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    if-eqz v5, :cond_0

    .line 415
    iget-object v0, p0, Lalr;->c:Lalq;

    iget-object v1, p0, Lalr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1, p1, v2}, Lalq;->a(Lalq;Ljava/lang/String;Lalb;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e(Lalb;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lalr;->c:Lalq;

    iget-object v1, p0, Lalr;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lalb;->d()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lalq;->a(Lalq;Ljava/lang/String;Lalb;Ljava/lang/Throwable;)V

    .line 421
    return-void
.end method
