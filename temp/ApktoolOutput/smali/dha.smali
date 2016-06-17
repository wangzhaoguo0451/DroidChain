.class public final Ldha;
.super Lert;
.source "AppInstalledFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;Lcom/wandoujia/jupiter/view/OperationGuideCardView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p2, p0, Ldha;->a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lert;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lerf;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 287
    new-instance v0, Lerf;

    iget-object v1, p0, Ldha;->a:Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    invoke-direct {v0, v1}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v1, Ldhg;

    invoke-direct {v1, v2}, Ldhg;-><init>(B)V

    invoke-virtual {v0, v2, v1, v2}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method
