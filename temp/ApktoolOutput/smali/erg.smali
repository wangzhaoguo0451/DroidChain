.class public abstract Lerg;
.super Ljava/lang/Object;
.source "Presenter.java"


# instance fields
.field private a:Leri;

.field f:Landroid/view/View;

.field g:Lerf;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public final d()Lerf;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lerg;->g:Lerf;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please ensure this view binder is called bind()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lerg;->g:Lerf;

    return-object v0
.end method

.method public final e()Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lerg;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please ensure this view binder is called bind()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, p0, Lerg;->f:Landroid/view/View;

    return-object v0
.end method

.method public final f()Leri;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lerg;->a:Leri;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Leri;

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Leri;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lerg;->a:Leri;

    .line 121
    :cond_0
    iget-object v0, p0, Lerg;->a:Leri;

    return-object v0
.end method
