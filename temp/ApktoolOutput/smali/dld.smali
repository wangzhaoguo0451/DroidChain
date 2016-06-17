.class public Ldld;
.super Lhic;
.source "CardShowPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {p0, p1}, Ldld;->b(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private static b(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Leny;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Leny;->b()Leny;

    invoke-static {p0}, Leny;->m(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    return-void

    .line 71
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Landroid/view/ViewGroup;

    .line 75
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Ldld;->b(Landroid/view/View;Ljava/util/List;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Ldld;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Ldld;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldle;

    invoke-direct {v1, p0}, Ldle;-><init>(Ldld;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method protected b(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0c0010

    .line 56
    invoke-virtual {p1, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    const v0, 0x7f0c0010

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 62
    return-void
.end method
