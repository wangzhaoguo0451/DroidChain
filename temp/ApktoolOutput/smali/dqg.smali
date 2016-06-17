.class public final Ldqg;
.super Lhic;
.source "SectionContainerMaxLinesPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0}, Ldqg;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Ldqg;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/SectionItemContainer;->setMaxLines(I)V

    .line 16
    :cond_0
    return-void
.end method
