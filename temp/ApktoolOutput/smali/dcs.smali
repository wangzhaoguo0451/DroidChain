.class final Ldcs;
.super Ljava/lang/Object;
.source "JupiterItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Ldcr;


# direct methods
.method constructor <init>(Ldcr;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Ldcs;->b:Ldcr;

    iput-object p2, p0, Ldcs;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 173
    iget-object v0, p0, Ldcs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    .line 174
    iget-object v2, p0, Ldcs;->b:Ldcr;

    iget-object v3, v0, Lux;->a:Landroid/view/View;

    iget-object v4, v2, Ldcr;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lgs;->q(Landroid/view/View;)Lig;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lig;->a(F)Lig;

    move-result-object v4

    iget-wide v6, v2, Luk;->i:J

    invoke-virtual {v4, v6, v7}, Lig;->a(J)Lig;

    move-result-object v4

    new-instance v5, Ldcu;

    invoke-direct {v5, v2, v0, v3}, Ldcu;-><init>(Ldcr;Lux;Lig;)V

    invoke-virtual {v4, v5}, Lig;->a(Lis;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->c()V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Ldcs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v0, p0, Ldcs;->b:Ldcr;

    iget-object v0, v0, Ldcr;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Ldcs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method
