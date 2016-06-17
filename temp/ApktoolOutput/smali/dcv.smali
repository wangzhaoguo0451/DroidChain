.class final Ldcv;
.super Lddc;
.source "JupiterItemAnimator.java"


# instance fields
.field private synthetic a:Lux;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lig;

.field private synthetic e:Ldcr;


# direct methods
.method constructor <init>(Ldcr;Lux;IILig;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Ldcv;->e:Ldcr;

    iput-object p2, p0, Ldcv;->a:Lux;

    iput p3, p0, Ldcv;->b:I

    iput p4, p0, Ldcv;->c:I

    iput-object p5, p0, Ldcv;->d:Lig;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lddc;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Ldcv;->d:Lig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lig;->a(Lis;)Lig;

    .line 316
    iget-object v0, p0, Ldcv;->e:Ldcr;

    iget-object v1, p0, Ldcv;->a:Lux;

    invoke-virtual {v0, v1}, Ldcr;->e(Lux;)V

    .line 317
    iget-object v0, p0, Ldcv;->e:Ldcr;

    iget-object v0, v0, Ldcr;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Ldcv;->a:Lux;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Ldcv;->e:Ldcr;

    invoke-virtual {v0}, Ldcr;->c()V

    .line 319
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 305
    iget v0, p0, Ldcv;->b:I

    if-eqz v0, :cond_0

    .line 306
    invoke-static {p1, v1}, Lgs;->a(Landroid/view/View;F)V

    .line 308
    :cond_0
    iget v0, p0, Ldcv;->c:I

    if-eqz v0, :cond_1

    .line 309
    invoke-static {p1, v1}, Lgs;->b(Landroid/view/View;F)V

    .line 311
    :cond_1
    return-void
.end method
