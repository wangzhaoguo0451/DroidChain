.class final Ldcu;
.super Lddc;
.source "JupiterItemAnimator.java"


# instance fields
.field private synthetic a:Lux;

.field private synthetic b:Lig;

.field private synthetic c:Ldcr;


# direct methods
.method constructor <init>(Ldcr;Lux;Lig;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Ldcu;->c:Ldcr;

    iput-object p2, p0, Ldcu;->a:Lux;

    iput-object p3, p0, Ldcu;->b:Lig;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lddc;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Ldcu;->b:Lig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lig;->a(Lis;)Lig;

    .line 252
    iget-object v0, p0, Ldcu;->c:Ldcr;

    iget-object v1, p0, Ldcu;->a:Lux;

    invoke-virtual {v0, v1}, Ldcr;->f(Lux;)V

    .line 253
    iget-object v0, p0, Ldcu;->c:Ldcr;

    iget-object v0, v0, Ldcr;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ldcu;->a:Lux;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Ldcu;->c:Ldcr;

    invoke-virtual {v0}, Ldcr;->c()V

    .line 255
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    const/high16 v0, 0x3f80

    invoke-static {p1, v0}, Lgs;->c(Landroid/view/View;F)V

    .line 247
    return-void
.end method
