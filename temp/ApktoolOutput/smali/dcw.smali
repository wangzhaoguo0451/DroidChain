.class final Ldcw;
.super Lddc;
.source "JupiterItemAnimator.java"


# instance fields
.field private synthetic a:Ldda;

.field private synthetic b:Lig;

.field private synthetic c:Ldcr;


# direct methods
.method constructor <init>(Ldcr;Ldda;Lig;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Ldcw;->c:Ldcr;

    iput-object p2, p0, Ldcw;->a:Ldda;

    iput-object p3, p0, Ldcw;->b:Lig;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lddc;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Ldcw;->b:Lig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lig;->a(Lis;)Lig;

    .line 378
    const/high16 v0, 0x3f80

    invoke-static {p1, v0}, Lgs;->c(Landroid/view/View;F)V

    .line 379
    invoke-static {p1, v2}, Lgs;->a(Landroid/view/View;F)V

    .line 380
    invoke-static {p1, v2}, Lgs;->b(Landroid/view/View;F)V

    .line 381
    iget-object v0, p0, Ldcw;->c:Ldcr;

    iget-object v1, p0, Ldcw;->a:Ldda;

    iget-object v1, v1, Ldda;->a:Lux;

    invoke-virtual {v0, v1}, Ldcr;->g(Lux;)V

    .line 382
    iget-object v0, p0, Ldcw;->c:Ldcr;

    iget-object v0, v0, Ldcr;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Ldcw;->a:Ldda;

    iget-object v1, v1, Ldda;->a:Lux;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Ldcw;->c:Ldcr;

    invoke-virtual {v0}, Ldcr;->c()V

    .line 384
    return-void
.end method
