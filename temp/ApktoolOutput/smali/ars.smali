.class public final Lars;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# instance fields
.field private final a:Larq;

.field private b:Lare;

.field private c:Lari;

.field private d:Larm;

.field private e:Larv;

.field private f:Lary;

.field private g:Larp;


# direct methods
.method public constructor <init>(Larq;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larq;

    iput-object v0, p0, Lars;->a:Larq;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Lare;
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lars;->b:Lare;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lare;

    iget-object v1, p0, Lars;->a:Larq;

    iget-object v1, v1, Larq;->d:Lmv;

    iget-object v2, p0, Lars;->a:Larq;

    iget-object v2, v2, Larq;->a:Lart;

    iget-object v3, p0, Lars;->a:Larq;

    iget-object v3, v3, Larq;->b:Lmv;

    invoke-direct {v0, v1, v2, v3}, Lare;-><init>(Lmv;Lart;Lmv;)V

    iput-object v0, p0, Lars;->b:Lare;

    .line 43
    :cond_0
    iget-object v0, p0, Lars;->b:Lare;

    return-object v0
.end method

.method public final b()Lari;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lars;->c:Lari;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lari;

    iget-object v1, p0, Lars;->a:Larq;

    iget-object v1, v1, Larq;->d:Lmv;

    iget-object v2, p0, Lars;->a:Larq;

    iget-object v2, v2, Larq;->c:Lart;

    invoke-direct {v0, v1, v2}, Lari;-><init>(Lmv;Lart;)V

    iput-object v0, p0, Lars;->c:Lari;

    .line 52
    :cond_0
    iget-object v0, p0, Lars;->c:Lari;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lars;->a:Larq;

    iget-object v0, v0, Larq;->c:Lart;

    iget v0, v0, Lart;->d:I

    return v0
.end method

.method public final d()Larv;
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lars;->e:Larv;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Larv;

    iget-object v1, p0, Lars;->d:Larm;

    if-nez v1, :cond_0

    new-instance v1, Larm;

    iget-object v2, p0, Lars;->a:Larq;

    iget-object v2, v2, Larq;->d:Lmv;

    iget-object v3, p0, Lars;->a:Larq;

    iget-object v3, v3, Larq;->e:Lart;

    iget-object v4, p0, Lars;->a:Larq;

    iget-object v4, v4, Larq;->f:Lmv;

    invoke-direct {v1, v2, v3, v4}, Larm;-><init>(Lmv;Lart;Lmv;)V

    iput-object v1, p0, Lars;->d:Larm;

    :cond_0
    iget-object v1, p0, Lars;->d:Larm;

    invoke-virtual {p0}, Lars;->e()Lary;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Larv;-><init>(Larm;Lary;)V

    iput-object v0, p0, Lars;->e:Larv;

    .line 75
    :cond_1
    iget-object v0, p0, Lars;->e:Larv;

    return-object v0
.end method

.method public final e()Lary;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lars;->f:Lary;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lary;

    invoke-virtual {p0}, Lars;->f()Larp;

    move-result-object v1

    invoke-direct {v0, v1}, Lary;-><init>(Larp;)V

    iput-object v0, p0, Lars;->f:Lary;

    .line 82
    :cond_0
    iget-object v0, p0, Lars;->f:Lary;

    return-object v0
.end method

.method public final f()Larp;
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lars;->g:Larp;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Larl;

    iget-object v1, p0, Lars;->a:Larq;

    iget-object v1, v1, Larq;->d:Lmv;

    iget-object v2, p0, Lars;->a:Larq;

    iget-object v2, v2, Larq;->g:Lart;

    iget-object v3, p0, Lars;->a:Larq;

    iget-object v3, v3, Larq;->h:Lmv;

    invoke-direct {v0, v1, v2, v3}, Larl;-><init>(Lmv;Lart;Lmv;)V

    iput-object v0, p0, Lars;->g:Larp;

    .line 101
    :cond_0
    iget-object v0, p0, Lars;->g:Larp;

    return-object v0
.end method
