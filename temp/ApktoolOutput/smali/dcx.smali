.class final Ldcx;
.super Lddc;
.source "JupiterItemAnimator.java"


# instance fields
.field private synthetic a:Ldda;

.field private synthetic b:Lig;

.field private synthetic c:Landroid/view/View;

.field private synthetic d:Ldcr;


# direct methods
.method constructor <init>(Ldcr;Ldda;Lig;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Ldcx;->d:Ldcr;

    iput-object p2, p0, Ldcx;->a:Ldda;

    iput-object p3, p0, Ldcx;->b:Lig;

    iput-object p4, p0, Ldcx;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lddc;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Ldcx;->b:Lig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lig;->a(Lis;)Lig;

    .line 400
    iget-object v0, p0, Ldcx;->c:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lgs;->c(Landroid/view/View;F)V

    .line 401
    iget-object v0, p0, Ldcx;->c:Landroid/view/View;

    invoke-static {v0, v2}, Lgs;->a(Landroid/view/View;F)V

    .line 402
    iget-object v0, p0, Ldcx;->c:Landroid/view/View;

    invoke-static {v0, v2}, Lgs;->b(Landroid/view/View;F)V

    .line 403
    iget-object v0, p0, Ldcx;->d:Ldcr;

    iget-object v1, p0, Ldcx;->a:Ldda;

    iget-object v1, v1, Ldda;->b:Lux;

    invoke-virtual {v0, v1}, Ldcr;->g(Lux;)V

    .line 404
    iget-object v0, p0, Ldcx;->d:Ldcr;

    iget-object v0, v0, Ldcr;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Ldcx;->a:Ldda;

    iget-object v1, v1, Ldda;->b:Lux;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Ldcx;->d:Ldcr;

    invoke-virtual {v0}, Ldcr;->c()V

    .line 406
    return-void
.end method
