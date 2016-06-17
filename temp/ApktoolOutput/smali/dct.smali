.class final Ldct;
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
    .line 207
    iput-object p1, p0, Ldct;->c:Ldcr;

    iput-object p2, p0, Ldct;->a:Lux;

    iput-object p3, p0, Ldct;->b:Lig;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lddc;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Ldct;->b:Lig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lig;->a(Lis;)Lig;

    .line 216
    const/high16 v0, 0x3f80

    invoke-static {p1, v0}, Lgs;->c(Landroid/view/View;F)V

    .line 217
    iget-object v0, p0, Ldct;->c:Ldcr;

    iget-object v1, p0, Ldct;->a:Lux;

    invoke-virtual {v0, v1}, Ldcr;->d(Lux;)V

    .line 218
    iget-object v0, p0, Ldct;->c:Ldcr;

    iget-object v0, v0, Ldcr;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Ldct;->a:Lux;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Ldct;->c:Ldcr;

    invoke-virtual {v0}, Ldcr;->c()V

    .line 220
    return-void
.end method
